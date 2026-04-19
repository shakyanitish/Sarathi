<?php
/*
* Contact form
*/
$rescont = '';
$rescont1 = '';

if (defined('CONTACT_PAGE')) {


    $siteRegulars = Config::find_by_id(1);
    $nearbyItems = '';

    $tellinked = '';
    $telno = array_map('trim', explode(',', $siteRegulars->contact_info));

    foreach ($telno as $index => $tel) {
        // remove spaces for tel link
        $cleanTel = str_replace(' ', '', $tel);

        $tellinked .= '<a href="tel:+977' . $cleanTel . '">+977 ' . $tel . '</a>';

        // separator except last item
        if ($index !== array_key_last($telno)) {
            $tellinked .= ',';
        }
    }
    $rescont .= '
                    <div class="contact-location-details">
                        <div class="location-box">
                            <h3>Hotel Location</h3>
                            <div class="location-inline-wrapper">
                                <p><i class="icon ion-ios-location"></i>' . $siteRegulars->fiscal_address . '</p>
                                <p><i class="icon ion-ios-telephone"></i>' . $tellinked . '</p>
                            </div>
                        </div>
                        <div class="nearby-box">
                            <h3>Nearby Locations</h3>
                            <ul class="nearby-list">
                                ';

    $recRows = Nearby::find_all_active();
    if (!empty($recRows)) {
        foreach ($recRows as $recRow) {
            $nearbyItems .= '
                                <li class="nearby-item" onclick="toggleNearby(this)">
                                    <div class="nearby-name">' . $recRow->title . '</div>
                                    <div class="nearby-details">
                                        <p><strong>Distance:</strong> ' . $recRow->distance . '</p>
                                        <p><strong>Opening Hours:</strong> ' . $recRow->sub_title . '</p>
                                    </div>
                                </li>
            ';
        }
    } else {
        $nearbyItems .= '
                                <li class="nearby-item nearby-item-empty">
                                    <div class="nearby-name">No nearby locations available.</div>
                                </li>
            ';
    }

    $rescont .= $nearbyItems . '
                            </ul>
                        </div>
                    </div>

    ';

    $hero_rec = hero::find_by_id(5);

    $rescont1 .= '
                <section class="contact-header-section">
            <div class="center">
                <div class="contact-title-row">
                    <h3>Contact Us</h3>
                </div>
                <div class="contact-info-row">
                    <div class="contact-tagline">
                        <div class="breadcrumb-container">
                            <ul class="breadcrumb-list">
                                <li><a href="' . BASE_URL . '">Home</a></li>
                                <li>Contact Us</li>
                            </ul>
                        </div>
                        <h2>' . (!empty($hero_rec) ? $hero_rec->title_gr : '') . '</h2>
                    </div>
                    <div class="contact-description">
                        <p>
                        ' . (!empty($hero_rec) ?strip_tags($hero_rec->content) : '') . '
                        </p>
                       
                    </div>
                </div>
            </div>
        </section>
    ';
}


$jVars['module:conatact-us'] = $rescont;
$jVars['module:conatact-us1'] = $rescont1;
