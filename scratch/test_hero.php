<?php
require_once('includes/initialize.php');
$hero = hero::find_by_id(3);
if ($hero) {
    echo "Found Hero ID 3:\n";
    print_r($hero);
} else {
    echo "Hero ID 3 NOT found.\n";
    $all = hero::find_all();
    echo "All Heroes:\n";
    print_r($all);
}
?>
