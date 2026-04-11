<?php
/*
* Top Social Links
*/
$socialRec = SocialNetworking::getSocialNetwork();

$resocl='';

$resocl.='<div id="mobilenav"><i class="icon ion-navicon"></i></div>
<a class="button book-button" href="'.BASE_URL.'contact-us">Reservation</a>';

	$resocl .= '<div class="header-social">'
         . '<a href="javascript:void(0);" class="inquiry-btn">Inquiry Now</a>'
         . '</div>';
	
    // Hidden Inquiry Popup
    $resocl .= '
    <div id="inquiry-popup" style="display: none;">
        <h2 class="form-title">Direct Inquiry</h2>
        <p class="form-subtitle">We\'ll get back to you shortly with availability and details.</p>
        <form action="#" method="POST" id="frm-inquiry-modal" class="inquiry-form">
            <div class="field">
                <input type="text" name="fullname" placeholder="Your Full Name" required>
            </div>
            <div class="field">
                <input type="email" name="mailaddress" placeholder="Email Address" required>
            </div>
            <div class="field">
                <input type="tel" name="phoneno" placeholder="Phone Number">
            </div>
            <div class="field">
                <textarea name="message" rows="4" placeholder="Your message or Special Requirements"></textarea>
            </div>
            <div class="form-action">
                <button type="submit" id="btn-inquiry-modal" class="button">
                    Submit Inquiry <i class="icon ion-ios-arrow-right"></i>
                </button>
            </div>
        </form>
    </div>';
	
	


$jVars['module:socilaLinktop']= $resocl;




$socialRec = SocialNetworking::getSocialNetwork();
$siteRegulars = Config::find_by_id(1);

$resocl = '';
$disicon = '';

if (!empty($socialRec)) {
    foreach ($socialRec as $socialRow) {
        $icon = $socialRow->image;
        
        // Skip if link is empty or just '#'
        if (empty($socialRow->linksrc) || $socialRow->linksrc === '#') {
            continue;
        }
        
        // Determine icon display method
        if (!empty($icon)) {
            $disicon = '
            <a href="' . $socialRow->linksrc . '" target="_blank"><img src="' . IMAGE_PATH . 'social/' . $socialRow->image . '"/></a>';
        } else {
            $disicon = '
            <a href="' . $socialRow->linksrc . '" target="_blank"><i
                                    class="' . $socialRow->icon . '"></i></a>';
        }
        
        $resocl .= $disicon;
    }
}

$jVars['module:socilaLinkbtm'] = $resocl;

?>