<?php 

//Header Section
$hero_offer = hero::find_by_id(6);
$jVars['module:offer-header-title'] = (!empty($hero_offer)) ? $hero_offer->title_gr : '';
$jVars['module:offer-header-description'] = (!empty($hero_offer)) ? '<p>'.strip_tags($hero_offer->content).'</p>' : '';


//End Here

$resoffr='';
$resrandoffr='';
$resoffergrid='';
$resexclusive='';
$resofferfeature='';

if(defined('OFFERS_PAGE')) {
    $offrRec = Offers::get_offer_by();
    if($offrRec) {
        $resoffr.='<div class="section panel hero full fade" style="background:#555;">
            <div class="slider">';
                foreach($offrRec as $offrRow) {
                    $file_path = SITE_ROOT.'images/offers/'.$offrRow->image;
                    if(file_exists($file_path) and !empty($offrRow->image)) {
                        $linkTarget = ($offrRow->linktype == 1)? ' target="_blank" ' : ''; 
                        $linksrc    = ($offrRow->linktype != 1)? BASE_URL.$offrRow->linksrc : $offrRow->linksrc;
                        $linkstart  = ($offrRow->linksrc!='')? '<a class="button" href="'.$linksrc.'" '.$linkTarget.'>' : '<a class="button" href="javascript:void(0);">';
                        $linkend    = ($offrRow->linksrc!='')? '</a>' : '</a>' ;

                        $resoffr.='<div class="item feature">
                            <div class="back" data-image="'.IMAGE_PATH.'offers/'.$offrRow->image.'"></div>
                            <div class="details">
                                <h1>'.$offrRow->title.'</h1>
                                <p>'.strip_tags($offrRow->content).'</p>
                                <p>'.$linkstart.'Book Package <i class="icon ion-ios-arrow-right"></i>'.$linkend.'</p>
                            </div>
                            <div class="screen">
                                <div class="back" data-image="'.IMAGE_PATH.'offers/'.$offrRow->image.'"></div>
                            </div>
                        </div>';

                    }
                }

            $resoffr.='</div> 
            <div class="slider-nav">
                <a class="prev"><i class="icon ion-ios-arrow-left"></i></a>
                <a class="next"><i class="icon ion-ios-arrow-right"></i></a>
            </div>  
        </div>';
    }

    // Rand offer
    $randRec = Offers::get_offer_rand();
    if(!empty($randRec)) {
        $file_path = SITE_ROOT.'images/offers/'.$randRec->image;
        if(file_exists($file_path) and !empty($randRec->image)) {
            $linkTarget = ($randRec->linktype == 1)? ' target="_blank" ' : ''; 
            $linksrc    = ($randRec->linktype != 1)? BASE_URL.$randRec->linksrc : $randRec->linksrc;
            $linkstart  = ($randRec->linksrc!='')? '<a href="'.$linksrc.'" '.$linkTarget.'>' : '<a href="javascript:void(0);">';
            $linkend    = ($randRec->linksrc!='')? '</a>' : '</a>' ;
            $resrandoffr.='<div class="section panel">
                <div class="item fade">
                    <div class="back" data-image="'.IMAGE_PATH.'offers/'.$randRec->image.'"></div>
                    <div class="panel-button">
                        <div class="button-container">
                            '.$linkstart.$randRec->title.$linkend.'
                            <span>Our Offer <i class="icon ion-ios-arrow-right"></i>
                        </div>
                    </div>
                </div>

            </div>';
        }
    }

}

// Exclusive offers slider (exclusive == 1)
$exclRec = Offers::find_by_sql("SELECT * FROM tbl_offers WHERE status=1 AND exclusive=1 ORDER BY sortorder DESC");
if($exclRec) {
    $resexclusive.='<div class="section carousel inner-slider fade visible">
        <div class="center">
            <div class="slider">';
    foreach($exclRec as $offrRow) {
        $file_path = SITE_ROOT.'images/offers/'.$offrRow->image;
        if(file_exists($file_path) && !empty($offrRow->image)) {
            $resexclusive.='<div class="col-3"><img src="'.IMAGE_PATH.'offers/'.$offrRow->image.'" alt="'.$offrRow->title.'"></div>';
        }
    }
    $resexclusive.='</div>
            <div class="slider-controls">
                <a class="prev" href="#"><i class="icon ion-ios-arrow-left"></i></a>
                <div class="pagination"></div>
                <a class="next" href="#"><i class="icon ion-ios-arrow-right"></i></a>
            </div>
        </div>
    </div>';
}

// Offers feature list (exclusive != 1 or general offers)
$offrRecList = Offers::find_by_sql("SELECT * FROM tbl_offers WHERE status=1 AND (exclusive=0 OR exclusive IS NULL) ORDER BY sortorder DESC");
if ($offrRecList) {
    $resofferfeature .= '<div class="section packages-feature-list fade visible">
        <div class="timeline-header">
            <span>OUR DETAILS</span>
        </div>
        <div class="center">';
    foreach($offrRecList as $k=>$offrRow) {
        $file_path = SITE_ROOT.'images/offers/'.$offrRow->image;
        if(file_exists($file_path) && !empty($offrRow->image)) {
            
            $linksrc = ($offrRow->linktype != 1) ? BASE_URL.$offrRow->linksrc : $offrRow->linksrc;
            $linkTarget = ($offrRow->linktype == 1) ? ' target="_blank" ' : ''; 
            $href = !empty($linksrc) ? $linksrc : 'javascript:void(0);';

            $resofferfeature.='<div class="item fade visible">
                <div class="thumb">
                    <img src="'.IMAGE_PATH.'offers/'.$offrRow->image.'" alt="'.$offrRow->title.'">
                </div>
                <div class="details">
                    <h2>'.$offrRow->title.'</h2>

                    <p>'.$offrRow->sub_title.'</p>
                    '.$offrRow->content.'
                     <a class="button inquiry-btn" href="javascript:void(0);" data-offer-title="'.$offrRow->title.'" style="margin-top: 25px; display: inline-block;">
                                Inquiry Now <i class="icon ion-ios-arrow-right"></i>
                    </a>
                </div>
            </div>';
        }
    }
    $resofferfeature.='</div>
    </div>';
}

$jVars['module:offers-list'] = $resoffr;
$jVars['module:offers-rand'] = $resrandoffr;
$jVars['module:offers-exclusive'] = $resexclusive;
$jVars['module:offers-feature-list'] = $resofferfeature;