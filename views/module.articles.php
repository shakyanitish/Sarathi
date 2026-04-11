<?php
/*
* Home page 
*/
$reshomelist='';
$imgsrc='';

if(defined('HOME_PAGE')) {	

		$homeRec = Article::find_by_type(1);
		if(!empty($homeRec)) {		
			foreach($homeRec as $m => $homeRow) {
                $imgsrc = '';
				if($homeRow->image!='a:0:{}') {
					$innimg = unserialize($homeRow->image);
					foreach($innimg as $imgname) {
						$imgsrc.='
								<img src="'.IMAGE_PATH.'articles/'.$imgname.'" alt="'.$homeRow->title.'">
							';
					}
				}
				else {
					$imgsrc.='
								<img src="'.BASE_URL.'images/section3.jpg" alt="'.$homeRow->title.'">
							';
				}

					$linkTarget = ($homeRow->linktype == 1)? ' target="_blank" ' : ''; 
	                $linksrc  = ($homeRow->linktype == 1)? $homeRow->linksrc : BASE_URL.$homeRow->linksrc;
	                $linkRec  = !empty($homeRow->linksrc)? $linksrc : 'javascript:void(0);';

					$classes = ($m % 2 == 0)?'image-on-left':'image-on-right nav-on-left';
		            $reshomelist.='
						<div class="item side fade article-slider-wrapper '.$classes.'">
							<div class="slider-area">
								<div class="slider">
									'.$imgsrc.'
								</div>
								<div class="slider-nav">
									<button type="button" class="prev" aria-label="Previous image"><i class="icon ion-ios-arrow-left"></i></button>
									<button type="button" class="next" aria-label="Next image"><i class="icon ion-ios-arrow-right"></i></button>
								</div>
							</div>
							<div class="details">
								<div class="float">
								<h3>
									'.$homeRow->title.'</h3>
								<p>
									'.$homeRow->brief.'</p>
								<button class="header-social">Inquiry Now</button>
									
									
									
								</div>
							</div>
						</div>
					';
		    }
	    }
}

$jVars['module:homepage-list'] = $reshomelist;


/*
* Article Record
*/
$resaHeader=$resaDetail=$resaslide='';

if(defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
	$slug = !empty($_REQUEST['slug'])? addslashes($_REQUEST['slug']) : '';
	$artRec = Article::find_by_slug($slug);
	if(!empty($artRec)) {

		// Header
		$resaHeader .= '
			 <section class="contact-header-section">
				<div class="center">
					<div class="contact-title-row">
						<h3>'.$artRec->title.'</h3>
					</div>
					<div class="contact-info-row">
						<div class="contact-tagline">
							<div class="breadcrumb-container">
								<ul class="breadcrumb-list">
									<li><a href="'.BASE_URL.'">Home</a></li>
									<li>'.$artRec->title.'</li>
								</ul>
							</div>
							<h2>'.$artRec->sub_title.'</h2>
						</div>
						<div class="contact-description">
							'.$artRec->brief.'
						</div>
					</div>
				</div>
			</section>
		';

		// Article detail
		$resaDetail.= '<div class="section text fade">'.str_replace('src="/assets/', 'src="'.BASE_URL.'assets/', $artRec->content).'</div>';		

		// Article slide image
		if($artRec->image!='a:0:{}') {
			$innimg = unserialize($artRec->image);
			$resaslide.='<div class="section carousel fade">
				<div class="slider mt-4">';
				foreach($innimg as $kk=>$imgname) {
					$img_path = SITE_ROOT.'images/articles/'.$imgname;
					if(!empty($imgname) and file_exists($img_path)) {				
						$resaslide.='<img src="'.IMAGE_PATH.'articles/'.$imgname.'" alt="'.$artRec->title.'">';
					}
				}			        
				$resaslide.='</div>
				<div class="slider-nav">
					<a class="prev"><i class="icon ion-ios-arrow-left"></i></a>
					<a class="next"><i class="icon ion-ios-arrow-right"></i></a>
				</div>
			</div>
			<!-- Carousel | END -->';
		}

	}
}

$jVars['module:inner-header'] = $resaHeader;
$jVars['module:inner-detail'] = $resaDetail;
$jVars['module:inner-slideimg'] = $resaslide;



$resinnbrd=$resinnslid=$resinncont='';

if(defined('ARTICLE_PAGE')) {
	if(!empty($_REQUEST['slug']) and isset($_REQUEST['slug'])) {
		$slug = addslashes($_REQUEST['slug']);
		$compxRow = Article::find_by_slug($slug);
		if(!empty($compxRow)) {
			$resinnbrd.='<section class="post-wrapper-top jt-shadow clearfix inner_title_bg">
			  	<div class="container">
			      	<div class="col-lg-12">
			          	<h2>History</h2>
			          	<ul class="breadcrumb pull-right">
			              	<li><a href="'.BASE_URL.'">Home</a></li>
			              	<li>'.$compxRow->title.'</li>
			          	</ul>
			      	</div>
			  	</div>
			  	<div class="black_shade"></div>
			</section>
			<!-- end post-wrapper-top -->';

			$innimg = unserialize($compxRow->image);
			if(!empty($innimg)) {
				$resinnslid.='<section class="slider-wrapper innerslider">
					<div class="tp-banner-container">
				      	<div class="tp-banner" >
				          	<ul>';
				          	foreach($innimg as $kk=>$imgname) {
				          		$img_path = SITE_ROOT.'images/articles/'.$imgname;
				          		if(!empty($imgname) and file_exists($img_path)) {
				          			$resinnslid.='<li data-transition="fade" data-slotamount="7" data-masterspeed="1500" > 
					              		<img src="'.IMAGE_PATH.'articles/'.$imgname.'" alt="History"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"> 
					              	</li>';
				          		}
				          	}           	             		            
				          	$resinnslid.='</ul>
				          	<div class="tp-bannertimer"></div>
				      	</div>
				  	</div>
				</section>
				<!-- end slider-wrapper -->';
			}
			else {
				$resinnslid.='<div class="spacingtop"></div>';
			}

			$content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($compxRow->content));			
			$content = !empty($content[1])?$content[1]:$content[0];
			$resinncont.= str_replace('src="/assets/', 'src="'.BASE_URL.'assets/', $content);

		}
		else {
			redirect_to(BASE_URL);
		}

	} 
}

$jVars['module:inner_breadcrumb'] = $resinnbrd;
$jVars['module:inner_slide'] = $resinnslid;
$jVars['module:inner_content'] = $resinncont;
?>