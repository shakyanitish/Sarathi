<?php
$siteRegulars = Config::find_by_id(1);
$lastElement = '';
$tellinked = '';
$contact = '';

$tellinked = '';
$telno = array_map('trim', explode(',', $siteRegulars->contact_info));

foreach ($telno as $index => $tel) {
    // remove spaces for tel link
    $cleanTel = str_replace(' ', '', $tel);

    $tellinked .= '<a href="tel:+977' . $cleanTel . '">
                    +977 ' . $tel . '
               </a>';

    // separator except last item
    if ($index !== array_key_last($telno)) {
        $tellinked .= ', ';
    }
}



$emailinked = '';
$emails = array_map('trim', explode(',', $siteRegulars->email_address));

foreach ($emails as $index => $email) {
    $emailinked .= '<a href="mailto:' . $email . '">
                    ' . $email . '
                   </a>';

    // separator except last item
    if ($index !== array_key_last($emails)) {
        $emailinked .= ', ';
    }
}



$footer = '

        <footer class="sarathi-static-footer">
            <div class="container-wide">
                <div class="footer-main-row">
                    <!-- Column 1: Brand & Info -->
                    <div class="footer-col-brand">
                        <a href="' . BASE_URL . '">
                            <img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" alt="' . $siteRegulars->sitetitle . '">
                        </a>
                        <div class="footer-info-text">
                            <i class="icon ion-ios-location"></i>
                            <span>' . $siteRegulars->fiscal_address . '<br>
                            ' . $siteRegulars->fax . '</span>
                        </div>
                        <div class="footer-info-text">
                            <i class="icon ion-ios-telephone"></i>
                            <span>' . $tellinked . '</span>
                        </div>
                        <div class="footer-info-text">
                            <i class="icon ion-ios-email"></i>
                            <span>' . $emailinked . '</span>
                        </div>
                        <div class="footer-social-links">
                            ' . $jVars['module:socilaLinkbtm'] . '

                        </div>
                    </div>

                    <!-- Column 2: Quick Links -->
                    <div class="footer-col-links">
                        <h4 class="footer-col-title">Quick Links</h4>
                        <ul class="footer-links-list">
                        ' . $jVars['module:bottom_menu'] . '
                        </ul>
                    </div>

                    <!-- Column 3: Disclaimer -->
                    <div class="footer-col-links">
                        <h4 class="footer-col-title">Disclaimer</h4>
                        <ul class="footer-links-list">
                            ' . $jVars['module:bottom_menu2'] . '
                        </ul>
                    </div>

                    <!-- Column 4: Online Reservation -->
                    <div class="footer-col-links">
                        <h4 class="footer-col-title">Online Reservation</h4>
                        <ul class="footer-links-list">
                            ' . $jVars['module:bottom_menu3'] . '
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Copyright Bar -->
            <div class="footer-bottom-bar">
                <div class="container-wide">
                    <p>' . $jVars['site:copyright'] . '</p>
                    <p>Website by <a href="http://www.longtail.info" target="_blank">Longtail e-media</a></p>
                    <div class="footer-payment-status">
                        <span>We Accept</span>
                        <div class="payment-logos">
                            <img src="' . BASE_URL . 'template/web/images/logo-visa.png" alt="Visa">
                            <img src="' . BASE_URL . 'template/web/images/logo-mastercard.png" alt="MasterCard">
                            <img src="' . BASE_URL . 'template/web/images/logo-amex.png" alt="American Express">
                            <img src="' . BASE_URL . 'template/web/images/logo-unionpay.png" alt="UnionPay">
                            <img src="' . BASE_URL . 'template/web/images/logo-jcb.png" alt="JCB">
                        </div>
                    </div>
                </div>
            </div>
        </footer>


 ';



$jVars['module:footer'] = $footer;
