/* Alpha Hotel: HTML Template by Klaye Morrison (http://klayemorrison.com) */



/******************** Document Ready ********************/

$(document).ready(function () {

	'use strict';

	// Desktop Detection - Applies '.hover' class to document if non-touch browser

	if (!('ontouchstart' in document.documentElement)) { document.documentElement.className += 'hover'; }



	/******************** Header ********************/

	// Active Navigation

	$('nav li a').each(function () {
		if (this.href == window.location.href.split('#')[0]) {
			$(this).addClass('active');
			$(this).parent().parent().parent().find('> a').addClass('active');
			$(this).parent().parent().parent().parent().parent().find('> a').addClass('active');
		}
	});

	// Drop Downs

	$('nav li').hover(
		function () {
			if ($(window).width() > 1024) {
				$(this).find('ul:first').css('display', 'block').stop().animate({ opacity: '1' }, 300, 'easeInOutQuart');
			}
		},
		function () {
			if ($(window).width() > 1024) {
				$(this).find('ul:first').stop().animate({ opacity: '0' }, 300, 'easeInOutQuart', function () {
					$(this).css({ display: 'none' });
				});
			}
		}
	);

	// Mobile Navigation

	var menu = $('#mobilenav');
	var nav = $('nav ul:first-child');

	$(menu).on('click', function (e) {
		e.preventDefault();
		nav.stop().slideToggle(300);
	});

	// Scroll

	var lastScrollTop = 0;
	$(window).scroll(function () {
		var st = $(window).scrollTop();

		if (st > 0) {
			$('header').addClass('scroll');
		}
		else {
			$('header').removeClass('scroll');
		}

		if (st > lastScrollTop && st > 80) {
			// Scroll Down
			$('header, body').addClass('header-hidden');
		} else {
			// Scroll Up
			$('header, body').removeClass('header-hidden');
		}
		lastScrollTop = st;

		if ($('.book-bar').length) {
			if (st > $('#book-bar').offset().top) {
				$('body').addClass('scroll');
			}
			else {
				$('body').removeClass('scroll');
				$('body').removeClass('book-slide');
			}
		}
	});

	// Languages

	if ($(window).width() <= 1024) {
		var langpull = $('#language li:first-child');
		var langmenu = $('#language');

		$(langpull).on('click', function (e) {
			e.preventDefault();
			langmenu.toggleClass('active');
		});
	}
	else {
		$('#language').hover(
			function () {
				$(this).toggleClass('active');
			});
	}



	/******************** Date Picker ********************/

	var months = 2;

	if ($(window).width() < 1000) {
		var months = 1;
	}

	if ($('.book-bar').length) {

		// Booking Bar

		$('.arrival').datepicker({
			minDate: '0M',
			numberOfMonths: months,
			// dateFormat: 'd MM yy',
			dateFormat: 'yy-m-d',
			onSelect: function () {
				$('.arrival-day').html($('.arrival').val().split(' ')[0]);
				$('.arrival-month').html($('.arrival').val().split(' ')[1]);
				var date = $(this).datepicker('getDate');
				date.setDate(date.getDate() + 1);
				$('.departure').datepicker('option', 'minDate', date);
				$('.departure-day').html($('.departure').val().split(' ')[0]);
				$('.departure-month').html($('.departure').val().split(' ')[1]);
			},
			onClose: function (dateText, inst) {
				if ($('.checkin-monthday')[0]) {
					$('.checkin-monthday').val(dateText.split('-')[2]);
					$('.checkin-year-month').val(dateText.split('-')[0] + '-' + dateText.split('-')[1]);
				}
			}
		});
		$('.departure').datepicker({
			minDate: '0M',
			numberOfMonths: months,
			// dateFormat: 'd MM yy',
			dateFormat: 'yy-m-d',
			onSelect: function () {
				$('.departure-day').html($('.departure').val().split(' ')[0]);
				$('.departure-month').html($('.departure').val().split(' ')[1]);
			},
			onClose: function (dateText, inst) {
				if ($('.checkout-monthday')[0]) {
					$('.checkout-monthday').val(dateText.split('-')[2]);
					$('.checkout-year-month').val(dateText.split('-')[0] + '-' + dateText.split('-')[1]);
				}
			}
		});

		$('.arrival').datepicker().datepicker('setDate', '0');
		$('.arrival-day').html($('.arrival').val().split(' ')[0]);
		$('.arrival-month').html($('.arrival').val().split(' ')[1]);

		$('.departure').datepicker().datepicker('setDate', '1');
		var date = $('.arrival').datepicker('getDate');
		date.setDate(date.getDate() + 1);
		$('.departure').datepicker('option', 'minDate', date);
		$('.departure-day').html($('.departure').val().split(' ')[0]);
		$('.departure-month').html($('.departure').val().split(' ')[1]);

		$('.date-arrival').click(function () { $('.arrival').datepicker('show'); });
		$('.date-departure').click(function () { $('.departure').datepicker('show'); });
		$('.date-book').click(function () {
			$('#btn-book').trigger('click');
			$('form.book-form').submit();
		});

		$('.hover .book-bar').hover(
			function () {
				$(this).parent().find('.section').addClass('over');
			},
			function () {
				$(this).parent().find('.section').removeClass('over');
			}
		);
	}

	// Contact Form

	$('.contact-arrival').datepicker({
		minDate: '0M',
		numberOfMonths: months,
		// dateFormat: 'd MM yy',
		dateFormat: 'yy-m-d',
		onSelect: function () {
			var date = $(this).datepicker('getDate');
			date.setDate(date.getDate() + 1);
			$('.contact-departure').datepicker('option', 'minDate', date);
		}
	});
	$('.contact-departure').datepicker({
		minDate: '0M',
		numberOfMonths: months,
		// dateFormat: 'd MM yy'
		dateFormat: 'yy-m-d',
	});

	if ($('.contact-arrival').val() === '') { $('.contact-arrival').datepicker().datepicker('setDate', '0'); }
	if ($('.contact-departure').val() === '') { $('.contact-departure').datepicker().datepicker('setDate', '1'); }



	/******************** Sections ********************/

	// Background Image Replace

	$('.back').each(function () {
		var attr = $(this).attr('data-image');
		if (typeof attr !== typeof undefined && attr !== false) {
			$(this).css('background-image', 'url(' + attr + ')');
			$(this).css('background-position-y', 'center');


		}
	});

	// Photo Panel

	$('.hover .panel .item .panel-button a').hover(
		function () {
			$(this).parent().parent().parent().addClass('over');
		},
		function () {
			$(this).parent().parent().parent().removeClass('over');
		}
	);

	$('.hover .panel .item.feature .button').hover(
		function () {
			$(this).parent().parent().parent().addClass('over');
		},
		function () {
			$(this).parent().parent().parent().removeClass('over');
		}
	);

	$('.section.panel.hero .slider').carouFredSel({
		height: 'variable',
		swipe: true,
		responsive: true,
		scroll: {
			pauseOnHover: true,
			duration: 600,
			fx: 'crossfade'
		},
		items: {
			visible: 1,
			height: 'variable'
		},
		auto: { timeoutDuration: 4000 },
		prev: { button: '.section.panel .prev' },
		next: { button: '.section.panel .next' }
	});

	// Carousel

	$('.section.carousel.horizontal .slider').carouFredSel({
		width: '100%',
		height: 'variable',
		swipe: true,
		align: false,
		scroll: {
			items: 1,
			pauseOnHover: true,
			easing: 'easeInOutQuart',
			duration: 600
		},
		items: {
			visible: 'variable'
		},
		auto: { timeoutDuration: 4000 },
		prev: { button: '.section.carousel.horizontal .prev' },
		next: { button: '.section.carousel.horizontal .next' }
	});

	$('.inner-slider .slider').carouFredSel({
		responsive: true,
		width: '100%',
		prev: { button: '.inner-slider .prev' },
		next: { button: '.inner-slider .next' },
		pagination: { container: '.inner-slider .pagination' },
		scroll: {
			items: 1,
			duration: 600,
			pauseOnHover: true,
			easing: 'easeInOutQuart'
		},
		items: {
			visible: 3,
			height: 'variable'
		},
		auto: { timeoutDuration: 4000 }
	});

	$('.section.carousel:not(.horizontal):not(.inner-slider) .slider').carouFredSel({
		height: 'variable',
		swipe: true,
		responsive: true,
		scroll: {
			pauseOnHover: true,
			duration: 600,
			fx: 'crossfade'
		},
		items: {
			visible: 1,
			height: 'variable'
		},
		auto: { timeoutDuration: 4000 },
		prev: { button: '.section.carousel:not(.horizontal) .prev' },
		next: { button: '.section.carousel:not(.horizontal) .next' }
	});

	// Room Types Slider Fallback (Only if > 3 items)
	var $roomGrid = $('.room-types-grid');
	if ($roomGrid.length > 0 && $roomGrid.children('.room-type-card').length > 3) {
		$roomGrid.addClass('is-slider');
		$roomGrid.carouFredSel({
			responsive: true,
			width: '100%',
			scroll: {
				items: 1,
				duration: 600,
				pauseOnHover: true,
				easing: 'easeInOutQuart'
			},
			items: {
				visible: { min: 1, max: 3 }
			},
			auto: { timeoutDuration: 5000, play: true },
			swipe: { onMouse: true, onTouch: true }
		});
	}

	// Article Sliders
	$('.article-slider-wrapper .slider').each(function () {
		var $this = $(this);
		var $nav = $this.parent().find('.slider-nav');
		var $prev = $nav.find('.prev');
		var $next = $nav.find('.next');

		$this.carouFredSel({
			width: '100%',
			height: 'variable',
			align: false,
			swipe: true,
			responsive: true,
			scroll: {
				pauseOnHover: true,
				duration: 600,
				fx: 'crossfade'
			},
			items: {
				visible: 1,
				width: '100%',
				height: 'variable'
			},
			auto: false,
			prev: { button: $prev },
			next: { button: $next },
			onCreate: function () {
				$(window).on('resize', function () {
					$this.parent().add($this).height($this.children().first().height());
				}).trigger('resize');
			}
		});
	});

	// Gallery

	var $container = $('.gallery'),
		colWidth = function () {
			var w = $container.width(),
				columnNum = 3,
				columnWidth = 0,
				sizeVar = 0;
			if (w > 700) { columnNum = 3; }
			else if (w > 480) { columnNum = 2; }
			else { columnNum = 1; }

			columnWidth = Math.floor(w / columnNum);
			function columnSize() {
				if (w < 340) { sizeVar = 25; }
				else if (w < 500) { sizeVar = 40; }
				else if (w < 640) { sizeVar = 50; }
				else if (w < 770) { sizeVar = 60; }
				else if (w < 1024) { sizeVar = 50; }
				else { sizeVar = 64; }
				$container.find('figure').each(function () {
					var $item = $(this),
						multiplier_w = $item.attr('class').match(/item-w(\d)/),
						multiplier_h = $item.attr('class').match(/item-h(\d)/),
						width = multiplier_w ? columnWidth * multiplier_w[1] : columnWidth,
						height = multiplier_h ? columnWidth * multiplier_h[1] * 0.72 - sizeVar : columnWidth * 0.72 - (sizeVar / 2);
					$item.css({
						width: width,
						height: height
					});
				});
			}
			columnSize();
			return columnWidth;
		};

	function runisotope() {
		$container.isotope({
			layoutMode: 'packery',
			itemSelector: 'figure',
			transitionDuration: '0',
			resizable: false,
			masonry: {
				columnWidth: colWidth()
			}
		});
	}

	runisotope();

	$(window).resize(function () {
		runisotope();
	});

	function featherOpen() { $('.featherlight-content').addClass('pop'); }
	function featherClose() { $('.featherlight-content').removeClass('pop'); }

	$('.gallery figure img').lazyload({
		effect: 'fadeIn',
		failure_limit: 10,
		effectspeed: 300
	});

	$('.gallery figure a').featherlightGallery({
		gallery: {
			fadeIn: 300,
			fadeOut: 300
		},
		openSpeed: 300,
		closeSpeed: 300,
		galleryFadeIn: 0,
		galleryFadeOut: 0,
		afterOpen: featherOpen,
		beforeClose: featherClose
	});

	// Hotel Gallery Lightbox
	$('.hotel-gallery-item').each(function() {
		var imgSrc = $(this).find('img').attr('src');
		$(this).attr('href', imgSrc);
	});

	$('.hotel-gallery-item').featherlightGallery({
		gallery: {
			fadeIn: 300,
			fadeOut: 300
		},
		openSpeed: 300,
		closeSpeed: 300,
		closeIcon: null,
		afterOpen: featherOpen,
		beforeClose: featherClose
	});

	// Boxes

	$('.hover .boxes .item .button').hover(
		function () {
			$(this).parent().parent().parent().addClass('over');
		},
		function () {
			$(this).parent().parent().parent().removeClass('over');
		}
	);

	$('.hover .boxes .item .thumb a').hover(
		function () {
			$(this).parent().parent().addClass('over');
		},
		function () {
			$(this).parent().parent().removeClass('over');
		}
	);

	if ($('.boxes .center').children().length > 1) {
		$('.boxes .center').wrecker({
			itemSelector: '.col-3',
			maxColumns: 3,
			responsiveColumns: [
				{ 1024: 1 }
			]
		});
	}

	// Services

	$('.services .item').hover(
		function () {
			$(this).parent().addClass('over');
		},
		function () {
			$(this).parent().removeClass('over');
		}
	);

	// Features

	$('.features .item .button').hover(
		function () {
			$(this).parent().parent().parent().addClass('over');
		},
		function () {
			$(this).parent().parent().parent().removeClass('over');
		}
	);

	$('.hover .features .item .thumb a').hover(
		function () {
			$(this).parent().parent().parent().addClass('over');
		},
		function () {
			$(this).parent().parent().parent().removeClass('over');
		}
	);

	// Timeline

	$('.timeline .item .button').hover(
		function () {
			$(this).parent().parent().parent().addClass('over');
		},
		function () {
			$(this).parent().parent().parent().removeClass('over');
		}
	);

	$('.timeline .item .thumb a').hover(
		function () {
			$(this).parent().parent().addClass('over');
		},
		function () {
			$(this).parent().parent().removeClass('over');
		}
	);

	// Accordion

	$('.accordion .question').click(function () {
		$(this).parent().stop().toggleClass('reveal');
		$(this).parent().find('.answer').stop().toggle(300, 'easeInOutQuart');
	});

	// Floating WhatsApp Button
	var whatsappBtn = '<a href="https://wa.me/9779851339527" class="whatsapp-float" target="_blank" aria-label="Chat on WhatsApp">' +
		'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="30" height="30"><path fill="#fff" d="M4.868 43.303l2.694-9.835a18.83 18.83 0 0 1-2.52-9.432C5.045 13.454 13.5 5 23.977 5c5.076.002 9.845 1.979 13.43 5.566 3.584 3.588 5.558 8.356 5.556 13.428-.004 10.475-8.46 18.929-18.933 18.929a18.89 18.89 0 0 1-9.017-2.292L4.868 43.303zm10.733-6.19l.573.34a15.68 15.68 0 0 0 7.994 2.19c8.664 0 15.712-7.047 15.716-15.712.002-4.197-1.63-8.143-4.594-11.11A15.62 15.62 0 0 0 23.98 8.14c-8.671 0-15.719 7.046-15.722 15.71a15.7 15.7 0 0 0 2.42 8.393l.378.6-1.607 5.865 6.153-1.595zm16.35-9.082c-.116-.19-.424-.304-.887-.533-.462-.228-2.734-1.349-3.158-1.503-.424-.152-.733-.228-1.042.228-.308.456-1.197 1.503-1.467 1.812-.27.308-.54.347-1.003.114-.462-.228-1.952-.72-3.717-2.294-1.374-1.225-2.302-2.737-2.572-3.198-.27-.461-.029-.71.203-.94.208-.206.462-.533.693-.8.23-.266.307-.456.462-.76.154-.307.077-.571-.038-.8-.116-.228-1.042-2.511-1.427-3.437-.376-.905-.758-.781-1.042-.796-.27-.014-.578-.017-.887-.017-.308 0-.81.114-1.234.571-.424.457-1.619 1.58-1.619 3.858s1.658 4.477 1.889 4.784c.231.306 3.26 4.976 7.9 6.978 1.104.476 1.965.761 2.637.974 1.108.352 2.117.302 2.914.183.889-.132 2.734-1.118 3.12-2.197.384-1.079.384-2.005.27-2.196z"/></svg>' +
		'</a>';
	$('body').append(whatsappBtn);
});

// Section Fade

if ($(window).width() > 1024) {

    var timer;

    function fader() {

        'use strict';

        try {
            // Visible Items
            var visibleitems = function () {
                $('.fade').each(function () {
                    if ($(this).visible(true)) {
                        $(this).addClass('visible');
                    }
                });
            };

            visibleitems();

            $(window).scroll(function () {
                visibleitems();
            });

        } catch (error) {
            console.error("Fader function error:", error);
        }
    }

    setTimeout(function () {

        'use strict';

        try {
            $(window).off('load.fader');
            fader();
        } catch (error) {
            console.error("Timeout fader execution error:", error);
        }

    }, 3000);

}



/******************** Window Load ********************/

$(window).load(function () {

    'use strict';

    try {

        // Testimonials
        $('.testimonials .center').isotope({
            layoutMode: 'packery',
            itemSelector: '.item',
            transitionDuration: '0',
            resizable: false
        });

        // Fixes slider loading issues in some browsers
        $(window).trigger('resize');

        // Section Fade
        if (typeof timer !== "undefined") {
            clearTimeout(timer);
        }

        if (typeof fader === "function") {
            fader();
        }

    } catch (error) {
        console.error("Window load script error:", error);
    }

});

jQuery(document).ready(function () {
	$('#map').addClass('scrolloff');                // set the mouse events to none when doc is ready

	jQuery('#overlay').on("mouseup", function () {          // lock it when mouse up
		jQuery('#map').addClass('scrolloff');
		//somehow the mouseup event doesn't get call...
	});
	jQuery('#overlay').on("mousedown", function () {        // when mouse down, set the mouse events free
		$('#map').removeClass('scrolloff');
	});
	jQuery("#map").mouseleave(function () {              // becuase the mouse up doesn't work... 
		jQuery('#map').addClass('scrolloff');            // set the pointer events to none when mouse leaves the map area
		// or you can do it on some other event
	});
});

// JScript
var base_url = jQuery('base').attr('url');

// Contact form
jQuery(document).ready(function () {

	if (jQuery('#frm-contact')[0]) {
		jQuery("#frm-contact")[0].reset();
		jQuery("#frm-contact").validate({
			errorElement: 'span',
			errorClass: 'validate-has-error',
			rules: {
				fullname: { required: true },
				mailaddress: { required: true, email: true },
				phoneno: { required: true },
				message: { required: true },
				userstring: {
					required: true,
					minlength: 5,
					remote: {
						url: base_url + "captcha/checkcaptcha.php",
						type: "post"
					}
				}
			},
			messages: {
				fullname: { required: "Enter your Fullname", },
				mailaddress: { required: "Enter your email address", email: "Enter a VALID email address" },
				phoneno: { required: "Enter your Phone No." },
				message: { required: "Enter your Message" },
				userstring: {
					required: 'Enter Security Code',
					minlength: 'Security Code must be at least 5 characters',
					remote: "Security Code Not match"
				}
			},
			submitHandler: function (form) {
				var Frmval = jQuery("#frm-contact").serialize();
				jQuery("#btn-contact").attr("disabled", "true").val('Processing... <i class="icon ion-ios-arrow-right"></i>');
				jQuery.ajax({
					type: "POST",
					dataType: "JSON",
					url: base_url + "enquery_mail.php",
					data: "action=forcoment&" + Frmval,
					success: function (data) {
						var msg = eval(data);
						jQuery("#btn-contact").removeAttr("disabled").val('Submit Inquiry <i class="icon ion-ios-arrow-right"></i>');
						alert(msg.message);
						jQuery("#frm-contact")[0].reset();
					}
				});
				return false;
			}
		});
	}



	// Testimonial Read More popup
	$(document).on('click', '.testi-read-more', function(e) {
		e.preventDefault();
		var $card = $(this).closest('.testi-card');
		var fullHtml = $card.find('.testi-full-content').html();
		if ($.featherlight && fullHtml) {
			$.featherlight(fullHtml, {
				variant: 'testi-detail-variant'
			});
		}
		return false;
	});

	// Close testimonial popup
	$(document).on('click', '.testi-popup-close', function() {
		if ($.featherlight.current()) {
			$.featherlight.current().close();
		}
	});

	//Form Validation
	// $(document).on('click', '.inquiry-btn, .header-social', function(e) {
	// 	e.preventDefault();

	// 	var $targetPopup = $('#inquiry-popup');

	// 	if ($.featherlight && $targetPopup.length) {
	// 		$.featherlight('#inquiry-popup', {
	// 			variant: 'inquiry-modal-variant',

	// 			afterOpen: function () {
	// 				var $inquiryForms = $('#frm-inquiry, #frm-inquiry-modal');

	// 				if ($inquiryForms.length) {
	// 					$inquiryForms.each(function () {
	// 						var $thisForm = $(this);

	// 						// Prevent double binding
	// 						if ($thisForm.data('validator')) return;

	// 						$thisForm[0].reset();

	// 						$thisForm.validate({
	// 							errorElement: 'span',
	// 							errorClass: 'validate-has-error',
	// 							rules: {
	// 								fullname: { required: true },
	// 								mailaddress: { required: true, email: true },
	// 								phoneno: { required: true }
	// 							},
	// 							messages: {
	// 								fullname: { required: "Please enter your Full name." },
	// 								mailaddress: {
	// 									required: "Please enter your Email Address.",
	// 									email: "Please enter a VALID email address."
	// 								},
	// 								phoneno: { required: "Please enter your Phone Number." }
	// 							},
	// 							submitHandler: function (form) {

	// 								var recaptcha = jQuery("#contact_recaptcha").val();
	// 								if (recaptcha == "") {
	// 									alert("Please verify reCAPTCHA");
	// 									return false;
	// 								}

	// 								var Frmval = $thisForm.serialize();
	// 								var $btn = $thisForm.find("button[type='submit']");
	// 								var originalBtnHtml = $btn.html();

	// 								$btn.prop("disabled", true).html('Processing... <i class="icon ion-ios-arrow-right"></i>');

	// 								$.ajax({
	// 									type: "POST",
	// 									dataType: "JSON",
	// 									url: base_url + "enquery_mail.php",
	// 									data: "action=forcoment&" + Frmval,
	// 									success: function (data) {
	// 										$btn.prop("disabled", false).html(originalBtnHtml);
	// 										$('div#result_msg').html(data.message).css('display', 'block').fadeIn().delay(5000).fadeOut();
	// 										$thisForm[0].reset();

	// 										if ($.featherlight && $.featherlight.current()) {
	// 											$.featherlight.current().close();
	// 										}
	// 									}
	// 								});

	// 								return false;
	// 							}
	// 						});
	// 					});
	// 				}
	// 			}
	// 		});
	// 	}

	// 	return false;
	// });


	// Inquiry form handler for packages-inner
	$(document).on('click', '.inquiry-btn, .header-social', function(e) {
		e.preventDefault();
		var offerTitle = $(this).data('offer-title') || $.trim($('.contact-tagline h2').first().text()) || '';

		var $targetPopup = $('#inquiry-popup');

		if ($.featherlight && $targetPopup.length) {
			$.featherlight('#inquiry-popup', {
				variant: 'inquiry-modal-variant',

				afterOpen: function () {
					var $lightbox = this.$instance;
					var $inquiryForms = $lightbox.find('#frm-inquiry, #frm-inquiry-modal');

					// Render a fresh reCAPTCHA inside the modal clone
					// (Featherlight clones #inquiry-popup, but the reCAPTCHA iframe doesn't survive cloning)
					var widgetId = null;
					var recaptchaContainer = $lightbox.find('.g-recaptcha')[0];
					if (recaptchaContainer && typeof grecaptcha !== 'undefined') {
						recaptchaContainer.innerHTML = '';
						try {
							widgetId = grecaptcha.render(recaptchaContainer, {
								'sitekey': '6LdeS7gsAAAAAB8z5gawlnG6UqL7AaFOsxY7S33y'
							});
						} catch(e) {
							console.warn('reCAPTCHA render error:', e);
						}
					}

					if ($inquiryForms.length) {
						$inquiryForms.each(function () {
							var $thisForm = $(this);

							// Prevent double binding
							if ($thisForm.data('validator')) return;

							$thisForm[0].reset();
							$thisForm.find("input[name='offer_title']").val(offerTitle);

							$thisForm.validate({
								errorElement: 'span',
								errorClass: 'validate-has-error',
								rules: {
									fullname: { required: true },
									mailaddress: { required: true, email: true },
									phoneno: { required: true }
								},
								messages: {
									fullname: { required: "Please enter your Full name." },
									mailaddress: {
										required: "Please enter your Email Address.",
										email: "Please enter a VALID email address."
									},
									phoneno: { required: "Please enter your Phone Number." }
								},
								submitHandler: function (form) {

									var recaptchaResponse = '';
									if (typeof grecaptcha !== 'undefined' && widgetId !== null) {
										recaptchaResponse = grecaptcha.getResponse(widgetId);
									}
									if (!recaptchaResponse) {
										alert("Please verify reCAPTCHA");
										return false;
									}

									var Frmval = $thisForm.serialize();
									var $btn = $thisForm.find("button[type='submit']");
									var originalBtnHtml = $btn.html();

									$btn.prop("disabled", true).html('Processing... <i class="icon ion-ios-arrow-right"></i>');

									$.ajax({
										type: "POST",
										dataType: "JSON",
										url: base_url + "enquery_mail.php",
										data: "action=forcoment&" + Frmval,
										success: function (data) {
											$btn.prop("disabled", false).html(originalBtnHtml);
											var $resMsg = $lightbox.find('#result_msg');
											$resMsg.html(data.message).css('display', 'block').fadeIn();
											
											$thisForm[0].reset();
											if (typeof grecaptcha !== 'undefined' && widgetId !== null) {
												grecaptcha.reset(widgetId);
											}

											// Optional: Close after 3 seconds so user can read the message
											setTimeout(function(){
												$resMsg.fadeOut();
												if ($.featherlight && $.featherlight.current()) {
													$.featherlight.current().close();
												}
											}, 3000);
										}
									});

									return false;
								}
							});
						});
					}
				}
			});
		}

		return false;
	});

	if (jQuery('#roombooking')[0]) {

		$('#checkin').datepicker({
			minDate: '0M',
			numberOfMonths: 2,
			// dateFormat: 'd MM yy',
			dateFormat: 'yy-m-d',
			onSelect: function () {
				var date = $(this).datepicker('getDate');
				date.setDate(date.getDate() + 1);
				$('#checkout').datepicker('option', 'minDate', date);
			}
		});
		$('#checkout').datepicker({
			minDate: '0M',
			numberOfMonths: 2,
			// dateFormat: 'd MM yy'
			dateFormat: 'yy-m-d',
		});

		if ($('#checkin').val() === '') { $('#checkin').datepicker().datepicker('setDate', '0'); }
		if ($('#checkout').val() === '') { $('#checkout').datepicker().datepicker('setDate', '1'); }


		jQuery("#roombooking")[0].reset();
		jQuery("#roombooking").validate({
			errorElement: 'span',
			errorClass: 'validate-has-error',
			rules: {
				fullname: { required: true },
				mailaddress: { required: true, email: true },
				phone: { required: true },
				address: { required: true },
				country: { required: true },
				checkin: { required: true, date: true },
				checkout: { required: true, date: true },
				userstring: {
					required: true,
					minlength: 5,
					remote: {
						url: base_url + "captcha/checkcaptcha.php",
						type: "post"
					}
				}
			},
			messages: {
				fullname: { required: "Enter your Fullname", },
				mailaddress: { required: "Enter your email address", email: "Enter a VALID email address" },
				phone: { required: "Enter your Phone No." },
				address: { required: "Enter your Address" },
				country: { required: "Choose your Country" },
				checkin: { required: "Choose your Check-In Date", date: "Date Format Not Match (yy-mm-dd)" },
				checkout: { required: "Choose your Check-Out Date", date: "Date Format Not Match (yy-mm-dd)" },
				userstring: {
					required: 'Enter Security Code',
					minlength: 'Security Code must be at least 5 characters',
					remote: "Security Code Not match"
				}
			},
			submitHandler: function (form) {
				var Frmval = jQuery("#roombooking").serialize();
				jQuery("#btn-booking").attr("disabled", "true").val('Processing...');
				jQuery.ajax({
					type: "POST",
					dataType: "JSON",
					url: base_url + "booking_action.php",
					data: "action=forbooking&" + Frmval,
					success: function (data) {
						var msg = eval(data);
						jQuery("#btn-booking").removeAttr("disabled").val('Send');
						alert(msg.message);
						jQuery("#roombooking")[0].reset();
					}
				});
				return false;
			}
		});
	}
})
function updateCaptcha(c) {
	var d = new Date();
	c.src = base_url + 'captcha/imagebuilder.php?rand=' + d.getTime();
}

/******************** Filtered Gallery Implementation ********************/

jQuery(document).ready(function ($) {
    'use strict';

    // Initialize Isotope for each Sectioned Gallery Grid independently
    if ($('.gallery-grid').length) {
        $('.gallery-grid').each(function() {
            var $grid = $(this).isotope({
                itemSelector: '.grid-item',
                layoutMode: 'fitRows',
                transitionDuration: '0.6s'
            });

            // Layout Isotope after each image loads
            if ($.fn.imagesLoaded) {
                $grid.imagesLoaded().progress( function() {
                    $grid.isotope('layout');
                });
            }

            // Re-layout on window resize
            $(window).on('resize', function() {
                $grid.isotope('layout');
            });
        });

        // Sync href with img src for lightbox
        $('.gallery-lightbox-item').each(function() {
            var imgSrc = $(this).find('img').attr('src');
            if (imgSrc) {
                $(this).attr('href', imgSrc);
            }
        });

        // Smooth Scrolling for Category Navigation
        $('.filter-nav-link').on('click', function(e) {
            e.preventDefault();
            var targetId = $(this).attr('href');
            var targetPosition = $(targetId).offset().top - 180; // Offset for header + sticky nav

            $('html, body').animate({
                scrollTop: targetPosition
            }, 600, 'easeInOutQuart');
        });

        // ScrollSpy: Update active nav link on scroll
        $(window).on('scroll', function() {
            var scrollPos = $(document).scrollTop() + 190; // Offset

            $('.filter-nav-link').each(function() {
                var currLink = $(this);
                var refElement = $(currLink.attr("href"));
                
                if (refElement.length && refElement.offset().top <= scrollPos && refElement.offset().top + refElement.outerHeight() > scrollPos) {
                    $('.filter-nav-link').removeClass("active");
                    currLink.addClass("active");
                }
            });
        });

        // Initialize Lightbox
        if ($.fn.featherlightGallery) {
            $('.gallery-lightbox-item').featherlightGallery({
                gallery: {
                    fadeIn: 300,
                    fadeOut: 300
                },
                openSpeed: 300,
                closeSpeed: 300
            });
        }

    }
});