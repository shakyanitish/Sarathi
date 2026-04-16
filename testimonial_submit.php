<?php
header('Content-Type: application/json; charset=utf-8');

require_once('includes/initialize.php');

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(array('action' => 'error', 'message' => 'Invalid request method.'));
    exit;
}

$name = isset($_POST['name']) ? trim($_POST['name']) : '';
$email = isset($_POST['email']) ? trim($_POST['email']) : '';
$rating = isset($_POST['rating']) ? (int)$_POST['rating'] : 0;
$message = isset($_POST['message']) ? trim($_POST['message']) : '';
$uploadedImageName = '';

if ($name === '' || $email === '' || $message === '' || $rating < 1 || $rating > 5) {
    echo json_encode(array('action' => 'error', 'message' => 'Please fill all required fields with valid values.'));
    exit;
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    echo json_encode(array('action' => 'error', 'message' => 'Please enter a valid email address.'));
    exit;
}

// Optional image upload (stores first selected file only)
if (isset($_FILES['images']) && isset($_FILES['images']['name']) && is_array($_FILES['images']['name']) && !empty($_FILES['images']['name'][0])) {
    $allowedExt = array('jpg', 'jpeg', 'png', 'webp', 'gif');
    $originalName = $_FILES['images']['name'][0];
    $tmpFile = $_FILES['images']['tmp_name'][0];
    $fileError = (int)$_FILES['images']['error'][0];
    $fileSize = (int)$_FILES['images']['size'][0];
    $extension = strtolower(pathinfo($originalName, PATHINFO_EXTENSION));

    if ($fileError !== UPLOAD_ERR_OK) {
        echo json_encode(array('action' => 'error', 'message' => 'Image upload failed. Please try again.'));
        exit;
    }

    if (!in_array($extension, $allowedExt, true)) {
        echo json_encode(array('action' => 'error', 'message' => 'Only JPG, JPEG, PNG, WEBP, and GIF images are allowed.'));
        exit;
    }

    if ($fileSize > 5 * 1024 * 1024) {
        echo json_encode(array('action' => 'error', 'message' => 'Image size must be less than 5MB.'));
        exit;
    }

    $safeName = preg_replace('/[^a-zA-Z0-9_-]/', '-', pathinfo($originalName, PATHINFO_FILENAME));
    $safeName = trim($safeName, '-');
    if ($safeName === '') {
        $safeName = 'testimonial';
    }

    $uploadedImageName = uniqid() . '-' . $safeName . '.' . $extension;
    $destinationDir = SITE_ROOT . 'images' . DS . 'testimonial' . DS;
    $destinationPath = $destinationDir . $uploadedImageName;
    $thumbDir = $destinationDir . 'thumbnails' . DS;
    $thumbPath = $thumbDir . $uploadedImageName;

    if (!move_uploaded_file($tmpFile, $destinationPath)) {
        echo json_encode(array('action' => 'error', 'message' => 'Unable to save uploaded image.'));
        exit;
    }

    // Admin testimonial edit preview reads from images/testimonial/thumbnails/
    if (is_dir($thumbDir) && is_readable($destinationPath)) {
        @copy($destinationPath, $thumbPath);
    }
}

$record = new Testimonial();
$record->parentOf = 0;
$record->name = $name;
$record->email = $email;
$record->rating = $rating;
$record->image = $uploadedImageName;
$record->linksrc = '';
$record->content = $message;
$record->status = 0;
$record->country = '';
$record->via_type = 'Website';
$record->type = 0;
$record->sortorder = Testimonial::find_maximum();

$db->begin();
if ($record->save()) {
    $db->commit();
    echo json_encode(array('action' => 'success'));
} else {
    $db->rollback();
    echo json_encode(array('action' => 'error'));
}
