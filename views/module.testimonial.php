<?php 
/*
* Testimonial Header Title
*/
$tstHtitle='';

if(defined('REVIEWS_PAGE')) {
	$tstHtitle.='<section class="contact-header-section">
            <div class="center">
                <div class="contact-title-row">
                    <h3>Reviews</h3>
                </div>
                <div class="contact-info-row">
                    <div class="contact-tagline">
                        <div class="breadcrumb-container">
                            <ul class="breadcrumb-list">
                                <li><a href="'.BASE_URL.'">Home</a></li>
                                <li>Reviews</li>
                            </ul>
                        </div>
                        <h2>Get in Touch with Hotel Sarathi</h2>
                    </div>
                    <div class="contact-description">
                        <p>Experience the perfect blend of tradition and comfort in the heart of Dhulikhel.Our team is here to assist you with your bookings, enquiries, and any special requests you may have.</p>
                       
                    </div>
                </div>
            </div>
        </section>';
}


$jVars['module:testimonial-title'] = $tstHtitle;


/*
* Testimonial Rand
*/
$tstHead='';

$tstRand = Testimonial::get_alltestimonial();
if(!empty($tstRand)) {
	
	foreach($tstRand as $tstRow){
        $full_content = strip_tags($tstRow->content);
        $display_content = $full_content;
        $read_more = '';
        if (strlen($full_content) > 200) {
            $display_content = mb_strimwidth($full_content, 0, 200, '...');
            $read_more = ' <a href="javascript:void(0);" class="testi-read-more">Read More +</a>';
        }

        $rating = !empty($tstRow->rating) ? (int)$tstRow->rating : 5;
        $stars = '';
        for ($i = 1; $i <= 5; $i++) {
            $stars .= ($i <= $rating) ? '&#9733;' : '&#9734;';
        }

		$tstHead.='
	<div class="testi-card">
		<div class="testi-stars">'.$stars.'</div>
		<p class="testi-text">"'.$display_content.'"'.$read_more.'</p>
        <div class="testi-full-content" style="display:none;">
            <span class="testi-popup-close">&times;</span>
            <div class="testi-stars">'.$stars.'</div>
            <div class="testi-popup-full-text">"'.$full_content.'"</div>
            <div class="testi-popup-author">
                <span class="testi-name">'.$tstRow->name.'</span>
                <span class="testi-role">'.$tstRow->country.'</span>
            </div>
        </div>
		<div class="testi-author">
			<div class="testi-avatar"><img src="'.IMAGE_PATH.'testimonial/'.$tstRow->image.'" alt="'.$tstRow->name.'"></div>
			<div>
				<span class="testi-name">'.$tstRow->name.'</span>
				<span class="testi-role">'.$tstRow->country.'</span>
			</div>
		</div>
	</div>
	';
	}

}

$jVars['module:testimonial-rand'] = $tstHead;


/*
* Testimonial List
*/
$restst='';
$tstRec = Testimonial::get_alltestimonial();
if(!empty($tstRec)) {
	$restst.='<div class="testimonials-section">

               
                <div class="testi-grid">';
	foreach($tstRec as $tstRow) {
        $full_content = strip_tags($tstRow->content);
        $display_content = $full_content;
        $read_more = '';
        if (strlen($full_content) > 200) {
            $display_content = mb_strimwidth($full_content, 0, 200, '...');
            $read_more = ' <a href="javascript:void(0);" class="testi-read-more">Read More +</a>';
        }

        $rating = !empty($tstRow->rating) ? (int)$tstRow->rating : 5;
        $stars = '';
        for ($i = 1; $i <= 5; $i++) {
            $stars .= ($i <= $rating) ? '&#9733;' : '&#9734;';
        }

		$restst.='<!-- <div class="item">
            <div class="testimonial">
                <i class="icon ion-quote"></i>
                <p>'.strip_tags($tstRow->content).'</p>
                <p class="name">&ndash; <strong>'.$tstRow->name.', '.$tstRow->country.'</strong> (Via : '.$tstRow->via_type.')</p>
            </div>
        </div>-->

                    <div class="testi-card">
                        <div class="testi-stars">'.$stars.'</div>
                        <p class="testi-text">"'.$display_content.'"'.$read_more.'</p>
                        <div class="testi-full-content" style="display:none;">
                            <span class="testi-popup-close">&times;</span>
                            <div class="testi-stars">'.$stars.'</div>
                            <div class="testi-popup-full-text">"'.$full_content.'"</div>
                            <div class="testi-popup-author">
                                <span class="testi-name">'.$tstRow->name.'</span>
                                <span class="testi-role">'.$tstRow->country.'</span>
                            </div>
                        </div>
                        <div class="testi-author">
                            <div class="testi-avatar">AR</div>
                            <div>
                                <span class="testi-name">'.$tstRow->name.'</span>
                                <span class="testi-role">'.$tstRow->country.'</span>
                            </div>
                        </div>
                    </div>
		';
	}
}

$jVars['module:testimonialList'] = $restst;

$jVars['module:testimonial-average-rating'] = Testimonial::getAverageRating();
$jVars['module:testimonial-total-review'] = number_format(Testimonial::getTotalTestimonial());

// Average stars
$avgRating = Testimonial::getAverageRating();
$intRating = round($avgRating);
$avgStars = '';
for ($i = 1; $i <= 5; $i++) {
    $avgStars .= ($i <= $intRating) ? '&#9733;' : '&#9734;';
}
$jVars['module:testimonial-average-stars'] = $avgStars;
?>