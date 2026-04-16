<?php
require_once("includes/initialize.php");

if ($_POST['action'] == "forcoment"):
	$usermail = User::get_UseremailAddress_byId(1);
	$ccusermail = User::field_by_id(1, 'optional_email');
	$sitename = Config::getField('sitename', true);

	foreach ($_POST as $key => $val) {
		$$key = $val;
	}

	// Only include the Offer row when an offer title was submitted
	$offer_title = isset($offer_title) ? trim($offer_title) : '';
	$offerRow = !empty($offer_title)
		? '<h3><strong>Inquiry For</strong> : ' . htmlspecialchars($offer_title) . '</h3>'
		: '';

	// Only include the Article row when an article title was submitted
	$article_title = isset($article_title) ? trim($article_title) : '';
	$articleRow = !empty($article_title)
		? '<h3><strong>Inquiry For</strong> : ' . htmlspecialchars($article_title) . '</h3>'
		: '';


	$body = '
	<table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">

	  <tr>
		  ' . $articleRow . '
		  ' . $offerRow . '	
	<tr>
		<td><p>Dear Sir,</p></td>
	  </tr>
		<td><p><span style="color:#0065B3; font-size:14px; font-weight:bold">Comment message</span><br />
		  The details provided are:</p>
		  <p><strong>Fullname</strong> : ' . $fullname . '<br />
		  <strong>E-mail Address</strong>: ' . $mailaddress . '<br />
		  <strong>Contact No.</strong>: ' . $phoneno . '<br />
		  <strong>Message</strong>: ' . $message . '<br />
		  </p>
		</td>
	  </tr>
	  <tr>
		<td>
		<p>Thank you,<br />
		' . $fullname . '
		</p></td>
	  </tr>
	</table>
	';

	/*
	 * mail info
	 */

	$mail = new PHPMailer(); // defaults to using php "mail()"

	$mail->SetFrom($mailaddress, $fullname);
	$mail->AddReplyTo($mailaddress, $fullname);

	$mail->AddAddress($usermail, $sitename);
	// if add extra email address on back end
	if (!empty($ccusermail)) {
		$rec = explode(';', $ccusermail);
		if ($rec) {
			foreach ($rec as $row) {
				$mail->AddCC($row, $sitename);
			}
		}
	}

	$mail->Subject = 'Inquiry mail from ' . $fullname;

	$mail->MsgHTML($body);

	if (!$mail->Send()) {
		echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your request at the time. Please try again later."));
	} else {
		echo json_encode(array("action" => "success", "message" => "Your request has been successfully received."));
	}
endif;
?>