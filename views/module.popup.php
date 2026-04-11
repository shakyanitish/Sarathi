<?php
/*
* Comment Header Title
*/
$restst = '';

$tstRec = Popup::get_allpopup(0);
if (!empty($tstRec)) {
    $count = 1;
    $active = '';
    $restst .= '
   <div id="videoPopup" class="popup">
  <!-- Popup content -->
  <div class="popup-content">
    <span class="close-btn" onclick="closeVideoPopup()">&times;</span>
    <div class="video-container">
                            ';
    $auto = (count($tstRec) == 1) ? 'autoplay=1' : '';
    foreach ($tstRec as $tstRow) {
        //if(!empty($tstRow->source){
        $active = ($count == 1) ? 'active' : '';
        $parts = explode('.',$tstRow->source);
        if($parts[1] == 'facebook'){
            $restst .= ' 
                <style>
                @media (min-width: 768px){
                    #modal-popup-video .modal-dialog {
                        width: 28%;
                    }
                }
                </style>
                    <iframe src="https://www.facebook.com/plugins/video.php?href='.urlencode($tstRow->source).'&width=365&show_text=false&appId=668102922175064&height=650" 
                    width="365" height="650" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share" allowFullScreen="true"></iframe>
                
               
                ';
        } else {
            $restst .= ' 
                <div class="item ' . $active . '">
                    <iframe width="100%" id="yt-video" height="600px" src="https://www.youtube.com/embed/' . get_youtube_code($tstRow->source) . '?' . $auto . '" frameborder="0" allow="accelerometer; autoplay ; encrypted-media; gyroscope; picture-in-picture" allowfullscreen ></iframe>  
                </div>
                ';
        }
        $count++;
    }
    if(sizeof($tstRec) > 1) {
        $restst .= '
                <!--Begin Previous and Next buttons-->
               <!-- <a class="left carousel-control" href="#videoCarousel" role="button" data-slide="prev"> 
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a> 
                <a class="right carousel-control" href="#videoCarousel" role="button" data-slide="next"> 
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>-->
        ';
    }
    $restst .= ' <!--end carousel-inner-->
                       </div>
  </div>
</div>

';
}

// $restst = '';
// $popRec = Popup::get_allpopup(1);
//     if(!empty($tstRec)){
//     //side img button
//     $restst .= '<div class="splashbg hidden">';

//     foreach ($tstRec as $popr) {

//     if (($popr->image) != "a:0:{}") {
//         $q = implode(unserialize($popr->image));
//         $file_path = SITE_ROOT . 'images/popup/' . $q;
//         if (file_exists($file_path)) {
//             $imglink = IMAGE_PATH . 'popup/' . $q;
//         } else {
//             $imglink = BASE_URL . 'template/cms/images/welcome.jpg';
//         }
//     }
// }
//     $restst .= '
        
//             <div class="cstm_modal">
//                 <a href="#" class="close closepop" style="color:#fff;">X</a>
//                 <img src="' . $imglink . '">
//             </div>
//         </div>
//     ';
// //     <!--<video width="100%" height="565" autoplay controls>
// //     <source src='' type="video/mp4" >
// //     your browser does not support the video tag.
// // </video>-->
// }


// // $jVars['module:popup'] = $restst;



/*********** From new */



$popRec = Popup::get_allpopup(1);
if (!empty($popRec)) {
    //modal img
    $count = 1;
    $active = '';
    $restst = ' 
    <div id="popup" class="popup">
  <!-- Popup content -->
  <div class="popup-content">
    <span class="close-btn" onclick="closePopup()">&times;</span>
        <div class="carousel">		
                            ';
    foreach ($popRec as $popr) {
        if (($popr->image) != "a:0:{}") {
            $q = implode(unserialize($popr->image));
            $file_path = SITE_ROOT . 'images/popup/' . $q;
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'popup/' . $q;
            } else {
                $imglink = BASE_URL . 'template/cms/images/welcome.jpg';
            }
            $active = ($count == 1) ? 'active' : '';
            $linkhref = ($popr->linktype == 1) ? $popr->linksrc : BASE_URL . $popr->linksrc;
            $target = ($popr->linktype == 1) ? 'target="_blank"' : '';
            $restst .= '  
        <a href="' . $linkhref . '" ' . $target . '>  <img src="' . $imglink . '" alt="' . $popr->title . '"></a>
             
                ';
                // pr($imglink);

            $count++;
        }
    }
    $restst .= ' 
    ';
    if(sizeof($popRec) > 1) {
        $restst .= '
           
        ';
    }
    $restst .='
                        
                         </div>
  </div>
</div>				
';

    //side img
    // $count = 1;
    // $active = '';
    // $restst .= ' 
    //         <div class="deals d-none">
    //         <a href="javascript:void(0);" class="close closepop">*</a>
    //             <div id="carouselExampleControlsss" class="carousel slide" data-ride="carousel">
    //               <div class="carousel-inner">';
    // foreach ($popRec as $popr) {
    //     if (($popr->image) != "a:0:{}") {
    //         $q = implode(unserialize($popr->image));
    //         $file_path = SITE_ROOT . 'images/popup/' . $q;
    //         if (file_exists($file_path)) {
    //             $imglink = IMAGE_PATH . 'popup/' . $q;
    //         } else {
    //             $imglink = BASE_URL . 'template/cms/images/welcome.jpg';
    //         }
    //         $active = ($count == 1) ? 'active' : '';
    //         $restst .= '  
    //             <div class="item ' . $active . '">
                    
    //                 <div class="cover_img">
    //                     <a href="' . BASE_URL . '' . $popr->linksrc . '">
    //                         <img src="' . $imglink . '" class="img-responsive">
    //                     </a>
    //                  </div>
    //             </div>
    //             ';
    //         $count++;
    //     }
    // }
    // $restst .= ' </div>
    //             <a class="left carousel-control" href="#carouselExampleControlsss" role="button" data-slide="prev"> 
    //                 <span class="glyphicon glyphicon-chevron-left"></span>
    //             </a> 
    //             <a class="right carousel-control" href="#carouselExampleControlsss" role="button" data-slide="next"> 
    //                 <span class="glyphicon glyphicon-chevron-right"></span>
    //             </a>
    //         </div>
    //     </div>';

    // //side img button
    // $restst .= '
    //     <!--<ul class="side-icon-block">
    //         <li class="">
    //             <a id="offon" href="javaScript:void(0);">
    //                 <img class="img-fluid" alt="Offers" title="Offers" width="50" src="' . IMAGE_PATH . 'offerside.png">
    //             </a> 
    //         </li> 
    //     </ul>-->
    // ';
}

// pr($restst,1);
$jVars['module:popup'] = $restst;
?>
