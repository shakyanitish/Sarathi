<?php $configRec  = Config::find_by_id(1);
/*
* Home About Text
*/
$reshtxt='';
if(defined('HOME_PAGE')) {
	$reshtxt.= $configRec->breif;
}

$jVars['module:about-text'] = $reshtxt;

$resfloc='';
$reslocinfo='';
$resgmap='';
$number = '';
$numberc = '';

$tells = explode(",",$configRec->contact_info);
foreach($tells as $tell){
    if(end($tells) == $tell){
        $number.='<a href="tel:'.preg_replace('/\s+/', '', $tell).'"><strong>'.$tell.'</strong></a>';
        $numberc.='<a href="tel:'.preg_replace('/\s+/', '', $tell).'" style="
    text-decoration: none;">'.$tell.'</a>';
    }else{
        $number.='<a href="tel:'.preg_replace('/\s+/', '', $tell).'"><strong>'.$tell.'</strong></a>, ';
        $numberc.='<a href="tel:'.preg_replace('/\s+/', '', $tell).'" style="
    text-decoration: none;"><strong>'.$tell.'</strong></a>, ';
    }
}

$configRec  = Config::find_by_id(1);
if($configRec) { 
   	/*
	* Footer office location
	*/
	$resfloc.='<footer class="fade">
        <div class="col-12">
           
        
        
            	'.$configRec->fiscal_address.'  |  
           		'.$configRec->mail_address.'  |  
            	<!-- <a href="tel:'.preg_replace('/\s+/', '', $configRec->contact_info).'"><strong>'.$configRec->contact_info.'</strong> -->  
            	'.$number.' |  
            	<a href="mailto:'.$configRec->email_address.'" target="_blank"><strong>'.$configRec->email_address.'</strong></a>
          
        </div>
        <div class="footer-nav">
        	<ul class="footer-links">
            	<li class="hide">'.$jVars['site:copyright'].'</li>
                <li><a href="http://www.longtail.info" target="_blank">Website by Longtail e-media</a></li>
            </ul>
        </div>

    </footer>';


	/*
	* Office location
	*/
	$reslocinfo.='<div class="contact-info-wrapper">
        <div class="col-3">
            <div class="item contact-card" >
                <i class="icon ion-ios-telephone-outline"></i>
                <h4>Call our Reservations</h4>
                <div class="contact-details">'.$numberc.'</div>
            </div>
        </div>
        
        <div class="col-3">
            <div class="item contact-card">
                <i class="icon ion-ios-email-outline"></i>
                <h4>Send an Enquiry</h4>
                <div class="contact-details"><a href="mailto:'.$configRec->email_address.'" target="_blank">'.$configRec->email_address.'</a></div>
            </div>
        </div>
        
        <div class="col-3">
            <div class="item contact-card">
                <i class="icon ion-ios-eye-outline"></i>
                <h4>Visit our Hotel</h4>
                <div class="contact-details">'.$configRec->fiscal_address.', '.$configRec->mail_address.'</div>
            </div>
        </div>
    </div>';

	/*
	* Google map
	*/
	if($configRec->location_type==1) {
		$resgmap.='<div class="nopadding nomargin" id="overlay">
	        <iframe id="map" width="100%" height="450" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src='.$configRec->location_map.'></iframe>
	    </div>';
	}
	else {
		$resgmap.='<div class="nopadding nomargin" id="overlay">
	        <img src="'.IMAGE_PATH.'preference/locimage/'.$configRec->location_image .'" alt="'.$configRec->sitetitle.'" class="img-responsive">
	    </div>';
	}

}
$jVars['module:officeLocation'] = $resfloc;
$jVars['module:office_information'] = $reslocinfo;
$jVars['module:office_map'] = $resgmap;
?>