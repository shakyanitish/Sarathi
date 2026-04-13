<?php

$resbking = '';

$booking_type = Config::getField('book_type', true);
$booking_page = Config::getField('hotel_page', true);
$booking_code = Config::getField('hotel_code', true);
// Default Reservation
if ($booking_type == 1) {
    $resbking .= '<div id="book-bar"></div>
<div class="book-bar fade">
	<div class="center">
    	<div class="date-field date-arrival">
            <div class="date">
                <span class="tag">Arrive</span>
                <span class="arrival-day"></span>
                <span class="arrival-month"></span>
            </div>
        </div>
        <div class="date-field date-departure">
            <div class="date">
                <span class="tag">Depart</span>
                <span class="departure-day"></span>
                <span class="departure-month"></span>
            </div>
        </div>
        <div class="date-field date-book">
            <div class="date">
                <i class="icon ion-paper-airplane"></i>
            </div>
        </div>
    </div>
</div>
    <form action="' . BASE_URL . 'reservation" method="post" class="book-form">
        <input name="check_in" type="hidden" class="arrival" />
        <input name="check_out" type="hidden" class="departure" />
        <button id="btn-book"></button>
    </form>';
}

// hotel 
if ($booking_type == 2) {
    $resbking .= '<div id="book-bar"></div>
    <div class="book-bar fade">
        <div class="center">
            <div class="date-field date-arrival">
                <div class="date">
                    <span class="tag">Arrive</span>
                    <span class="arrival-day"></span>
                    <span class="arrival-month"></span>
                </div>
            </div>
            <div class="date-field date-departure">
                <div class="date">
                    <span class="tag">Depart</span>
                    <span class="departure-day"></span>
                    <span class="departure-month"></span>
                </div>
            </div>
            <div class="date-field date-book">
                <div class="date">
                    <i class="icon ion-paper-airplane"></i>
                </div>
            </div>
        </div>
    </div>
    <form action="' . BASE_URL . $booking_page . '" method="get" target="_blank" class="book-form">
        <input type="hidden" name="hotel_code" value="' . $booking_code . '">   
        <input type="hidden" class="arrival" name="hotel_check_in"/>
        <input type="hidden" class="departure" name="hotel_check_out"/>
        <button id="btn-book"></button>
    </form>';
}
// Fastbooking
if ($booking_type == 3) {
    $resbking .= '<div id="book-bar"></div>
    <div class="book-bar fade">
        <div class="center">
            <div class="date-field date-arrival">
                <div class="date">
                    <span class="tag">Arrive</span>
                    <span class="arrival-day"></span>
                    <span class="arrival-month"></span>
                </div>
            </div>
            <div class="date-field date-departure">
                <div class="date">
                    <span class="tag">Depart</span>
                    <span class="departure-day"></span>
                    <span class="departure-month"></span>
                </div>
            </div>
            <div class="date-field date-book">
                <div class="date">
                    <i class="icon ion-paper-airplane"></i>
                </div>
            </div>
        </div>
    </div>
    <form target="dispoprice" name="idForm" action="http://www.fastbookings.biz/DIRECTORY/' . $booking_page . '" class="book-form">
        <input name="arrival" type="hidden" class="arrival" />
        <input name="departure" type="hidden" class="departure" />
        <input type="hidden" name="showPromotions" value="1">
        <input type="hidden" name="langue" value="">        
        <input type="hidden" name="adulteresa" value="1">
        <input type="hidden" name="enfantresa" value="">
        <input type="hidden" name="Clusternames" value="' . $booking_code . '">
        <input type="hidden" name="Hotelnames" value="' . $booking_code . '">
        <button name="B1" id="btn-book" onclick="hhotelDispoprice(this.form);"></button>
    </form>';
}
// Booking.com
if ($booking_type == 4) {
    $resbking .= '<div id="book-bar"></div>
    <div class="book-bar fade">
        <div class="center">
            <div class="date-field date-arrival">
                <div class="date">
                    <span class="tag">Arrive</span>
                    <span class="arrival-day"></span>
                    <span class="arrival-month"></span>
                </div>
            </div>
            <div class="date-field date-departure">
                <div class="date">
                    <span class="tag">Depart</span>
                    <span class="departure-day"></span>
                    <span class="departure-month"></span>
                </div>
            </div>
            <div class="date-field date-book">
                <div class="date">
                    <i class="icon ion-paper-airplane"></i>
                </div>
            </div>
        </div>
    </div>
    <form action="http://www.booking.com/hotel/np/' . $booking_page . '" method="get" target="booking_popup" onsubmit="window.open(\'about:blank\', \'booking_popup\', \'width=1000,height=800\');" class="book-form">
        <input type="hidden" class="arrival" />
        <input type="hidden" class="departure" />        
        <input type="hidden" name="aid" value="330843" />
        <input type="hidden" name="hotel_id" value="' . $booking_code . '" />
        <input type="hidden" name="lang" value="en" />
        <input type="hidden" name="pb" value="" />
        <input type="hidden" name="stage" value="0" />
        <input type="hidden" name="hostname" value="www.booking.com" />
        <input type="hidden" name="checkin_monthday" class="checkin-monthday" value="' . date('d') . '" />
        <input type="hidden" name="checkin_year_month" class="checkin-year-month" value="' . date('Y-m') . '" />
        <input type="hidden" name="checkout_monthday" class="checkout-monthday" value="' . date('d', strtotime('+1 day')) . '" />
        <input type="hidden" name="checkout_year_month" class="checkout-year-month" value="' . date('Y-m') . '" />
        <button id="btn-book"></button>
</form>';
}

$jVars['module:booking-form'] = $resbking;
$script = '';
// Fastbooking
if ($booking_type == 3) {
    $script .= '<script type="text/javascript" src="' . JS_PATH . 'fastbooking/fbparam.js"></script>' . "\n";
    $script .= '<script type="text/javascript" src="' . JS_PATH . 'fastbooking/fblib.js"></script>' . "\n";
    $script .= '<script type="text/javascript" src="' . JS_PATH . 'fastbooking/fbfulltrack.js"></script>' . "\n";
}
$jVars['footer:script'] = $script;