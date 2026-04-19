<?php 
/*
* Home accmodation list
*/
$reshmpkg='';

$reshmpkg = '';

if(defined('HOME_PAGE')) {

    $acid   = Package::get_accommodationId();
    $pkgRec = Package::find_by_id($acid);

    $reshmpkg .= '
    <div class="room-types-section">
        <div class="room-types-header">
            <h3>'.$pkgRec->title.'</h3>
			
        </div>
    ';

    $subRec = Subpackage::getPackage_limit($acid);

    if(!empty($subRec)) {

        $reshmpkg .= '<div class="room-types-grid">';

        foreach($subRec as $subRow){

            $file_path = SITE_ROOT.'images/subpackage/image/'.$subRow->image2;

            if(file_exists($file_path) && !empty($subRow->image2)){

                $img   = IMAGE_PATH.'subpackage/image/'.$subRow->image2;
                $price = !empty($subRow->onep_price) ? 'Starting from NPR '.$subRow->onep_price : '';
                $detail = mb_strimwidth(strip_tags($subRow->detail),0,120,'...');

                $reshmpkg .= '
                <div class="room-type-card" data-article-title="'.$subRow->title.'">

                    <div class="thumb">
                         <a href="'.BASE_URL.'subpackage/'.$subRow->slug.'">
                            <img src="'.$img.'" alt="'.$subRow->title.'">
                        </a>
                    </div>

                    <div class="room-type-overlay"></div>

                    <div class="room-type-content">
                        <span class="room-type-label">'.$price.'</span>
                        <a href="'.BASE_URL.'subpackage/'.$subRow->slug.'">
                        <h4>'.$subRow->title.'</h4>
                        </a>
                        <p>'.$detail.'</p>
                        <a href="'.BASE_URL.'booking" class="btn-custom">Book Now</a>
                    </div>

                </div>
                ';
            }
        }

        $reshmpkg .= '</div>';
    }

    $reshmpkg .= '</div>';
}

$jVars['module:home-accommodation'] = $reshmpkg;



/*
* Package Record
*/
$respkgHeader=$respkgDetail=$respkgslide=$respkgTest='';

if(defined('PACKAGE_PAGE') and isset($_REQUEST['slug'])) {
	$slug = !empty($_REQUEST['slug'])? addslashes($_REQUEST['slug']) : '';
	$pkgRec = Package::find_by_slug($slug);
	if(!empty($pkgRec)) {

		// For Accommodation Design
		if($pkgRec->type==1) {

			// Header
			$respkgHeader.='<section class="contact-header-section">
            <div class="center">
                 <div class="contact-title-row">
                    <h3>'.$pkgRec->title.'</h3>
                </div>
                <div class="contact-info-row">
                    <div class="contact-tagline">
                        <div class="breadcrumb-container">
                            <ul class="breadcrumb-list">
                                <li><a href="'.BASE_URL.'">Home</a></li>
                                <li>'.$pkgRec->title.'</li>
                            </ul>
                        </div>
                        <h2>'.$pkgRec->sub_title.'</h2>
                    </div>
                    <div class="contact-description">
                        '.$pkgRec->content.'
                    </div>
                </div>
            </div>
        </section>';

			// Package detail
			//$respkgDetail.= $pkgRec->content;

			// Room list
			$subRec = Subpackage::getPackage_limit($pkgRec->id);
		    if(!empty($subRec)) {
			   

					$respkgDetail.='<div class="section timeline halls__img">
					<div class="label fade">Explore</div>
					<div class="center fade">';
						foreach($subRec as $subRow) {	        	
				        	$file_path = SITE_ROOT.'images/subpackage/image/'.$subRow->image2;
				        	if(file_exists($file_path) and !empty($subRow->image2)) {
								$respkgDetail.='<div class="item fade">
						        	<div class="thumb">
						        		<div class="back">
						        			<img src="'.IMAGE_PATH.'subpackage/image/'.$subRow->image2.'" alt="'.$subRow->title.'">
						        		</div>
						        	</div>
						        	<div class="details">
						            	<h2>'.$subRow->title.'</h2>
						                '.$subRow->content.'

                                        <div class="text-left">
										<a href="'.BASE_URL.'subpackage/'.$subRow->slug.'" class=" button">View Room</a>
										</div>
						            </div>
						        </div>';
						    }
						}

					$respkgDetail.='</div>
				</div>';
			}

			// Package slide image
			if($pkgRec->banner_image!='a:0:{}') {
				$innimg = unserialize($pkgRec->banner_image);
				$respkgslide.='<div class="section carousel fade">
				    <div class="slider">';
				    foreach($innimg as $kk=>$imgname) {
		          		$img_path = SITE_ROOT.'images/package/banner/'.$imgname;
		          		if(!empty($imgname) and file_exists($img_path)) {				
		          			$respkgslide.='<img src="'.IMAGE_PATH.'package/banner/'.$imgname.'" alt="'.$pkgRec->title.'">';
						}
					}			        
				    $respkgslide.='</div>
				    <div class="slider-nav">
				        <a class="prev"><i class="icon ion-ios-arrow-left"></i></a>
				        <a class="next"><i class="icon ion-ios-arrow-right"></i></a>
				    </div>
				</div>
				<!-- Carousel | END -->';
			}

		}
		else {

			// Header slide

				$respkgHeader.=' <section class="contact-header-section">
            <div class="center">
                 <div class="contact-title-row">
                    <h3>'.$pkgRec->sub_title.'</h3>
                </div>
                <div class="contact-info-row">
                    <div class="contact-tagline">
                        <div class="breadcrumb-container">
                            <ul class="breadcrumb-list">
                                <li><a href="'.BASE_URL.'">Home</a></li>
                                <li>'.$pkgRec->title.'</li>
                            </ul>
                        </div>
                        <h2>Explore our amazing restaurant</h2>
                    </div>
                    <div class="contact-description">
                        '.$pkgRec->content.'
                    </div>
                </div>
            </div>
        </section>';
				    	
			

			// Package detail


			// Sub package list
			$subRec = Subpackage::getPackage_limit($pkgRec->id);
		    if(!empty($subRec)) {
		        $label_txt = ($pkgRec->id == 2) ? 'Our Restaurant' : 'Our Event Hall';
		        
				$respkgDetail.='<div class="section timeline halls__img">
					<div class="label fade">'.$label_txt.'</div>
					<div class="center fade">';
						foreach($subRec as $subRow) {	        	
				        	$file_path = SITE_ROOT.'images/subpackage/image/'.$subRow->image2;
				        	if(file_exists($file_path) and !empty($subRow->image2)) {
                                $enquiry_btn = ($pkgRec->id == 2)
                                    ? '<a class="button" href="'.BASE_URL.'gallery-list">View Gallery <i class="icon ion-ios-arrow-right"></i></a>'
                                    : '<a href="javascript:void(0);" class="button inquiry-btn" data-offer-title="'.htmlspecialchars($subRow->title, ENT_QUOTES, 'UTF-8').'">Inquiry Now</a>';
								$respkgDetail.='<div class="item fade">
						        	<div class="thumb">
						        		<div class="back">
						        			<img src="'.IMAGE_PATH.'subpackage/image/'.$subRow->image2.'" alt="'.$subRow->title.'">
						        		</div>
						        	</div>
						        	<div class="details">
						            	<h2>'.$subRow->title.'</h2>
						                '.$subRow->content.'
                                        <div class="text-left">'.$enquiry_btn.'</div>
						            </div>
						        </div>';
						    }
						}

					$respkgDetail.='</div>
				</div>';
			}

		}

		

	}
}

$jVars['module:pakcage-header'] = $respkgHeader;
$jVars['module:pakcage-detail'] = $respkgDetail;
$jVars['module:pakcage-slideimg'] = $respkgslide;
$jVars['module:pakcage-testimonial'] = $respkgTest;


/*
* Sub package 
*/
$resubpkgSlide=$resubpkgHeader=$resubpkgDetail='';

if(defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {
	$slug = !empty($_REQUEST['slug'])? addslashes($_REQUEST['slug']) : '';
	$subpkgRec = Subpackage::find_by_slug($slug);
	if(!empty($subpkgRec)) {
		// Slide image
		if($subpkgRec->image!='a:0:{}') {
			$subimg = unserialize($subpkgRec->image);
			$resubpkgSlide.='<section class="hotel-gallery">
            <div class="gallery-grid-main">';
            
            if(!empty($subimg)){
                $total_photos = count($subimg);
                
                // slot 1 (Main)
                if(isset($subimg[0])){
                    $imgname = $subimg[0];
                    $resubpkgSlide.='<a href="'.IMAGE_PATH.'subpackage/'.$imgname.'" class="gallery-main-img-wrap hotel-gallery-item">
                        <img src="'.IMAGE_PATH.'subpackage/'.$imgname.'" alt="'.$subpkgRec->title.'" class="gallery-main-img">
                    </a>';
                }

                $resubpkgSlide.='<div class="gallery-side-column">';
                // slot 2-3 (Side Column)
                for($i=1; $i<=2; $i++){
                    if(isset($subimg[$i])){
                        $imgname = $subimg[$i];
                        $resubpkgSlide.='<a href="'.IMAGE_PATH.'subpackage/'.$imgname.'" class="gallery-side-img-wrap hotel-gallery-item">
                            <img src="'.IMAGE_PATH.'subpackage/'.$imgname.'" alt="'.$subpkgRec->title.'" class="gallery-side-img">
                        </a>';
                    }
                }
                $resubpkgSlide.='</div>';
                $resubpkgSlide.='</div>'; // end gallery-grid-main

                // slot 4-8 (Thumbnails)
                if($total_photos > 3){
                    $resubpkgSlide.='<div class="gallery-thumbnails">';
                    for($i=3; $i<=7; $i++){
                        if(isset($subimg[$i])){
                            $imgname = $subimg[$i];
                            $resubpkgSlide.='<a href="'.IMAGE_PATH.'subpackage/'.$imgname.'" class="gallery-thumb-item hotel-gallery-item">
                                <img src="'.IMAGE_PATH.'subpackage/'.$imgname.'" alt="'.$subpkgRec->title.'" class="gallery-thumb-img">';
                            
                            // Check if this is the 5th thumbnail (index 7) and there are more photos
                            if($i == 7 && $total_photos > 8){
                                $remaining = $total_photos - 7;
                                $resubpkgSlide.='<div class="gallery-overlay">
                                    <span>+'.$remaining.' Photos</span>
                                </div>';
                            }
                            $resubpkgSlide.='</a>';
                        }
                    }
                    $resubpkgSlide.='</div>'; // end gallery-thumbnails
                }
            }
            $resubpkgSlide.='</section>';
	    }

        // Sub package title
        $resubpkgHeader.='<!-- Text Block | START -->
        <section class="room-intro-section">
            <div class="center">
                <div class="room-title-box contact-title-row">
                    <h3 class="room-main-title">'.$subpkgRec->title.'</h3>
                </div>
              <p class="room-theme-text text-center">
                    '.$subpkgRec->content.'
                </p>
			 <div class="room-spec-highlights">
                    <div class="spec-item">
                        <i class="icon ion-ios-expand"></i>
                        <span class="spec-label">Size</span>
                        <span class="spec-value">'.$subpkgRec->number_room.'</span>
                    </div>
                    <div class="spec-item">
                        <i class="icon ion-ios-people"></i>
                        <span class="spec-label">Occupation</span>
                        <span class="spec-value">'.$subpkgRec->extra_bed.'</span>
                    </div>
                    <div class="spec-item">
                        <i class="icon ion-bed"></i>
                        <span class="spec-label">Bed</span>
                        <span class="spec-value">'.$subpkgRec->bed.'</span>
                    </div>
                </div>    
            </div>
        </section>
       
		 <div class="room-action-wrap">
                    <a class="button be-btn" href="/booking?room-type='.$subpkgRec->be_room_type.'">Book your room <i class="icon ion-ios-arrow-right"></i></a>
               </div>
        <!-- Text Block | END -->';

        // Sub package detail
        $resubpkgDetail.='<section class="room-amenities-section">
            <div class="center">
                <div class="amenities-container">
                    <h3 class="amenities-title">Room Amenities</h3>
                    
                    <div class="amenities-grid">';

		// Sub package feature
		if(!empty($subpkgRec->feature)) {
        	$ftRec = unserialize($subpkgRec->feature);
        	if(!empty($ftRec)) {
	        	foreach($ftRec as $k=>$v) {
                    if(!empty($v[1])) {
                        foreach($v[1] as $kk=>$vv) {
                            $sfetname = Features::find_by_id($vv);	
                            if($sfetname && $sfetname->status == 1) {
                                $final_icon = !empty($sfetname->icon) ? $sfetname->icon : '';
                                $img_path = SITE_ROOT . 'images/features/' . $sfetname->image;
                                $display_icon = '<i class="icon ' . $final_icon . '"></i>';
                                if (!empty($sfetname->image) && file_exists($img_path)) {
                                    $display_icon = '<img src="' . IMAGE_PATH . 'features/' . $sfetname->image . '" alt="' . $sfetname->title . '" style="width:24px; height:24px; object-fit:contain; margin-right:10px;">';
                                }

                                $resubpkgDetail.='<div class="amenity-item">
                                    '.$display_icon.'
                                    <span class="amenity-label">'.$sfetname->title.'</span>
                                </div>';
                            }
                        }
                    }
	        	}
	        }
        }
        $resubpkgDetail.='</div></div></div></section>';


	}
}

$jVars['module:sub-package-slideimg'] = $resubpkgSlide;
$jVars['module:sub-package-header'] = $resubpkgHeader;
$jVars['module:sub-package-detail'] = $resubpkgDetail;