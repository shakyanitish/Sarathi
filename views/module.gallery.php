<?php 
$reslgall='';

$hero_gallery = hero::find_by_id(4);
$jVars['module:gallery-header-title'] = (!empty($hero_gallery)) ? $hero_gallery->title_gr : '';
$jVars['module:gallery-header-description'] = (!empty($hero_gallery)) ? '<p>'.strip_tags($hero_gallery->content).'</p>' : '';


$gallRec = Gallery::getGalleryList(6);
if($gallRec) {
	$reslgall.='<!-- Carousel | START -->
    <div class="section carousel fade">
        <div class="slider">';
        	foreach($gallRec as $gallRow) {
				$img_path = SITE_ROOT.'images/gallery/'.$gallRow->image;
				if(!empty($gallRow->image) and file_exists($img_path)) {
					$reslgall.='<img src="'.IMAGE_PATH.'gallery/'.$gallRow->image.'" alt="'.$gallRow->title.'">';
				}
			}            
        $reslgall.='</div>
        <div class="slider-nav">
            <a class="prev"><i class="icon ion-ios-arrow-left"></i></a>
            <a class="next"><i class="icon ion-ios-arrow-right"></i></a>
        </div>
    </div>
    <!-- Carousel | END -->';
}

$jVars['module:galleryList'] = $reslgall;


/*
* Gallery Page
*/
$resgall='';
if(defined('GALLERY_PAGE')) {
	global $db;
	
	$pgsql = "SELECT pg.id, pg.slug, pg.title, pgi.title AS stitle 
		FROM tbl_galleries AS pg 
		INNER JOIN tbl_gallery_images AS pgi ON 
		pg.id = pgi.galleryid
	WHERE pg.status='1' GROUP BY pg.id ORDER BY pg.sortorder DESC ";
	$pgquery = $db->query($pgsql);
	$tot_pg = $db->num_rows($pgquery);
	if($tot_pg) {		
        $filter_links = '<section class="gallery-filter-section"><div class="center"><div class="filter-container"><ul class="filter-list">';
        $gallery_content = '';
        $is_first = true;

		while($pgrow = $db->fetch_object($pgquery)) {
            // Generate dynamic filter links
            $active_class = $is_first ? ' active' : '';
            $filter_links .= '<li><a href="#'.$pgrow->slug.'" class="filter-nav-link'.$active_class.'">'.$pgrow->title.'</a></li>';
            $is_first = false;

			$sgrec = GalleryImage::getImagelist_by($pgrow->id);
			$gallery_content.='<!-- <div class="section text feature fade visible">
                <div class="center">                
                    <div class="col-1">
                        <h3>'.$pgrow->title.'</h3>
                    </div>                    
                </div>
            </div>-->
			 
			<div id="'.$pgrow->slug.'" class="gallery-category-block">
                        <h3 class="category-title">'.$pgrow->title.'</h3>
			</div>
			';
			if($sgrec) {
			$gallery_content.='<div class="gallery-grid">';
				foreach($sgrec as $sgrow) {
					$img_path = SITE_ROOT.'images/gallery/galleryimages/'.$sgrow->image;
					if(!empty($sgrow->image) and file_exists($img_path)) {
						$gallery_content.='<!-- figure class="">
		                    <a href="'.IMAGE_PATH.'gallery/galleryimages/'.$sgrow->image.'">
		                        <div class="img">
		                        	<img alt="'.$sgrow->title.'" data-original="'.IMAGE_PATH.'gallery/galleryimages/'.$sgrow->image.'"  src="system/images/blank.png">
		                        </div>
		                    </a>
		                </figure>-->
						  
                            <div class="grid-item">
                                <a href="'.IMAGE_PATH.'gallery/galleryimages/'.$sgrow->image.'" class="gallery-lightbox-item featherlight">
                                    <img src="'.IMAGE_PATH.'gallery/galleryimages/'.$sgrow->image.'" alt="'.$pgrow->title.'">
                                    <div class="overlay"><span>'.$pgrow->title.'</span></div>
                                </a>
                            </div>
						';

					}
				}
			$gallery_content.='</div>';
			}
		}
        
        $filter_links .= '</ul></div>';
        $resgall .= $filter_links . $gallery_content . '</div></section>';
	}
}

$jVars['module:allgallery'] = $resgall;
?>