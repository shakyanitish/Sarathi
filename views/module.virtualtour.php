<?php

$vt_bread = $vt_details = $subScript = '';

//VIRTUAL TOUR ID FOR USING SPECIFIC; TO CREATE NEW VIRTUAL TOUR [VT]
//$vid = 4;

$imglink = BASE_URL . 'template/web/images/default.jpg';
// default image from Preference Mgmt
if (!empty($siteRegulars->other_upload)) {
    if (file_exists(SITE_ROOT . "images/preference/other/" . $siteRegulars->other_upload)) {
        $imglink = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
    }
}

$vt_bread .= '
    <section class="page-title" style="background-image:url(' . $imglink . ')">
        <div class="auto-container">
            <h2>360 VIEW OF HOTEL</h2>
        </div>
    </section>
';


function generate_virtual_tour($vtId)
{

    $virtual    = VirtualTour::find_by_id_active($vtId);
    $images     = Image360::find_by_v_id($vtId);
    $siteRegulars = Config::find_by_id(1);
    $vt_script_f = $vt_detail_f = '';

    if(!empty($virtual)){
        $vt_script_f .= '
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.css"/>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.js"></script>
        <script>
            // remove pannellum title when right clicking inside virtual tour
            const observer = new MutationObserver(function (mutations) {
                mutations.forEach((mutation) => {
                    $(mutation.addedNodes).each(function () {
                        if ($(this).hasClass("pnlm-about-msg")) {
                            setTimeout(() => {
                                $(this).remove(); // Automatically remove the element after 3 seconds
                                console.log("Element removed:", this);
                            }, 3000);
                        }
                    });
                });
            });
            
            // Start observing the body for changes
            observer.observe(document.body, { childList: true, subtree: true });

            pannellum.viewer("panorama' . $vtId . '", {   
                "default": {
                    "firstScene": "' . @$images[0]->title . '",
                    "author": "'.$siteRegulars->sitetitle.'",
                    "sceneFadeDuration": ' . $virtual->scene_fade_duration . ',
                    "autoLoad": true
                },
                "scenes": {
        ';

        if(!empty($images)){
            foreach ($images as $img) {
                $vt_script_f .= ' 
                        "' . $img->title . '": {
                            "title": "' . $img->title . '",
                            "hfov": ' . $img->hfov . ',
                            "pitch": ' . $img->pitch . ',
                            "yaw": ' . $img->yaw . ',
                            "type": "equirectangular",
                            "panorama": "' . IMAGE_PATH . '360/' . $img->panorama . '",
                            "hotSpots": [
                ';

                //GETTING 360 IMAGES BY IDS
                $hotspot = Hotspots::find_by_images($img->id);
                if(!empty($hotspot)){
                    foreach ($hotspot as $hp) {
                        $img_title = (!empty($hp->scene_id) AND $hp->scene_id != ' ') ? Image360::field_by_id($hp->scene_id, 'title') : '';
                        $vt_script_f .= '
                                    {
                                        "pitch": ' . $hp->hotspot_pitch . ',
                                        "yaw": ' . $hp->hotspot_yaw . ',
                                        "type": "'.$hp->hotspot_type.'",
                                        "text": "' . $hp->title . '",
                                        "sceneId": "' . $img_title . '",
                        ';

                        if (!empty($hp->target_yaw)) {
                            $vt_script_f .= '"targetYaw": ' . $hp->target_yaw . ',';
                        }

                        $vt_script_f .= '
                                        "targetPitch": ' . $hp->target_pitch . '
                                    },
                        ';
                    }
                }

                $vt_script_f .= '
                            ]
                        },
                ';
            }
        }

        $vt_script_f .= '
                }
            });
        </script>
        ';

        $vt_detail_f .= '
            <div id="panorama' . $vtId . '" class="panellum-context"></div>
            <style>
                #panorama' . $vtId . ' {
                    width:  ' . $virtual->image_width . 'px;
                    height: ' . $virtual->image_height . 'px;
                }
                .pnlm-dragfix {cursor: grab;}
            </style> 
        ';
    }


    return [$vt_detail_f, $vt_script_f];
}


// $virtuals = generate_virtual_tour(4);
// $jVars['module:vt:detail-f-4'] = $virtuals[0];
// $jVars['module:vt:script-f-4'] = $virtuals[1];

$virtuals = generate_virtual_tour(1);
$jVars['module:vt:detail-f-1'] = $virtuals[0];
$jVars['module:vt:script-f-1'] = $virtuals[1];

$virtualss = generate_virtual_tour(7);
$jVars['module:vt:detail-f-7'] = $virtualss[0];
$jVars['module:vt:script-f-7'] = $virtualss[1];

$virtualsss = generate_virtual_tour(8);
$jVars['module:vt:detail-f-8'] = $virtualsss[0];
$jVars['module:vt:script-f-8'] = $virtualsss[1];


//DEPLOYING DYNAMIC VIRTUAL TOUR IN HTML PAGES VIA JCMS TAG
$jVars['module:virtualtour:bread'] = $vt_bread;
