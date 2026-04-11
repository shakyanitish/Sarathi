-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2026 at 05:34 AM
-- Server version: 10.6.25-MariaDB
-- PHP Version: 8.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acehotel_sarathihotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `img_height` int(11) NOT NULL,
  `img_width` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `url_link` varchar(255) NOT NULL,
  `notification` int(11) NOT NULL,
  `notif_status` tinyint(1) NOT NULL DEFAULT 0,
  `mail_to` mediumtext NOT NULL,
  `content` text NOT NULL,
  `remarks` text NOT NULL,
  `mail_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `type` int(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `fb_upload` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `slug`, `title`, `sub_title`, `linktype`, `linksrc`, `brief`, `content`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `sortorder`, `homepage`, `image`, `date`, `fb_upload`) VALUES
(1, 'accommodation', 'Accommodation', 'View All Rooms', 0, '/package/accommodation', '<h3>\r\n	<span style=\"font-size:24px;\">Stay in any of our</span>&nbsp;<strong style=\"font-size: 24px;\">Best Rooms</strong></h3>\r\n<div>\r\n	Hotel Sarathi in Dhulikhel unveils an unparalleled selection of accommodations, comprising 23 Deluxe rooms, 50 Premium rooms, 6 Junior Suites, and an expansive Presidential suite, a pioneering gem in the region. Each room offers awe-inspiring vistas of the majestic mountains, promising an enchanting experience that lingers in memory.</div>\r\n<div>\r\n	&nbsp;</div>\r\n', '', 1, 'Accommodation', 'Hotel Sarathi,Best Dhulikhel, Deluxe rooms, Premium rooms, Executive rooms, Suites, Presidential suite, Mountain view hotel, Luxury accommodation Dhulikhel, Travel Nepal,Mountain,Memory,Expansive,Inspiring, Enchanting, Comprising, Majestic,Offer,Memory', 'Stay in any of our Best Rooms\r\nHotel Sarathi in Dhulikhel unveils an unparalleled selection of accommodations, comprising 28 Deluxe rooms, 19 Premium rooms, 22 Executive rooms, 10 opulent Suites, and an expansive Presidential suite, a pioneering gem in th', 1, '2016-11-15 18:08:35', 3, 0, 0x613a313a7b693a303b733a31333a22556d394a462d68312e6a706567223b7d, '', 'XqD0c-room.jpg'),
(2, 'unrivaled-location', 'Unrivaled Location', 'Plan your stay', 0, 'contact-us', '<h3>\r\n	Panoramic mountain vistas</h3>\r\n<p>\r\n	The most remarkable feature of Dhulikhel is undoubtedly its panoramic mountain vistas. On a clear day, visitors are treated to awe-inspiring views of some of the world&#39;s highest peaks, including Mt. Annapurna, Mt. Langtang, Mt. Dorje Lakpa, and Mt. Gauri Shankar. The sunrise and sunset views from Dhulikhel are particularly captivating, with the mountains bathed in golden hues.</p>\r\n', '<br />\r\n<br type=\"_moz\" />\r\n', 1, 'Unrivaled Location', 'Dhulikhel, mountain, panoramic vistas, Mt. Annapurna, Mt. Langtang, sunrise, sunset, Gauri Shankar, Dorje Lakpa, Bath,Inspiring, Highest Peak, views,Vista,Himalaya,remarkable', 'Panoramic mountain vistas\r\nThe most remarkable feature of Dhulikhel is undoubtedly its panoramic mountain vistas. On a clear day, visitors are treated to awe-inspiring views of some of the world\'s highest peaks, including Mt. Annapurna, Mt. Langtang, Mt. ', 1, '2016-11-15 18:09:36', 1, 0, 0x613a313a7b693a303b733a31343a22414b4f70782d706f6f6c2e6a7067223b7d, '', 'fEihM-pool.jpg'),
(3, 'finest-dining-in-town', 'Finest dining in town', 'See our packages', 0, '/package/dining', '<h3>\r\n	Enjoy <strong>Fantastic Dining</strong> during your Stay</h3>\r\n<p style=\"text-align: justify;\">\r\n	Sarathi invites guests to enjoy a unique culinary experience in our restaurant and bar.</p>\r\n', '', 1, 'Finest dining in town', 'Dining, Culinary experience, restaurant, bar, Sarathi, unique,dining,Guest,Fantastic,Stay,Gathering,Best,', 'Enjoy Fantastic Dining during your Stay\r\nSarathi invites guests to enjoy a unique culinary experience in our restaurant and bar.', 1, '2016-11-15 18:13:09', 2, 0, 0x613a313a7b693a303b733a31333a2276695143722d68322e6a706567223b7d, '', 'qY3tC-dine.jpg'),
(4, 'about-us', 'About Us', 'Explore the Hotel', 0, 'page/about-hotel-sarathi', '<style type=\"text/css\">\r\n.containers {\r\n            max-width: 1300px;\r\n            padding: 0 50px;\r\n            margin-top: 40px;\r\n            margin-inline: auto;\r\n        }\r\n\r\n        .mrgn_top {\r\n            margin-top: 23px;\r\n        }\r\n\r\n        .containers .text__center {\r\n            text-align: center;\r\n            padding-inline: 15rem;\r\n        }\r\n\r\n        .dhulikhel_content_1,\r\n        .sarathi_content_1 {\r\n            display: flex;\r\n            gap: 40px;\r\n            width: 946px;\r\n            margin-inline: auto;\r\n        }\r\n\r\n        .dhulikhel_content_1 .image__1 {\r\n            width: 50%;\r\n        }\r\n\r\n        .dhulikhel_content_1 .image__1 img {\r\n            object-fit: cover;\r\n            height: 100%;\r\n            object-position: center;\r\n        }\r\n\r\n        .dhulikhel_content_1 .content__1 {\r\n            width: 50%;\r\n            flex-grow: 1;\r\n            text-align: justify;\r\n        }\r\n\r\n        .sarathi_content_1 .image__1 {\r\n            width: 50%;\r\n        }\r\n\r\n        .sarathi_content_1 .image__1 img {\r\n            object-fit: cover;\r\n            height: 100%;\r\n        }\r\n\r\n        .sarathi_content_1 .content__1 {\r\n            width: 50%;\r\n            text-align: justify;\r\n        }\r\n\r\n        @media (max-width:768px) {\r\n            .containers {\r\n                padding: 0 20px;\r\n            }\r\n            .containers .text__center {\r\n            text-align: justify;\r\n            padding-inline: .5rem;\r\n        }\r\n        .dhulikhel_content_1,\r\n        .sarathi_content_1 {\r\n           width: auto;\r\n        }\r\n\r\n            .dhulikhel_content_1,\r\n            .sarathi_content_1 {\r\n                flex-direction: column;\r\n            }\r\n\r\n            .dhulikhel_content_1 .image__1 {\r\n                width: 100%;\r\n            }\r\n\r\n            .dhulikhel_content_1 .content__1 {\r\n                width: 100%;\r\n            }\r\n            .sarathi_content_1 .image__1 {\r\n                width: 100%;\r\n            }\r\n\r\n            .sarathi_content_1 .content__1 {\r\n                width: 100%; order: 1; }\r\n\r\n        }</style>\r\n<div class=\"containers\">\r\n	<h3 style=\"font-size:26px; text-align:center;\">\r\n		<strong>About Dhulikhel</strong></h3>\r\n	<p class=\"text__center\">\r\n		Perched at an elevation of 1,550 meters above sea level, Dhulikhel extends an inviting refuge for travelers seeking respite from the urban bustle. Positioned just 30 kilometers southeast of Kathmandu and 75 kilometers southwest of the Chinese border at Kodari, Dhulikhel boasts easy accessibility via a well-maintained highway network. This charming town is a rich tapestry of diverse communities, encompassing Newars, Brahmins, Chhetris, Tamangs, and Magars.</p>\r\n	<div class=\"dhulikhel_content_1\">\r\n		<div class=\"image__1\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/newdhulikhel.jpeg\" style=\"width: 100%; height: 100%;\" /></div>\r\n		<div class=\"content__1\">\r\n			<p>\r\n				Dhulikhel&#39;s allure transcends its cultural diversity. The expansion of community forests in the surrounding area has introduced additional attractions, including immersive bird-watching expeditions and tranquil forest walks, enriching the visitor experience. Among the prominent landmarks adorning this locale are the remarkable 1,000 stone-paved ladders and the imposing Golden Buddha statue, which stand sentinel amidst the verdant expanse of Shanti Ban. Dhulikhel also proudly houses the venerable Kali Temple, positioned atop a hill, and the serene Gaukhureshowr Shiva Temple, gracefully nestled at the base of Devisthan hill.<br />\r\n				<br />\r\n				Dhulikhel&#39;s favorable climate sets the stage for a distinctive adventure, where the exploration of neighboring villages and picturesque locales beckons. The panoramic vistas paint a breathtaking canvas that encompasses over 20 Himalayan peaks, each distinguished by its unique grandeur. Among these majestic peaks, you&#39;ll find the iconic Mt. Annapurna (8,091m), the regal Mt. Ganesh Himal (7,429m), and the stately Mt. Langtang (7,234m), to name just a few.</p>\r\n		</div>\r\n	</div>\r\n	<!-- Sarathi -->\r\n	<h3 style=\"font-size:26px; text-align:center; margin-top: 5rem;\">\r\n		<strong>About Sarathi Hotel</strong></h3>\r\n	<p class=\"text__center\">\r\n		Hotel Sarathi in Dhulikhel offers an idyllic holiday experience in close proximity to the Kathmandu Valley. Our expansive, thoughtfully designed architecture and meticulously landscaped grounds combine to create an extraordinary mountain-facing sanctuary. Whether you&#39;re a discerning business traveler or a leisure seeker, we provide a resort-like atmosphere with a personalized touch that consistently surpasses your expectations.<br />\r\n		&nbsp;</p>\r\n	<div class=\"sarathi_content_1\">\r\n		<div class=\"content__1\">\r\n			Select from our array of 80 well-appointed rooms, each thoughtfully equipped with a comprehensive range of amenities. Most rooms provide a mesmerizing 180-degree panoramic vista of the majestic Himalayan range. Immerse yourself in a culinary journey at our restaurant and garden dining area, where expert hands craft hygienic and timely dishes featuring Nepali, Indian, Continental, and Chinese cuisines. Don&#39;t miss out on our delectable bakery offerings and a cup of freshly brewed coffee during your stay.<br />\r\n			<br />\r\n			Elevate your experience by exploring the natural wonders surrounding us, including invigorating nature hikes, visits to the Gaukhureshowr Shiva Temple, the iconic 1000 Steps, the serene Big Buddha (Shanti Ban), the picturesque Sunrise Park, and enlightening historical city tours. These enriching activities add extra value to your stay, ensuring your time with us is truly memorable. Whether your goal is relaxation, hosting events, or indulging in entertainment, Hotel Sarathi stands ready to meet and exceed your every need and desire<br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</div>\r\n		<div class=\"image__1\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/about.jpeg\" style=\"width: 100%;\" /></div>\r\n	</div>\r\n	<!-- Text Block | END --></div>\r\n<p>\r\n	&nbsp;</p>\r\n', '<style type=\"text/css\">\r\n.containers {\r\n            max-width: 1300px;\r\n            padding: 0 50px;\r\n            margin-top: 40px;\r\n            margin-inline: auto;\r\n        }\r\n\r\n        .mrgn_top {\r\n            margin-top: 23px;\r\n        }\r\n\r\n        .containers .text__center {\r\n            text-align: center;\r\n            padding-inline: 15rem;\r\n        }\r\n\r\n        .dhulikhel_content_1,\r\n        .sarathi_content_1 {\r\n            display: flex;\r\n            gap: 40px;\r\n            width: 946px;\r\n            margin-inline: auto;\r\n        }\r\n\r\n        .dhulikhel_content_1 .image__1 {\r\n            width: 50%;\r\n        }\r\n\r\n        .dhulikhel_content_1 .image__1 img {\r\n            object-fit: cover;\r\n            height: 100%;\r\n            object-position: center;\r\n        }\r\n\r\n        .dhulikhel_content_1 .content__1 {\r\n            width: 50%;\r\n            flex-grow: 1;\r\n            text-align: justify;\r\n        }\r\n\r\n        .sarathi_content_1 .image__1 {\r\n            width: 50%;\r\n        }\r\n\r\n        .sarathi_content_1 .image__1 img {\r\n            object-fit: cover;\r\n            height: 100%;\r\n        }\r\n\r\n        .sarathi_content_1 .content__1 {\r\n            width: 50%;\r\n            text-align: justify;\r\n        }\r\n\r\n        @media (max-width:768px) {\r\n            .containers {\r\n                padding: 0 20px;\r\n            }\r\n            .containers .text__center {\r\n            text-align: justify;\r\n            padding-inline: .5rem;\r\n        }\r\n        .dhulikhel_content_1,\r\n        .sarathi_content_1 {\r\n           width: auto;\r\n        }\r\n\r\n            .dhulikhel_content_1,\r\n            .sarathi_content_1 {\r\n                flex-direction: column;\r\n            }\r\n\r\n            .dhulikhel_content_1 .image__1 {\r\n                width: 100%;\r\n            }\r\n\r\n            .dhulikhel_content_1 .content__1 {\r\n                width: 100%;\r\n            }\r\n            .sarathi_content_1 .image__1 {\r\n                width: 100%;\r\n            }\r\n\r\n            .sarathi_content_1 .content__1 {\r\n                width: 100%; order: 1; }\r\n\r\n        }</style>\r\n<div class=\"containers\">\r\n	<h3 style=\"font-size:26px; text-align:center;\">\r\n		<strong>About Dhulikhel</strong></h3>\r\n	<p class=\"text__center\">\r\n		Perched at an elevation of 1,550 meters above sea level, Dhulikhel extends an inviting refuge for travelers seeking respite from the urban bustle. Positioned just 30 kilometers southeast of Kathmandu and 75 kilometers southwest of the Chinese border at Kodari, Dhulikhel boasts easy accessibility via a well-maintained highway network. This charming town is a rich tapestry of diverse communities, encompassing Newars, Brahmins, Chhetris, Tamangs, and Magars.</p>\r\n	<div class=\"dhulikhel_content_1\">\r\n		<div class=\"image__1\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/newdhulikhel.jpeg\" style=\"width: 100%; height: 100%;\" /></div>\r\n		<div class=\"content__1\">\r\n			<p>\r\n				Dhulikhel&#39;s allure transcends its cultural diversity. The expansion of community forests in the surrounding area has introduced additional attractions, including immersive bird-watching expeditions and tranquil forest walks, enriching the visitor experience. Among the prominent landmarks adorning this locale are the remarkable 1,000 stone-paved ladders and the imposing Golden Buddha statue, which stand sentinel amidst the verdant expanse of Shanti Ban. Dhulikhel also proudly houses the venerable Kali Temple, positioned atop a hill, and the serene Gaukhureshowr Shiva Temple, gracefully nestled at the base of Devisthan hill.<br />\r\n				<br />\r\n				Dhulikhel&#39;s favorable climate sets the stage for a distinctive adventure, where the exploration of neighboring villages and picturesque locales beckons. The panoramic vistas paint a breathtaking canvas that encompasses over 20 Himalayan peaks, each distinguished by its unique grandeur. Among these majestic peaks, you&#39;ll find the iconic Mt. Annapurna (8,091m), the regal Mt. Ganesh Himal (7,429m), and the stately Mt. Langtang (7,234m), to name just a few.</p>\r\n		</div>\r\n	</div>\r\n	<!-- Sarathi -->\r\n	<h3 style=\"font-size:26px; text-align:center; margin-top: 5rem;\">\r\n		<strong>About Sarathi Hotel</strong></h3>\r\n	<p class=\"text__center\">\r\n		Hotel Sarathi in Dhulikhel offers an idyllic holiday experience in close proximity to the Kathmandu Valley. Our expansive, thoughtfully designed architecture and meticulously landscaped grounds combine to create an extraordinary mountain-facing sanctuary. Whether you&#39;re a discerning business traveler or a leisure seeker, we provide a resort-like atmosphere with a personalized touch that consistently surpasses your expectations.<br />\r\n		&nbsp;</p>\r\n	<div class=\"sarathi_content_1\">\r\n		<div class=\"content__1\">\r\n			Select from our array of 80 well-appointed rooms, each thoughtfully equipped with a comprehensive range of amenities. Most rooms provide a mesmerizing 180-degree panoramic vista of the majestic Himalayan range. Immerse yourself in a culinary journey at our restaurant and garden dining area, where expert hands craft hygienic and timely dishes featuring Nepali, Indian, Continental, and Chinese cuisines. Don&#39;t miss out on our delectable bakery offerings and a cup of freshly brewed coffee during your stay.<br />\r\n			<br />\r\n			Elevate your experience by exploring the natural wonders surrounding us, including invigorating nature hikes, visits to the Gaukhureshowr Shiva Temple, the iconic 1000 Steps, the serene Big Buddha (Shanti Ban), the picturesque Sunrise Park, and enlightening historical city tours. These enriching activities add extra value to your stay, ensuring your time with us is truly memorable. Whether your goal is relaxation, hosting events, or indulging in entertainment, Hotel Sarathi stands ready to meet and exceed your every need and desire</div>\r\n		<div class=\"image__1\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/about.jpeg\" style=\"width: 100%;\" /></div>\r\n	</div>\r\n	<!-- Text Block | END --></div>\r\n<h4 style=\"text-align: center;\">\r\n	<br />\r\n	<em>We are certified by PUM International and committed to our Business Continuity Plan (BCP)</em></h4>\r\n', 1, 'About Us', 'Dhulikhel,Nepal, Mountain retreat, Himalayan views, Cultural diversity, Kali Temple, Golden Buddha statue, Hotel Sarathi, Luxury hotel Dhulikhel, Travel Nepal, Hiking near Kathmandu, Nepali cuisine, Nature trails Dhulikhel, Resort near Kathmandu,Easy Acce', 'About Dhulikhel\r\nPerched at an elevation of 1,550 meters above sea level, Dhulikhel extends an inviting refuge for travelers seeking respite from the urban bustle. Positioned just 30 kilometers southeast of Kathmandu and 75 kilometers southwest of the Chi', 2, '2016-11-17 07:33:14', 4, 0, 0x613a333a7b693a303b733a32323a2232654a31692d6e65772d70726f6a6563742e6a706567223b693a313b733a31323a224f415a63692d322e6a706567223b693a323b733a32303a22363767757a2d756e7469746c65642d322e6a7067223b7d, '', 'AEuiS-social.jpg'),
(5, 'rtyh', 'rtyh', 'sub', 0, 'page/about-us', 'asd', 'asd', 0, '', '', '', 2, '2023-09-15 11:04:56', 5, 0, 0x613a313a7b693a303b733a33343a224639356b6b2d756e7469746c65642d283836382dc3972d3430302d7078292e6a7067223b7d, '', ''),
(7, 'freeee', 'freeee ', '', 0, '', '', '', 0, '', '', '', 2, '2023-10-01 14:16:25', 6, 0, 0x613a303a7b7d, '', ''),
(8, 'dasdadasd', 'dasdadasd', 'maha page', 0, 'page/unrivaled-location', 'asdad77', 'asdasdasda<img alt=\"\" src=\"/assets/userfiles/images/beach_villa.jpg\" style=\"width: 1024px; height: 576px;\" />', 0, '', '', '', 2, '2023-10-01 14:17:14', 7, 0, 0x613a313a7b693a303b733a33323a22366961324f2d66696c655f6578616d706c655f6a70675f3130306b622e6a7067223b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogcomment`
--

CREATE TABLE `tbl_blogcomment` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `fb_upload` text NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT 1,
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `fax` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `google_anlytics` text NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT 1,
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `search_box` text DEFAULT NULL,
  `search_result` text DEFAULT NULL,
  `action` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `icon_upload`, `logo_upload`, `fb_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `fax`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `google_anlytics`, `book_type`, `hotel_page`, `hotel_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`) VALUES
(1, 'Hotel Sarathi', 'ZqMK0-4nz9u-logo-4.png', 'ftpMH-logo.png', 'ariI3-social.jpg', 'Hotel Sarathi', 1, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14141.123694332695!2d85.5681887!3d27.6158149!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb09ac466da337%3A0xce7ebdd6103b890b!2sHotel%20Sarathi!5e0!3m2!1sen!2snp!4v1694669050530!5m2!1sen!2snp', '', 'Resort Marg', 'Dhulikhel, Nepal', '+977 11 597002, 9851339527, 9851339531', 'P.O. Box 732', 'info@sarathihotel.com', '<!-- Text Block | START -->\r\n<div class=\"section text feature fade\">\r\n	<div class=\"center\">\r\n		<div class=\"col-1\">\r\n			<h2>\r\n				Experience an unrivaled luxurious fusion of elegance &amp; style.&nbsp;</h2>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Text Block | END --><!-- Text Block | START -->\r\n<div class=\"section text fade\">\r\n	<div class=\"center d-flex justify-content-center\">\r\n		<div class=\"col-2\">\r\n			<p class=\"text-center\">\r\n				Hotel Sarathi is a luxury escape that embodies the best qualities of nature&#39;s oasis. Just 30km away from Kathmandu, Hotel Sarathi has been a favorite destination for holidaymakers and event organizers since its opening. Dedicated to providing an unparalleled experience of this pristine, year-round destination &ndash; one of the happiest places to be &ndash; Hotel Sarathi offers the best of both worlds: a laid-back mountain view and the modern facility for all the luxury and comfort.</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Text Block | END -->', 'Copyright ©  {year} Hotel Sarathi. All Rights Reserved.', 'Hotel Sarathi - Dhulikhel, Nepal | Offical Website', 'Hotel Sarathi, dhulikhel, idyllic, experience, proximity, expansive, designed, architecture, meticulously, landscaped, grounds, extraordinary, sanctuary, discerning, traveler, atmosphere, personalized, consistently, surpasses, expectations, seeker, resort', 'Hotel Sarathi in Dhulikhel offers an idyllic holiday experience in close proximity to the Kathmandu Valley. Our expansive, thoughtfully designed architecture and meticulously landscaped grounds combine to create an extraordinary mountain-facing sanctuary.', '<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-RRGST461M7\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-RRGST461M7\');\r\n</script>', 1, 'result.php', 'n1CCYj', 'web', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(3) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_name`, `status`) VALUES
(1, 'United States', 1),
(2, 'Canada', 1),
(3, 'Mexico', 1),
(4, 'Afghanistan', 1),
(5, 'Albania', 1),
(6, 'Algeria', 1),
(7, 'Andorra', 1),
(8, 'Angola', 1),
(9, 'Anguilla', 1),
(10, 'Antarctica', 1),
(11, 'Antigua and Barbuda', 1),
(12, 'Argentina', 1),
(13, 'Armenia', 1),
(14, 'Aruba', 1),
(15, 'Ascension Island', 1),
(16, 'Australia', 1),
(17, 'Austria', 1),
(18, 'Azerbaijan', 1),
(19, 'Bahamas', 1),
(20, 'Bahrain', 1),
(21, 'Bangladesh', 1),
(22, 'Barbados', 1),
(23, 'Belarus', 1),
(24, 'Belgium', 1),
(25, 'Belize', 1),
(26, 'Benin', 1),
(27, 'Bermuda', 1),
(28, 'Bhutan', 1),
(29, 'Bolivia', 1),
(30, 'Bophuthatswana', 1),
(31, 'Bosnia-Herzegovina', 1),
(32, 'Botswana', 1),
(33, 'Bouvet Island', 1),
(34, 'Brazil', 1),
(35, 'British Indian Ocean', 1),
(36, 'British Virgin Islands', 1),
(37, 'Brunei Darussalam', 1),
(38, 'Bulgaria', 1),
(39, 'Burkina Faso', 1),
(40, 'Burundi', 1),
(41, 'Cambodia', 1),
(42, 'Cameroon', 1),
(44, 'Cape Verde Island', 1),
(45, 'Cayman Islands', 1),
(46, 'Central Africa', 1),
(47, 'Chad', 1),
(48, 'Channel Islands', 1),
(49, 'Chile', 1),
(50, 'China, Peoples Republic', 1),
(51, 'Christmas Island', 1),
(52, 'Cocos (Keeling) Islands', 1),
(53, 'Colombia', 1),
(54, 'Comoros Islands', 1),
(55, 'Congo', 1),
(56, 'Cook Islands', 1),
(57, 'Costa Rica', 1),
(58, 'Croatia', 1),
(59, 'Cuba', 1),
(60, 'Cyprus', 1),
(61, 'Czech Republic', 1),
(62, 'Denmark', 1),
(63, 'Djibouti', 1),
(64, 'Dominica', 1),
(65, 'Dominican Republic', 1),
(66, 'Easter Island', 1),
(67, 'Ecuador', 1),
(68, 'Egypt', 1),
(69, 'El Salvador', 1),
(70, 'England', 1),
(71, 'Equatorial Guinea', 1),
(72, 'Estonia', 1),
(73, 'Ethiopia', 1),
(74, 'Falkland Islands', 1),
(75, 'Faeroe Islands', 1),
(76, 'Fiji', 1),
(77, 'Finland', 1),
(78, 'France', 1),
(79, 'French Guyana', 1),
(80, 'French Polynesia', 1),
(81, 'Gabon', 1),
(82, 'Gambia', 1),
(83, 'Georgia Republic', 1),
(84, 'Germany', 1),
(85, 'Gibraltar', 1),
(86, 'Greece', 1),
(87, 'Greenland', 1),
(88, 'Grenada', 1),
(89, 'Guadeloupe (French)', 1),
(90, 'Guatemala', 1),
(91, 'Guernsey Island', 1),
(92, 'Guinea Bissau', 1),
(93, 'Guinea', 1),
(94, 'Guyana', 1),
(95, 'Haiti', 1),
(96, 'Heard and McDonald Isls', 1),
(97, 'Honduras', 1),
(98, 'Hong Kong', 1),
(99, 'Hungary', 1),
(100, 'Iceland', 1),
(101, 'India', 1),
(102, 'Iran', 1),
(103, 'Iraq', 1),
(104, 'Ireland', 1),
(105, 'Isle of Man', 1),
(106, 'Israel', 1),
(107, 'Italy', 1),
(108, 'Ivory Coast', 1),
(109, 'Jamaica', 1),
(110, 'Japan', 1),
(111, 'Jersey Island', 1),
(112, 'Jordan', 1),
(113, 'Kazakhstan', 1),
(114, 'Kenya', 1),
(115, 'Kiribati', 1),
(116, 'Kuwait', 1),
(117, 'Laos', 1),
(118, 'Latvia', 1),
(119, 'Lebanon', 1),
(120, 'Lesotho', 1),
(121, 'Liberia', 1),
(122, 'Libya', 1),
(123, 'Liechtenstein', 1),
(124, 'Lithuania', 1),
(125, 'Luxembourg', 1),
(126, 'Macao', 1),
(127, 'Macedonia', 1),
(128, 'Madagascar', 1),
(129, 'Malawi', 1),
(130, 'Malaysia', 1),
(131, 'Maldives', 1),
(132, 'Mali', 1),
(133, 'Malta', 1),
(134, 'Martinique (French)', 1),
(135, 'Mauritania', 1),
(136, 'Mauritius', 1),
(137, 'Mayotte', 1),
(139, 'Micronesia', 1),
(140, 'Moldavia', 1),
(141, 'Monaco', 1),
(142, 'Mongolia', 1),
(143, 'Montenegro', 1),
(144, 'Montserrat', 1),
(145, 'Morocco', 1),
(146, 'Mozambique', 1),
(147, 'Myanmar', 1),
(148, 'Namibia', 1),
(149, 'Nauru', 1),
(150, 'Nepal', 1),
(151, 'Netherlands Antilles', 1),
(152, 'Netherlands', 1),
(153, 'New Caledonia (French)', 1),
(154, 'New Zealand', 1),
(155, 'Nicaragua', 1),
(156, 'Niger', 1),
(157, 'Niue', 1),
(158, 'Norfolk Island', 1),
(159, 'North Korea', 1),
(160, 'Northern Ireland', 1),
(161, 'Norway', 1),
(162, 'Oman', 1),
(163, 'Pakistan', 1),
(164, 'Panama', 1),
(165, 'Papua New Guinea', 1),
(166, 'Paraguay', 1),
(167, 'Peru', 1),
(168, 'Philippines', 1),
(169, 'Pitcairn Island', 1),
(170, 'Poland', 1),
(171, 'Polynesia (French)', 1),
(172, 'Portugal', 1),
(173, 'Qatar', 1),
(174, 'Reunion Island', 1),
(175, 'Romania', 1),
(176, 'Russia', 1),
(177, 'Rwanda', 1),
(178, 'S.Georgia Sandwich Isls', 1),
(179, 'Sao Tome, Principe', 1),
(180, 'San Marino', 1),
(181, 'Saudi Arabia', 1),
(182, 'Scotland', 1),
(183, 'Senegal', 1),
(184, 'Serbia', 1),
(185, 'Seychelles', 1),
(186, 'Shetland', 1),
(187, 'Sierra Leone', 1),
(188, 'Singapore', 1),
(189, 'Slovak Republic', 1),
(190, 'Slovenia', 1),
(191, 'Solomon Islands', 1),
(192, 'Somalia', 1),
(193, 'South Africa', 1),
(194, 'South Korea', 1),
(195, 'Spain', 1),
(196, 'Sri Lanka', 1),
(197, 'St. Helena', 1),
(198, 'St. Lucia', 1),
(199, 'St. Pierre Miquelon', 1),
(200, 'St. Martins', 1),
(201, 'St. Kitts Nevis Anguilla', 1),
(202, 'St. Vincent Grenadines', 1),
(203, 'Sudan', 1),
(204, 'Suriname', 1),
(205, 'Svalbard Jan Mayen', 1),
(206, 'Swaziland', 1),
(207, 'Sweden', 1),
(208, 'Switzerland', 1),
(209, 'Syria', 1),
(210, 'Tajikistan', 1),
(211, 'Taiwan', 1),
(212, 'Tahiti', 1),
(213, 'Tanzania', 1),
(214, 'Thailand', 1),
(215, 'Togo', 1),
(216, 'Tokelau', 1),
(217, 'Tonga', 1),
(218, 'Trinidad and Tobago', 1),
(219, 'Tunisia', 1),
(220, 'Turkmenistan', 1),
(221, 'Turks and Caicos Isls', 1),
(222, 'Tuvalu', 1),
(223, 'Uganda', 1),
(224, 'Ukraine', 1),
(225, 'United Arab Emirates', 1),
(226, 'Uruguay', 1),
(227, 'Uzbekistan', 1),
(228, 'Vanuatu', 1),
(229, 'Vatican City State', 1),
(230, 'Venezuela', 1),
(231, 'Vietnam', 1),
(232, 'Virgin Islands (Brit,1)', 1),
(233, 'Wales', 1),
(234, 'Wallis Futuna Islands', 1),
(235, 'Western Sahara', 1),
(236, 'Western Samoa', 1),
(237, 'Yemen', 1),
(238, 'Yugoslavia', 1),
(239, 'Zaire', 1),
(240, 'Zambia', 1),
(241, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parentId` int(1) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `parentId`, `image`, `brief`, `status`, `sortorder`, `added_date`) VALUES
(1, 'Services', 0, 'vGEW9-icon.png', '', 1, 2, '2016-11-16 12:11:09'),
(2, 'Tea and Coffee Making Facilities', 1, '', '', 1, 1, '2016-11-16 12:11:25'),
(3, 'Free Wi-Fi', 1, '', '', 1, 2, '2016-11-16 12:11:39'),
(4, 'Luxurious Toiletries', 1, '', '', 1, 3, '2016-11-16 12:11:53'),
(5, 'LED-TV', 1, '', '', 1, 4, '2016-11-16 12:12:04'),
(6, 'Mini Bar', 1, '', '', 1, 5, '2016-11-16 12:12:17'),
(7, 'Dressing Table', 1, '', '', 1, 6, '2016-11-16 12:12:28'),
(8, 'Bathroom with Bathtub and Hand Shower', 1, '', '', 1, 7, '2016-11-16 12:12:38'),
(9, 'Balcony', 1, '', '', 1, 8, '2016-11-16 12:12:49'),
(10, 'Twin or Double Bed', 1, '', '', 1, 9, '2016-11-16 12:13:01'),
(11, 'Added luxuries', 0, 'fJxXD-icon.png', '', 1, 1, '2016-11-16 14:26:01'),
(12, 'Airport Pick Up and Drop', 11, 'J8bIR-airport.jpeg', '<h5>\r\n	Punctual, Hassle Free, Efficient, Comfortable</h5>\r\n<p>\r\n	Don&rsquo;t take stress about airport transportation! Our team at Airport will coordinate your pick up / drop from / to the Trivuwan International Airport and will ensure the most comfortable, convenient and stylish transportation possible!</p>\r\n', 1, 1, '2016-11-16 14:36:49'),
(13, 'Complimentary Breakfast', 11, 'xZyRe-breakfast.jpeg', '<h5>\r\n	Wish You a Lovely Morning</h5>\r\n<p>\r\n	Breakfast is open from 6:30 am - 10:30 am at our Restaurant. Our buffet breakfast offer a wide selection of specialties like sausages, eggs, vegetable meals and more. Cold station will invite you to choose from selection of fresh fruits, dry fruit, nuts, chocos, corn flakes and fresh juice.</p>\r\n', 1, 2, '2016-11-16 14:47:10'),
(17, 'Welcome drink on arrival', 11, '0UBb2-new-project.jpeg', '<h5>\r\n	Welcome to Hotel Sarathi</h5>\r\n<p>\r\n	Guests are greeted with a complimentary glass of soft drink on arrival as a signal that guest&#39;s vacation is here and you could enjoy to its fullest with Hotel Sarathi.</p>\r\n', 1, 3, '2016-12-07 08:16:37'),
(14, 'Parquet Flooring', 1, '', '', 1, 10, '2016-12-06 13:11:26'),
(15, 'Welcome Drink upon check-in', 1, '', '', 1, 11, '2016-12-06 13:55:17'),
(16, 'Bathroom with Hand Shower', 1, '', '', 1, 12, '2016-12-06 13:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(1, 'hotel-gallery', 'Hotel Gallery', 'KrhFp-gallery4.jpg', '', 0, 2, '2016-11-16 11:24:58', 0),
(2, 'restaurant', 'Restaurant', 'eNm6Y-blala.jpg', '', 1, 3, '2016-11-16 11:25:19', 0),
(3, 'hall', 'Hall', '8V3RW-sarathi-2.jpg', '', 1, 5, '2023-09-20 15:23:33', 0),
(4, 'exterior', 'Exterior', 'W8JWj-3.jpg', '', 1, 6, '2023-09-20 15:47:38', 0),
(5, 'accommodation', 'Accommodation', 'mnff6-5.jpg', '', 1, 8, '2023-09-20 15:51:39', 0),
(6, 'rooftop-pool', 'Rooftop Pool', 'a19T1-5.jpg', '', 1, 7, '2023-09-27 16:06:43', 0),
(7, 'reception', 'Reception', 'DZmwg-img_2060.jpg', '', 0, 4, '2023-10-10 15:13:26', 0),
(8, 'parking', 'Parking', 'Qqe8X-parking-2.jpg', '', 1, 1, '2024-05-15 09:42:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(8, 1, 'Super Deluxe Twin Room', 'QT8nS-roomgallery2.jpg', 1, '', 5, '2016-11-30 17:43:09'),
(7, 1, 'Deluxe Twin Room', 'cEt34-roomgallery1.jpg', 1, '', 4, '2016-11-30 17:43:08'),
(35, 3, 'hall', 'pCMiy-3.jpg', 1, '', 1, '2023-09-20 15:29:16'),
(33, 2, 'Restaurant', 'aLlL8-sarathi-2.jpg', 0, '', 3, '2023-09-20 15:21:47'),
(32, 2, 'Restaurant', 'ZXTxS-3.jpg', 0, '', 2, '2023-09-20 15:21:47'),
(9, 1, 'Deluxe Room', 'INK7R-roomgallery3.jpg', 1, '', 7, '2016-11-30 17:43:09'),
(10, 1, 'Super Deluxe Twin Room', 'ynAaD-roomgallery4.jpg', 1, '', 9, '2016-11-30 17:43:09'),
(11, 1, 'Super Deluxe Room', 'QG8tR-roomgallery5.jpg', 1, '', 10, '2016-11-30 17:43:09'),
(12, 1, 'Super Deluxe Room', '1FUNl-roomgallery6.jpg', 1, '', 8, '2016-11-30 17:43:09'),
(13, 1, 'Super Deluxe Room', 'WsSZT-roomgallery7.jpg', 1, '', 12, '2016-11-30 17:43:09'),
(14, 1, 'Entrance', 'zOMhj-gallery1.jpg', 1, '', 2, '2016-11-30 17:54:07'),
(15, 1, 'Entrance', 'fZmFZ-gallery2.jpg', 1, '', 1, '2016-11-30 17:54:07'),
(16, 1, 'Corridor', 'hUmxR-gallery3.jpg', 1, '', 14, '2016-11-30 17:54:07'),
(17, 1, 'Corridor', 'yEyrz-gallery4.jpg', 1, '', 16, '2016-11-30 17:54:07'),
(18, 1, 'Electronic Lock', 'n1oKy-gallery5.jpg', 1, '', 13, '2016-11-30 17:54:07'),
(19, 1, 'Bathroom amenities', 'jh5nb-gallery6.jpg', 1, '', 15, '2016-11-30 17:54:07'),
(20, 1, 'Restaurant', 'GbVWE-gallery7.jpg', 1, '', 6, '2016-11-30 17:54:07'),
(21, 1, 'Restaurant', 'SDQXT-gallery8.jpg', 1, '', 11, '2016-11-30 17:54:07'),
(22, 1, 'Reception', 'ldKDn-gallery9.jpg', 1, '', 3, '2016-11-30 17:54:07'),
(31, 2, 'Restaurant', 'baago-sarathi.jpg', 0, '', 1, '2023-09-20 15:18:54'),
(36, 3, 'hall', 'qnwR1-2.jpg', 1, '', 2, '2023-09-20 15:29:16'),
(37, 3, 'hall', 'V61hm-untitled-6.jpg', 1, '', 3, '2023-09-20 15:29:16'),
(38, 3, 'hall', 'qyGpc-5.jpg', 1, '', 4, '2023-09-20 15:29:16'),
(39, 3, 'hall', 'LSObn-4.jpg', 1, '', 5, '2023-09-20 15:29:16'),
(40, 3, 'hall', 'i7Kn0-7.jpg', 1, '', 6, '2023-09-20 15:34:12'),
(41, 3, 'hall', 'nFeHK-8.jpg', 1, '', 7, '2023-09-20 15:34:12'),
(42, 3, 'hall', 'cJG1v-9.jpg', 1, '', 8, '2023-09-20 15:34:12'),
(43, 2, 'hall', 'r4jxK-untitled-6.jpg', 0, '', 4, '2023-09-20 15:46:53'),
(107, 3, 'hall', 'DEbbB-c2.jpeg', 1, '', 9, '2024-01-02 15:10:39'),
(106, 4, 'Exterior', 'awbPy-e3.jpeg', 1, '', 4, '2024-01-02 14:57:26'),
(105, 4, 'Exterior', '4SLB3-e1.jpeg', 1, '', 3, '2024-01-02 14:57:26'),
(104, 4, 'Exterior', 'LLZS1-e2.jpeg', 1, '', 2, '2024-01-02 14:57:26'),
(103, 4, 'Exterior', 'nJPAS-e4.jpeg', 0, '', 1, '2024-01-02 14:57:26'),
(68, 5, 'Deluxe Garden 3', 'R1utP-img_2191.jpg', 0, '', 5, '2023-10-10 16:09:33'),
(66, 5, 'Deluxe Garden  1', 'KWqJr-img_2177.jpg', 0, '', 3, '2023-10-10 16:09:33'),
(67, 5, 'Deluxe Garden 2', 'aniK9-img_2167.jpg', 0, '', 4, '2023-10-10 16:09:33'),
(53, 2, 'Bar', 'MX58G-9.jpg', 0, '', 5, '2023-09-27 15:59:47'),
(54, 2, 'Dine with View', 'AbcSW-8.jpg', 0, '', 6, '2023-09-27 15:59:47'),
(55, 2, 'Bar', 'LrbI8-10.jpg', 0, '', 7, '2023-09-27 15:59:47'),
(56, 2, 'Dine with View', 'Mxbq1-11.jpg', 0, '', 8, '2023-09-27 15:59:47'),
(57, 2, 'Dine with View', 'Ssb8i-12.jpg', 0, '', 9, '2023-09-27 15:59:47'),
(97, 6, 'Pool', 'UzGnH-p8.jpeg', 1, '', 3, '2024-01-02 14:51:06'),
(95, 6, 'Pool', 'VCDjO-p7.jpeg', 1, '', 1, '2024-01-02 14:51:06'),
(96, 6, 'Pool', 'TjjJv-p1.jpeg', 1, '', 2, '2024-01-02 14:51:06'),
(62, 7, 'Reception 1', '4ROEJ-img_2049.jpg', 1, '', 1, '2023-10-10 15:13:50'),
(63, 7, 'Reception 2', 'GbEye-img_2060.jpg', 1, '', 2, '2023-10-10 15:13:50'),
(64, 7, 'Reception 3', 'uHk1N-img_2051.jpg', 1, '', 3, '2023-10-10 15:13:50'),
(65, 7, 'Reception 4', 'ypRwO-img_2065.jpg', 1, '', 4, '2023-10-10 15:13:50'),
(69, 5, 'Deluxe main 1', 'GxV1b-img_2126.jpg', 0, '', 6, '2023-10-10 16:10:54'),
(70, 5, 'Deluxe main 2', 'pdm4o-img_2159.jpg', 0, '', 7, '2023-10-10 16:10:54'),
(71, 5, 'Deluxe main 3', 'WngUW-img_2129.jpg', 0, '', 8, '2023-10-10 16:10:54'),
(72, 5, 'Deluxe main 4', '49X9i-img_2144.jpg', 0, '', 9, '2023-10-10 16:10:54'),
(73, 5, 'Deluxe main 5', '6Fkpl-img_2135.jpg', 0, '', 10, '2023-10-10 16:10:54'),
(74, 5, 'Suite Rooms 1', 'shFPC-img_1950.jpg', 1, '', 11, '2023-10-10 16:11:48'),
(75, 5, 'Suite Rooms 2', 'A8TQy-img_1935.jpg', 1, '', 12, '2023-10-10 16:11:48'),
(76, 5, 'Suite Rooms 3', 'gbrOj-img_1965.jpg', 0, '', 13, '2023-10-10 16:11:48'),
(77, 5, 'Suite Rooms 4', 'tGANZ-img_1958.jpg', 1, '', 14, '2023-10-10 16:11:48'),
(78, 5, 'Suite Rooms 5', 'rIFCp-img_1941.jpg', 0, '', 15, '2023-10-10 16:11:48'),
(79, 5, 'Suite Rooms 6', 'UiRrg-img_1949.jpg', 0, '', 16, '2023-10-10 16:11:48'),
(81, 5, 'Deluxe Room', 'ha9db-r1.jpeg', 1, '', 1, '2024-01-02 13:21:13'),
(82, 5, 'Deluxe Room', 'uq6Dl-r2.jpeg', 1, '', 2, '2024-01-02 13:21:13'),
(89, 5, 'Premium Suite', '8FzxQ-s1.jpeg', 1, '', 19, '2024-01-02 13:42:09'),
(88, 5, 'Premium Suite', 'YiWsh-s2.jpeg', 0, '', 17, '2024-01-02 13:42:09'),
(87, 5, 'Premium Suite', 'rIQFd-s3.jpeg', 1, '', 18, '2024-01-02 13:42:09'),
(90, 5, 'Premium Suite', 'c3Y9U-s4.jpeg', 1, '', 20, '2024-01-02 13:42:09'),
(91, 5, 'Suite Room', 'CsHvb-s5.jpeg', 1, '', 21, '2024-01-02 14:47:23'),
(92, 5, 'Suite Room', '8s7Ad-s6.jpeg', 1, '', 22, '2024-01-02 14:47:23'),
(93, 5, 'Suite Room', 'UzcXB-s7.jpeg', 1, '', 23, '2024-01-02 14:47:23'),
(94, 5, 'Suite Room', '87oFI-s8.jpeg', 1, '', 24, '2024-01-02 14:47:23'),
(98, 6, 'Pool', 'Z9AXG-p6.jpeg', 1, '', 4, '2024-01-02 14:51:06'),
(99, 6, 'Pool', 'LiKsQ-p2.jpeg', 1, '', 5, '2024-01-02 14:51:06'),
(100, 6, 'Pool', '8LnB7-p4.jpeg', 1, '', 6, '2024-01-02 14:51:06'),
(101, 6, 'Pool', 'KhGlR-p5.jpeg', 0, '', 7, '2024-01-02 14:51:06'),
(102, 6, 'Pool', 'RdZc3-p3.jpeg', 0, '', 8, '2024-01-02 14:51:06'),
(108, 3, 'hall', 'riLWb-c4.jpeg', 1, '', 10, '2024-01-02 15:10:39'),
(109, 3, 'hall', 'GtCWO-c1.jpeg', 1, '', 11, '2024-01-02 15:10:39'),
(110, 3, 'hall', 'lRZd0-c3.jpeg', 1, '', 12, '2024-01-02 15:10:39'),
(111, 2, 'Serving', 'gvkUR-3.jpeg', 1, '', 10, '2024-01-02 15:25:19'),
(112, 2, 'Restaurant', 'dtgHt-1.jpeg', 1, '', 11, '2024-01-02 15:25:19'),
(113, 2, 'Restaurant', 'jfjaY-4.jpeg', 1, '', 12, '2024-01-02 15:25:19'),
(114, 2, 'Restaurant', 'VHkX7-6.jpeg', 1, '', 13, '2024-01-02 15:25:19'),
(115, 2, 'Restaurant', 'th7rq-2.jpeg', 1, '', 14, '2024-01-02 15:25:19'),
(116, 2, 'Restaurant', 'cEIhr-5.jpeg', 1, '', 15, '2024-01-02 15:25:19'),
(117, 2, 'Food', 'BvnOF-2.jpeg', 1, '', 16, '2024-01-02 15:42:47'),
(118, 2, 'Food', 'ajWgD-5.jpeg', 1, '', 17, '2024-01-02 15:42:47'),
(119, 2, 'Food', 'i7LlN-1.jpeg', 1, '', 18, '2024-01-02 15:42:47'),
(120, 2, 'Food', '572fl-3.jpeg', 1, '', 19, '2024-01-02 15:42:47'),
(121, 2, 'Food', '1Pywd-4.jpeg', 1, '', 20, '2024-01-02 15:42:47'),
(122, 2, 'Bar', 'DHeIe-g1.jpeg', 1, '', 21, '2024-01-07 15:48:37'),
(123, 6, 'Pool', 'yJztP-351eda31-1d89-4c44-8a71-2649171a7cfc.jpg', 1, '', 9, '2024-02-22 13:19:58'),
(124, 8, 'Parking', '9riJO-parking-1.jpg', 1, '', 1, '2024-05-15 09:45:13'),
(125, 8, 'Parking', 'T2Tox-parking-3.jpg', 1, '', 2, '2024-05-15 09:45:13'),
(126, 8, 'Parking', 'ANoZ2-parking-2.jpg', 1, '', 3, '2024-05-15 09:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`) VALUES
(1, 'Administrator', '1', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1, 'Gallery [Room]Data has added successfully.', '2016-11-16 11:24:58', 1, 3, '::1'),
(2, 'Gallery [Restaurant]Data has added successfully.', '2016-11-16 11:25:19', 1, 3, '::1'),
(3, 'Gallery [Dining]Data has added successfully.', '2016-11-16 11:25:41', 1, 3, '::1'),
(4, 'Gallery [Activities]Data has added successfully.', '2016-11-16 11:26:02', 1, 3, '::1'),
(5, 'Package [Accommodation]Data has added successfully', '2016-11-16 11:45:55', 1, 3, '::1'),
(6, 'Package Accommodation Edit Successfully', '2016-11-16 11:52:32', 1, 4, '::1'),
(7, 'Login: White Pearl   logged in.', '2016-11-16 12:06:25', 1, 1, '::1'),
(8, 'Features [Services]Data has added successfully.', '2016-11-16 12:11:09', 1, 3, '::1'),
(9, 'Features [King Size Bed]Data has added successfull', '2016-11-16 12:11:25', 1, 3, '::1'),
(10, 'Features [Air Conditioning]Data has added successf', '2016-11-16 12:11:39', 1, 3, '::1'),
(11, 'Features [Mountain View]Data has added successfull', '2016-11-16 12:11:53', 1, 3, '::1'),
(12, 'Features [Lake View]Data has added successfully.', '2016-11-16 12:12:04', 1, 3, '::1'),
(13, 'Features [40\" LED TV with Satellite Channels]Data ', '2016-11-16 12:12:17', 1, 3, '::1'),
(14, 'Features [Spacious Living Areas]Data has added suc', '2016-11-16 12:12:28', 1, 3, '::1'),
(15, 'Features [Free Unlimited Wi-Fi]Data has added succ', '2016-11-16 12:12:38', 1, 3, '::1'),
(16, 'Features [24 Hour Room Service]Data has added succ', '2016-11-16 12:12:49', 1, 3, '::1'),
(17, 'Features [Late Check-out]Data has added successful', '2016-11-16 12:13:01', 1, 3, '::1'),
(18, 'Sub Package \'Deluxe Room\' has added successfully.', '2016-11-16 12:29:14', 1, 3, '::1'),
(19, 'Sub Package \'Super Deluxe Room\' has added successf', '2016-11-16 12:32:47', 1, 3, '::1'),
(20, 'Sub Package \'Honeymoon Super Deluxe\' has added suc', '2016-11-16 12:35:59', 1, 3, '::1'),
(21, 'Package Accommodation Edit Successfully', '2016-11-16 12:47:03', 1, 4, '::1'),
(22, 'Package [dining]Data has added successfully.', '2016-11-16 12:51:44', 1, 3, '::1'),
(23, 'Sub Package \'Main Restaurant\' has added successful', '2016-11-16 12:57:55', 1, 3, '::1'),
(24, 'Changes on Sub Package \'Main Restaurant\' has been ', '2016-11-16 12:59:32', 1, 4, '::1'),
(25, 'Sub Package \'Rooftop Restaurant\' has added success', '2016-11-16 13:00:47', 1, 3, '::1'),
(26, 'Features [Added luxuries]Data has added successful', '2016-11-16 14:26:01', 1, 3, '::1'),
(27, 'Features [Complimentary Pick Up from Airport / Bus', '2016-11-16 14:36:49', 1, 3, '::1'),
(28, 'Features [Late Check-out] Edit Successfully', '2016-11-16 14:42:34', 1, 4, '::1'),
(29, 'Features [24 Hour Room Service] Edit Successfully', '2016-11-16 14:42:55', 1, 4, '::1'),
(30, 'Features [Free Unlimited Wi-Fi] Edit Successfully', '2016-11-16 14:43:07', 1, 4, '::1'),
(31, 'Features [Spacious Living Areas] Edit Successfully', '2016-11-16 14:43:20', 1, 4, '::1'),
(32, 'Features [40\" LED TV with Satellite Channels] Edit', '2016-11-16 14:43:44', 1, 4, '::1'),
(33, 'Features [Lake View] Edit Successfully', '2016-11-16 14:43:57', 1, 4, '::1'),
(34, 'Features [Mountain View] Edit Successfully', '2016-11-16 14:44:13', 1, 4, '::1'),
(35, 'Features [Air Conditioning] Edit Successfully', '2016-11-16 14:44:28', 1, 4, '::1'),
(36, 'Features [King Size Bed] Edit Successfully', '2016-11-16 14:44:48', 1, 4, '::1'),
(37, 'Features [Complimentary Breakfast]Data has added s', '2016-11-16 14:47:10', 1, 3, '::1'),
(38, 'Changes on Sub Package \'Honeymoon Super Deluxe\' ha', '2016-11-16 14:51:09', 1, 4, '::1'),
(39, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-11-16 14:51:24', 1, 4, '::1'),
(40, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-11-16 14:51:38', 1, 4, '::1'),
(41, 'Changes on Sub Package \'Honeymoon Super Deluxe\' ha', '2016-11-16 14:57:18', 1, 4, '::1'),
(42, 'Changes on Sub Package \'Honeymoon Super Deluxe\' ha', '2016-11-16 14:57:39', 1, 4, '::1'),
(43, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-11-16 14:58:00', 1, 4, '::1'),
(44, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-11-16 14:58:14', 1, 4, '::1'),
(45, 'Changes on Sub Package \'Honeymoon Super Deluxe\' ha', '2016-11-16 16:50:17', 1, 4, '::1'),
(46, 'Changes on Sub Package \'Honeymoon Super Deluxe\' ha', '2016-11-16 17:08:40', 1, 4, '::1'),
(47, 'Menu [Home] CreatedData has added successfully.', '2016-11-16 17:16:39', 1, 3, '::1'),
(48, 'Menu [About Us] CreatedData has added successfully', '2016-11-16 17:16:57', 1, 3, '::1'),
(49, 'Menu [Room] CreatedData has added successfully.', '2016-11-16 17:17:38', 1, 3, '::1'),
(50, 'Menu [Dining] CreatedData has added successfully.', '2016-11-16 17:17:55', 1, 3, '::1'),
(51, 'Menu [Gallery] CreatedData has added successfully.', '2016-11-16 17:18:10', 1, 3, '::1'),
(52, 'Menu [Reviews] CreatedData has added successfully.', '2016-11-16 17:18:54', 1, 3, '::1'),
(53, 'Menu [Offers] CreatedData has added successfully.', '2016-11-16 17:19:07', 1, 3, '::1'),
(54, 'Menu [Contact Us] CreatedData has added successful', '2016-11-16 17:19:21', 1, 3, '::1'),
(55, 'Menu [Deluxe] CreatedData has added successfully.', '2016-11-16 17:20:23', 1, 3, '::1'),
(56, 'Menu [Super Deluxe] CreatedData has added successf', '2016-11-16 17:20:47', 1, 3, '::1'),
(57, 'Menu [Honeymoon Super Deluxe] CreatedData has adde', '2016-11-16 17:21:12', 1, 3, '::1'),
(58, 'Menu [Room] Edit Successfully', '2016-11-16 17:25:07', 1, 4, '::1'),
(59, 'Menu [Dining] Edit Successfully', '2016-11-16 17:30:46', 1, 4, '::1'),
(60, 'Login: White Pearl   logged in.', '2016-11-16 21:44:28', 1, 1, '::1'),
(61, 'Login: White Pearl   logged in.', '2016-11-17 07:07:57', 1, 1, '::1'),
(62, 'Article \'About Hotel White Pearl\' has added succes', '2016-11-17 07:33:14', 1, 3, '::1'),
(63, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-11-17 08:14:45', 1, 4, '::1'),
(64, 'Menu [About Us] Edit Successfully', '2016-11-17 08:15:18', 1, 4, '::1'),
(65, 'Changes on Article \'Accommodation\' has been saved ', '2016-11-17 08:19:35', 1, 4, '::1'),
(66, 'Changes on Article \'Accommodation\' has been saved ', '2016-11-17 08:20:46', 1, 4, '::1'),
(67, 'Login: White Pearl   logged in.', '2016-11-17 15:38:24', 1, 1, '::1'),
(68, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-11-17 15:41:30', 1, 4, '::1'),
(69, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-11-17 15:55:14', 1, 4, '::1'),
(70, 'Menu [Deluxe] Edit Successfully', '2016-11-17 16:25:34', 1, 4, '::1'),
(71, 'Testimonial [Dawa S.] Edit Successfully', '2016-11-17 16:53:40', 1, 4, '::1'),
(72, 'Testimonial [Colleen] Edit Successfully', '2016-11-17 16:53:56', 1, 4, '::1'),
(73, 'Testimonial [AshishGurung] Edit Successfully', '2016-11-17 16:54:11', 1, 4, '::1'),
(74, 'Testimonial [JigsGaton] Edit Successfully', '2016-11-17 16:54:38', 1, 4, '::1'),
(75, 'Menu [Contact Us] Edit Successfully', '2016-11-17 17:27:45', 1, 4, '::1'),
(76, 'Menu [Reviews] Edit Successfully', '2016-11-17 17:33:35', 1, 4, '::1'),
(77, 'Login: White Pearl   logged in.', '2016-11-18 11:08:29', 1, 1, '::1'),
(78, 'Menu [Offers] Edit Successfully', '2016-11-18 12:07:34', 1, 4, '::1'),
(79, 'Login: White Pearl   logged in.', '2016-11-18 14:23:31', 1, 1, '::1'),
(80, 'Offers [Full Day Sightseeing] Edit Successfully', '2016-11-18 14:24:04', 1, 4, '::1'),
(81, 'Offers [Paragliding, Ultra light and Zip flyer pac', '2016-11-18 14:24:52', 1, 4, '::1'),
(82, 'Offers [Full Day Sightseeing] Edit Successfully', '2016-11-18 14:25:01', 1, 4, '::1'),
(83, 'Sub Gallery Image [Delux]Data has added successful', '2016-11-18 14:42:47', 1, 3, '::1'),
(84, 'Sub Gallery Image [Delux]Data has added successful', '2016-11-18 14:42:47', 1, 3, '::1'),
(85, 'Sub Gallery Image [Delux]Data has added successful', '2016-11-18 14:42:47', 1, 3, '::1'),
(86, 'Sub Gallery Image [Restaurant]Data has added succe', '2016-11-18 14:55:38', 1, 3, '::1'),
(87, 'Sub Gallery Image [Restaurant]Data has added succe', '2016-11-18 14:55:38', 1, 3, '::1'),
(88, 'Sub Gallery Image [Restaurant]Data has added succe', '2016-11-18 14:55:38', 1, 3, '::1'),
(89, 'Menu [Gallery] Edit Successfully', '2016-11-18 14:59:42', 1, 4, '::1'),
(90, 'Menu [Super Deluxe] Edit Successfully', '2016-11-18 15:00:00', 1, 4, '::1'),
(91, 'Menu [Honeymoon Super Deluxe] Edit Successfully', '2016-11-18 15:00:15', 1, 4, '::1'),
(92, 'Login: White Pearl   logged in.', '2016-11-22 12:35:53', 1, 1, '::1'),
(93, 'Login: White Pearl   logged in.', '2016-11-28 12:30:29', 1, 1, '::1'),
(94, 'Login: White Pearl   logged in.', '2016-11-28 14:23:27', 1, 1, '::1'),
(95, 'Changes on Sub Package \'Honeymoon Super Deluxe\' ha', '2016-11-28 14:42:13', 1, 4, '::1'),
(96, 'Changes on Sub Package \'Honeymoon Super Deluxe\' ha', '2016-11-28 14:43:02', 1, 4, '::1'),
(97, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-11-28 14:44:07', 1, 4, '::1'),
(98, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-11-28 14:44:28', 1, 4, '::1'),
(99, 'Changes on Sub Package \'Honeymoon Super Deluxe\' ha', '2016-11-28 14:45:55', 1, 4, '::1'),
(100, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-11-28 14:46:21', 1, 4, '::1'),
(101, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-11-28 14:46:34', 1, 4, '::1'),
(102, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-11-28 17:19:48', 1, 4, '::1'),
(103, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-11-28 17:20:13', 1, 4, '::1'),
(104, 'Login: White Pearl   logged in.', '2016-11-28 17:31:21', 1, 1, '110.44.121.133'),
(105, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-11-28 17:31:42', 1, 4, '110.44.121.133'),
(106, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-11-28 17:32:46', 1, 4, '110.44.121.133'),
(107, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-11-28 17:33:10', 1, 4, '110.44.121.133'),
(108, 'Login: White Pearl   logged in.', '2016-11-29 08:07:00', 1, 1, '27.34.102.96'),
(109, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-11-29 08:08:32', 1, 4, '27.34.102.96'),
(110, 'Login: White Pearl   logged in.', '2016-11-30 16:29:49', 1, 1, '110.44.121.133'),
(111, 'Slideshow [Welcome to <strong>Hotel White Pearl</s', '2016-11-30 16:36:25', 1, 4, '110.44.121.133'),
(112, 'Slideshow [Welcome to <strong>Hotel White Pearl</s', '2016-11-30 16:37:36', 1, 4, '110.44.121.133'),
(113, 'Slideshow [Luxurious Stay <strong>vibrant</strong>', '2016-11-30 16:40:04', 1, 4, '110.44.121.133'),
(114, 'Slideshow [Welcome to <strong>Hotel White Pearl</s', '2016-11-30 16:44:54', 1, 4, '110.44.121.133'),
(115, 'Slideshow [Welcome to <strong>Hotel White Pearl</s', '2016-11-30 16:51:12', 1, 4, '110.44.121.133'),
(116, 'Slideshow [Multi Cuisine Restaurant]Data has added', '2016-11-30 16:54:00', 1, 3, '110.44.121.133'),
(117, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2016-11-30 16:55:11', 1, 4, '110.44.121.133'),
(118, 'Package Accommodation Edit Successfully', '2016-11-30 17:01:27', 1, 4, '110.44.121.133'),
(119, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-11-30 17:11:58', 1, 4, '110.44.121.133'),
(120, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-11-30 17:18:12', 1, 4, '110.44.121.133'),
(121, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-11-30 17:22:57', 1, 4, '110.44.121.133'),
(122, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-11-30 17:29:38', 1, 4, '110.44.121.133'),
(123, 'Changes on Article \'Accommodation\' has been saved ', '2016-11-30 17:33:20', 1, 4, '110.44.121.133'),
(124, 'Changes on Article \'Finest dining in town\' has bee', '2016-11-30 17:35:04', 1, 4, '110.44.121.133'),
(125, 'Sub Gallery Image  [Delux]Data has deleted success', '2016-11-30 17:41:21', 1, 6, '110.44.121.133'),
(126, 'Sub Gallery Image  []Data has deleted successfully', '2016-11-30 17:41:24', 1, 6, '110.44.121.133'),
(127, 'Sub Gallery Image  []Data has deleted successfully', '2016-11-30 17:41:25', 1, 6, '110.44.121.133'),
(128, 'Sub Gallery Image  []Data has deleted successfully', '2016-11-30 17:41:29', 1, 6, '110.44.121.133'),
(129, 'Sub Gallery Image  [Delux]Data has deleted success', '2016-11-30 17:41:29', 1, 6, '110.44.121.133'),
(130, 'Sub Gallery Image  []Data has deleted successfully', '2016-11-30 17:41:29', 1, 6, '110.44.121.133'),
(131, 'Sub Gallery Image  []Data has deleted successfully', '2016-11-30 17:41:34', 1, 6, '110.44.121.133'),
(132, 'Sub Gallery Image  []Data has deleted successfully', '2016-11-30 17:41:34', 1, 6, '110.44.121.133'),
(133, 'Sub Gallery Image  [Delux]Data has deleted success', '2016-11-30 17:41:34', 1, 6, '110.44.121.133'),
(134, 'Sub Gallery Image  []Data has deleted successfully', '2016-11-30 17:41:34', 1, 6, '110.44.121.133'),
(135, 'Sub Gallery Image [Deluxe Twin Room]Data has added', '2016-11-30 17:43:09', 1, 3, '110.44.121.133'),
(136, 'Sub Gallery Image [Super Deluxe Twin Room]Data has', '2016-11-30 17:43:09', 1, 3, '110.44.121.133'),
(137, 'Sub Gallery Image [Deluxe Room]Data has added succ', '2016-11-30 17:43:09', 1, 3, '110.44.121.133'),
(138, 'Sub Gallery Image [Super Deluxe Twin Room]Data has', '2016-11-30 17:43:09', 1, 3, '110.44.121.133'),
(139, 'Sub Gallery Image [Super Deluxe Room]Data has adde', '2016-11-30 17:43:09', 1, 3, '110.44.121.133'),
(140, 'Sub Gallery Image [Super Deluxe Room]Data has adde', '2016-11-30 17:43:09', 1, 3, '110.44.121.133'),
(141, 'Sub Gallery Image [Super Deluxe Room]Data has adde', '2016-11-30 17:43:09', 1, 3, '110.44.121.133'),
(142, 'Gallery Image  [Dining]Data has deleted successful', '2016-11-30 17:44:17', 1, 6, '110.44.121.133'),
(143, 'Gallery Image  []Data has deleted successfully.', '2016-11-30 17:44:20', 1, 6, '110.44.121.133'),
(144, 'Gallery Image  [Activities]Data has deleted succes', '2016-11-30 17:44:20', 1, 6, '110.44.121.133'),
(145, 'Gallery Image [Hotel Gallery] Edit Successfully', '2016-11-30 17:45:27', 1, 4, '110.44.121.133'),
(146, 'Sub Gallery Image [Entrance]Data has added success', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(147, 'Sub Gallery Image [Entrance]Data has added success', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(148, 'Sub Gallery Image [Corridor]Data has added success', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(149, 'Sub Gallery Image [Corridor]Data has added success', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(150, 'Sub Gallery Image [Electronic Lock]Data has added ', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(151, 'Sub Gallery Image [Bathroom amenities]Data has add', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(152, 'Sub Gallery Image [Restaurant]Data has added succe', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(153, 'Sub Gallery Image [Restaurant]Data has added succe', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(154, 'Sub Gallery Image [Reception]Data has added succes', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(155, 'Sub Gallery Image [Exterior]Data has added success', '2016-11-30 17:54:07', 1, 3, '110.44.121.133'),
(156, 'Sub Gallery Image  [Exterior]Data has deleted succ', '2016-11-30 17:56:14', 1, 6, '110.44.121.133'),
(157, 'Gallery Image [Hotel Gallery] Edit Successfully', '2016-11-30 17:56:58', 1, 4, '110.44.121.133'),
(158, 'Changes on Sub Package \'Main Restaurant\' has been ', '2016-11-30 17:58:51', 1, 4, '110.44.121.133'),
(159, 'Events  [BMR Culture programe]Data has deleted suc', '2016-11-30 18:09:53', 1, 6, '110.44.121.133'),
(160, 'Events  []Data has deleted successfully.', '2016-11-30 18:09:56', 1, 6, '110.44.121.133'),
(161, 'Events  [Ramalaya Launch]Data has deleted successf', '2016-11-30 18:09:57', 1, 6, '110.44.121.133'),
(162, 'Events  []Data has deleted successfully.', '2016-11-30 18:10:02', 1, 6, '110.44.121.133'),
(163, 'Events  []Data has deleted successfully.', '2016-11-30 18:10:02', 1, 6, '110.44.121.133'),
(164, 'Events  [Event at Mulchowk]Data has deleted succes', '2016-11-30 18:10:03', 1, 6, '110.44.121.133'),
(165, 'Login: White Pearl   logged in.', '2016-12-02 10:34:57', 1, 1, '110.44.121.133'),
(166, 'Login: White Pearl   logged in.', '2016-12-06 11:45:44', 1, 1, '110.44.121.133'),
(167, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-12-06 11:51:29', 1, 4, '110.44.121.133'),
(168, 'Changes on Article \'Accommodation\' has been saved ', '2016-12-06 11:56:18', 1, 4, '110.44.121.133'),
(169, 'Changes on Article \'Accommodation\' has been saved ', '2016-12-06 11:56:51', 1, 4, '110.44.121.133'),
(170, 'Changes on Article \'Accommodation\' has been saved ', '2016-12-06 11:57:31', 1, 4, '110.44.121.133'),
(171, 'Changes on Article \'Unrivaled Location\' has been s', '2016-12-06 12:04:22', 1, 4, '110.44.121.133'),
(172, 'Changes on Article \'Unrivaled Location\' has been s', '2016-12-06 12:05:18', 1, 4, '110.44.121.133'),
(173, 'Changes on Article \'Finest dining in town\' has bee', '2016-12-06 12:07:28', 1, 4, '110.44.121.133'),
(174, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-06 12:30:50', 1, 4, '110.44.121.133'),
(175, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-06 12:31:59', 1, 4, '110.44.121.133'),
(176, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-06 12:38:08', 1, 4, '110.44.121.133'),
(177, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-06 12:51:45', 1, 4, '110.44.121.133'),
(178, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-06 12:52:53', 1, 4, '110.44.121.133'),
(179, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-06 12:56:12', 1, 4, '110.44.121.133'),
(180, 'Sub Package [Honeymoon Super Deluxe]Data has delet', '2016-12-06 13:00:57', 1, 6, '110.44.121.133'),
(181, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 13:04:06', 1, 4, '110.44.121.133'),
(182, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 13:04:52', 1, 4, '110.44.121.133'),
(183, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 13:06:22', 1, 4, '110.44.121.133'),
(184, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 13:09:44', 1, 4, '110.44.121.133'),
(185, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 13:10:16', 1, 4, '110.44.121.133'),
(186, 'Features [•	Parquet flooring]Data has added succes', '2016-12-06 13:11:26', 1, 3, '110.44.121.133'),
(187, 'Features [Parquet Flooring] Edit Successfully', '2016-12-06 13:11:58', 1, 4, '110.44.121.133'),
(188, 'Features [Twin or Double Bed] Edit Successfully', '2016-12-06 13:12:41', 1, 4, '110.44.121.133'),
(189, 'Features [Balcony] Edit Successfully', '2016-12-06 13:13:22', 1, 4, '110.44.121.133'),
(190, 'Features [Bathroom with Bathtub and Hand Shower] E', '2016-12-06 13:14:03', 1, 4, '110.44.121.133'),
(191, 'Features [Dressing Table] Edit Successfully', '2016-12-06 13:14:34', 1, 4, '110.44.121.133'),
(192, 'Features [Mini Bar] Edit Successfully', '2016-12-06 13:15:05', 1, 4, '110.44.121.133'),
(193, 'Features [LED-TV] Edit Successfully', '2016-12-06 13:16:33', 1, 4, '110.44.121.133'),
(194, 'Features [Luxurious Toiletries] Edit Successfully', '2016-12-06 13:53:36', 1, 4, '110.44.121.133'),
(195, 'Features [Free Wi-Fi] Edit Successfully', '2016-12-06 13:54:06', 1, 4, '110.44.121.133'),
(196, 'Features [Tea and Coffee Making Facilities] Edit S', '2016-12-06 13:54:42', 1, 4, '110.44.121.133'),
(197, 'Features [Welcome Drink upon check-in]Data has add', '2016-12-06 13:55:17', 1, 3, '110.44.121.133'),
(198, 'Features [Bathroom with Hand Shower]Data has added', '2016-12-06 13:55:52', 1, 3, '110.44.121.133'),
(199, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 13:57:47', 1, 4, '110.44.121.133'),
(200, 'Features [Complimentary Airport Pick Up & Drop] Ed', '2016-12-06 13:59:41', 1, 4, '110.44.121.133'),
(201, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 14:15:05', 1, 4, '110.44.121.133'),
(202, 'Features [Complimentary Breakfast] Edit Successful', '2016-12-06 14:29:46', 1, 4, '110.44.121.133'),
(203, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 14:30:37', 1, 4, '110.44.121.133'),
(204, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 14:31:54', 1, 4, '110.44.121.133'),
(205, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-12-06 14:34:03', 1, 4, '110.44.121.133'),
(206, 'Features [Complimentary Breakfast] Edit Successful', '2016-12-06 14:40:14', 1, 4, '110.44.121.133'),
(207, 'Features [Complimentary Airport Pick Up & Drop] Ed', '2016-12-06 14:53:08', 1, 4, '110.44.121.133'),
(208, 'Package Accommodation Edit Successfully', '2016-12-06 15:00:11', 1, 4, '110.44.121.133'),
(209, 'Package Accommodation Edit Successfully', '2016-12-06 15:09:25', 1, 4, '110.44.121.133'),
(210, 'Package Accommodation Edit Successfully', '2016-12-06 15:09:48', 1, 4, '110.44.121.133'),
(211, 'Package Accommodation Edit Successfully', '2016-12-06 15:10:49', 1, 4, '110.44.121.133'),
(212, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-12-06 15:17:26', 1, 4, '110.44.121.133'),
(213, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 15:24:55', 1, 4, '110.44.121.133'),
(214, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-12-06 15:26:30', 1, 4, '110.44.121.133'),
(215, 'Offers [Full Day Sightseeing] Edit Successfully', '2016-12-06 15:37:01', 1, 4, '110.44.121.133'),
(216, 'Offers [Paragliding, Ultra light and Zip flyer pac', '2016-12-06 15:39:52', 1, 4, '110.44.121.133'),
(217, 'Offers [Paragliding] Edit Successfully', '2016-12-06 15:40:51', 1, 4, '110.44.121.133'),
(218, 'Testimonial [Perfect Stay] Edit Successfully', '2016-12-06 15:52:14', 1, 4, '110.44.121.133'),
(219, 'Testimonial [Colleen] Edit Successfully', '2016-12-06 15:56:56', 1, 4, '110.44.121.133'),
(220, 'Testimonial [Ashish Gurung] Edit Successfully', '2016-12-06 15:57:52', 1, 4, '110.44.121.133'),
(221, 'Testimonial [Jigs Gaton] Edit Successfully', '2016-12-06 15:58:58', 1, 4, '110.44.121.133'),
(222, 'Package Dining Edit Successfully', '2016-12-06 16:06:31', 1, 4, '110.44.121.133'),
(223, 'Package Dining Edit Successfully', '2016-12-06 16:12:42', 1, 4, '110.44.121.133'),
(224, 'Changes on Sub Package \'Restaurant & Bar\' has been', '2016-12-06 16:20:31', 1, 4, '110.44.121.133'),
(225, 'Changes on Sub Package \'Restaurant & Bar\' has been', '2016-12-06 16:22:55', 1, 4, '110.44.121.133'),
(226, 'Features [Complimentary Airport Pick Up & Drop] Ed', '2016-12-06 16:24:33', 1, 4, '110.44.121.133'),
(227, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-12-06 16:26:56', 1, 4, '110.44.121.133'),
(228, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-12-06 16:27:31', 1, 4, '110.44.121.133'),
(229, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-06 16:28:35', 1, 4, '110.44.121.133'),
(230, 'Package Accommodation Edit Successfully', '2016-12-06 16:32:22', 1, 4, '110.44.121.133'),
(231, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-12-06 16:37:12', 1, 4, '110.44.121.133'),
(232, 'SocialNetworking [Google Plus] Edit Successfully', '2016-12-06 16:45:30', 1, 4, '110.44.121.133'),
(233, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-06 16:48:12', 1, 4, '110.44.121.133'),
(234, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-06 16:49:02', 1, 4, '110.44.121.133'),
(235, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-06 16:51:38', 1, 4, '110.44.121.133'),
(236, 'Login: White Pearl   logged in.', '2016-12-06 16:58:56', 1, 1, '110.44.121.133'),
(237, 'Package Accommodation Edit Successfully', '2016-12-06 17:02:27', 1, 4, '110.44.121.133'),
(238, 'Offers [Paragliding] Edit Successfully', '2016-12-06 17:04:21', 1, 4, '110.44.121.133'),
(239, 'Offers [Boating at Phewa Lake]Data has added succe', '2016-12-06 17:06:39', 1, 3, '110.44.121.133'),
(240, 'Offers [Rafting]Data has added successfully.', '2016-12-06 17:09:52', 1, 3, '110.44.121.133'),
(241, 'Offers [Mountain Biking]Data has added successfull', '2016-12-06 17:13:30', 1, 3, '110.44.121.133'),
(242, 'Changes on Sub Package \'Restaurant & Bar\' has been', '2016-12-06 17:16:23', 1, 4, '110.44.121.133'),
(243, 'Login: White Pearl   logged in.', '2016-12-07 07:13:04', 1, 1, '110.44.122.138'),
(244, 'Changes on Article \'Accommodation\' has been saved ', '2016-12-07 07:16:17', 1, 4, '110.44.122.138'),
(245, 'Changes on Article \'Unrivaled Location\' has been s', '2016-12-07 07:18:17', 1, 4, '110.44.122.138'),
(246, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-07 07:20:04', 1, 4, '110.44.122.138'),
(247, 'Package Accommodation Edit Successfully', '2016-12-07 07:20:58', 1, 4, '110.44.122.138'),
(248, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-07 07:24:04', 1, 4, '110.44.122.138'),
(249, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-07 07:24:34', 1, 4, '110.44.122.138'),
(250, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-07 07:26:30', 1, 4, '110.44.122.138'),
(251, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-07 07:27:52', 1, 4, '110.44.122.138'),
(252, 'Changes on Article \'About Hotel White Pearl\' has b', '2016-12-07 07:30:21', 1, 4, '110.44.122.138'),
(253, 'Menu [Rooms] Edit Successfully', '2016-12-07 07:30:44', 1, 4, '110.44.122.138'),
(254, 'Menu [Deluxe Room] Edit Successfully', '2016-12-07 07:31:11', 1, 4, '110.44.122.138'),
(255, 'Menu [Super Deluxe Room] Edit Successfully', '2016-12-07 07:31:28', 1, 4, '110.44.122.138'),
(256, 'Package Accommodation Edit Successfully', '2016-12-07 07:33:17', 1, 4, '110.44.122.138'),
(257, 'Features [Complimentary Breakfast] Edit Successful', '2016-12-07 07:36:49', 1, 4, '110.44.122.138'),
(258, 'Features [Complimentary Breakfast] Edit Successful', '2016-12-07 07:40:25', 1, 4, '110.44.122.138'),
(259, 'Features [Complimentary Airport Pick Up & Drop] Ed', '2016-12-07 07:44:07', 1, 4, '110.44.122.138'),
(260, 'Features [Complimentary Airport Pick Up] Edit Succ', '2016-12-07 07:45:43', 1, 4, '110.44.122.138'),
(261, 'Features [Airport Pick Up and Drop] Edit Successfu', '2016-12-07 07:46:37', 1, 4, '110.44.122.138'),
(262, 'Features [Complimentary Breakfast] Edit Successful', '2016-12-07 07:50:26', 1, 4, '110.44.122.138'),
(263, 'Features [Welcome drink on arrival]Data has added ', '2016-12-07 08:16:37', 1, 3, '110.44.122.138'),
(264, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2016-12-07 08:17:18', 1, 4, '110.44.122.138'),
(265, 'Features [Welcome drink on arrival] Edit Successfu', '2016-12-07 08:19:21', 1, 4, '110.44.122.138'),
(266, 'Features [Welcome drink on arrival] Edit Successfu', '2016-12-07 08:19:58', 1, 4, '110.44.122.138'),
(267, 'Changes on Sub Package \'Deluxe Room\' has been save', '2016-12-07 08:20:49', 1, 4, '110.44.122.138'),
(268, 'Changes on Sub Package \'Our Restaurant\' has been s', '2016-12-07 08:23:06', 1, 4, '110.44.122.138'),
(269, 'Changes on Sub Package \'Our Restaurant and Bar\' ha', '2016-12-07 08:26:32', 1, 4, '110.44.122.138'),
(270, 'Package Dining Edit Successfully', '2016-12-07 08:27:04', 1, 4, '110.44.122.138'),
(271, 'Changes on Sub Package \'Our Restaurant\' has been s', '2016-12-07 08:27:21', 1, 4, '110.44.122.138'),
(272, 'Changes on Sub Package \'Our Bar\' has been saved su', '2016-12-07 08:37:06', 1, 4, '110.44.122.138'),
(273, 'Changes on Sub Package \'Our Restaurant\' has been s', '2016-12-07 08:37:49', 1, 4, '110.44.122.138'),
(274, 'Changes on Sub Package \'Our Bar\' has been saved su', '2016-12-07 08:38:20', 1, 4, '110.44.122.138'),
(275, 'Sub Gallery Image [Our Breakfast]Data has added su', '2016-12-07 08:41:10', 1, 3, '110.44.122.138'),
(276, 'Offers [Boating at Fewa Lake] Edit Successfully', '2016-12-07 08:44:31', 1, 4, '110.44.122.138'),
(277, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-12-07 08:49:19', 1, 4, '110.44.122.138'),
(278, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-12-07 08:52:19', 1, 4, '110.44.122.138'),
(279, 'Login: White Pearl   logged in.', '2016-12-07 11:01:52', 1, 1, '110.44.121.133'),
(280, 'Changes on Article \'Accommodation\' has been saved ', '2016-12-07 11:05:04', 1, 4, '110.44.121.133'),
(281, 'Changes on Article \'Unrivaled Location\' has been s', '2016-12-07 11:06:24', 1, 4, '110.44.121.133'),
(282, 'Changes on Article \'Finest dining in town\' has bee', '2016-12-07 11:07:25', 1, 4, '110.44.121.133'),
(283, 'Changes on Article \'Accommodation\' has been saved ', '2016-12-07 11:08:36', 1, 4, '110.44.121.133'),
(284, 'Login: White Pearl   logged in.', '2016-12-07 11:11:51', 1, 1, '110.44.121.133'),
(285, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-12-07 11:17:53', 1, 4, '110.44.121.133'),
(286, 'Login: White Pearl   logged in.', '2016-12-07 11:42:39', 1, 1, '110.44.121.133'),
(287, 'Sub Gallery Image  [Our Breakfast]Data has deleted', '2016-12-07 11:58:20', 1, 6, '110.44.121.133'),
(288, 'Login: White Pearl   logged in.', '2016-12-07 12:27:09', 1, 1, '110.44.121.133'),
(289, 'Login: White Pearl   logged in.', '2016-12-07 12:53:13', 1, 1, '110.44.121.133'),
(290, 'Login: White Pearl   logged in.', '2016-12-07 12:55:04', 1, 1, '110.44.121.133'),
(291, 'Login: White Pearl   logged in.', '2016-12-07 12:55:15', 1, 1, '110.44.121.133'),
(292, 'Changes on Sub Package \'Our Bar\' has been saved su', '2016-12-07 12:55:58', 1, 4, '110.44.121.133'),
(293, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-12-07 13:05:20', 1, 4, '110.44.121.133'),
(294, 'Changes on Config \'Hotel White Pearl\' has been sav', '2016-12-07 13:12:40', 1, 4, '110.44.121.133'),
(295, 'Login: White Pearl   logged in.', '2016-12-16 11:07:16', 1, 1, '110.44.121.133'),
(296, 'User [White Pearl  ] Edit Successfully', '2016-12-16 11:08:08', 1, 4, '110.44.121.133'),
(297, 'Login: White Pearl   logged in.', '2016-12-16 11:08:16', 1, 1, '110.44.121.133'),
(298, 'Login: White Pearl   logged in.', '2017-03-03 15:38:31', 1, 1, '110.44.121.133'),
(299, 'Login: White Pearl   logged in.', '2017-03-03 16:03:18', 1, 1, '110.44.121.133'),
(300, 'User [White Pearl  ] Edit Successfully', '2017-03-03 16:04:25', 1, 4, '110.44.121.133'),
(301, 'Login: White Pearl   logged in.', '2017-03-05 11:14:06', 1, 1, '110.44.121.133'),
(302, 'User [White Pearl  ] Edit Successfully', '2017-03-05 11:15:19', 1, 4, '110.44.121.133'),
(303, 'Login: White Pearl   logged in.', '2017-03-21 11:26:08', 1, 1, '110.44.121.133'),
(304, 'User [White Pearl  ] Edit Successfully', '2017-03-21 11:27:02', 1, 4, '110.44.121.133'),
(305, 'Login: White Pearl   logged in.', '2017-03-21 11:27:16', 1, 1, '110.44.121.133'),
(306, 'Login: White Pearl   logged in.', '2017-05-31 11:03:53', 1, 1, '110.44.121.133'),
(307, 'Login: White Pearl   logged in.', '2017-05-31 11:07:13', 1, 1, '110.44.116.77'),
(308, 'Login: White Pearl   logged in.', '2017-10-03 10:49:01', 1, 1, '110.44.116.77'),
(309, 'Login: White Pearl   logged in.', '2017-10-03 10:57:05', 1, 1, '110.44.121.133'),
(310, 'Login: White Pearl   logged in.', '2017-10-03 11:30:07', 1, 1, '110.44.121.133'),
(311, 'Login: White Pearl   logged in.', '2017-10-03 11:31:07', 1, 1, '110.44.121.133'),
(312, 'Login: White Pearl   logged in.', '2017-10-14 08:23:53', 1, 1, '110.44.122.138'),
(313, 'Login: White Pearl   logged in.', '2019-02-12 10:17:32', 1, 1, '110.44.121.133'),
(314, 'Login: White Pearl   logged in.', '2019-06-08 18:17:41', 1, 1, '27.34.16.252'),
(315, 'Login: White Pearl   logged in.', '2019-12-25 16:59:35', 1, 1, '110.44.122.138'),
(316, 'Login: White Pearl   logged in.', '2021-04-21 18:36:11', 1, 1, '49.126.184.25'),
(317, 'Login: White Pearl   logged in.', '2021-04-22 12:18:29', 1, 1, '110.44.118.211'),
(318, 'Changes on Config \'Hotel White Pearl\' has been sav', '2021-04-22 12:19:25', 1, 4, '110.44.118.211'),
(319, 'Login: White Pearl   logged in.', '2021-07-01 22:17:11', 1, 1, '27.34.17.115'),
(320, 'Login: White Pearl   logged in.', '2023-09-15 10:37:21', 1, 1, '103.10.29.84'),
(321, 'Menu [Home] Edit Successfully', '2023-09-15 10:37:35', 1, 4, '103.10.29.84'),
(322, 'Menu [Home] Edit Successfully', '2023-09-15 10:37:38', 1, 4, '103.10.29.84'),
(323, 'Login: White Pearl   logged in.', '2023-09-15 11:04:21', 1, 1, '103.10.29.84'),
(324, 'Article \'rtyh\' has added successfully.', '2023-09-15 11:04:56', 1, 3, '103.10.29.84'),
(325, 'Login: White Pearl   logged in.', '2023-09-15 12:25:04', 1, 1, '103.181.226.89'),
(326, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-09-15 12:26:14', 1, 4, '103.181.226.89'),
(327, 'Offers  [Mountain Biking]Data has deleted successf', '2023-09-15 12:26:28', 1, 6, '103.181.226.89'),
(328, 'Offers  [Rafting]Data has deleted successfully.', '2023-09-15 12:26:28', 1, 6, '103.181.226.89'),
(329, 'Offers  [Boating at Fewa Lake]Data has deleted suc', '2023-09-15 12:26:28', 1, 6, '103.181.226.89'),
(330, 'Offers  [Full Day Sightseeing]Data has deleted suc', '2023-09-15 12:26:28', 1, 6, '103.181.226.89'),
(331, 'Offers  [Paragliding]Data has deleted successfully', '2023-09-15 12:26:28', 1, 6, '103.181.226.89'),
(332, 'Testimonial [Ashish Gurung] Edit Successfully', '2023-09-15 12:27:04', 1, 4, '103.181.226.89'),
(333, 'SocialNetworking [Facebook] Edit Successfully', '2023-09-15 12:28:56', 1, 4, '103.181.226.89'),
(334, 'SocialNetworking [Instagram] Edit Successfully', '2023-09-15 12:29:36', 1, 4, '103.181.226.89'),
(335, 'SocialNetworking [Tiktok] Edit Successfully', '2023-09-15 12:32:57', 1, 4, '103.181.226.89'),
(336, 'Events  [Exhibition at Siddhartha Art-Gallery]Data', '2023-09-15 12:33:18', 1, 6, '103.181.226.89'),
(337, 'Login: White Pearl   logged in.', '2023-09-15 21:45:43', 1, 1, '27.34.70.115'),
(338, 'Slideshow [Welcome to <strong>Hotel Sarathi</stron', '2023-09-15 21:59:30', 1, 4, '27.34.70.115'),
(339, 'Changes on Article \'About Hotel Sarathi\' has been ', '2023-09-15 22:04:31', 1, 4, '27.34.70.115'),
(340, 'Login: White Pearl   logged in.', '2023-09-19 13:38:29', 1, 1, '103.181.226.89'),
(341, 'Login: White Pearl   logged in.', '2023-09-20 14:57:05', 1, 1, '27.34.64.138'),
(342, 'Login: White Pearl   logged in.', '2023-09-20 14:57:50', 1, 1, '163.53.26.80'),
(343, 'Login: White Pearl   logged in.', '2023-09-20 15:03:10', 1, 1, '163.53.26.80'),
(344, 'Menu [Deluxe Room] CreatedData has added successfu', '2023-09-20 15:10:00', 1, 3, '163.53.26.80'),
(345, 'Sub Gallery Image [Restaurant]Data has added succe', '2023-09-20 15:10:10', 1, 3, '163.53.26.80'),
(346, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2023-09-20 15:10:28', 1, 6, '163.53.26.80'),
(347, 'Sub Gallery Image [Restaurant]Data has added succe', '2023-09-20 15:11:01', 1, 3, '163.53.26.80'),
(348, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2023-09-20 15:11:20', 1, 6, '163.53.26.80'),
(349, 'Changes on Article \'Accommodation\' has been saved ', '2023-09-20 15:12:48', 1, 4, '163.53.26.80'),
(350, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:13:56', 1, 3, '163.53.26.80'),
(351, 'Sub Gallery Image  [hall]Data has deleted successf', '2023-09-20 15:14:37', 1, 6, '163.53.26.80'),
(352, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:14:48', 1, 3, '163.53.26.80'),
(353, 'Sub Gallery Image  [hall]Data has deleted successf', '2023-09-20 15:15:06', 1, 6, '163.53.26.80'),
(354, 'Sub Gallery Image [Restaurant]Data has added succe', '2023-09-20 15:15:34', 1, 3, '163.53.26.80'),
(355, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2023-09-20 15:16:23', 1, 6, '163.53.26.80'),
(356, 'Sub Gallery Image [Restaurant]Data has added succe', '2023-09-20 15:16:34', 1, 3, '163.53.26.80'),
(357, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2023-09-20 15:16:44', 1, 6, '163.53.26.80'),
(358, 'Sub Gallery Image [Restaurant]Data has added succe', '2023-09-20 15:17:09', 1, 3, '163.53.26.80'),
(359, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2023-09-20 15:17:23', 1, 6, '163.53.26.80'),
(360, 'Sub Gallery Image [Restaurant]Data has added succe', '2023-09-20 15:17:34', 1, 3, '163.53.26.80'),
(361, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2023-09-20 15:18:38', 1, 6, '163.53.26.80'),
(362, 'Sub Gallery Image [Restaurant]Data has added succe', '2023-09-20 15:18:54', 1, 3, '163.53.26.80'),
(363, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2023-09-20 15:19:53', 1, 6, '163.53.26.80'),
(364, 'Sub Gallery Image  []Data has deleted successfully', '2023-09-20 15:19:57', 1, 6, '163.53.26.80'),
(365, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2023-09-20 15:19:58', 1, 6, '163.53.26.80'),
(366, 'Sub Gallery Image  []Data has deleted successfully', '2023-09-20 15:20:01', 1, 6, '163.53.26.80'),
(367, 'Sub Gallery Image  []Data has deleted successfully', '2023-09-20 15:20:01', 1, 6, '163.53.26.80'),
(368, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2023-09-20 15:20:01', 1, 6, '163.53.26.80'),
(369, 'Sub Gallery Image [Restaurant]Data has added succe', '2023-09-20 15:21:47', 1, 3, '163.53.26.80'),
(370, 'Sub Gallery Image [Restaurant]Data has added succe', '2023-09-20 15:21:47', 1, 3, '163.53.26.80'),
(371, 'Gallery [ Conference Hall]Data has added successfu', '2023-09-20 15:23:33', 1, 3, '163.53.26.80'),
(372, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:24:00', 1, 3, '163.53.26.80'),
(373, 'Sub Package \'Deluxe Room\' has added successfully.', '2023-09-20 15:25:13', 1, 3, '163.53.26.80'),
(374, 'Sub Package \'Premium Room\' has added successfully.', '2023-09-20 15:28:05', 1, 3, '163.53.26.80'),
(375, 'Sub Gallery Image  [hall]Data has deleted successf', '2023-09-20 15:29:06', 1, 6, '163.53.26.80'),
(376, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:29:16', 1, 3, '163.53.26.80'),
(377, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:29:16', 1, 3, '163.53.26.80'),
(378, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:29:16', 1, 3, '163.53.26.80'),
(379, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:29:16', 1, 3, '163.53.26.80'),
(380, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:29:16', 1, 3, '163.53.26.80'),
(381, 'Menu [Deluxe Room] Edit Successfully', '2023-09-20 15:29:26', 1, 4, '163.53.26.80'),
(382, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:34:12', 1, 3, '163.53.26.80'),
(383, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:34:12', 1, 3, '163.53.26.80'),
(384, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:34:12', 1, 3, '163.53.26.80'),
(385, 'Menu [Accommodation] CreatedData has added success', '2023-09-20 15:38:14', 1, 3, '163.53.26.80'),
(386, 'Menu [Deluxe Room] CreatedData has added successfu', '2023-09-20 15:39:40', 1, 3, '163.53.26.80'),
(387, 'Menu [Premium Room] CreatedData has added successf', '2023-09-20 15:41:01', 1, 3, '163.53.26.80'),
(388, 'Menu [Executive Room] CreatedData has added succes', '2023-09-20 15:41:52', 1, 3, '163.53.26.80'),
(389, 'Menu [Suite Room] CreatedData has added successful', '2023-09-20 15:42:12', 1, 3, '163.53.26.80'),
(390, 'Menu [Presidential Suite Room] CreatedData has add', '2023-09-20 15:42:35', 1, 3, '163.53.26.80'),
(391, 'Sub Gallery Image [hall]Data has added successfull', '2023-09-20 15:46:53', 1, 3, '163.53.26.80'),
(392, 'Gallery [Exterior]Data has added successfully.', '2023-09-20 15:47:38', 1, 3, '163.53.26.80'),
(393, 'Changes on Article \'About Hotel Sarathi\' has been ', '2023-09-20 15:48:04', 1, 4, '163.53.26.80'),
(394, 'Changes on Article \'About Us\' has been saved succe', '2023-09-20 15:49:24', 1, 4, '163.53.26.80'),
(395, 'Menu [About Us] Edit Successfully', '2023-09-20 15:50:39', 1, 4, '163.53.26.80'),
(396, 'Sub Gallery Image [Exterior]Data has added success', '2023-09-20 15:50:45', 1, 3, '163.53.26.80'),
(397, 'Sub Gallery Image [Exterior]Data has added success', '2023-09-20 15:50:45', 1, 3, '163.53.26.80'),
(398, 'Sub Gallery Image [Exterior]Data has added success', '2023-09-20 15:50:45', 1, 3, '163.53.26.80'),
(399, 'Sub Gallery Image [Exterior]Data has added success', '2023-09-20 15:50:45', 1, 3, '163.53.26.80'),
(400, 'Sub Gallery Image [Exterior]Data has added success', '2023-09-20 15:50:45', 1, 3, '163.53.26.80'),
(401, 'Gallery [Accommodation]Data has added successfully', '2023-09-20 15:51:39', 1, 3, '163.53.26.80'),
(402, 'Changes on Article \'About Us\' has been saved succe', '2023-09-20 15:51:52', 1, 4, '163.53.26.80'),
(403, 'Changes on Article \'About Us\' has been saved succe', '2023-09-20 15:53:17', 1, 4, '163.53.26.80'),
(404, 'Changes on Article \'About Us\' has been saved succe', '2023-09-20 15:55:30', 1, 4, '163.53.26.80'),
(405, 'Changes on Article \'About Us\' has been saved succe', '2023-09-20 15:56:04', 1, 4, '163.53.26.80'),
(406, 'Changes on Article \'About Us\' has been saved succe', '2023-09-20 15:56:57', 1, 4, '163.53.26.80'),
(407, 'Article \'Deluxe Room\' has added successfully.', '2023-09-20 16:02:06', 1, 3, '163.53.26.80'),
(408, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:04:54', 1, 4, '163.53.26.80'),
(409, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:06:01', 1, 4, '163.53.26.80'),
(410, 'Changes on Article \'Accommodation\' has been saved ', '2023-09-20 16:07:08', 1, 4, '163.53.26.80'),
(411, 'Changes on Article \'Accommodation\' has been saved ', '2023-09-20 16:10:15', 1, 4, '163.53.26.80'),
(412, 'Changes on Article \'Accommodation\' has been saved ', '2023-09-20 16:12:44', 1, 4, '163.53.26.80'),
(413, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:18:43', 1, 4, '163.53.26.80'),
(414, 'Changes on Sub Package \'Haveli Restaurant\' has bee', '2023-09-20 16:23:07', 1, 4, '163.53.26.80'),
(415, 'Changes on Sub Package \'Bentil Bar\' has been saved', '2023-09-20 16:23:59', 1, 4, '163.53.26.80'),
(416, 'Changes on Sub Package \'Haveli Restaurant\' has bee', '2023-09-20 16:31:31', 1, 4, '163.53.26.80'),
(417, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:34:09', 1, 4, '163.53.26.80'),
(418, 'Login: White Pearl   logged in.', '2023-09-20 16:36:16', 1, 1, '163.53.26.80'),
(419, 'Sub Gallery Image [room]Data has added successfull', '2023-09-20 16:37:06', 1, 3, '163.53.26.80'),
(420, 'Sub Gallery Image [room]Data has added successfull', '2023-09-20 16:37:06', 1, 3, '163.53.26.80'),
(421, 'Sub Gallery Image [room]Data has added successfull', '2023-09-20 16:37:06', 1, 3, '163.53.26.80'),
(422, 'Sub Gallery Image [room]Data has added successfull', '2023-09-20 16:37:06', 1, 3, '163.53.26.80'),
(423, 'Changes on Article \'Deluxe Room\' has been saved su', '2023-09-20 16:37:20', 1, 4, '163.53.26.80'),
(424, 'Changes on Article \'Deluxe Room\' has been saved su', '2023-09-20 16:37:47', 1, 4, '163.53.26.80'),
(425, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:40:16', 1, 4, '163.53.26.80'),
(426, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:40:49', 1, 4, '163.53.26.80'),
(427, 'Login: White Pearl   logged in.', '2023-09-20 16:41:14', 1, 1, '110.44.121.55'),
(428, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-20 16:42:54', 1, 4, '110.44.121.55'),
(429, 'Changes on Sub Package \'Deluxe \' has been saved su', '2023-09-20 16:45:21', 1, 4, '163.53.26.80'),
(430, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:45:32', 1, 4, '163.53.26.80'),
(431, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:46:21', 1, 4, '110.44.121.55'),
(432, 'Menu [Deluxe Room] Edit Successfully', '2023-09-20 16:46:38', 1, 4, '110.44.121.55'),
(433, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:49:31', 1, 4, '163.53.26.80'),
(434, 'Menu [Accommodation] Edit Successfully', '2023-09-20 16:51:49', 1, 4, '163.53.26.80'),
(435, 'Articles  [Deluxe Room]Data has deleted successful', '2023-09-20 16:53:20', 1, 6, '163.53.26.80'),
(436, 'Menu [Accommodation Category] CreatedData has adde', '2023-09-20 16:54:27', 1, 3, '163.53.26.80'),
(437, 'Menu [Accommodation Category] Edit Successfully', '2023-09-20 16:58:38', 1, 4, '163.53.26.80'),
(438, 'Menu [Accommodation Category] Edit Successfully', '2023-09-20 17:00:00', 1, 4, '163.53.26.80'),
(439, 'Package Accommodation Edit Successfully', '2023-09-20 17:01:20', 1, 4, '163.53.26.80'),
(440, 'Changes on Sub Package \'Premium \' has been saved s', '2023-09-20 17:02:14', 1, 4, '163.53.26.80'),
(441, 'Sub Package [Premium ]Data has deleted successfull', '2023-09-20 17:02:45', 1, 6, '163.53.26.80'),
(442, 'Changes on Sub Package \'Super Deluxe Room\' has bee', '2023-09-20 17:02:53', 1, 4, '163.53.26.80'),
(443, 'Changes on Sub Package \'Premium Room\' has been sav', '2023-09-20 17:03:09', 1, 4, '163.53.26.80'),
(444, 'Changes on Sub Package \'Deluxe \' has been saved su', '2023-09-20 17:03:34', 1, 4, '163.53.26.80'),
(445, 'Sub Package \'Executive Room\' has added successfull', '2023-09-20 17:04:51', 1, 3, '163.53.26.80'),
(446, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-09-20 17:06:20', 1, 4, '163.53.26.80'),
(447, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-20 17:06:50', 1, 4, '163.53.26.80'),
(448, 'Changes on Sub Package \'Executive Room\' has been s', '2023-09-20 17:07:15', 1, 4, '163.53.26.80'),
(449, 'Changes on Sub Package \'Premium Room\' has been sav', '2023-09-20 17:07:58', 1, 4, '163.53.26.80'),
(450, 'Changes on Sub Package \'Executive Room\' has been s', '2023-09-20 17:08:53', 1, 4, '163.53.26.80'),
(451, 'Changes on Sub Package \'Executive Room\' has been s', '2023-09-20 17:10:02', 1, 4, '163.53.26.80'),
(452, 'Sub Package \'Presidential Suite Room\' has added su', '2023-09-20 17:12:10', 1, 3, '163.53.26.80'),
(453, 'Package Accommodation Edit Successfully', '2023-09-20 17:13:54', 1, 4, '163.53.26.80'),
(454, 'Menu [Hall] CreatedData has added successfully.', '2023-09-20 17:20:14', 1, 3, '163.53.26.80'),
(455, 'Package [Hall]Data has added successfully.', '2023-09-20 17:21:04', 1, 3, '163.53.26.80'),
(456, 'Sub Package \'Araniko Hall\' has added successfully.', '2023-09-20 17:22:16', 1, 3, '163.53.26.80'),
(457, 'Menu [Hall] Edit Successfully', '2023-09-20 17:22:49', 1, 4, '163.53.26.80'),
(458, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-09-20 17:23:53', 1, 4, '163.53.26.80'),
(459, 'Sub Package \'Bhrikuti Hall\' has added successfully', '2023-09-20 17:25:13', 1, 3, '163.53.26.80'),
(460, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-09-20 17:25:43', 1, 4, '163.53.26.80'),
(461, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-09-20 17:29:24', 1, 4, '163.53.26.80'),
(462, 'SocialNetworking [Google Plus] Edit Successfully', '2023-09-20 17:34:21', 1, 4, '163.53.26.80'),
(463, 'SocialNetworking [Youtube] Edit Successfully', '2023-09-20 17:36:06', 1, 4, '163.53.26.80'),
(464, 'Login: White Pearl   logged in.', '2023-09-21 10:54:18', 1, 1, '103.123.60.44'),
(465, 'Menu [Room] Edit Successfully', '2023-09-21 10:54:38', 1, 4, '103.123.60.44'),
(466, 'Package Accommodation Edit Successfully', '2023-09-21 10:55:17', 1, 4, '103.123.60.44'),
(467, 'Menu [Room] Edit Successfully', '2023-09-21 10:56:10', 1, 4, '103.123.60.44'),
(468, 'Login: White Pearl   logged in.', '2023-09-21 11:24:49', 1, 1, '163.53.26.80'),
(469, 'SocialNetworking [Tiktok] Edit Successfully', '2023-09-21 11:27:33', 1, 4, '163.53.26.80'),
(470, 'SocialNetworking [Tiktok] Edit Successfully', '2023-09-21 11:32:30', 1, 4, '163.53.26.80'),
(471, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-09-21 11:50:00', 1, 4, '163.53.26.80'),
(472, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-09-21 11:50:22', 1, 4, '163.53.26.80'),
(473, 'Changes on Article \'rtyh\' has been saved successfu', '2023-09-21 12:15:49', 1, 4, '163.53.26.80'),
(474, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2023-09-21 12:20:54', 1, 4, '163.53.26.80'),
(475, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2023-09-21 12:23:37', 1, 4, '163.53.26.80'),
(476, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2023-09-21 12:25:24', 1, 4, '163.53.26.80'),
(477, 'Slideshow [Luxurious Stay <strong>vibrant</strong>', '2023-09-21 12:26:07', 1, 4, '163.53.26.80'),
(478, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2023-09-21 12:26:29', 1, 4, '163.53.26.80'),
(479, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2023-09-21 12:27:22', 1, 4, '163.53.26.80'),
(480, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2023-09-21 12:30:23', 1, 4, '163.53.26.80'),
(481, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:35:09', 1, 4, '163.53.26.80'),
(482, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:37:32', 1, 4, '163.53.26.80'),
(483, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:39:12', 1, 4, '163.53.26.80'),
(484, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:41:35', 1, 4, '163.53.26.80'),
(485, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:42:13', 1, 4, '163.53.26.80'),
(486, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:42:30', 1, 4, '163.53.26.80'),
(487, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:42:59', 1, 4, '163.53.26.80'),
(488, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:44:51', 1, 4, '163.53.26.80'),
(489, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:46:20', 1, 4, '163.53.26.80'),
(490, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:46:46', 1, 4, '163.53.26.80'),
(491, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 12:47:43', 1, 4, '163.53.26.80'),
(492, 'Login: White Pearl   logged in.', '2023-09-21 12:55:26', 1, 1, '27.34.84.147'),
(493, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2023-09-21 12:59:40', 1, 4, '27.34.84.147'),
(494, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2023-09-21 13:05:00', 1, 4, '27.34.84.147'),
(495, 'Login: White Pearl   logged in.', '2023-09-21 13:05:41', 1, 1, '163.53.26.80'),
(496, 'Package Accommodation Edit Successfully', '2023-09-21 13:09:59', 1, 4, '163.53.26.80'),
(497, 'Package Accommodation Edit Successfully', '2023-09-21 13:11:30', 1, 4, '163.53.26.80'),
(498, 'Slideshow [Luxurious Stay <strong>vibrant</strong>', '2023-09-21 13:20:28', 1, 4, '163.53.26.80'),
(499, 'Slideshow [Luxurious Stay <strong>vibrant</strong>', '2023-09-21 13:25:41', 1, 4, '163.53.26.80'),
(500, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-21 13:27:24', 1, 4, '163.53.26.80'),
(501, 'Package Dining Edit Successfully', '2023-09-21 13:35:38', 1, 4, '163.53.26.80'),
(502, 'Package Dining Edit Successfully', '2023-09-21 13:36:14', 1, 4, '163.53.26.80'),
(503, 'Package Dining Edit Successfully', '2023-09-21 13:38:54', 1, 4, '163.53.26.80'),
(504, 'Changes on Sub Package \'Premium Room\' has been sav', '2023-09-21 13:50:34', 1, 4, '163.53.26.80');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(505, 'Changes on Sub Package \'Premium Room\' has been sav', '2023-09-21 13:51:12', 1, 4, '163.53.26.80'),
(506, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-09-21 13:56:03', 1, 4, '163.53.26.80'),
(507, 'Changes on Sub Package \'Premium Room\' has been sav', '2023-09-21 13:56:37', 1, 4, '163.53.26.80'),
(508, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-09-21 13:59:42', 1, 4, '163.53.26.80'),
(509, 'Features [Airport Pick Up and Drop] Edit Successfu', '2023-09-21 14:02:45', 1, 4, '163.53.26.80'),
(510, 'Features [Welcome drink on arrival] Edit Successfu', '2023-09-21 14:03:51', 1, 4, '163.53.26.80'),
(511, 'Login: White Pearl   logged in.', '2023-09-22 22:01:35', 1, 1, '45.123.222.232'),
(512, 'User [Hotel Sarathi  ] Edit Successfully', '2023-09-22 22:03:25', 1, 4, '45.123.222.232'),
(513, 'Login: Hotel Sarathi   logged in.', '2023-09-24 15:22:16', 1, 1, '45.139.188.184'),
(514, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-24 15:29:30', 1, 4, '45.139.188.184'),
(515, 'Changes on Article \'Unrivaled Location\' has been s', '2023-09-24 15:30:35', 1, 4, '45.139.188.184'),
(516, 'Login: Hotel Sarathi   logged in.', '2023-09-24 17:58:16', 1, 1, '45.139.188.184'),
(517, 'Changes on Article \'Accommodation\' has been saved ', '2023-09-24 17:59:09', 1, 4, '45.139.188.184'),
(518, 'Changes on Article \'Accommodation\' has been saved ', '2023-09-24 18:00:41', 1, 4, '45.139.188.184'),
(519, 'Changes on Article \'Accommodation\' has been saved ', '2023-09-24 18:01:34', 1, 4, '45.139.188.184'),
(520, 'Login: Hotel Sarathi   logged in.', '2023-09-25 10:40:40', 1, 1, '163.53.26.126'),
(521, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-09-25 10:50:45', 1, 4, '163.53.26.126'),
(522, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-09-25 10:51:04', 1, 4, '163.53.26.126'),
(523, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-09-25 10:56:59', 1, 4, '163.53.26.126'),
(524, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-09-25 10:57:48', 1, 4, '163.53.26.126'),
(525, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-09-25 10:58:38', 1, 4, '163.53.26.126'),
(526, 'Testimonial [Jigs Gaton] Edit Successfully', '2023-09-25 11:23:54', 1, 4, '163.53.26.126'),
(527, 'Testimonial [Sarah] Edit Successfully', '2023-09-25 11:24:43', 1, 4, '163.53.26.126'),
(528, 'Testimonial [Sarah] Edit Successfully', '2023-09-25 11:25:08', 1, 4, '163.53.26.126'),
(529, 'Testimonial [prabin bakhunchhe] Edit Successfully', '2023-09-25 15:01:58', 1, 4, '163.53.26.126'),
(530, 'Login: Hotel Sarathi   logged in.', '2023-09-25 15:06:09', 1, 1, '163.53.26.126'),
(531, 'Testimonial [Nabin Bhandari] Edit Successfully', '2023-09-25 15:06:46', 1, 4, '163.53.26.126'),
(532, 'Testimonial [Ravi Dahal] Edit Successfully', '2023-09-25 15:07:53', 1, 4, '163.53.26.126'),
(533, 'Login: Hotel Sarathi   logged in.', '2023-09-27 12:27:56', 1, 1, '122.254.90.148'),
(534, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-27 12:31:39', 1, 4, '122.254.90.148'),
(535, 'Changes on Sub Package \'Premium Room\' has been sav', '2023-09-27 12:32:41', 1, 4, '122.254.90.148'),
(536, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-27 12:38:26', 1, 4, '122.254.90.148'),
(537, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-09-27 13:03:17', 1, 4, '122.254.90.148'),
(538, 'Changes on Sub Package \'Presidential Suite Room\' h', '2023-09-27 13:05:10', 1, 4, '122.254.90.148'),
(539, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-27 13:05:28', 1, 4, '122.254.90.148'),
(540, 'Login: Hotel Sarathi   logged in.', '2023-09-27 14:03:44', 1, 1, '122.254.90.148'),
(541, 'Login: Hotel Sarathi   logged in.', '2023-09-27 15:27:35', 1, 1, '122.254.90.148'),
(542, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-27 15:35:16', 1, 4, '122.254.90.148'),
(543, 'Changes on Sub Package \'Bentil Bar\' has been saved', '2023-09-27 15:48:14', 1, 4, '122.254.90.148'),
(544, 'Sub Gallery Image [Bar]Data has added successfully', '2023-09-27 15:59:47', 1, 3, '122.254.90.148'),
(545, 'Sub Gallery Image [Dine with View]Data has added s', '2023-09-27 15:59:47', 1, 3, '122.254.90.148'),
(546, 'Sub Gallery Image [Bar]Data has added successfully', '2023-09-27 15:59:47', 1, 3, '122.254.90.148'),
(547, 'Sub Gallery Image [Dine with View]Data has added s', '2023-09-27 15:59:47', 1, 3, '122.254.90.148'),
(548, 'Sub Gallery Image [Dine with View]Data has added s', '2023-09-27 15:59:47', 1, 3, '122.254.90.148'),
(549, 'Gallery [Rooftop Pool]Data has added successfully.', '2023-09-27 16:06:43', 1, 3, '122.254.90.148'),
(550, 'Sub Gallery Image [Night View]Data has added succe', '2023-09-27 16:07:18', 1, 3, '122.254.90.148'),
(551, 'Sub Gallery Image [Pool]Data has added successfull', '2023-09-27 16:07:18', 1, 3, '122.254.90.148'),
(552, 'Sub Gallery Image [Pool]Data has added successfull', '2023-09-27 16:07:18', 1, 3, '122.254.90.148'),
(553, 'Sub Gallery Image [Pool]Data has added successfull', '2023-09-27 16:09:38', 1, 3, '122.254.90.148'),
(554, 'Login: Hotel Sarathi   logged in.', '2023-09-28 14:24:18', 1, 1, '103.181.226.133'),
(555, 'Login: Hotel Sarathi   logged in.', '2023-10-01 13:04:19', 1, 1, '103.123.60.22'),
(556, 'Menu [Rojina] CreatedData has added successfully.', '2023-10-01 13:04:54', 1, 3, '103.123.60.22'),
(557, 'Menu  [Rojina]Data has deleted successfully.', '2023-10-01 13:06:00', 1, 6, '103.123.60.22'),
(558, 'Menu [Rojina Mam] CreatedData has added successful', '2023-10-01 13:06:44', 1, 3, '103.123.60.22'),
(559, 'Menu [Rojina Mam] Edit Successfully', '2023-10-01 13:08:02', 1, 4, '103.123.60.22'),
(560, 'Menu  [Rojina Mam]Data has deleted successfully.', '2023-10-01 13:12:43', 1, 6, '103.123.60.22'),
(561, 'Login: Hotel Sarathi   logged in.', '2023-10-01 14:15:27', 1, 1, '27.34.64.161'),
(562, 'Changes on Article \'rtyh\' has been saved successfu', '2023-10-01 14:16:11', 1, 4, '27.34.64.161'),
(563, 'Article \'freeee \' has added successfully.', '2023-10-01 14:16:25', 1, 3, '27.34.64.161'),
(564, 'Article \'dasdadasd\' has added successfully.', '2023-10-01 14:17:14', 1, 3, '27.34.64.161'),
(565, 'Login: Hotel Sarathi   logged in.', '2023-10-06 10:34:35', 1, 1, '103.181.227.208'),
(566, 'SocialNetworking [Tiktok] Edit Successfully', '2023-10-06 10:35:19', 1, 4, '103.181.227.208'),
(567, 'Login: Hotel Sarathi   logged in.', '2023-10-06 12:40:23', 1, 1, '103.181.227.237'),
(568, 'Login: Hotel Sarathi   logged in.', '2023-10-08 16:33:23', 1, 1, '122.254.88.123'),
(569, 'Changes on Article \'About Us\' has been saved succe', '2023-10-08 16:39:35', 1, 4, '122.254.88.123'),
(570, 'Changes on Article \'About Us\' has been saved succe', '2023-10-08 16:41:22', 1, 4, '122.254.88.123'),
(571, 'Changes on Article \'About Us\' has been saved succe', '2023-10-08 16:44:46', 1, 4, '122.254.88.123'),
(572, 'Changes on Article \'Accommodation\' has been saved ', '2023-10-08 16:52:17', 1, 4, '122.254.88.123'),
(573, 'Package Hall Edit Successfully', '2023-10-08 17:10:59', 1, 4, '122.254.88.123'),
(574, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-08 17:12:50', 1, 4, '122.254.88.123'),
(575, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-08 17:14:23', 1, 4, '122.254.88.123'),
(576, 'Changes on Sub Package \'Haveli Restaurant\' has bee', '2023-10-08 17:15:56', 1, 4, '122.254.88.123'),
(577, 'Changes on Sub Package \'Bentil Bar\' has been saved', '2023-10-08 17:16:19', 1, 4, '122.254.88.123'),
(578, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-08 17:17:02', 1, 4, '122.254.88.123'),
(579, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-10-08 17:17:45', 1, 4, '122.254.88.123'),
(580, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-10-08 17:18:01', 1, 4, '122.254.88.123'),
(581, 'Changes on Sub Package \'Premium Room\' has been sav', '2023-10-08 17:18:49', 1, 4, '122.254.88.123'),
(582, 'Changes on Sub Package \'Executive Room\' has been s', '2023-10-08 17:19:15', 1, 4, '122.254.88.123'),
(583, 'Changes on Sub Package \'Presidential Suite Room\' h', '2023-10-08 17:19:36', 1, 4, '122.254.88.123'),
(584, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-08 17:20:47', 1, 4, '122.254.88.123'),
(585, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-10-08 17:21:24', 1, 4, '122.254.88.123'),
(586, 'Changes on Sub Package \'Premium Room\' has been sav', '2023-10-08 17:21:50', 1, 4, '122.254.88.123'),
(587, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-08 17:22:04', 1, 4, '122.254.88.123'),
(588, 'Changes on Article \'About Us\' has been saved succe', '2023-10-08 17:35:29', 1, 4, '122.254.88.123'),
(589, 'Changes on Article \'About Us\' has been saved succe', '2023-10-08 17:35:59', 1, 4, '122.254.88.123'),
(590, 'Changes on Article \'About Us\' has been saved succe', '2023-10-08 17:41:33', 1, 4, '122.254.88.123'),
(591, 'Changes on Article \'About Us\' has been saved succe', '2023-10-08 17:42:24', 1, 4, '122.254.88.123'),
(592, 'Changes on Article \'About Us\' has been saved succe', '2023-10-08 17:42:40', 1, 4, '122.254.88.123'),
(593, 'Changes on Article \'Accommodation\' has been saved ', '2023-10-08 17:47:24', 1, 4, '122.254.88.123'),
(594, 'Changes on Article \'Accommodation\' has been saved ', '2023-10-08 17:47:47', 1, 4, '122.254.88.123'),
(595, 'Changes on Article \'Accommodation\' has been saved ', '2023-10-08 17:48:04', 1, 4, '122.254.88.123'),
(596, 'Changes on Article \'Accommodation\' has been saved ', '2023-10-08 17:48:15', 1, 4, '122.254.88.123'),
(597, 'Changes on Article \'Accommodation\' has been saved ', '2023-10-08 17:48:26', 1, 4, '122.254.88.123'),
(598, 'Changes on Article \'Accommodation\' has been saved ', '2023-10-08 17:48:50', 1, 4, '122.254.88.123'),
(599, 'Login: Hotel Sarathi   logged in.', '2023-10-09 10:42:12', 1, 1, '103.10.29.76'),
(600, 'Changes on Sub Package \'Haveli Restaurant\' has bee', '2023-10-09 10:46:21', 1, 4, '103.10.29.76'),
(601, 'Changes on Sub Package \'Bentil Bar\' has been saved', '2023-10-09 10:46:58', 1, 4, '103.10.29.76'),
(602, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 10:48:28', 1, 4, '103.10.29.76'),
(603, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 10:48:36', 1, 4, '103.10.29.76'),
(604, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 10:51:03', 1, 4, '103.10.29.76'),
(605, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 10:51:55', 1, 4, '103.10.29.76'),
(606, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-09 10:53:18', 1, 4, '103.10.29.76'),
(607, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-09 10:54:50', 1, 4, '103.10.29.76'),
(608, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-09 10:55:19', 1, 4, '103.10.29.76'),
(609, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-09 10:56:05', 1, 4, '103.10.29.76'),
(610, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-09 10:56:29', 1, 4, '103.10.29.76'),
(611, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-09 10:57:52', 1, 4, '103.10.29.76'),
(612, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-09 11:00:17', 1, 4, '103.10.29.76'),
(613, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-09 11:00:43', 1, 4, '103.10.29.76'),
(614, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-10-09 11:01:02', 1, 4, '103.10.29.76'),
(615, 'Changes on Article \'Unrivaled Location\' has been s', '2023-10-09 11:03:24', 1, 4, '103.10.29.76'),
(616, 'Changes on Article \'Unrivaled Location\' has been s', '2023-10-09 11:04:21', 1, 4, '103.10.29.76'),
(617, 'Changes on Article \'Finest dining in town\' has bee', '2023-10-09 11:05:14', 1, 4, '103.10.29.76'),
(618, 'Login: Hotel Sarathi   logged in.', '2023-10-09 11:24:34', 1, 1, '103.10.29.76'),
(619, 'Changes on Sub Package \'Premium Room\' has been sav', '2023-10-09 11:25:01', 1, 4, '103.10.29.76'),
(620, 'Login: Hotel Sarathi   logged in.', '2023-10-09 14:29:05', 1, 1, '103.10.29.76'),
(621, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-09 14:55:02', 1, 4, '103.10.29.76'),
(622, 'Login: Hotel Sarathi   logged in.', '2023-10-09 15:02:45', 1, 1, '103.10.29.76'),
(623, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 15:07:42', 1, 4, '103.10.29.76'),
(624, 'Login: Hotel Sarathi   logged in.', '2023-10-09 15:27:00', 1, 1, '27.34.84.146'),
(625, 'Login: Hotel Sarathi   logged in.', '2023-10-09 15:28:39', 1, 1, '103.10.29.76'),
(626, 'Login: Hotel Sarathi   logged in.', '2023-10-09 15:29:58', 1, 1, '103.10.29.76'),
(627, 'Sub Package \'ghjhjk\' has added successfully.', '2023-10-09 15:35:44', 1, 3, '103.10.29.76'),
(628, 'Changes on Sub Package \'ghjhjk\' has been saved suc', '2023-10-09 15:37:19', 1, 4, '103.10.29.76'),
(629, 'Login: Hotel Sarathi   logged in.', '2023-10-09 15:40:18', 1, 1, '103.10.29.76'),
(630, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 15:42:36', 1, 4, '103.10.29.76'),
(631, 'Sub Package [ghjhjk]Data has deleted successfully.', '2023-10-09 15:43:22', 1, 6, '103.10.29.76'),
(632, 'Sub Package []Data has deleted successfully.', '2023-10-09 15:43:34', 1, 6, '103.10.29.76'),
(633, 'Sub Package []Data has deleted successfully.', '2023-10-09 15:43:34', 1, 6, '103.10.29.76'),
(634, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 15:44:47', 1, 4, '103.10.29.76'),
(635, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 15:48:33', 1, 4, '103.10.29.76'),
(636, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 15:49:57', 1, 4, '103.10.29.76'),
(637, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 15:57:12', 1, 4, '103.10.29.76'),
(638, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 15:58:14', 1, 4, '103.10.29.76'),
(639, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:00:12', 1, 4, '103.10.29.76'),
(640, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:03:37', 1, 4, '103.10.29.76'),
(641, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:04:36', 1, 4, '103.10.29.76'),
(642, 'Login: Hotel Sarathi   logged in.', '2023-10-09 16:08:40', 1, 1, '103.10.29.76'),
(643, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:09:36', 1, 4, '103.10.29.76'),
(644, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:10:34', 1, 4, '103.10.29.76'),
(645, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:11:30', 1, 4, '103.10.29.76'),
(646, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:12:22', 1, 4, '103.10.29.76'),
(647, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:12:44', 1, 4, '103.10.29.76'),
(648, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:13:46', 1, 4, '103.10.29.76'),
(649, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:15:54', 1, 4, '103.10.29.76'),
(650, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 16:17:40', 1, 4, '103.10.29.76'),
(651, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-09 16:20:17', 1, 4, '103.10.29.76'),
(652, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-09 16:21:47', 1, 4, '103.10.29.76'),
(653, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:22:48', 1, 4, '103.10.29.76'),
(654, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:23:50', 1, 4, '103.10.29.76'),
(655, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:26:31', 1, 4, '103.10.29.76'),
(656, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:27:17', 1, 4, '103.10.29.76'),
(657, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:28:28', 1, 4, '103.10.29.76'),
(658, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:30:14', 1, 4, '103.10.29.76'),
(659, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:31:24', 1, 4, '103.10.29.76'),
(660, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:32:36', 1, 4, '103.10.29.76'),
(661, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:33:18', 1, 4, '103.10.29.76'),
(662, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2023-10-09 16:33:43', 1, 4, '103.10.29.76'),
(663, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:36:08', 1, 4, '103.10.29.76'),
(664, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:36:58', 1, 4, '103.10.29.76'),
(665, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:37:45', 1, 4, '103.10.29.76'),
(666, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:39:03', 1, 4, '103.10.29.76'),
(667, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:40:27', 1, 4, '103.10.29.76'),
(668, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:42:02', 1, 4, '103.10.29.76'),
(669, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:43:36', 1, 4, '103.10.29.76'),
(670, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:44:26', 1, 4, '103.10.29.76'),
(671, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:46:21', 1, 4, '103.10.29.76'),
(672, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:48:46', 1, 4, '103.10.29.76'),
(673, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-09 16:48:56', 1, 4, '103.10.29.76'),
(674, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:50:32', 1, 4, '103.10.29.76'),
(675, 'Changes on Article \'Accommodation\' has been saved ', '2023-10-09 16:50:51', 1, 4, '103.10.29.76'),
(676, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:51:48', 1, 4, '103.10.29.76'),
(677, 'Changes on Article \'Unrivaled Location\' has been s', '2023-10-09 16:53:48', 1, 4, '103.10.29.76'),
(678, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:53:55', 1, 4, '103.10.29.76'),
(679, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:55:18', 1, 4, '103.10.29.76'),
(680, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:56:16', 1, 4, '103.10.29.76'),
(681, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2023-10-09 16:57:52', 1, 4, '103.10.29.76'),
(682, 'Changes on Article \'Unrivaled Location\' has been s', '2023-10-09 16:58:34', 1, 4, '103.10.29.76'),
(683, 'Changes on Sub Package \'Deluxe Room Main Block\' ha', '2023-10-09 17:02:29', 1, 4, '103.10.29.76'),
(684, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 17:03:35', 1, 4, '103.10.29.76'),
(685, 'Changes on Sub Package \'Deluxe Room Garden Block\' ', '2023-10-09 17:04:05', 1, 4, '103.10.29.76'),
(686, 'Changes on Sub Package \'Deluxe Room Garden Block\' ', '2023-10-09 17:12:29', 1, 4, '103.10.29.76'),
(687, 'Article \'test_page\' has added successfully.', '2023-10-09 17:37:27', 1, 3, '103.10.29.76'),
(688, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 17:39:25', 1, 4, '103.10.29.76'),
(689, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 17:39:50', 1, 4, '103.10.29.76'),
(690, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:40:41', 1, 4, '103.10.29.76'),
(691, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:42:27', 1, 4, '103.10.29.76'),
(692, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:47:01', 1, 4, '103.10.29.76'),
(693, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:47:52', 1, 4, '103.10.29.76'),
(694, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:49:25', 1, 4, '103.10.29.76'),
(695, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:51:20', 1, 4, '103.10.29.76'),
(696, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:52:22', 1, 4, '103.10.29.76'),
(697, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:52:51', 1, 4, '103.10.29.76'),
(698, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:53:53', 1, 4, '103.10.29.76'),
(699, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:54:46', 1, 4, '103.10.29.76'),
(700, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:55:32', 1, 4, '103.10.29.76'),
(701, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 17:59:31', 1, 4, '103.10.29.76'),
(702, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 18:02:01', 1, 4, '103.10.29.76'),
(703, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 18:05:18', 1, 4, '103.10.29.76'),
(704, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 18:06:02', 1, 4, '103.10.29.76'),
(705, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 18:06:57', 1, 4, '103.10.29.76'),
(706, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 18:07:43', 1, 4, '103.10.29.76'),
(707, 'Changes on Article \'About Us\' has been saved succe', '2023-10-09 18:09:33', 1, 4, '103.10.29.76'),
(708, 'Login: Hotel Sarathi   logged in.', '2023-10-09 18:15:46', 1, 1, '103.10.29.76'),
(709, 'Package Dining Edit Successfully', '2023-10-09 18:16:54', 1, 4, '103.10.29.76'),
(710, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 18:23:39', 1, 4, '103.10.29.76'),
(711, 'Package Accommodation Edit Successfully', '2023-10-09 18:25:40', 1, 4, '103.10.29.76'),
(712, 'Package Accommodation Edit Successfully', '2023-10-09 18:26:02', 1, 4, '103.10.29.76'),
(713, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 18:26:30', 1, 4, '103.10.29.76'),
(714, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 18:29:12', 1, 4, '103.10.29.76'),
(715, 'Changes on Article \'test_page\' has been saved succ', '2023-10-09 18:31:17', 1, 4, '103.10.29.76'),
(716, 'Login: Hotel Sarathi   logged in.', '2023-10-10 07:13:32', 1, 1, '111.119.49.118'),
(717, 'Changes on Article \'test_page\' has been saved succ', '2023-10-10 07:30:57', 1, 4, '111.119.49.118'),
(718, 'Changes on Article \'test_page\' has been saved succ', '2023-10-10 07:36:19', 1, 4, '111.119.49.118'),
(719, 'Changes on Article \'test_page\' has been saved succ', '2023-10-10 07:39:18', 1, 4, '111.119.49.118'),
(720, 'Changes on Article \'test_page\' has been saved succ', '2023-10-10 07:56:58', 1, 4, '111.119.49.118'),
(721, 'Changes on Article \'test_page\' has been saved succ', '2023-10-10 08:00:02', 1, 4, '111.119.49.118'),
(722, 'Changes on Article \'test_page\' has been saved succ', '2023-10-10 08:02:35', 1, 4, '111.119.49.118'),
(723, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 08:03:20', 1, 4, '111.119.49.118'),
(724, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 08:07:29', 1, 4, '111.119.49.118'),
(725, 'Login: Hotel Sarathi   logged in.', '2023-10-10 11:57:57', 1, 1, '103.10.29.76'),
(726, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 11:58:13', 1, 4, '103.10.29.76'),
(727, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 12:03:48', 1, 4, '103.10.29.76'),
(728, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 12:05:22', 1, 4, '103.10.29.76'),
(729, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 12:06:49', 1, 4, '103.10.29.76'),
(730, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 12:09:31', 1, 4, '103.10.29.76'),
(731, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 12:14:37', 1, 4, '103.10.29.76'),
(732, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 12:18:43', 1, 4, '103.10.29.76'),
(733, 'Changes on Article \'About Us\' has been saved succe', '2023-10-10 12:25:25', 1, 4, '103.10.29.76'),
(734, 'Changes on Sub Package \'Haveli Restaurant\' has bee', '2023-10-10 12:43:51', 1, 4, '27.34.84.185'),
(735, 'Login: Hotel Sarathi   logged in.', '2023-10-10 12:50:30', 1, 1, '27.34.84.185'),
(736, 'Package Dining Edit Successfully', '2023-10-10 12:58:03', 1, 4, '103.10.29.76'),
(737, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-10 13:34:52', 1, 4, '103.10.29.76'),
(738, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-10 13:44:58', 1, 4, '103.10.29.76'),
(739, 'Testimonial [JigsGaton] Edit Successfully', '2023-10-10 13:51:32', 1, 4, '103.10.29.76'),
(740, 'Testimonial [Colleen] Edit Successfully', '2023-10-10 13:56:33', 1, 4, '103.10.29.76'),
(741, 'Testimonial [Colleen] Edit Successfully', '2023-10-10 13:59:36', 1, 4, '103.10.29.76'),
(742, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-10 14:04:55', 1, 4, '103.10.29.76'),
(743, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-10 14:13:20', 1, 4, '103.10.29.76'),
(744, 'Login: Hotel Sarathi   logged in.', '2023-10-10 14:33:48', 1, 1, '27.34.64.164'),
(745, 'User [Hotel Sarathi  ] Edit Successfully', '2023-10-10 14:34:38', 1, 4, '27.34.64.164'),
(746, 'Login: Hotel Sarathi   logged in.', '2023-10-10 14:34:47', 1, 1, '27.34.64.164'),
(747, 'Login: Hotel Sarathi   logged in.', '2023-10-10 14:36:30', 1, 1, '103.10.29.76'),
(748, 'User [Hotel Sarathi  ] Edit Successfully', '2023-10-10 14:36:55', 1, 4, '27.34.64.164'),
(749, 'Login: Hotel Sarathi   logged in.', '2023-10-10 14:38:32', 1, 1, '27.34.64.164'),
(750, 'Login: Hotel Sarathi   logged in.', '2023-10-10 14:46:33', 1, 1, '103.10.29.76'),
(751, 'User [Hotel Sarathi  ] Edit Successfully', '2023-10-10 14:49:38', 1, 4, '103.10.29.76'),
(752, 'Login: Hotel Sarathi   logged in.', '2023-10-10 14:52:22', 1, 1, '103.10.29.76'),
(753, 'User [Hotel Sarathi  ] Edit Successfully', '2023-10-10 14:52:40', 1, 4, '103.10.29.76'),
(754, 'Login: Hotel Sarathi   logged in.', '2023-10-10 14:54:22', 1, 1, '103.10.29.76'),
(755, 'User [Hotel Sarathi  ] Edit Successfully', '2023-10-10 14:54:39', 1, 4, '103.10.29.76'),
(756, 'Login: Hotel Sarathi   logged in.', '2023-10-10 14:54:43', 1, 1, '103.10.29.76'),
(757, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-10 14:55:04', 1, 4, '103.10.29.76'),
(758, 'Gallery [Reception]Data has added successfully.', '2023-10-10 15:13:26', 1, 3, '103.10.29.76'),
(759, 'Sub Gallery Image [Reception 1]Data has added succ', '2023-10-10 15:13:50', 1, 3, '103.10.29.76'),
(760, 'Sub Gallery Image [Reception 2]Data has added succ', '2023-10-10 15:13:50', 1, 3, '103.10.29.76'),
(761, 'Sub Gallery Image [Reception 3]Data has added succ', '2023-10-10 15:13:50', 1, 3, '103.10.29.76'),
(762, 'Sub Gallery Image [Reception 4]Data has added succ', '2023-10-10 15:13:50', 1, 3, '103.10.29.76'),
(763, 'Testimonial [Lilli knippers] Edit Successfully', '2023-10-10 15:58:00', 1, 4, '103.10.29.76'),
(764, 'Testimonial [Dawa S.] Edit Successfully', '2023-10-10 16:00:13', 1, 4, '103.10.29.76'),
(765, 'Testimonial [Dawa S.] Edit Successfully', '2023-10-10 16:04:27', 1, 4, '103.10.29.76'),
(766, 'Sub Gallery Image  [room]Data has deleted successf', '2023-10-10 16:08:26', 1, 6, '103.10.29.76'),
(767, 'Sub Gallery Image  []Data has deleted successfully', '2023-10-10 16:08:29', 1, 6, '103.10.29.76'),
(768, 'Sub Gallery Image  [room]Data has deleted successf', '2023-10-10 16:08:29', 1, 6, '103.10.29.76'),
(769, 'Sub Gallery Image  []Data has deleted successfully', '2023-10-10 16:08:32', 1, 6, '103.10.29.76'),
(770, 'Sub Gallery Image  []Data has deleted successfully', '2023-10-10 16:08:32', 1, 6, '103.10.29.76'),
(771, 'Sub Gallery Image  [room]Data has deleted successf', '2023-10-10 16:08:32', 1, 6, '103.10.29.76'),
(772, 'Sub Gallery Image  []Data has deleted successfully', '2023-10-10 16:08:36', 1, 6, '103.10.29.76'),
(773, 'Sub Gallery Image  []Data has deleted successfully', '2023-10-10 16:08:36', 1, 6, '103.10.29.76'),
(774, 'Sub Gallery Image  []Data has deleted successfully', '2023-10-10 16:08:36', 1, 6, '103.10.29.76'),
(775, 'Sub Gallery Image  [room]Data has deleted successf', '2023-10-10 16:08:36', 1, 6, '103.10.29.76'),
(776, 'Sub Gallery Image [Deluxe Garden  1]Data has added', '2023-10-10 16:09:33', 1, 3, '103.10.29.76'),
(777, 'Sub Gallery Image [Deluxe Garden 2]Data has added ', '2023-10-10 16:09:33', 1, 3, '103.10.29.76'),
(778, 'Sub Gallery Image [Deluxe Garden 3]Data has added ', '2023-10-10 16:09:33', 1, 3, '103.10.29.76'),
(779, 'Sub Gallery Image [Deluxe main 1]Data has added su', '2023-10-10 16:10:54', 1, 3, '103.10.29.76'),
(780, 'Sub Gallery Image [Deluxe main 2]Data has added su', '2023-10-10 16:10:54', 1, 3, '103.10.29.76'),
(781, 'Sub Gallery Image [Deluxe main 3]Data has added su', '2023-10-10 16:10:54', 1, 3, '103.10.29.76'),
(782, 'Sub Gallery Image [Deluxe main 4]Data has added su', '2023-10-10 16:10:54', 1, 3, '103.10.29.76'),
(783, 'Sub Gallery Image [Deluxe main 5]Data has added su', '2023-10-10 16:10:54', 1, 3, '103.10.29.76'),
(784, 'Sub Gallery Image [Suite Rooms 1]Data has added su', '2023-10-10 16:11:48', 1, 3, '103.10.29.76'),
(785, 'Sub Gallery Image [Suite Rooms 2]Data has added su', '2023-10-10 16:11:48', 1, 3, '103.10.29.76'),
(786, 'Sub Gallery Image [Suite Rooms 3]Data has added su', '2023-10-10 16:11:48', 1, 3, '103.10.29.76'),
(787, 'Sub Gallery Image [Suite Rooms 4]Data has added su', '2023-10-10 16:11:48', 1, 3, '103.10.29.76'),
(788, 'Sub Gallery Image [Suite Rooms 5]Data has added su', '2023-10-10 16:11:48', 1, 3, '103.10.29.76'),
(789, 'Sub Gallery Image [Suite Rooms 6]Data has added su', '2023-10-10 16:11:48', 1, 3, '103.10.29.76'),
(790, 'Changes on Article \'Accommodation\' has been saved ', '2023-10-10 16:31:26', 1, 4, '103.10.29.76'),
(791, 'Slideshow [Luxurious Stay <strong>vibrant</strong>', '2023-10-10 16:39:25', 1, 4, '103.10.29.76'),
(792, 'Package Accommodation Edit Successfully', '2023-10-10 16:40:20', 1, 4, '103.10.29.76'),
(793, 'Package Accommodation Edit Successfully', '2023-10-10 16:51:02', 1, 4, '103.10.29.76'),
(794, 'Login: Hotel Sarathi   logged in.', '2023-10-11 11:34:57', 1, 1, '202.51.76.40'),
(795, 'Package Dining Edit Successfully', '2023-10-11 11:36:10', 1, 4, '202.51.76.40'),
(796, 'Changes on Article \'About Us\' has been saved succe', '2023-10-11 11:41:49', 1, 4, '202.51.76.40'),
(797, 'Package Accommodation Edit Successfully', '2023-10-11 12:08:45', 1, 4, '202.51.76.40'),
(798, 'Changes on Sub Package \'Deluxe Room Main Block\' ha', '2023-10-11 12:35:20', 1, 4, '202.51.76.40'),
(799, 'Changes on Sub Package \'Deluxe Room Garden Block\' ', '2023-10-11 12:37:57', 1, 4, '202.51.76.40'),
(800, 'Changes on Article \'About Us\' has been saved succe', '2023-10-11 12:44:18', 1, 4, '202.51.76.40'),
(801, 'Changes on Article \'About Us\' has been saved succe', '2023-10-11 12:46:36', 1, 4, '202.51.76.40'),
(802, 'Changes on Article \'About Us\' has been saved succe', '2023-10-11 12:50:14', 1, 4, '202.51.76.40'),
(803, 'Changes on Article \'About Us\' has been saved succe', '2023-10-11 12:52:23', 1, 4, '202.51.76.40'),
(804, 'Articles  [test_page]Data has deleted successfully', '2023-10-11 12:55:17', 1, 6, '202.51.76.40'),
(805, 'Login: Hotel Sarathi   logged in.', '2023-10-11 13:19:50', 1, 1, '202.51.76.40'),
(806, 'Package Accommodation Edit Successfully', '2023-10-11 13:27:46', 1, 4, '202.51.76.40'),
(807, 'Package Accommodation Edit Successfully', '2023-10-11 13:28:45', 1, 4, '202.51.76.40'),
(808, 'Changes on Article \'About Us\' has been saved succe', '2023-10-11 13:32:55', 1, 4, '202.51.76.40'),
(809, 'Login: Hotel Sarathi   logged in.', '2023-10-11 17:35:54', 1, 1, '202.51.76.40'),
(810, 'Slideshow [Luxurious Stay <strong>vibrant</strong>', '2023-10-11 17:36:27', 1, 4, '202.51.76.40'),
(811, 'Gallery Image [Restaurant] Edit Successfully', '2023-10-11 17:39:55', 1, 4, '202.51.76.40'),
(812, 'Gallery Image [Restaurant] Edit Successfully', '2023-10-11 17:43:46', 1, 4, '202.51.76.40'),
(813, 'Changes on Article \'About Us\' has been saved succe', '2023-10-11 17:48:43', 1, 4, '202.51.76.40'),
(814, 'Login: Hotel Sarathi   logged in.', '2023-10-12 16:28:04', 1, 1, '27.34.84.184'),
(815, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2023-10-12 16:28:39', 1, 4, '27.34.84.184'),
(816, 'Login: Hotel Sarathi   logged in.', '2023-10-12 16:33:00', 1, 1, '202.51.76.40'),
(817, 'Package Accommodation Edit Successfully', '2023-10-12 16:34:16', 1, 4, '202.51.76.40'),
(818, 'Changes on Article \'Finest dining in town\' has bee', '2023-10-12 16:36:39', 1, 4, '27.34.84.184'),
(819, 'Changes on Article \'Finest dining in town\' has bee', '2023-10-12 16:38:48', 1, 4, '27.34.84.184'),
(820, 'Changes on Article \'Finest dining in town\' has bee', '2023-10-12 16:39:15', 1, 4, '27.34.84.184'),
(821, 'Login: Hotel Sarathi   logged in.', '2023-10-12 16:41:32', 1, 1, '27.34.84.184'),
(822, 'Changes on Article \'Unrivaled Location\' has been s', '2023-10-12 16:42:03', 1, 4, '27.34.84.184'),
(823, 'Login: Hotel Sarathi   logged in.', '2023-10-12 16:54:31', 1, 1, '202.51.76.40'),
(824, 'Login: Hotel Sarathi   logged in.', '2023-10-13 11:36:19', 1, 1, '27.34.84.184'),
(825, 'Changes on Sub Package \'Executive Room\' has been s', '2023-10-13 11:39:20', 1, 4, '27.34.84.184'),
(826, 'Changes on Sub Package \'Presidential Suite Room\' h', '2023-10-13 11:41:08', 1, 4, '27.34.84.184'),
(827, 'Changes on Sub Package \'Executive Room\' has been s', '2023-10-13 11:44:40', 1, 4, '27.34.84.184'),
(828, 'Changes on Sub Package \'Executive Room\' has been s', '2023-10-13 11:49:33', 1, 4, '27.34.84.184'),
(829, 'Changes on Sub Package \'Executive Room\' has been s', '2023-10-13 11:53:04', 1, 4, '27.34.84.184'),
(830, 'Changes on Sub Package \'Deluxe Room Main Block\' ha', '2023-10-13 11:55:32', 1, 4, '27.34.84.184'),
(831, 'Changes on Sub Package \'Deluxe Room Garden Block\' ', '2023-10-13 11:57:13', 1, 4, '27.34.84.184'),
(832, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-10-13 11:58:19', 1, 4, '27.34.84.184'),
(833, 'Changes on Sub Package \'Executive Room\' has been s', '2023-10-13 11:58:42', 1, 4, '27.34.84.184'),
(834, 'Changes on Sub Package \'Presidential Suite Room\' h', '2023-10-13 11:59:16', 1, 4, '27.34.84.184'),
(835, 'Login: Hotel Sarathi   logged in.', '2023-10-13 15:10:42', 1, 1, '43.245.86.88'),
(836, 'Changes on Sub Package \'Deluxe Room Garden Block\' ', '2023-10-13 15:11:33', 1, 4, '43.245.86.88'),
(837, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-10-13 15:12:38', 1, 4, '43.245.86.88'),
(838, 'Login: Hotel Sarathi   logged in.', '2023-10-13 17:38:12', 1, 1, '43.245.86.88'),
(839, 'Login: Hotel Sarathi   logged in.', '2023-10-16 11:55:55', 1, 1, '27.34.64.117'),
(840, 'Login: Hotel Sarathi   logged in.', '2023-10-17 12:18:35', 1, 1, '103.10.29.186'),
(841, 'Login: Hotel Sarathi   logged in.', '2023-10-17 12:42:23', 1, 1, '103.10.29.186'),
(842, 'Login: Hotel Sarathi   logged in.', '2023-10-17 12:46:12', 1, 1, '103.10.29.186'),
(843, 'Login: Hotel Sarathi   logged in.', '2023-10-17 12:51:22', 1, 1, '103.10.29.186'),
(844, 'Login: Hotel Sarathi   logged in.', '2023-10-17 12:53:47', 1, 1, '103.10.29.186'),
(845, 'Login: Hotel Sarathi   logged in.', '2023-10-17 13:20:31', 1, 1, '103.10.29.186'),
(846, 'Login: Hotel Sarathi   logged in.', '2023-10-17 13:59:28', 1, 1, '103.10.29.186'),
(847, 'Login: Hotel Sarathi   logged in.', '2023-10-17 14:06:19', 1, 1, '103.10.29.186'),
(848, 'Changes on Article \'dasdadasd\' has been saved succ', '2023-10-17 14:06:42', 1, 4, '103.10.29.186'),
(849, 'Login: Hotel Sarathi   logged in.', '2023-10-17 14:07:18', 1, 1, '103.10.29.186'),
(850, 'Changes on Article \'dasdadasd\' has been saved succ', '2023-10-17 14:08:43', 1, 4, '103.10.29.186'),
(851, 'Login: Hotel Sarathi   logged in.', '2023-10-17 14:10:13', 1, 1, '103.10.29.186'),
(852, 'Changes on Article \'dasdadasd\' has been saved succ', '2023-10-17 14:10:23', 1, 4, '103.10.29.186'),
(853, 'Login: Hotel Sarathi   logged in.', '2023-10-17 14:13:59', 1, 1, '103.10.29.186'),
(854, 'Login: Hotel Sarathi   logged in.', '2023-10-17 14:17:09', 1, 1, '103.10.29.186'),
(855, 'Changes on Article \'About Us\' has been saved succe', '2023-10-17 14:19:28', 1, 4, '103.10.29.186'),
(856, 'Package Hall Edit Successfully', '2023-10-17 14:21:06', 1, 4, '103.10.29.186'),
(857, 'Package Dining Edit Successfully', '2023-10-17 14:25:25', 1, 4, '103.10.29.186'),
(858, 'Login: Hotel Sarathi   logged in.', '2023-10-18 12:26:56', 1, 1, '103.10.29.186'),
(859, 'Login: Hotel Sarathi   logged in.', '2023-10-18 12:27:19', 1, 1, '27.34.84.176'),
(860, 'Changes on Sub Package \'Presidential Suite Room\' h', '2023-10-18 12:32:11', 1, 4, '27.34.84.176'),
(861, 'Login: Hotel Sarathi   logged in.', '2023-10-19 13:17:08', 1, 1, '27.34.84.176'),
(862, 'Menu [Events & Meetings] Edit Successfully', '2023-10-19 13:17:33', 1, 4, '27.34.84.176'),
(863, 'Menu [Event & Conference] Edit Successfully', '2023-10-19 13:19:48', 1, 4, '27.34.84.176'),
(864, 'Login: Hotel Sarathi   logged in.', '2023-10-20 17:04:42', 1, 1, '110.44.121.11'),
(865, 'Login: Hotel Sarathi   logged in.', '2023-11-05 13:09:14', 1, 1, '163.53.26.226'),
(866, 'Login: Hotel Sarathi   logged in.', '2023-11-05 14:58:36', 1, 1, '122.254.91.143'),
(867, 'Package Hall Edit Successfully', '2023-11-05 15:02:43', 1, 4, '103.123.61.1'),
(868, 'Login: Hotel Sarathi   logged in.', '2023-11-05 16:47:23', 1, 1, '163.53.27.160'),
(869, 'Login: Hotel Sarathi   logged in.', '2023-11-20 14:44:10', 1, 1, '103.123.61.78'),
(870, 'Login: Hotel Sarathi   logged in.', '2023-12-17 17:12:04', 1, 1, '110.44.117.205'),
(871, 'Login: Hotel Sarathi   logged in.', '2023-12-18 11:25:59', 1, 1, '122.254.84.126'),
(872, 'Login: Hotel Sarathi   logged in.', '2023-12-25 13:04:29', 1, 1, '163.53.26.111'),
(873, 'Login: Hotel Sarathi   logged in.', '2023-12-25 13:32:58', 1, 1, '163.53.26.111'),
(874, 'Popup  [Offer 3]Data has deleted successfully.', '2023-12-25 13:44:47', 1, 6, '163.53.26.111'),
(875, 'Popup  []Data has deleted successfully.', '2023-12-25 13:44:51', 1, 6, '163.53.26.111'),
(876, 'Login: Hotel Sarathi   logged in.', '2024-01-02 11:54:29', 1, 1, '163.53.27.154'),
(877, 'Slideshow [Welcome to <strong>Hotel Sarathi</stron', '2024-01-02 11:55:09', 1, 4, '163.53.27.154'),
(878, 'Slideshow [Welcome to <strong>Hotel Sarathi</stron', '2024-01-02 11:57:32', 1, 4, '163.53.27.154'),
(879, 'Changes on Article \'About Us\' has been saved succe', '2024-01-02 12:01:06', 1, 4, '163.53.27.154'),
(880, 'Changes on Article \'About Us\' has been saved succe', '2024-01-02 12:02:36', 1, 4, '163.53.27.154'),
(881, 'Changes on Article \'About Us\' has been saved succe', '2024-01-02 12:12:29', 1, 4, '163.53.27.154'),
(882, 'Package Accommodation Edit Successfully', '2024-01-02 12:29:10', 1, 4, '163.53.27.154'),
(883, 'Login: Hotel Sarathi   logged in.', '2024-01-02 13:19:42', 1, 1, '122.254.91.194'),
(884, 'Sub Gallery Image [thak]Data has added successfull', '2024-01-02 13:20:31', 1, 3, '122.254.91.194'),
(885, 'Sub Gallery Image  [thak]Data has deleted successf', '2024-01-02 13:20:44', 1, 6, '122.254.91.194'),
(886, 'Sub Gallery Image [Deluxe Room]Data has added succ', '2024-01-02 13:21:13', 1, 3, '122.254.91.194'),
(887, 'Sub Gallery Image [Deluxe Room]Data has added succ', '2024-01-02 13:21:13', 1, 3, '122.254.91.194'),
(888, 'Sub Gallery Image [Suite Room]Data has added succe', '2024-01-02 13:28:09', 1, 3, '122.254.91.194'),
(889, 'Sub Gallery Image [Suite Room]Data has added succe', '2024-01-02 13:28:09', 1, 3, '122.254.91.194'),
(890, 'Sub Gallery Image [Suite Room]Data has added succe', '2024-01-02 13:28:09', 1, 3, '122.254.91.194'),
(891, 'Sub Gallery Image [Suite Room]Data has added succe', '2024-01-02 13:28:09', 1, 3, '122.254.91.194'),
(892, 'Changes on Sub Package \'Premium Room\' has been sav', '2024-01-02 13:34:36', 1, 4, '122.254.91.194'),
(893, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-01-02 13:39:22', 1, 4, '122.254.91.194'),
(894, 'Sub Gallery Image  [Suite Room]Data has deleted su', '2024-01-02 13:41:24', 1, 6, '122.254.91.194'),
(895, 'Sub Gallery Image  [Suite Room]Data has deleted su', '2024-01-02 13:41:28', 1, 6, '122.254.91.194'),
(896, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 13:41:28', 1, 6, '122.254.91.194'),
(897, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 13:41:31', 1, 6, '122.254.91.194'),
(898, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 13:41:31', 1, 6, '122.254.91.194'),
(899, 'Sub Gallery Image  [Suite Room]Data has deleted su', '2024-01-02 13:41:31', 1, 6, '122.254.91.194'),
(900, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 13:41:34', 1, 6, '122.254.91.194'),
(901, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 13:41:34', 1, 6, '122.254.91.194'),
(902, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 13:41:34', 1, 6, '122.254.91.194'),
(903, 'Sub Gallery Image  [Suite Room]Data has deleted su', '2024-01-02 13:41:34', 1, 6, '122.254.91.194'),
(904, 'Sub Gallery Image [Premium Suite]Data has added su', '2024-01-02 13:42:09', 1, 3, '122.254.91.194'),
(905, 'Sub Gallery Image [Premium Suite]Data has added su', '2024-01-02 13:42:09', 1, 3, '122.254.91.194'),
(906, 'Sub Gallery Image [Premium Suite]Data has added su', '2024-01-02 13:42:09', 1, 3, '122.254.91.194'),
(907, 'Sub Gallery Image [Premium Suite]Data has added su', '2024-01-02 13:42:09', 1, 3, '122.254.91.194'),
(908, 'Sub Gallery Image [Suite Room]Data has added succe', '2024-01-02 14:47:23', 1, 3, '122.254.91.194'),
(909, 'Sub Gallery Image [Suite Room]Data has added succe', '2024-01-02 14:47:23', 1, 3, '122.254.91.194'),
(910, 'Sub Gallery Image [Suite Room]Data has added succe', '2024-01-02 14:47:23', 1, 3, '122.254.91.194'),
(911, 'Sub Gallery Image [Suite Room]Data has added succe', '2024-01-02 14:47:23', 1, 3, '122.254.91.194'),
(912, 'Login: Hotel Sarathi   logged in.', '2024-01-02 14:47:30', 1, 1, '122.254.91.194'),
(913, 'Sub Gallery Image  [Night View]Data has deleted su', '2024-01-02 14:50:28', 1, 6, '122.254.91.194'),
(914, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:50:31', 1, 6, '122.254.91.194'),
(915, 'Sub Gallery Image  [Pool]Data has deleted successf', '2024-01-02 14:50:31', 1, 6, '122.254.91.194'),
(916, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:50:34', 1, 6, '122.254.91.194'),
(917, 'Sub Gallery Image  [Pool]Data has deleted successf', '2024-01-02 14:50:34', 1, 6, '122.254.91.194'),
(918, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:50:34', 1, 6, '122.254.91.194'),
(919, 'Sub Gallery Image  [Pool]Data has deleted successf', '2024-01-02 14:50:37', 1, 6, '122.254.91.194'),
(920, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:50:37', 1, 6, '122.254.91.194'),
(921, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:50:37', 1, 6, '122.254.91.194'),
(922, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:50:37', 1, 6, '122.254.91.194'),
(923, 'Sub Gallery Image [Pool]Data has added successfull', '2024-01-02 14:51:06', 1, 3, '122.254.91.194'),
(924, 'Sub Gallery Image [Pool]Data has added successfull', '2024-01-02 14:51:06', 1, 3, '122.254.91.194'),
(925, 'Sub Gallery Image [Pool]Data has added successfull', '2024-01-02 14:51:06', 1, 3, '122.254.91.194'),
(926, 'Sub Gallery Image [Pool]Data has added successfull', '2024-01-02 14:51:06', 1, 3, '122.254.91.194'),
(927, 'Sub Gallery Image [Pool]Data has added successfull', '2024-01-02 14:51:06', 1, 3, '122.254.91.194'),
(928, 'Sub Gallery Image [Pool]Data has added successfull', '2024-01-02 14:51:06', 1, 3, '122.254.91.194'),
(929, 'Sub Gallery Image [Pool]Data has added successfull', '2024-01-02 14:51:06', 1, 3, '122.254.91.194'),
(930, 'Sub Gallery Image [Pool]Data has added successfull', '2024-01-02 14:51:06', 1, 3, '122.254.91.194'),
(931, 'Sub Gallery Image  [Exterior]Data has deleted succ', '2024-01-02 14:56:23', 1, 6, '122.254.91.194'),
(932, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:26', 1, 6, '122.254.91.194'),
(933, 'Sub Gallery Image  [Exterior]Data has deleted succ', '2024-01-02 14:56:26', 1, 6, '122.254.91.194'),
(934, 'Sub Gallery Image  [Exterior]Data has deleted succ', '2024-01-02 14:56:29', 1, 6, '122.254.91.194'),
(935, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:29', 1, 6, '122.254.91.194'),
(936, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:30', 1, 6, '122.254.91.194'),
(937, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:32', 1, 6, '122.254.91.194'),
(938, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:32', 1, 6, '122.254.91.194'),
(939, 'Sub Gallery Image  [Exterior]Data has deleted succ', '2024-01-02 14:56:32', 1, 6, '122.254.91.194'),
(940, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:32', 1, 6, '122.254.91.194'),
(941, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:36', 1, 6, '122.254.91.194'),
(942, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:36', 1, 6, '122.254.91.194'),
(943, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:36', 1, 6, '122.254.91.194'),
(944, 'Sub Gallery Image  []Data has deleted successfully', '2024-01-02 14:56:36', 1, 6, '122.254.91.194'),
(945, 'Sub Gallery Image  [Exterior]Data has deleted succ', '2024-01-02 14:56:36', 1, 6, '122.254.91.194'),
(946, 'Sub Gallery Image [Exterior]Data has added success', '2024-01-02 14:57:26', 1, 3, '122.254.91.194'),
(947, 'Sub Gallery Image [Exterior]Data has added success', '2024-01-02 14:57:26', 1, 3, '122.254.91.194'),
(948, 'Sub Gallery Image [Exterior]Data has added success', '2024-01-02 14:57:26', 1, 3, '122.254.91.194'),
(949, 'Sub Gallery Image [Exterior]Data has added success', '2024-01-02 14:57:26', 1, 3, '122.254.91.194'),
(950, 'Sub Gallery Image [hall]Data has added successfull', '2024-01-02 15:10:39', 1, 3, '163.53.26.119'),
(951, 'Sub Gallery Image [hall]Data has added successfull', '2024-01-02 15:10:39', 1, 3, '163.53.26.119'),
(952, 'Sub Gallery Image [hall]Data has added successfull', '2024-01-02 15:10:39', 1, 3, '163.53.26.119'),
(953, 'Sub Gallery Image [hall]Data has added successfull', '2024-01-02 15:10:39', 1, 3, '163.53.26.119'),
(954, 'Sub Gallery Image [Serving]Data has added successf', '2024-01-02 15:25:19', 1, 3, '163.53.26.143'),
(955, 'Sub Gallery Image [Restaurant]Data has added succe', '2024-01-02 15:25:19', 1, 3, '163.53.26.143'),
(956, 'Sub Gallery Image [Restaurant]Data has added succe', '2024-01-02 15:25:19', 1, 3, '163.53.26.143'),
(957, 'Sub Gallery Image [Restaurant]Data has added succe', '2024-01-02 15:25:19', 1, 3, '163.53.26.143'),
(958, 'Sub Gallery Image [Restaurant]Data has added succe', '2024-01-02 15:25:19', 1, 3, '163.53.26.143'),
(959, 'Sub Gallery Image [Restaurant]Data has added succe', '2024-01-02 15:25:19', 1, 3, '163.53.26.143'),
(960, 'Sub Gallery Image [Food]Data has added successfull', '2024-01-02 15:42:47', 1, 3, '163.53.26.143'),
(961, 'Sub Gallery Image [Food]Data has added successfull', '2024-01-02 15:42:47', 1, 3, '163.53.26.143'),
(962, 'Sub Gallery Image [Food]Data has added successfull', '2024-01-02 15:42:47', 1, 3, '163.53.26.143'),
(963, 'Sub Gallery Image [Food]Data has added successfull', '2024-01-02 15:42:47', 1, 3, '163.53.26.143'),
(964, 'Sub Gallery Image [Food]Data has added successfull', '2024-01-02 15:42:47', 1, 3, '163.53.26.143'),
(965, 'Changes on Sub Package \'Suite Room\' has been saved', '2024-01-02 16:36:43', 1, 4, '163.53.26.143'),
(966, 'Changes on Sub Package \'Presidential Suite Room\' h', '2024-01-02 16:40:51', 1, 4, '163.53.26.143'),
(967, 'Login: Hotel Sarathi   logged in.', '2024-01-03 11:32:35', 1, 1, '27.34.49.123'),
(968, 'Login: Hotel Sarathi   logged in.', '2024-01-07 15:30:58', 1, 1, '163.53.27.210'),
(969, 'Slideshow [Welcome to <strong>Hotel Sarathi</stron', '2024-01-07 15:33:30', 1, 4, '163.53.27.210'),
(970, 'Slideshow [Luxurious Stay <strong>vibrant</strong>', '2024-01-07 15:35:46', 1, 4, '163.53.27.210'),
(971, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2024-01-07 15:40:04', 1, 4, '163.53.27.210'),
(972, 'Sub Gallery Image [Bar]Data has added successfully', '2024-01-07 15:48:37', 1, 3, '163.53.27.210'),
(973, 'Menu  [Home]Data has deleted successfully.', '2024-01-07 15:53:08', 1, 6, '163.53.27.210'),
(974, 'Menu  [Offers]Data has deleted successfully.', '2024-01-07 15:53:12', 1, 6, '163.53.27.210'),
(975, 'Changes on Article \'Accommodation\' has been saved ', '2024-01-07 16:30:48', 1, 4, '163.53.27.210'),
(976, 'Changes on Article \'Finest dining in town\' has bee', '2024-01-07 16:34:32', 1, 4, '163.53.27.210'),
(977, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-01-07 16:39:49', 1, 4, '163.53.27.210'),
(978, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-01-07 16:44:05', 1, 4, '163.53.27.210'),
(979, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-01-07 17:12:20', 1, 4, '163.53.27.210'),
(980, 'Package Hall Edit Successfully', '2024-01-07 17:28:29', 1, 4, '163.53.27.16'),
(981, 'Package Hall Edit Successfully', '2024-01-07 17:32:01', 1, 4, '163.53.27.16'),
(982, 'Login: Hotel Sarathi   logged in.', '2024-01-08 14:11:20', 1, 1, '163.53.27.16'),
(983, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2024-01-08 14:44:57', 1, 4, '122.254.90.16'),
(984, 'Package Hall Edit Successfully', '2024-01-08 14:45:52', 1, 4, '122.254.90.16'),
(985, 'Package Dining Edit Successfully', '2024-01-08 15:50:41', 1, 4, '122.254.90.16'),
(986, 'Changes on Sub Package \'Haveli Restaurant\' has bee', '2024-01-08 15:54:00', 1, 4, '122.254.90.16'),
(987, 'Changes on Sub Package \'Bentil Bar\' has been saved', '2024-01-08 15:55:52', 1, 4, '122.254.90.16'),
(988, 'Login: Hotel Sarathi   logged in.', '2024-01-08 16:50:14', 1, 1, '163.53.26.16'),
(989, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2024-01-08 17:14:38', 1, 4, '163.53.26.16'),
(990, 'Slideshow [Welcome to <strong>Hotel Sarathi</stron', '2024-01-08 17:27:44', 1, 4, '163.53.26.16'),
(991, 'Login: Hotel Sarathi   logged in.', '2024-01-09 16:40:52', 1, 1, '163.53.26.16'),
(992, 'Changes on Article \'Accommodation\' has been saved ', '2024-01-09 16:47:09', 1, 4, '163.53.26.16'),
(993, 'Login: Hotel Sarathi   logged in.', '2024-01-09 17:25:54', 1, 1, '163.53.26.16'),
(994, 'Changes on Article \'Finest dining in town\' has bee', '2024-01-09 17:26:22', 1, 4, '163.53.26.16');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(995, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-01-09 17:33:24', 1, 4, '163.53.26.16'),
(996, 'Features [Complimentary Breakfast] Edit Successful', '2024-01-09 17:37:08', 1, 4, '163.53.26.16'),
(997, 'Login: Hotel Sarathi   logged in.', '2024-01-09 22:12:31', 1, 1, '103.163.182.244'),
(998, 'Features [Airport Pick Up and Drop] Edit Successfu', '2024-01-09 22:13:13', 1, 4, '103.163.182.244'),
(999, 'Changes on Sub Package \'Premium Room\' has been sav', '2024-01-09 22:18:25', 1, 4, '103.163.182.244'),
(1000, 'Login: Hotel Sarathi   logged in.', '2024-01-10 16:21:07', 1, 1, '163.53.26.61'),
(1001, 'Slideshow [Welcome to <strong>Hotel Sarathi</stron', '2024-01-10 16:22:02', 1, 4, '163.53.26.61'),
(1002, 'Features [Welcome drink on arrival] Edit Successfu', '2024-01-10 16:32:29', 1, 4, '163.53.26.61'),
(1003, 'Login: Hotel Sarathi   logged in.', '2024-02-02 17:09:37', 1, 1, '122.254.81.78'),
(1004, 'Login: Hotel Sarathi   logged in.', '2024-02-21 14:41:52', 1, 1, '103.181.226.163'),
(1005, 'Login: Hotel Sarathi   logged in.', '2024-02-22 11:46:00', 1, 1, '122.254.91.57'),
(1006, 'Login: Hotel Sarathi   logged in.', '2024-02-22 11:51:20', 1, 1, '122.254.91.57'),
(1007, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2024-02-22 11:54:55', 1, 4, '122.254.91.57'),
(1008, 'Testimonial [Nirey G] Edit Successfully', '2024-02-22 12:18:24', 1, 4, '122.254.91.57'),
(1009, 'Testimonial [Nirey G] Edit Successfully', '2024-02-22 12:19:31', 1, 4, '122.254.91.57'),
(1010, 'Testimonial [Nirey G] Edit Successfully', '2024-02-22 12:20:57', 1, 4, '122.254.91.57'),
(1011, 'Testimonial [Ravi Dahal] Edit Successfully', '2024-02-22 12:26:59', 1, 4, '122.254.91.57'),
(1012, 'Testimonial [Ravi Dahal] Edit Successfully', '2024-02-22 12:27:53', 1, 4, '122.254.91.57'),
(1013, 'Testimonial [Ravi Dahal] Edit Successfully', '2024-02-22 12:28:21', 1, 4, '122.254.91.57'),
(1014, 'Testimonial [Bibek Paudel] Edit Successfully', '2024-02-22 12:30:46', 1, 4, '122.254.91.57'),
(1015, 'Testimonial [Kshitiz Gautam] Edit Successfully', '2024-02-22 12:34:05', 1, 4, '122.254.91.57'),
(1016, 'Testimonial [Lilli knippers] Edit Successfully', '2024-02-22 12:37:21', 1, 4, '122.254.91.57'),
(1017, 'Login: Hotel Sarathi   logged in.', '2024-02-22 12:40:32', 1, 1, '122.254.91.57'),
(1018, 'Gallery Image [Hall] Edit Successfully', '2024-02-22 12:42:06', 1, 4, '122.254.91.57'),
(1019, 'Article \'home page 1\' has added successfully.', '2024-02-22 12:43:07', 1, 3, '122.254.91.57'),
(1020, 'Menu [hm1] CreatedData has added successfully.', '2024-02-22 12:43:26', 1, 3, '122.254.91.57'),
(1021, 'Menu [hm1] Edit Successfully', '2024-02-22 12:43:46', 1, 4, '122.254.91.57'),
(1022, 'Changes on Article \'home page 1\' has been saved su', '2024-02-22 12:45:58', 1, 4, '122.254.91.57'),
(1023, 'Menu  [hm1]Data has deleted successfully.', '2024-02-22 12:47:01', 1, 6, '122.254.91.57'),
(1024, 'Articles  [home page 1]Data has deleted successful', '2024-02-22 12:47:14', 1, 6, '122.254.91.57'),
(1025, 'Events [ev 1]Data has added successfully.', '2024-02-22 12:48:56', 1, 3, '122.254.91.57'),
(1026, 'Events  [ev 1]Data has deleted successfully.', '2024-02-22 13:02:22', 1, 6, '122.254.91.57'),
(1027, 'Sub Gallery Image [Pool]Data has added successfull', '2024-02-22 13:19:58', 1, 3, '122.254.91.57'),
(1028, 'Login: Hotel Sarathi   logged in.', '2024-02-23 10:44:25', 1, 1, '163.53.27.112'),
(1029, 'Offers [offer 1]Data has added successfully.', '2024-02-23 10:48:00', 1, 3, '163.53.27.112'),
(1030, 'Offerss  [offer 1]Data has deleted successfully.', '2024-02-23 10:48:36', 1, 6, '163.53.27.112'),
(1031, 'Offers  [offer 1]Data has deleted successfully.', '2024-02-23 10:48:36', 1, 6, '163.53.27.112'),
(1032, 'Login: Hotel Sarathi   logged in.', '2024-02-28 15:12:52', 1, 1, '122.254.80.31'),
(1033, 'Login: Hotel Sarathi   logged in.', '2024-02-29 16:51:58', 1, 1, '122.254.82.200'),
(1034, 'Slideshow [Welcome to <strong>Hotel Sarathi</stron', '2024-02-29 16:52:30', 1, 4, '122.254.82.200'),
(1035, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2024-02-29 16:56:58', 1, 4, '122.254.82.200'),
(1036, 'Slideshow [Event <strong>& Conference</strong>]Dat', '2024-02-29 17:00:15', 1, 3, '122.254.82.200'),
(1037, 'Slideshow [Luxurious Stay <strong>vibrant</strong>', '2024-02-29 17:03:07', 1, 4, '122.254.82.200'),
(1038, 'Slideshow [Poolside <strong>Paradise</strong>]Data', '2024-02-29 17:06:42', 1, 3, '122.254.82.200'),
(1039, 'Slideshow [Poolside <strong>Paradise</strong>] Edi', '2024-02-29 17:09:48', 1, 4, '122.254.82.200'),
(1040, 'Login: Hotel Sarathi   logged in.', '2024-03-01 10:34:17', 1, 1, '163.53.27.105'),
(1041, 'Slideshow [Event <strong>& Conference</strong>] Ed', '2024-03-01 10:34:41', 1, 4, '163.53.27.105'),
(1042, 'Slideshow [<strong>Multi Cuisine </strong> Restaur', '2024-03-01 10:36:40', 1, 4, '163.53.27.105'),
(1043, 'Login: Hotel Sarathi   logged in.', '2024-03-10 15:46:58', 1, 1, '163.53.26.0'),
(1044, 'Login: Hotel Sarathi   logged in.', '2024-03-11 15:45:02', 1, 1, '188.253.96.122'),
(1045, 'Login: Hotel Sarathi   logged in.', '2024-03-11 16:51:01', 1, 1, '163.53.27.204'),
(1046, 'Changes on Sub Package \'Bentil Bar\' has been saved', '2024-03-11 16:51:34', 1, 4, '163.53.27.204'),
(1047, 'Changes on Sub Package \'Haveli Restaurant\' has bee', '2024-03-11 16:52:02', 1, 4, '163.53.27.204'),
(1048, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2024-03-11 16:55:27', 1, 4, '163.53.27.204'),
(1049, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2024-03-11 16:57:35', 1, 4, '163.53.27.204'),
(1050, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2024-03-11 17:00:34', 1, 4, '163.53.27.204'),
(1051, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2024-03-11 17:01:21', 1, 4, '163.53.27.204'),
(1052, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2024-03-11 17:03:59', 1, 4, '163.53.27.204'),
(1053, 'Login: Hotel Sarathi   logged in.', '2024-03-12 15:45:49', 1, 1, '103.123.60.7'),
(1054, 'Login: Hotel Sarathi   logged in.', '2024-03-13 17:47:21', 1, 1, '188.253.99.193'),
(1055, 'Slideshow [Welcome to <strong>Hotel Sarathi</stron', '2024-03-13 17:48:03', 1, 4, '188.253.99.193'),
(1056, 'Login: Super admin   logged in.', '2024-04-02 13:38:00', 1, 1, '103.10.29.88'),
(1057, 'Login: Super admin   logged in.', '2024-04-02 16:47:52', 1, 1, '27.34.2.43'),
(1058, 'Popup \'asdasdasd\' has added successfully.', '2024-04-02 16:56:23', 1, 3, '27.34.2.43'),
(1059, 'Popup \'edfasdasd\' has added successfully.', '2024-04-02 17:24:08', 1, 3, '27.34.2.43'),
(1060, 'Changes on Popup \'edfasdasd\' has been saved succes', '2024-04-02 17:26:16', 1, 4, '27.34.2.43'),
(1061, 'Changes on Popup \'edfasdasd\' has been saved succes', '2024-04-02 17:36:09', 1, 4, '27.34.2.43'),
(1062, 'Popup  [edfasdasd]Data has deleted successfully.', '2024-04-02 17:38:50', 1, 6, '27.34.2.43'),
(1063, 'Login: Super admin   logged in.', '2024-04-02 17:50:52', 1, 1, '103.10.29.88'),
(1064, 'Popup \'New Year Offer\' has added successfully.', '2024-04-02 17:52:53', 1, 3, '103.10.29.88'),
(1065, 'Login: Super admin   logged in.', '2024-04-02 19:12:32', 1, 1, '27.34.2.43'),
(1066, 'Login: Super admin   logged in.', '2024-04-03 09:39:17', 1, 1, '27.34.65.29'),
(1067, 'Login: Super admin   logged in.', '2024-05-09 12:46:55', 1, 1, '27.34.66.90'),
(1068, 'Changes on Popup \'New Year Offer\' has been saved s', '2024-05-09 12:47:34', 1, 4, '27.34.66.90'),
(1069, 'Login: Super admin   logged in.', '2024-05-09 13:00:09', 1, 1, '27.34.24.108'),
(1070, 'Login: Super admin   logged in.', '2024-05-09 15:39:12', 1, 1, '27.34.66.90'),
(1071, 'Popup \'SATA\' has added successfully.', '2024-05-09 15:40:31', 1, 3, '27.34.66.90'),
(1072, 'Login: Super admin   logged in.', '2024-05-09 16:33:40', 1, 1, '103.10.28.190'),
(1073, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2024-05-09 16:34:26', 1, 4, '103.10.28.190'),
(1074, 'Changes on Popup \'SATA\' has been saved successfull', '2024-05-09 17:01:47', 1, 4, '27.34.66.90'),
(1075, 'Login: Super admin   logged in.', '2024-05-09 17:04:24', 1, 1, '27.34.66.90'),
(1076, 'Changes on Popup \'SATA\' has been saved successfull', '2024-05-09 17:05:01', 1, 4, '27.34.66.90'),
(1077, 'Changes on Popup \'SATA\' has been saved successfull', '2024-05-09 17:07:21', 1, 4, '27.34.66.90'),
(1078, 'Changes on Popup \'SATA\' has been saved successfull', '2024-05-09 17:10:32', 1, 4, '27.34.66.90'),
(1079, 'Login: Hotel Sarathi   logged in.', '2024-05-14 14:32:14', 1, 1, '27.34.66.90'),
(1080, 'Login: Hotel Sarathi   logged in.', '2024-05-14 17:49:56', 1, 1, '103.180.241.140'),
(1081, 'Sub Package \'Sarathi Events\' has added successfull', '2024-05-14 19:10:13', 1, 3, '103.180.241.140'),
(1082, 'Changes on Sub Package \'Sarathi Events\' has been s', '2024-05-14 19:11:11', 1, 4, '103.180.241.140'),
(1083, 'Changes on Sub Package \'Sarathi Events\' has been s', '2024-05-14 19:17:10', 1, 4, '103.180.241.140'),
(1084, 'Package Hall Edit Successfully', '2024-05-14 19:20:07', 1, 4, '103.180.241.140'),
(1085, 'Login: Hotel Sarathi   logged in.', '2024-05-15 09:40:39', 1, 1, '103.180.241.140'),
(1086, 'Gallery [Parking]Data has added successfully.', '2024-05-15 09:42:40', 1, 3, '103.180.241.140'),
(1087, 'Sub Gallery Image [Parking]Data has added successf', '2024-05-15 09:45:13', 1, 3, '103.180.241.140'),
(1088, 'Sub Gallery Image [Parking]Data has added successf', '2024-05-15 09:45:13', 1, 3, '103.180.241.140'),
(1089, 'Sub Gallery Image [Parking]Data has added successf', '2024-05-15 09:45:13', 1, 3, '103.180.241.140'),
(1090, 'Changes on Article \'Unrivaled Location\' has been s', '2024-05-15 10:59:01', 1, 4, '103.180.241.140'),
(1091, 'Login: Hotel Sarathi   logged in.', '2024-05-15 10:59:18', 1, 1, '103.180.241.140'),
(1092, 'Login: Hotel Sarathi   logged in.', '2024-05-15 11:00:48', 1, 1, '103.180.241.140'),
(1093, 'Changes on Article \'Unrivaled Location\' has been s', '2024-05-15 11:01:38', 1, 4, '103.180.241.140'),
(1094, 'Login: Hotel Sarathi   logged in.', '2024-06-02 14:46:17', 1, 1, '103.180.241.140'),
(1095, 'Changes on Article \'About Us\' has been saved succe', '2024-06-02 14:54:01', 1, 4, '103.180.241.140'),
(1096, 'Changes on Article \'About Us\' has been saved succe', '2024-06-02 14:57:04', 1, 4, '103.180.241.140'),
(1097, 'Changes on Article \'About Us\' has been saved succe', '2024-06-02 14:59:13', 1, 4, '103.180.241.140'),
(1098, 'Changes on Article \'About Us\' has been saved succe', '2024-06-02 15:00:01', 1, 4, '103.180.241.140'),
(1099, 'Login: Super admin   logged in.', '2024-06-06 14:59:06', 1, 1, '27.34.66.61'),
(1100, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2024-06-06 15:00:34', 1, 4, '27.34.66.61'),
(1101, 'Login: Hotel Sarathi   logged in.', '2024-07-24 09:59:24', 1, 1, '103.10.28.134'),
(1102, 'Login: Hotel Sarathi   logged in.', '2024-08-15 17:08:45', 1, 1, '103.123.60.204'),
(1103, 'Changes on Article \'About Us\' has been saved succe', '2024-08-15 17:25:25', 1, 4, '103.123.60.204'),
(1104, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-15 17:30:11', 1, 4, '103.123.60.204'),
(1105, 'Changes on Article \'Finest dining in town\' has bee', '2024-08-15 17:33:11', 1, 4, '103.123.60.204'),
(1106, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-15 17:34:58', 1, 4, '103.123.60.204'),
(1107, 'Package Hall Edit Successfully', '2024-08-15 17:36:07', 1, 4, '103.123.60.204'),
(1108, 'Package Accommodation Edit Successfully', '2024-08-15 17:37:54', 1, 4, '103.123.60.204'),
(1109, 'Changes on Article \'About Us\' has been saved succe', '2024-08-15 17:51:56', 1, 4, '103.123.60.204'),
(1110, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-15 17:52:50', 1, 4, '103.123.60.204'),
(1111, 'Changes on Article \'Finest dining in town\' has bee', '2024-08-15 17:53:27', 1, 4, '103.123.60.204'),
(1112, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-15 17:53:57', 1, 4, '103.123.60.204'),
(1113, 'Package Hall Edit Successfully', '2024-08-15 17:54:31', 1, 4, '103.123.60.204'),
(1114, 'Login: Hotel Sarathi   logged in.', '2024-08-16 11:21:21', 1, 1, '103.123.60.204'),
(1115, 'Changes on Article \'About Us\' has been saved succe', '2024-08-16 12:11:06', 1, 4, '103.123.60.204'),
(1116, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-16 12:11:46', 1, 4, '103.123.60.204'),
(1117, 'Changes on Article \'Finest dining in town\' has bee', '2024-08-16 12:12:45', 1, 4, '103.123.60.204'),
(1118, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 12:13:32', 1, 4, '103.123.60.204'),
(1119, 'Login: Hotel Sarathi   logged in.', '2024-08-16 13:52:20', 1, 1, '103.123.60.204'),
(1120, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-16 14:10:38', 1, 4, '103.123.60.204'),
(1121, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-16 14:12:02', 1, 4, '103.123.60.204'),
(1122, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-16 14:12:18', 1, 4, '103.123.60.204'),
(1123, 'Changes on Article \'Finest dining in town\' has bee', '2024-08-16 14:20:39', 1, 4, '103.123.60.204'),
(1124, 'Changes on Article \'Finest dining in town\' has bee', '2024-08-16 14:20:50', 1, 4, '103.123.60.204'),
(1125, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 14:22:30', 1, 4, '103.123.60.204'),
(1126, 'Package Accommodation Edit Successfully', '2024-08-16 14:25:57', 1, 4, '103.123.60.204'),
(1127, 'Login: Hotel Sarathi   logged in.', '2024-08-16 14:32:16', 1, 1, '103.10.28.201'),
(1128, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2024-08-16 14:37:25', 1, 4, '103.10.28.201'),
(1129, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 15:19:36', 1, 4, '103.123.60.204'),
(1130, 'Changes on Article \'Finest dining in town\' has bee', '2024-08-16 15:20:53', 1, 4, '103.123.60.204'),
(1131, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-16 15:23:11', 1, 4, '103.123.60.204'),
(1132, 'Changes on Article \'About Us\' has been saved succe', '2024-08-16 15:23:59', 1, 4, '103.123.60.204'),
(1133, 'Package Hall Edit Successfully', '2024-08-16 16:40:45', 1, 4, '103.123.60.204'),
(1134, 'Login: Hotel Sarathi   logged in.', '2024-08-16 16:40:57', 1, 1, '103.123.60.204'),
(1135, 'Package Hall Edit Successfully', '2024-08-16 16:41:15', 1, 4, '103.123.60.204'),
(1136, 'Package Accommodation Edit Successfully', '2024-08-16 16:44:35', 1, 4, '103.123.60.204'),
(1137, 'Changes on Article \'About Us\' has been saved succe', '2024-08-16 16:48:23', 1, 4, '103.123.60.204'),
(1138, 'Changes on Article \'About Us\' has been saved succe', '2024-08-16 16:48:54', 1, 4, '103.123.60.204'),
(1139, 'Changes on Article \'About Us\' has been saved succe', '2024-08-16 16:51:39', 1, 4, '103.123.60.204'),
(1140, 'Changes on Article \'Finest dining in town\' has bee', '2024-08-16 17:06:47', 1, 4, '103.123.60.204'),
(1141, 'Login: Hotel Sarathi   logged in.', '2024-08-16 17:07:14', 1, 1, '103.10.28.201'),
(1142, 'Package Accommodation Edit Successfully', '2024-08-16 17:07:47', 1, 4, '103.10.28.201'),
(1143, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-16 17:08:17', 1, 4, '103.10.28.201'),
(1144, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-16 17:09:17', 1, 4, '103.123.60.204'),
(1145, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-16 17:09:48', 1, 4, '103.123.60.204'),
(1146, 'Changes on Article \'Accommodation\' has been saved ', '2024-08-16 17:10:30', 1, 4, '103.123.60.204'),
(1147, 'Changes on Article \'Finest dining in town\' has bee', '2024-08-16 17:24:24', 1, 4, '103.123.60.204'),
(1148, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 17:27:07', 1, 4, '103.123.60.204'),
(1149, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 17:27:41', 1, 4, '103.123.60.204'),
(1150, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 17:29:22', 1, 4, '103.10.28.201'),
(1151, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 17:29:32', 1, 4, '103.10.28.201'),
(1152, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 17:29:57', 1, 4, '103.10.28.201'),
(1153, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 17:33:18', 1, 4, '103.123.60.204'),
(1154, 'Changes on Article \'Unrivaled Location\' has been s', '2024-08-16 17:45:58', 1, 4, '103.10.28.201'),
(1155, 'Login: Hotel Sarathi   logged in.', '2024-08-20 11:18:29', 1, 1, '103.181.226.114'),
(1156, 'Package Hall Edit Successfully', '2024-08-20 11:25:53', 1, 4, '103.181.226.114'),
(1157, 'Login: Hotel Sarathi   logged in.', '2024-09-02 15:41:59', 1, 1, '103.180.241.140'),
(1158, 'Login: Super admin   logged in.', '2024-09-03 10:57:22', 1, 1, '27.34.66.26'),
(1159, 'Login: Super admin   logged in.', '2024-09-03 12:07:25', 1, 1, '27.34.66.26'),
(1160, 'Changes on Article \'About Us\' has been saved succe', '2024-09-03 12:09:20', 1, 4, '27.34.66.26'),
(1161, 'Login: Hotel Sarathi   logged in.', '2024-11-19 11:31:41', 1, 1, '27.34.66.105'),
(1162, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2024-11-19 11:32:06', 1, 4, '27.34.66.105'),
(1163, 'Changes on Sub Package \'Presidential Suite Room\' h', '2024-11-19 11:32:56', 1, 4, '27.34.66.105'),
(1164, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2024-11-19 11:36:47', 1, 4, '27.34.66.105'),
(1165, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 11:37:19', 1, 4, '27.34.66.105'),
(1166, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-11-19 11:37:42', 1, 4, '27.34.66.105'),
(1167, 'Login: Hotel Sarathi   logged in.', '2024-11-19 14:42:08', 1, 1, '103.181.227.99'),
(1168, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2024-11-19 15:17:01', 1, 4, '103.181.227.99'),
(1169, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 15:17:47', 1, 4, '103.181.227.99'),
(1170, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-11-19 15:18:10', 1, 4, '103.181.227.99'),
(1171, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2024-11-19 15:30:42', 1, 4, '103.181.227.99'),
(1172, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 16:23:30', 1, 4, '103.181.227.99'),
(1173, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2024-11-19 16:24:25', 1, 4, '103.181.227.99'),
(1174, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-11-19 16:25:03', 1, 4, '103.181.227.99'),
(1175, 'Changes on Article \'Accommodation\' has been saved ', '2024-11-19 16:40:24', 1, 4, '103.181.227.99'),
(1176, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-11-19 16:45:57', 1, 4, '103.181.227.99'),
(1177, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 16:46:13', 1, 4, '103.181.227.99'),
(1178, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2024-11-19 16:46:44', 1, 4, '103.181.227.99'),
(1179, 'Login: Hotel Sarathi   logged in.', '2024-11-19 17:41:20', 1, 1, '27.34.66.105'),
(1180, 'Package Accommodation Edit Successfully', '2024-11-19 17:42:40', 1, 4, '27.34.66.105'),
(1181, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-11-19 17:45:15', 1, 4, '27.34.66.105'),
(1182, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2024-11-19 17:45:35', 1, 4, '27.34.66.105'),
(1183, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 17:47:59', 1, 4, '103.10.28.206'),
(1184, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 17:49:02', 1, 4, '103.10.28.206'),
(1185, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 17:49:42', 1, 4, '103.10.28.206'),
(1186, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 17:50:14', 1, 4, '103.10.28.206'),
(1187, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2024-11-19 17:51:14', 1, 4, '103.10.28.206'),
(1188, 'Login: Hotel Sarathi   logged in.', '2024-11-19 19:19:01', 1, 1, '27.34.66.105'),
(1189, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 19:19:32', 1, 4, '27.34.66.105'),
(1190, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2024-11-19 19:20:12', 1, 4, '27.34.66.105'),
(1191, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2024-11-19 19:20:59', 1, 4, '27.34.66.105'),
(1192, 'Login: Hotel Sarathi   logged in.', '2024-11-20 09:53:07', 1, 1, '103.181.227.99'),
(1193, 'Login: Hotel Sarathi   logged in.', '2024-11-20 16:32:03', 1, 1, '103.10.28.198'),
(1194, 'Login: Hotel Sarathi   logged in.', '2024-11-20 17:00:31', 1, 1, '103.181.227.99'),
(1195, 'Login: Hotel Sarathi   logged in.', '2025-01-15 13:38:41', 1, 1, '110.34.5.224'),
(1196, 'Login: Hotel Sarathi   logged in.', '2025-01-26 09:03:41', 1, 1, '110.34.5.224'),
(1197, 'Login: Hotel Sarathi   logged in.', '2025-01-29 17:17:39', 1, 1, '103.10.28.201'),
(1198, 'Login: Hotel Sarathi   logged in.', '2025-01-29 17:17:58', 1, 1, '103.10.28.201'),
(1199, '360 Image \'IMG\' has added successfully.', '2025-01-29 17:20:59', 1, 3, '103.10.28.201'),
(1200, '360 Image \'IMG 2\' has added successfully.', '2025-01-29 17:28:02', 1, 3, '103.10.28.201'),
(1201, 'Hotspot \'asdf\' has added successfully.', '2025-01-29 17:28:21', 1, 3, '103.10.28.201'),
(1202, 'Login: Hotel Sarathi   logged in.', '2025-01-29 17:37:47', 1, 1, '103.10.28.201'),
(1203, 'Login: Hotel Sarathi   logged in.', '2025-01-29 17:37:56', 1, 1, '103.10.28.201'),
(1204, 'Hotspot \'teste\' has added successfully.', '2025-01-29 17:43:35', 1, 3, '103.10.28.201'),
(1205, 'Login: Hotel Sarathi   logged in.', '2025-01-30 10:36:56', 1, 1, '103.10.28.196'),
(1206, 'Changes on Virtual Tour \'Virtual Tour -1\' has been', '2025-01-30 10:37:38', 1, 4, '103.10.28.196'),
(1207, 'Changes on Virtual Tour \'Virtual Tour -1\' has been', '2025-01-30 10:38:08', 1, 4, '103.10.28.196'),
(1208, 'Changes on Virtual Tour \'Virtual Tour -1\' has been', '2025-01-30 10:38:14', 1, 4, '103.10.28.196'),
(1209, 'Changes on Virtual Tour \'Virtual Tour -1\' has been', '2025-01-30 10:38:22', 1, 4, '103.10.28.196'),
(1210, 'Login: Hotel Sarathi   logged in.', '2025-01-30 10:56:06', 1, 1, '103.10.28.196'),
(1211, 'Login: Hotel Sarathi   logged in.', '2025-01-30 12:29:30', 1, 1, '103.10.28.196'),
(1212, '360 Image \'Entrance\' has added successfully.', '2025-01-30 12:31:54', 1, 3, '103.10.28.196'),
(1213, '360 Image \'2\' has added successfully.', '2025-01-30 12:32:12', 1, 3, '103.10.28.196'),
(1214, 'Changes on Hotspot \'test\' has been saved successfu', '2025-01-30 12:33:09', 1, 4, '103.10.28.196'),
(1215, 'Hotspot \'testing\' has added successfully.', '2025-01-30 12:34:32', 1, 3, '103.10.28.196'),
(1216, '360 Image [2]Data has deleted successfully.', '2025-01-30 12:36:28', 1, 6, '103.10.28.196'),
(1217, '360 Image \'2\' has added successfully.', '2025-01-30 12:36:44', 1, 3, '103.10.28.196'),
(1218, 'Changes on Hotspot \'test\' has been saved successfu', '2025-01-30 12:37:06', 1, 4, '103.10.28.196'),
(1219, 'Changes on Hotspot \'testing\' has been saved succes', '2025-01-30 12:39:40', 1, 4, '103.10.28.196'),
(1220, 'Changes on Hotspot \'testing\' has been saved succes', '2025-01-30 12:40:21', 1, 4, '103.10.28.196'),
(1221, 'Changes on Hotspot \'testing\' has been saved succes', '2025-01-30 12:40:35', 1, 4, '103.10.28.196'),
(1222, 'Changes on Hotspot \'testing\' has been saved succes', '2025-01-30 12:40:47', 1, 4, '103.10.28.196'),
(1223, 'Changes on Hotspot \'testing\' has been saved succes', '2025-01-30 12:41:15', 1, 4, '103.10.28.196'),
(1224, 'Changes on Hotspot \'testing\' has been saved succes', '2025-01-30 12:41:52', 1, 4, '103.10.28.196'),
(1225, 'Changes on Hotspot \'testing\' has been saved succes', '2025-01-30 12:42:34', 1, 4, '103.10.28.196'),
(1226, 'Changes on Hotspot \'testing\' has been saved succes', '2025-01-30 12:42:57', 1, 4, '103.10.28.196'),
(1227, 'Image  [test]Data has deleted successfully.', '2025-01-30 12:43:17', 1, 6, '103.10.28.196'),
(1228, 'Login: Hotel Sarathi   logged in.', '2025-01-30 12:56:05', 1, 1, '103.10.28.196'),
(1229, 'Login: Hotel Sarathi   logged in.', '2025-01-31 13:19:15', 1, 1, '103.10.28.202'),
(1230, '360 Image \'Lobby Area\' has added successfully.', '2025-01-31 13:25:15', 1, 3, '103.10.28.202'),
(1231, '360 Image \'Haveli Restaurant (Entrance)\' has added', '2025-01-31 13:27:09', 1, 3, '103.10.28.202'),
(1232, '360 Image \'Haveli Restaurant 2\' has added successf', '2025-01-31 13:27:30', 1, 3, '103.10.28.202'),
(1233, '360 Image \'Sarathi Events (Entrance)\' has added su', '2025-01-31 13:28:27', 1, 3, '103.10.28.202'),
(1234, '360 Image \'Sarathi Events\' has added successfully.', '2025-01-31 13:29:09', 1, 3, '103.10.28.202'),
(1235, '360 Image \'Sarathi Events 2\' has added successfull', '2025-01-31 13:29:35', 1, 3, '103.10.28.202'),
(1236, 'Hotspot \'eee\' has added successfully.', '2025-01-31 13:31:40', 1, 3, '103.10.28.202'),
(1237, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:33:17', 1, 4, '103.10.28.202'),
(1238, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:33:24', 1, 4, '103.10.28.202'),
(1239, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:33:43', 1, 4, '103.10.28.202'),
(1240, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:33:53', 1, 4, '103.10.28.202'),
(1241, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:34:01', 1, 4, '103.10.28.202'),
(1242, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:34:10', 1, 4, '103.10.28.202'),
(1243, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:34:21', 1, 4, '103.10.28.202'),
(1244, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:34:30', 1, 4, '103.10.28.202'),
(1245, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:34:37', 1, 4, '103.10.28.202'),
(1246, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:34:44', 1, 4, '103.10.28.202'),
(1247, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:34:50', 1, 4, '103.10.28.202'),
(1248, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:35:04', 1, 4, '103.10.28.202'),
(1249, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:35:12', 1, 4, '103.10.28.202'),
(1250, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:35:50', 1, 4, '103.10.28.202'),
(1251, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:36:09', 1, 4, '103.10.28.202'),
(1252, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:36:34', 1, 4, '103.10.28.202'),
(1253, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:36:49', 1, 4, '103.10.28.202'),
(1254, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:37:05', 1, 4, '103.10.28.202'),
(1255, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:37:17', 1, 4, '103.10.28.202'),
(1256, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:37:36', 1, 4, '103.10.28.202'),
(1257, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:38:01', 1, 4, '103.10.28.202'),
(1258, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:38:15', 1, 4, '103.10.28.202'),
(1259, 'Hotspot \'Sarathi Events 2\' has added successfully.', '2025-01-31 13:39:34', 1, 3, '103.10.28.202'),
(1260, 'Changes on Hotspot \'Sarathi Events\' has been saved', '2025-01-31 13:40:44', 1, 4, '103.10.28.202'),
(1261, 'Image  [testing]Data has deleted successfully.', '2025-01-31 13:42:04', 1, 6, '103.10.28.202'),
(1262, '360 Image \'Main Entrance\' has added successfully.', '2025-01-31 13:42:35', 1, 3, '103.10.28.202'),
(1263, '360 Image \'Entrance\' has added successfully.', '2025-01-31 13:42:51', 1, 3, '103.10.28.202'),
(1264, 'Hotspot \'Entrance\' has added successfully.', '2025-01-31 13:43:22', 1, 3, '103.10.28.202'),
(1265, 'Hotspot \'1\' has added successfully.', '2025-01-31 13:44:18', 1, 3, '103.10.28.202'),
(1266, 'Image  [1]Data has deleted successfully.', '2025-01-31 13:44:32', 1, 6, '103.10.28.202'),
(1267, 'Image  [Entrance]Data has deleted successfully.', '2025-01-31 13:44:34', 1, 6, '103.10.28.202'),
(1268, 'Image  []Data has deleted successfully.', '2025-01-31 13:44:34', 1, 6, '103.10.28.202'),
(1269, '360 Image [Entrance]Data has deleted successfully.', '2025-01-31 13:44:39', 1, 6, '103.10.28.202'),
(1270, '360 Image [Entrance]Data has deleted successfully.', '2025-01-31 13:44:45', 1, 6, '103.10.28.202'),
(1271, '360 Image \'Entrance\' has added successfully.', '2025-01-31 13:45:54', 1, 3, '103.10.28.202'),
(1272, 'Hotspot \'Entrance\' has added successfully.', '2025-01-31 13:46:23', 1, 3, '103.10.28.202'),
(1273, 'Hotspot \'Lobby Area\' has added successfully.', '2025-01-31 13:54:50', 1, 3, '103.10.28.202'),
(1274, 'Changes on 360 Image \'Lobby Area\' has been saved s', '2025-01-31 13:55:48', 1, 4, '103.10.28.202'),
(1275, 'Changes on 360 Image \'Lobby Area\' has been saved s', '2025-01-31 13:56:06', 1, 4, '103.10.28.202'),
(1276, 'Changes on 360 Image \'Lobby Area\' has been saved s', '2025-01-31 13:56:22', 1, 4, '103.10.28.202'),
(1277, 'Changes on 360 Image \'Lobby Area\' has been saved s', '2025-01-31 13:56:30', 1, 4, '103.10.28.202'),
(1278, 'Changes on Hotspot \'Entrance\' has been saved succe', '2025-01-31 13:57:44', 1, 4, '103.10.28.202'),
(1279, 'Changes on Hotspot \'Entrance\' has been saved succe', '2025-01-31 13:57:55', 1, 4, '103.10.28.202'),
(1280, 'Changes on Hotspot \'Entrance\' has been saved succe', '2025-01-31 13:58:00', 1, 4, '103.10.28.202'),
(1281, '360 Image [Main Entrance]Data has deleted successf', '2025-01-31 13:58:12', 1, 6, '103.10.28.202'),
(1282, '360 Image []Data has deleted successfully.', '2025-01-31 13:58:14', 1, 6, '103.10.28.202'),
(1283, '360 Image [Entrance]Data has deleted successfully.', '2025-01-31 13:58:14', 1, 6, '103.10.28.202'),
(1284, '360 Image [Lobby Area]Data has deleted successfull', '2025-01-31 13:58:18', 1, 6, '103.10.28.202'),
(1285, 'Image  [Lobby Area]Data has deleted successfully.', '2025-01-31 13:58:23', 1, 6, '103.10.28.202'),
(1286, '360 Image \'Main Entrance\' has added successfully.', '2025-01-31 13:58:59', 1, 3, '103.10.28.202'),
(1287, '360 Image \'Entrance\' has added successfully.', '2025-01-31 13:59:33', 1, 3, '103.10.28.202'),
(1288, 'Hotspot \'1\' has added successfully.', '2025-01-31 14:00:12', 1, 3, '103.10.28.202'),
(1289, '360 Image \'Lobby Area\' has added successfully.', '2025-01-31 14:01:15', 1, 3, '103.10.28.202'),
(1290, 'Hotspot \'2\' has added successfully.', '2025-01-31 14:01:32', 1, 3, '103.10.28.202'),
(1291, 'Changes on 360 Image \'Lobby Area\' has been saved s', '2025-01-31 14:03:46', 1, 4, '103.10.28.202'),
(1292, 'Changes on 360 Image \'Lobby Area\' has been saved s', '2025-01-31 14:04:15', 1, 4, '103.10.28.202'),
(1293, 'Changes on 360 Image \'Lobby Area\' has been saved s', '2025-01-31 14:04:26', 1, 4, '103.10.28.202'),
(1294, '360 Image \'Swimming Poo;\' has added successfully.', '2025-01-31 14:49:23', 1, 3, '103.10.28.202'),
(1295, 'Changes on 360 Image \'Swimming Pool\' has been save', '2025-01-31 14:49:34', 1, 4, '103.10.28.202'),
(1296, '360 Image \'Swimming Pool (Terrace View)\' has added', '2025-01-31 14:51:06', 1, 3, '103.10.28.202'),
(1297, 'Hotspot \'Swimming Pool (Terrace View)\' has added s', '2025-01-31 14:51:43', 1, 3, '103.10.28.202'),
(1298, 'Changes on Hotspot \'Swimming Pool (Terrace View)\' ', '2025-01-31 14:51:52', 1, 4, '103.10.28.202'),
(1299, 'Changes on Hotspot \'3\' has been saved successfully', '2025-01-31 14:52:18', 1, 4, '103.10.28.202'),
(1300, '360 Image [Swimming Pool]Data has deleted successf', '2025-01-31 14:54:09', 1, 6, '103.10.28.202'),
(1301, '360 Image [Swimming Pool (Terrace View)]Data has d', '2025-01-31 14:54:14', 1, 6, '103.10.28.202'),
(1302, '360 Image \'Swimming Pool\' has added successfully.', '2025-01-31 14:54:48', 1, 3, '103.10.28.202'),
(1303, '360 Image \'Swimming Pool\' has added successfully.', '2025-01-31 14:55:14', 1, 3, '103.10.28.202'),
(1304, '360 Image [Swimming Pool]Data has deleted successf', '2025-01-31 14:55:21', 1, 6, '103.10.28.202'),
(1305, '360 Image \'Swimming Pool (Terrace View)\' has added', '2025-01-31 14:55:43', 1, 3, '103.10.28.202'),
(1306, 'Hotspot \'3 (Swimming Pool (Terrace View))\' has add', '2025-01-31 14:56:16', 1, 3, '103.10.28.202'),
(1307, 'Hotspot \'4 -Swimming pool\' has added successfully.', '2025-01-31 14:56:42', 1, 3, '103.10.28.202'),
(1308, 'Image  [Sarathi Events 2]Data has deleted successf', '2025-01-31 14:57:28', 1, 6, '103.10.28.202'),
(1309, 'Image  [Sarathi Events]Data has deleted successful', '2025-01-31 14:57:34', 1, 6, '103.10.28.202'),
(1310, 'Hotspot \'Sarathi events to Entrance\' has added suc', '2025-01-31 14:58:21', 1, 3, '103.10.28.202'),
(1311, 'Hotspot \'Sarathi Events-2\' has added successfully.', '2025-01-31 14:58:54', 1, 3, '103.10.28.202'),
(1312, 'Hotspot \'2-Sarahi Events\' has added successfully.', '2025-01-31 14:59:16', 1, 3, '103.10.28.202'),
(1313, 'Hotspot \'2-Sarathi events\' has added successfully.', '2025-01-31 14:59:41', 1, 3, '103.10.28.202'),
(1314, 'Login: Hotel Sarathi   logged in.', '2025-01-31 15:02:04', 1, 1, '103.10.28.202'),
(1315, 'Hotspot \'to entrance\' has added successfully.', '2025-01-31 15:04:38', 1, 3, '103.10.28.202'),
(1316, 'Hotspot \'to main entrance\' has added successfully.', '2025-01-31 15:06:06', 1, 3, '103.10.28.202'),
(1317, 'Changes on Hotspot \'to main entrance\' has been sav', '2025-01-31 15:07:41', 1, 4, '103.10.28.202'),
(1318, 'Changes on Hotspot \'to main entrance\' has been sav', '2025-01-31 15:07:54', 1, 4, '103.10.28.202'),
(1319, 'Changes on Hotspot \'to main entrance\' has been sav', '2025-01-31 15:08:45', 1, 4, '103.10.28.202'),
(1320, 'Changes on Hotspot \'to entrance\' has been saved su', '2025-01-31 15:27:03', 1, 4, '103.10.28.202'),
(1321, 'Changes on Hotspot \'to entrance\' has been saved su', '2025-01-31 15:27:19', 1, 4, '103.10.28.202'),
(1322, 'Changes on Hotspot \'to main entrance\' has been sav', '2025-01-31 15:28:14', 1, 4, '103.10.28.202'),
(1323, 'Changes on Hotspot \'to main entrance\' has been sav', '2025-01-31 15:28:33', 1, 4, '103.10.28.202'),
(1324, 'Changes on Hotspot \'to main entrance\' has been sav', '2025-01-31 15:28:55', 1, 4, '103.10.28.202'),
(1325, 'Changes on Hotspot \'to main entrance\' has been sav', '2025-01-31 15:29:01', 1, 4, '103.10.28.202'),
(1326, 'Changes on Hotspot \'1\' has been saved successfully', '2025-01-31 15:29:39', 1, 4, '103.10.28.202'),
(1327, 'Changes on Hotspot \'1\' has been saved successfully', '2025-01-31 15:29:53', 1, 4, '103.10.28.202'),
(1328, 'Changes on Hotspot \'1\' has been saved successfully', '2025-01-31 15:30:05', 1, 4, '103.10.28.202'),
(1329, 'Changes on Hotspot \'1\' has been saved successfully', '2025-01-31 15:30:28', 1, 4, '103.10.28.202'),
(1330, '360 Image \'Exterior 2\' has added successfully.', '2025-01-31 15:31:36', 1, 3, '103.10.28.202'),
(1331, 'Hotspot \'to Exterior 2\' has added successfully.', '2025-01-31 15:32:45', 1, 3, '103.10.28.202'),
(1332, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:33:13', 1, 4, '103.10.28.202'),
(1333, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:33:27', 1, 4, '103.10.28.202'),
(1334, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:33:48', 1, 4, '103.10.28.202'),
(1335, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:34:01', 1, 4, '103.10.28.202'),
(1336, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:34:16', 1, 4, '103.10.28.202'),
(1337, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:34:37', 1, 4, '103.10.28.202'),
(1338, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:34:49', 1, 4, '103.10.28.202'),
(1339, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:35:04', 1, 4, '103.10.28.202'),
(1340, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:35:15', 1, 4, '103.10.28.202'),
(1341, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:35:27', 1, 4, '103.10.28.202'),
(1342, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:35:41', 1, 4, '103.10.28.202'),
(1343, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:36:06', 1, 4, '103.10.28.202'),
(1344, 'Hotspot \'to Entrance\' has added successfully.', '2025-01-31 15:37:06', 1, 3, '103.10.28.202'),
(1345, 'Changes on Hotspot \'to Entrance\' has been saved su', '2025-01-31 15:37:45', 1, 4, '103.10.28.202'),
(1346, 'Changes on Hotspot \'to Entrance\' has been saved su', '2025-01-31 15:38:03', 1, 4, '103.10.28.202'),
(1347, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:38:39', 1, 4, '103.10.28.202'),
(1348, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:39:00', 1, 4, '103.10.28.202'),
(1349, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:39:08', 1, 4, '103.10.28.202'),
(1350, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:39:15', 1, 4, '103.10.28.202'),
(1351, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:39:22', 1, 4, '103.10.28.202'),
(1352, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:39:27', 1, 4, '103.10.28.202'),
(1353, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:39:33', 1, 4, '103.10.28.202'),
(1354, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:39:47', 1, 4, '103.10.28.202'),
(1355, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:40:04', 1, 4, '103.10.28.202'),
(1356, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:40:12', 1, 4, '103.10.28.202'),
(1357, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:40:23', 1, 4, '103.10.28.202'),
(1358, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:40:32', 1, 4, '103.10.28.202'),
(1359, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:40:47', 1, 4, '103.10.28.202'),
(1360, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-01-31 15:40:58', 1, 4, '103.10.28.202'),
(1361, 'Changes on Hotspot \'Entrance-Main Entrance\' has be', '2025-01-31 15:41:36', 1, 4, '103.10.28.202'),
(1362, 'Changes on Hotspot \'Entrance-Main Entrance\' has be', '2025-01-31 15:41:56', 1, 4, '103.10.28.202'),
(1363, 'Changes on Hotspot \'Entrance-Lobby Area\' has been ', '2025-01-31 15:43:16', 1, 4, '103.10.28.202'),
(1364, 'Changes on Hotspot \'Entrance-Lobby Area\' has been ', '2025-01-31 15:44:11', 1, 4, '103.10.28.202'),
(1365, 'Hotspot \'Lobby Area-Entrance\' has added successful', '2025-01-31 15:44:56', 1, 3, '103.10.28.202'),
(1366, 'Changes on Hotspot \'Lobby Area-Entrance\' has been ', '2025-01-31 15:45:19', 1, 4, '103.10.28.202'),
(1367, 'Changes on Hotspot \'Lobby Area-Entrance\' has been ', '2025-01-31 15:45:43', 1, 4, '103.10.28.202'),
(1368, 'Changes on Hotspot \'Lobby Area-Entrance\' has been ', '2025-01-31 15:45:55', 1, 4, '103.10.28.202'),
(1369, 'Changes on Hotspot \'Lobby Area-Entrance\' has been ', '2025-01-31 15:46:10', 1, 4, '103.10.28.202'),
(1370, 'Changes on Hotspot \'Lobby Area-Entrance\' has been ', '2025-01-31 15:46:30', 1, 4, '103.10.28.202'),
(1371, 'Changes on Hotspot \'Lobby Area-Entrance\' has been ', '2025-01-31 15:46:45', 1, 4, '103.10.28.202'),
(1372, 'Changes on Hotspot \'Lobby Area-Entrance\' has been ', '2025-01-31 15:47:02', 1, 4, '103.10.28.202'),
(1373, 'Changes on Hotspot \'Lobby Area-Entrance\' has been ', '2025-01-31 15:47:12', 1, 4, '103.10.28.202'),
(1374, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:48:44', 1, 4, '103.10.28.202'),
(1375, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:49:02', 1, 4, '103.10.28.202'),
(1376, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:49:06', 1, 4, '103.10.28.202'),
(1377, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:49:29', 1, 4, '103.10.28.202'),
(1378, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:49:46', 1, 4, '103.10.28.202'),
(1379, 'Changes on Hotspot \'to Exterior 2\' has been saved ', '2025-01-31 15:50:00', 1, 4, '103.10.28.202'),
(1380, '360 Image \'Exterior 3\' has added successfully.', '2025-01-31 15:50:52', 1, 3, '103.10.28.202'),
(1381, 'Hotspot \'Exterior 2-3\' has added successfully.', '2025-01-31 15:51:59', 1, 3, '103.10.28.202'),
(1382, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:52:16', 1, 4, '103.10.28.202'),
(1383, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:52:57', 1, 4, '103.10.28.202'),
(1384, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:53:04', 1, 4, '103.10.28.202'),
(1385, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:53:11', 1, 4, '103.10.28.202'),
(1386, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:53:37', 1, 4, '103.10.28.202'),
(1387, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:53:52', 1, 4, '103.10.28.202'),
(1388, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:54:06', 1, 4, '103.10.28.202'),
(1389, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:54:18', 1, 4, '103.10.28.202'),
(1390, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:54:29', 1, 4, '103.10.28.202'),
(1391, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:54:42', 1, 4, '103.10.28.202'),
(1392, 'Changes on Hotspot \'to Entrance\' has been saved su', '2025-01-31 15:55:06', 1, 4, '103.10.28.202'),
(1393, 'Changes on Hotspot \'to Entrance\' has been saved su', '2025-01-31 15:55:26', 1, 4, '103.10.28.202'),
(1394, 'Changes on Hotspot \'to Entrance\' has been saved su', '2025-01-31 15:55:49', 1, 4, '103.10.28.202'),
(1395, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:56:19', 1, 4, '103.10.28.202'),
(1396, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:57:19', 1, 4, '103.10.28.202'),
(1397, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:57:28', 1, 4, '103.10.28.202'),
(1398, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:57:40', 1, 4, '103.10.28.202'),
(1399, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:57:51', 1, 4, '103.10.28.202'),
(1400, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:58:01', 1, 4, '103.10.28.202'),
(1401, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:58:19', 1, 4, '103.10.28.202'),
(1402, 'Changes on Hotspot \'Exterior 2-3\' has been saved s', '2025-01-31 15:58:32', 1, 4, '103.10.28.202'),
(1403, '360 Image \'Haveli Restaurant (Entrance)\' has added', '2025-01-31 15:59:19', 1, 3, '103.10.28.202'),
(1404, 'Hotspot \'Exterior 3 - Haveli Entrance 1 \' has adde', '2025-01-31 16:00:13', 1, 3, '103.10.28.202'),
(1405, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:01:40', 1, 4, '103.10.28.202'),
(1406, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:02:03', 1, 4, '103.10.28.202'),
(1407, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:02:31', 1, 4, '103.10.28.202'),
(1408, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:02:44', 1, 4, '103.10.28.202'),
(1409, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:02:54', 1, 4, '103.10.28.202'),
(1410, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:03:14', 1, 4, '103.10.28.202'),
(1411, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:03:24', 1, 4, '103.10.28.202'),
(1412, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:03:45', 1, 4, '103.10.28.202'),
(1413, '360 Image [Haveli Restaurant (Entrance)]Data has d', '2025-01-31 16:05:08', 1, 6, '103.10.28.202'),
(1414, '360 Image \'Haveli Restaurant (Entrance)\' has added', '2025-01-31 16:05:36', 1, 3, '103.10.28.202'),
(1415, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:06:34', 1, 4, '103.10.28.202'),
(1416, 'Changes on Hotspot \'to Entrance\' has been saved su', '2025-01-31 16:08:28', 1, 4, '103.10.28.202'),
(1417, '360 Image \'Haveli Restaurant (Entrance 2)\' has add', '2025-01-31 16:09:31', 1, 3, '103.10.28.202'),
(1418, 'Hotspot \'Exterior 3-2\' has added successfully.', '2025-01-31 16:10:00', 1, 3, '103.10.28.202'),
(1419, 'Changes on Hotspot \'Exterior 3-2\' has been saved s', '2025-01-31 16:10:42', 1, 4, '103.10.28.202'),
(1420, 'Changes on Hotspot \'Exterior 3-2\' has been saved s', '2025-01-31 16:11:03', 1, 4, '103.10.28.202'),
(1421, 'Changes on Hotspot \'Exterior 3-2\' has been saved s', '2025-01-31 16:11:32', 1, 4, '103.10.28.202'),
(1422, 'Changes on Hotspot \'Exterior 3-2\' has been saved s', '2025-01-31 16:11:49', 1, 4, '103.10.28.202'),
(1423, 'Changes on Hotspot \'Exterior 3-2\' has been saved s', '2025-01-31 16:12:04', 1, 4, '103.10.28.202'),
(1424, 'Changes on Hotspot \'Exterior 3-2\' has been saved s', '2025-01-31 16:12:24', 1, 4, '103.10.28.202'),
(1425, 'Hotspot \'Exterior 3 -Haveli Restaurant (Entrance 2', '2025-01-31 16:13:27', 1, 3, '103.10.28.202'),
(1426, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:14:27', 1, 4, '103.10.28.202'),
(1427, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:15:13', 1, 4, '103.10.28.202'),
(1428, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:15:55', 1, 4, '103.10.28.202'),
(1429, 'Changes on Hotspot \'Exterior 3 - Haveli Entrance 1', '2025-01-31 16:16:09', 1, 4, '103.10.28.202'),
(1430, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:16:28', 1, 4, '103.10.28.202'),
(1431, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:16:36', 1, 4, '103.10.28.202'),
(1432, 'Image  [Exterior 3 - Haveli Entrance 1 ]Data has d', '2025-01-31 16:17:43', 1, 6, '103.10.28.202'),
(1433, 'Hotspot \'Exterior 3-Haveli Restaurant Entrance 1\' ', '2025-01-31 16:18:16', 1, 3, '103.10.28.202'),
(1434, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-01-31 16:18:36', 1, 4, '103.10.28.202'),
(1435, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-01-31 16:18:59', 1, 4, '103.10.28.202'),
(1436, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:19:39', 1, 4, '103.10.28.202'),
(1437, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:20:00', 1, 4, '103.10.28.202'),
(1438, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-01-31 16:20:08', 1, 4, '103.10.28.202'),
(1439, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-01-31 16:20:39', 1, 4, '103.10.28.202'),
(1440, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:20:54', 1, 4, '103.10.28.202'),
(1441, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-01-31 16:21:17', 1, 4, '103.10.28.202'),
(1442, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:21:40', 1, 4, '103.10.28.202'),
(1443, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:21:59', 1, 4, '103.10.28.202'),
(1444, '360 Image \'Exterior 4\' has added successfully.', '2025-01-31 16:23:40', 1, 3, '103.10.28.202'),
(1445, 'Hotspot \'Main Entrance-Exterior 4\' has added succe', '2025-01-31 16:24:18', 1, 3, '103.10.28.202'),
(1446, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:24:42', 1, 4, '103.10.28.202'),
(1447, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:24:54', 1, 4, '103.10.28.202'),
(1448, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:25:06', 1, 4, '103.10.28.202'),
(1449, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:25:17', 1, 4, '103.10.28.202'),
(1450, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:25:32', 1, 4, '103.10.28.202'),
(1451, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:25:52', 1, 4, '103.10.28.202'),
(1452, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:26:01', 1, 4, '103.10.28.202'),
(1453, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:26:14', 1, 4, '103.10.28.202'),
(1454, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:26:27', 1, 4, '103.10.28.202'),
(1455, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-01-31 16:26:34', 1, 4, '103.10.28.202'),
(1456, 'Hotspot \'Exterior 4 - Main Entrance\' has added suc', '2025-01-31 16:27:12', 1, 3, '103.10.28.202'),
(1457, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-01-31 16:27:32', 1, 4, '103.10.28.202'),
(1458, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-01-31 16:27:44', 1, 4, '103.10.28.202'),
(1459, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-01-31 16:28:00', 1, 4, '103.10.28.202'),
(1460, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-01-31 16:28:24', 1, 4, '103.10.28.202'),
(1461, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-01-31 16:28:43', 1, 4, '103.10.28.202'),
(1462, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-01-31 16:28:55', 1, 4, '103.10.28.202'),
(1463, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-01-31 16:29:13', 1, 4, '103.10.28.202'),
(1464, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-01-31 16:29:23', 1, 4, '103.10.28.202'),
(1465, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-01-31 16:29:38', 1, 4, '103.10.28.202'),
(1466, '360 Image \'Sarathi Events (Entrance)\' has added su', '2025-01-31 16:30:51', 1, 3, '103.10.28.202'),
(1467, 'Hotspot \'Exterior 4-Sarathi Events (Entrance)\' has', '2025-01-31 16:30:58', 1, 3, '103.10.28.202'),
(1468, '360 Image [Sarathi Events (Entrance)]Data has dele', '2025-01-31 16:31:24', 1, 6, '103.10.28.202'),
(1469, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-01-31 16:32:46', 1, 4, '103.10.28.202'),
(1470, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-01-31 16:33:02', 1, 4, '103.10.28.202'),
(1471, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-01-31 16:33:17', 1, 4, '103.10.28.202'),
(1472, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-01-31 16:33:31', 1, 4, '103.10.28.202'),
(1473, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:35:00', 1, 4, '103.10.28.202'),
(1474, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-01-31 16:35:25', 1, 4, '103.10.28.202');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1475, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:35:53', 1, 4, '103.10.28.202'),
(1476, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-01-31 16:36:16', 1, 4, '103.10.28.202'),
(1477, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:36:48', 1, 4, '103.10.28.202'),
(1478, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:37:07', 1, 4, '103.10.28.202'),
(1479, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:37:21', 1, 4, '103.10.28.202'),
(1480, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:37:36', 1, 4, '103.10.28.202'),
(1481, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:37:54', 1, 4, '103.10.28.202'),
(1482, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:38:09', 1, 4, '103.10.28.202'),
(1483, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:38:17', 1, 4, '103.10.28.202'),
(1484, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:38:30', 1, 4, '103.10.28.202'),
(1485, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:38:45', 1, 4, '103.10.28.202'),
(1486, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:38:57', 1, 4, '103.10.28.202'),
(1487, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:39:12', 1, 4, '103.10.28.202'),
(1488, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:39:31', 1, 4, '103.10.28.202'),
(1489, 'Changes on Hotspot \'Sarathi events (Entrance)-Sara', '2025-01-31 16:39:58', 1, 4, '103.10.28.202'),
(1490, 'Hotspot \'Sarathi Entrance-Exyerior 4\' has added su', '2025-01-31 16:40:47', 1, 3, '103.10.28.202'),
(1491, 'Changes on Hotspot \'Sarathi Entrance-Exterior 4\' h', '2025-01-31 16:41:10', 1, 4, '103.10.28.202'),
(1492, 'Changes on Hotspot \'Sarathi Entrance-Exterior 4\' h', '2025-01-31 16:42:50', 1, 4, '103.10.28.202'),
(1493, 'Changes on Hotspot \'Sarathi Entrance-Exterior 4\' h', '2025-01-31 16:43:08', 1, 4, '103.10.28.202'),
(1494, 'Changes on Hotspot \'Sarathi Entrance-Exterior 4\' h', '2025-01-31 16:43:37', 1, 4, '103.10.28.202'),
(1495, 'Changes on Hotspot \'Exterior 3 -Haveli Restaurant ', '2025-01-31 16:47:25', 1, 4, '103.10.28.202'),
(1496, '360 Image \'Exterior 5\' has added successfully.', '2025-01-31 16:49:47', 1, 3, '103.10.28.202'),
(1497, 'Hotspot \'Haveli Resraurant (Entrance 2)-Exterior 5', '2025-01-31 16:50:52', 1, 3, '103.10.28.202'),
(1498, 'Changes on Hotspot \'Haveli Resraurant (Entrance 2)', '2025-01-31 16:51:18', 1, 4, '103.10.28.202'),
(1499, 'Changes on Hotspot \'Haveli Resraurant (Entrance 2)', '2025-01-31 16:51:30', 1, 4, '103.10.28.202'),
(1500, 'Changes on Hotspot \'Haveli Resraurant (Entrance 2)', '2025-01-31 16:51:38', 1, 4, '103.10.28.202'),
(1501, 'Changes on Hotspot \'Haveli Resraurant (Entrance 2)', '2025-01-31 16:51:47', 1, 4, '103.10.28.202'),
(1502, 'Hotspot \'Exterior 5-Haveli Restaurant (Entrance 2)', '2025-01-31 16:52:37', 1, 3, '103.10.28.202'),
(1503, 'Changes on Hotspot \'Exterior 5-Haveli Restaurant (', '2025-01-31 16:53:01', 1, 4, '103.10.28.202'),
(1504, 'Changes on Hotspot \'Exterior 5-Haveli Restaurant (', '2025-01-31 16:53:18', 1, 4, '103.10.28.202'),
(1505, 'Changes on Hotspot \'Exterior 5-Haveli Restaurant (', '2025-01-31 16:53:30', 1, 4, '103.10.28.202'),
(1506, 'Changes on Hotspot \'Exterior 5-Haveli Restaurant (', '2025-01-31 16:53:50', 1, 4, '103.10.28.202'),
(1507, '360 Image \'Outdoor Restaurant\' has added successfu', '2025-01-31 16:55:54', 1, 3, '103.10.28.202'),
(1508, 'Hotspot \'Exterior 5-Outdoor Restaurant\' has added ', '2025-01-31 16:56:09', 1, 3, '103.10.28.202'),
(1509, 'Changes on Hotspot \'Exterior 5-Outdoor Restaurant\'', '2025-01-31 16:56:17', 1, 4, '103.10.28.202'),
(1510, 'Changes on Hotspot \'Exterior 5-Outdoor Restaurant\'', '2025-01-31 16:56:27', 1, 4, '103.10.28.202'),
(1511, 'Changes on Hotspot \'Exterior 5-Outdoor Restaurant\'', '2025-01-31 16:57:04', 1, 4, '103.10.28.202'),
(1512, 'Changes on Hotspot \'Exterior 5-Outdoor Restaurant\'', '2025-01-31 16:57:31', 1, 4, '103.10.28.202'),
(1513, 'Changes on Hotspot \'Exterior 5-Outdoor Restaurant\'', '2025-01-31 16:57:43', 1, 4, '103.10.28.202'),
(1514, 'Changes on Hotspot \'Exterior 5-Outdoor Restaurant\'', '2025-01-31 16:57:57', 1, 4, '103.10.28.202'),
(1515, 'Changes on Hotspot \'Exterior 5-Outdoor Restaurant\'', '2025-01-31 16:58:05', 1, 4, '103.10.28.202'),
(1516, 'Changes on Hotspot \'Exterior 5-Outdoor Restaurant\'', '2025-01-31 16:58:16', 1, 4, '103.10.28.202'),
(1517, 'Changes on Hotspot \'Exterior 5-Outdoor Restaurant\'', '2025-01-31 16:58:24', 1, 4, '103.10.28.202'),
(1518, 'Hotspot \'Outdoor Restaurant-Exterior 5\' has added ', '2025-01-31 16:58:59', 1, 3, '103.10.28.202'),
(1519, 'Changes on Hotspot \'Outdoor Restaurant-Exterior 5\'', '2025-01-31 16:59:13', 1, 4, '103.10.28.202'),
(1520, 'Changes on Hotspot \'Outdoor Restaurant-Exterior 5\'', '2025-01-31 16:59:22', 1, 4, '103.10.28.202'),
(1521, 'Changes on Hotspot \'Outdoor Restaurant-Exterior 5\'', '2025-01-31 16:59:37', 1, 4, '103.10.28.202'),
(1522, 'Changes on Hotspot \'Outdoor Restaurant-Exterior 5\'', '2025-01-31 16:59:48', 1, 4, '103.10.28.202'),
(1523, 'Changes on Hotspot \'Outdoor Restaurant-Exterior 5\'', '2025-01-31 16:59:58', 1, 4, '103.10.28.202'),
(1524, '360 Image \'Swimming Pool\' has added successfully.', '2025-01-31 17:01:12', 1, 3, '103.10.28.202'),
(1525, 'Hotspot \'Exterior \' has added successfully.', '2025-01-31 17:01:25', 1, 3, '103.10.28.202'),
(1526, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:01:55', 1, 4, '103.10.28.202'),
(1527, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:02:11', 1, 4, '103.10.28.202'),
(1528, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:02:27', 1, 4, '103.10.28.202'),
(1529, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:02:36', 1, 4, '103.10.28.202'),
(1530, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:02:51', 1, 4, '103.10.28.202'),
(1531, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:03:04', 1, 4, '103.10.28.202'),
(1532, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:03:26', 1, 4, '103.10.28.202'),
(1533, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:03:38', 1, 4, '103.10.28.202'),
(1534, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:03:48', 1, 4, '103.10.28.202'),
(1535, 'Changes on Hotspot \'Swimming Pool 2 - Swimming Poo', '2025-01-31 17:04:58', 1, 4, '103.10.28.202'),
(1536, '360 Image [Swimming Pool]Data has deleted successf', '2025-01-31 17:05:32', 1, 6, '103.10.28.202'),
(1537, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:06:09', 1, 4, '103.10.28.202'),
(1538, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:06:21', 1, 4, '103.10.28.202'),
(1539, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:06:33', 1, 4, '103.10.28.202'),
(1540, 'Changes on Hotspot \'Exterior - Swimming Pool\' has ', '2025-01-31 17:06:49', 1, 4, '103.10.28.202'),
(1541, 'Hotspot \'Swimming Pool - Exterior 5\' has added suc', '2025-01-31 17:07:21', 1, 3, '103.10.28.202'),
(1542, 'Changes on Hotspot \'Swimming Pool - Exterior 5\' ha', '2025-01-31 17:07:42', 1, 4, '103.10.28.202'),
(1543, 'Changes on Hotspot \'Swimming Pool - Exterior 5\' ha', '2025-01-31 17:07:56', 1, 4, '103.10.28.202'),
(1544, 'Changes on Hotspot \'Swimming Pool - Exterior 5\' ha', '2025-01-31 17:08:06', 1, 4, '103.10.28.202'),
(1545, 'Changes on Hotspot \'Swimming Pool - Exterior 5\' ha', '2025-01-31 17:08:18', 1, 4, '103.10.28.202'),
(1546, 'Changes on Hotspot \'Swimming Pool - Exterior 5\' ha', '2025-01-31 17:08:27', 1, 4, '103.10.28.202'),
(1547, 'Changes on Hotspot \'Swimming Pool - Exterior 5\' ha', '2025-01-31 17:08:45', 1, 4, '103.10.28.202'),
(1548, 'Changes on Hotspot \'Swimming Pool - Exterior 5\' ha', '2025-01-31 17:09:03', 1, 4, '103.10.28.202'),
(1549, 'Changes on Hotspot \'Swimming Pool - Exterior 5\' ha', '2025-01-31 17:09:19', 1, 4, '103.10.28.202'),
(1550, 'Changes on Hotspot \'Swimming Pool - Exterior 5\' ha', '2025-01-31 17:09:31', 1, 4, '103.10.28.202'),
(1551, 'Changes on Hotspot \'Exterior 5-Haveli Restaurant (', '2025-01-31 17:10:58', 1, 4, '103.10.28.202'),
(1552, 'Changes on Hotspot \'Exterior 5-Haveli Restaurant (', '2025-01-31 17:11:07', 1, 4, '103.10.28.202'),
(1553, 'Changes on Hotspot \'Exterior 5-Haveli Restaurant (', '2025-01-31 17:11:15', 1, 4, '103.10.28.202'),
(1554, '360 Image \'Playground\' has added successfully.', '2025-01-31 17:12:21', 1, 3, '103.10.28.202'),
(1555, 'Hotspot \'Exterior 5-Playground\' has added successf', '2025-01-31 17:12:59', 1, 3, '103.10.28.202'),
(1556, 'Changes on Hotspot \'Exterior 5-Playground\' has bee', '2025-01-31 17:13:25', 1, 4, '103.10.28.202'),
(1557, 'Hotspot \'Playground-Exterior 5\' has added successf', '2025-01-31 17:14:05', 1, 3, '103.10.28.202'),
(1558, 'Changes on Hotspot \'Playground-Exterior 5\' has bee', '2025-01-31 17:14:24', 1, 4, '103.10.28.202'),
(1559, 'Changes on Hotspot \'Playground-Exterior 5\' has bee', '2025-01-31 17:14:37', 1, 4, '103.10.28.202'),
(1560, 'Changes on Hotspot \'Playground-Exterior 5\' has bee', '2025-01-31 17:14:48', 1, 4, '103.10.28.202'),
(1561, 'Changes on Hotspot \'Playground-Exterior 5\' has bee', '2025-01-31 17:15:04', 1, 4, '103.10.28.202'),
(1562, 'Changes on Hotspot \'Playground-Exterior 5\' has bee', '2025-01-31 17:15:16', 1, 4, '103.10.28.202'),
(1563, 'Changes on Hotspot \'Exterior 5-Haveli Restaurant (', '2025-01-31 17:16:01', 1, 4, '103.10.28.202'),
(1564, '360 Image \'Haveli Restaurant 2\' has added successf', '2025-01-31 17:17:03', 1, 3, '103.10.28.202'),
(1565, 'Hotspot \'Haveli Restaurant (Entrance 2)-Haveli Res', '2025-01-31 17:17:36', 1, 3, '103.10.28.202'),
(1566, 'Changes on Hotspot \'Haveli Restaurant (Entrance 2)', '2025-01-31 17:18:05', 1, 4, '103.10.28.202'),
(1567, 'Changes on Hotspot \'Haveli Restaurant (Entrance 2)', '2025-01-31 17:18:16', 1, 4, '103.10.28.202'),
(1568, 'Changes on Hotspot \'Haveli Restaurant (Entrance 2)', '2025-01-31 17:18:24', 1, 4, '103.10.28.202'),
(1569, 'Changes on Hotspot \'Haveli Restaurant (Entrance 2)', '2025-01-31 17:18:33', 1, 4, '103.10.28.202'),
(1570, 'Changes on Hotspot \'Haveli Restaurant (Entrance 2)', '2025-01-31 17:18:45', 1, 4, '103.10.28.202'),
(1571, '360 Image \'Haveli Restaurant \' has added successfu', '2025-01-31 17:19:45', 1, 3, '103.10.28.202'),
(1572, 'Hotspot \'Haveli Restaurant 2- 1\' has added success', '2025-01-31 17:21:06', 1, 3, '103.10.28.202'),
(1573, 'Changes on Hotspot \'Haveli Restaurant 2- 1\' has be', '2025-01-31 17:21:50', 1, 4, '103.10.28.202'),
(1574, 'Changes on Hotspot \'Haveli Restaurant 2- 1\' has be', '2025-01-31 17:22:40', 1, 4, '103.10.28.202'),
(1575, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-01-31 17:25:43', 1, 4, '103.10.28.202'),
(1576, 'Login: Hotel Sarathi   logged in.', '2025-02-03 15:37:38', 1, 1, '103.10.28.145'),
(1577, 'Login: Hotel Sarathi   logged in.', '2025-02-03 16:37:44', 1, 1, '103.10.28.134'),
(1578, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:40:04', 1, 4, '103.10.28.134'),
(1579, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:40:47', 1, 4, '103.10.28.134'),
(1580, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:41:02', 1, 4, '103.10.28.134'),
(1581, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:41:23', 1, 4, '103.10.28.134'),
(1582, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:41:45', 1, 4, '103.10.28.134'),
(1583, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:43:38', 1, 4, '103.10.28.134'),
(1584, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:44:01', 1, 4, '103.10.28.134'),
(1585, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:44:21', 1, 4, '103.10.28.134'),
(1586, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:44:52', 1, 4, '103.10.28.134'),
(1587, 'Changes on Hotspot \'Exterior 4-Sarathi Events (Ent', '2025-02-03 16:45:07', 1, 4, '103.10.28.134'),
(1588, '360 Image \'Exterior 6\' has added successfully.', '2025-02-03 16:47:29', 1, 3, '103.10.28.134'),
(1589, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-03 16:47:32', 1, 4, '103.10.28.134'),
(1590, 'Hotspot \'Exterior 5-6\' has added successfully.', '2025-02-03 16:48:06', 1, 3, '103.10.28.134'),
(1591, 'Changes on Hotspot \'Exterior 5-6\' has been saved s', '2025-02-03 16:48:58', 1, 4, '103.10.28.134'),
(1592, 'Changes on Hotspot \'Exterior 5-6\' has been saved s', '2025-02-03 16:49:12', 1, 4, '103.10.28.134'),
(1593, 'Changes on Hotspot \'Exterior 5-6\' has been saved s', '2025-02-03 16:49:44', 1, 4, '103.10.28.134'),
(1594, 'Changes on Hotspot \'Exterior 5-6\' has been saved s', '2025-02-03 16:49:56', 1, 4, '103.10.28.134'),
(1595, 'Changes on Hotspot \'Exterior 5-6\' has been saved s', '2025-02-03 16:50:17', 1, 4, '103.10.28.134'),
(1596, 'Changes on Hotspot \'Exterior 5-6\' has been saved s', '2025-02-03 16:50:34', 1, 4, '103.10.28.134'),
(1597, 'Changes on Hotspot \'Exterior 5-6\' has been saved s', '2025-02-03 16:50:46', 1, 4, '103.10.28.134'),
(1598, 'Changes on Hotspot \'Exterior 5 - Swimming Pool\' ha', '2025-02-03 16:51:31', 1, 4, '103.10.28.134'),
(1599, 'Hotspot \'Exterior 6-5\' has added successfully.', '2025-02-03 16:52:22', 1, 3, '103.10.28.134'),
(1600, 'Changes on Hotspot \'Exterior 6-5\' has been saved s', '2025-02-03 16:52:47', 1, 4, '103.10.28.134'),
(1601, 'Changes on Hotspot \'Exterior 6-5\' has been saved s', '2025-02-03 16:53:01', 1, 4, '103.10.28.134'),
(1602, 'Changes on Hotspot \'Exterior 6-5\' has been saved s', '2025-02-03 16:53:14', 1, 4, '103.10.28.134'),
(1603, '360 Image \'Junior Suite Room \' has added successfu', '2025-02-03 17:01:06', 1, 3, '103.10.28.134'),
(1604, '360 Image \'Junior Suite Room 2\' has added successf', '2025-02-03 17:01:33', 1, 3, '103.10.28.134'),
(1605, '360 Image \'Junior Suite Room (Bathroom)\' has added', '2025-02-03 17:01:59', 1, 3, '103.10.28.134'),
(1606, '360 Image \'Junior Suite Room (Balcony)\' has added ', '2025-02-03 17:02:20', 1, 3, '103.10.28.134'),
(1607, 'Hotspot \'Junior Suite Room-2\' has added successful', '2025-02-03 17:03:08', 1, 3, '103.10.28.134'),
(1608, 'Hotspot \'Junior Suite Room 2-1\' has added successf', '2025-02-03 17:03:32', 1, 3, '103.10.28.134'),
(1609, 'Hotspot \'Junior Suite Room-(Balcony)\' has added su', '2025-02-03 17:04:46', 1, 3, '103.10.28.134'),
(1610, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:05:16', 1, 4, '103.10.28.134'),
(1611, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:05:44', 1, 4, '103.10.28.134'),
(1612, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:05:59', 1, 4, '103.10.28.134'),
(1613, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:06:10', 1, 4, '103.10.28.134'),
(1614, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:06:30', 1, 4, '103.10.28.134'),
(1615, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:07:04', 1, 4, '103.10.28.134'),
(1616, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:07:55', 1, 4, '103.10.28.134'),
(1617, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:11:46', 1, 4, '103.10.28.134'),
(1618, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:12:01', 1, 4, '103.10.28.134'),
(1619, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:12:19', 1, 4, '103.10.28.134'),
(1620, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:12:28', 1, 4, '103.10.28.134'),
(1621, 'Changes on Hotspot \'Junior Suite Room-(Balcony)\' h', '2025-02-03 17:12:43', 1, 4, '103.10.28.134'),
(1622, 'Hotspot \'Junior Suite Room (Balcony)-1\' has added ', '2025-02-03 17:13:15', 1, 3, '103.10.28.134'),
(1623, 'Changes on Hotspot \'Junior Suite Room (Balcony)-1\'', '2025-02-03 17:13:32', 1, 4, '103.10.28.134'),
(1624, 'Changes on Hotspot \'Junior Suite Room (Balcony)-1\'', '2025-02-03 17:13:43', 1, 4, '103.10.28.134'),
(1625, 'Changes on Hotspot \'Junior Suite Room (Balcony)-1\'', '2025-02-03 17:13:54', 1, 4, '103.10.28.134'),
(1626, 'Changes on Hotspot \'Junior Suite Room (Balcony)-1\'', '2025-02-03 17:14:07', 1, 4, '103.10.28.134'),
(1627, 'Changes on Hotspot \'Junior Suite Room (Balcony)-1\'', '2025-02-03 17:14:22', 1, 4, '103.10.28.134'),
(1628, 'Changes on Hotspot \'Junior Suite Room (Balcony)-1\'', '2025-02-03 17:14:47', 1, 4, '103.10.28.134'),
(1629, 'Changes on Hotspot \'Junior Suite Room (Balcony)-1\'', '2025-02-03 17:15:03', 1, 4, '103.10.28.134'),
(1630, 'Changes on Hotspot \'Junior Suite Room (Balcony)-1\'', '2025-02-03 17:15:15', 1, 4, '103.10.28.134'),
(1631, 'Changes on Hotspot \'Junior Suite Room (Balcony)-1\'', '2025-02-03 17:15:29', 1, 4, '103.10.28.134'),
(1632, 'Hotspot \'Junior Suite Room-2\' has added successful', '2025-02-03 17:16:07', 1, 3, '103.10.28.134'),
(1633, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:16:17', 1, 4, '103.10.28.134'),
(1634, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:17:42', 1, 4, '103.10.28.134'),
(1635, 'Image  [Junior Suite Room-2]Data has deleted succe', '2025-02-03 17:18:08', 1, 6, '103.10.28.134'),
(1636, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:18:24', 1, 4, '103.10.28.134'),
(1637, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:18:30', 1, 4, '103.10.28.134'),
(1638, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:18:42', 1, 4, '103.10.28.134'),
(1639, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:18:51', 1, 4, '103.10.28.134'),
(1640, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:18:57', 1, 4, '103.10.28.134'),
(1641, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:19:09', 1, 4, '103.10.28.134'),
(1642, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:19:22', 1, 4, '103.10.28.134'),
(1643, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:19:29', 1, 4, '103.10.28.134'),
(1644, 'Changes on Hotspot \'Junior Suite Room-2\' has been ', '2025-02-03 17:19:41', 1, 4, '103.10.28.134'),
(1645, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:21:30', 1, 4, '103.10.28.134'),
(1646, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:21:40', 1, 4, '103.10.28.134'),
(1647, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:21:52', 1, 4, '103.10.28.134'),
(1648, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:22:02', 1, 4, '103.10.28.134'),
(1649, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:22:16', 1, 4, '103.10.28.134'),
(1650, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:22:30', 1, 4, '103.10.28.134'),
(1651, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:23:14', 1, 4, '103.10.28.134'),
(1652, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:23:30', 1, 4, '103.10.28.134'),
(1653, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:23:42', 1, 4, '103.10.28.134'),
(1654, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:23:51', 1, 4, '103.10.28.134'),
(1655, 'Changes on Hotspot \'Junior Suite Room 2-1\' has bee', '2025-02-03 17:24:07', 1, 4, '103.10.28.134'),
(1656, 'Hotspot \'Junior Suite Room 2-(Balcony)\' has added ', '2025-02-03 17:24:37', 1, 3, '103.10.28.134'),
(1657, 'Image  [Junior Suite Room 2-(Balcony)]Data has del', '2025-02-03 17:24:59', 1, 6, '103.10.28.134'),
(1658, 'Hotspot \'Junior Suite Room 2-Bathroom\' has added s', '2025-02-03 17:25:52', 1, 3, '103.10.28.134'),
(1659, 'Changes on Hotspot \'Junior Suite Room 2-Bathroom\' ', '2025-02-03 17:26:10', 1, 4, '103.10.28.134'),
(1660, 'Changes on Hotspot \'Junior Suite Room 2-Bathroom\' ', '2025-02-03 17:26:23', 1, 4, '103.10.28.134'),
(1661, 'Changes on Hotspot \'Junior Suite Room 2-Bathroom\' ', '2025-02-03 17:26:35', 1, 4, '103.10.28.134'),
(1662, 'Changes on Hotspot \'Junior Suite Room 2-Bathroom\' ', '2025-02-03 17:26:46', 1, 4, '103.10.28.134'),
(1663, 'Changes on Hotspot \'Junior Suite Room 2-Bathroom\' ', '2025-02-03 17:27:06', 1, 4, '103.10.28.134'),
(1664, 'Hotspot \'Junior Suite Room Bathroom-2\' has added s', '2025-02-03 17:27:56', 1, 3, '103.10.28.134'),
(1665, 'Changes on Hotspot \'Junior Suite Room Bathroom-2\' ', '2025-02-03 17:28:12', 1, 4, '103.10.28.134'),
(1666, 'Changes on Hotspot \'Junior Suite Room Bathroom-2\' ', '2025-02-03 17:28:30', 1, 4, '103.10.28.134'),
(1667, 'Changes on Hotspot \'Junior Suite Room Bathroom-2\' ', '2025-02-03 17:28:47', 1, 4, '103.10.28.134'),
(1668, 'Changes on Hotspot \'Junior Suite Room Bathroom-2\' ', '2025-02-03 17:28:59', 1, 4, '103.10.28.134'),
(1669, '360 Image [Junior Suite Room (Bathroom)]Data has d', '2025-02-03 17:39:55', 1, 6, '103.10.28.134'),
(1670, 'Login: Hotel Sarathi   logged in.', '2025-02-03 17:41:28', 1, 1, '103.10.28.134'),
(1671, '360 Image \'Junior Suite Bathroom\' has added succes', '2025-02-03 17:45:33', 1, 3, '103.10.28.134'),
(1672, 'Changes on Hotspot \'Junior Suite Room 2-Bathroom\' ', '2025-02-03 17:46:07', 1, 4, '103.10.28.134'),
(1673, 'Hotspot \'Junior Suite Bathroom-2\' has added succes', '2025-02-03 17:46:44', 1, 3, '103.10.28.134'),
(1674, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:46:53', 1, 4, '103.10.28.134'),
(1675, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:47:02', 1, 4, '103.10.28.134'),
(1676, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:47:12', 1, 4, '103.10.28.134'),
(1677, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:47:22', 1, 4, '103.10.28.134'),
(1678, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:47:33', 1, 4, '103.10.28.134'),
(1679, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:47:54', 1, 4, '103.10.28.134'),
(1680, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:48:03', 1, 4, '103.10.28.134'),
(1681, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:48:13', 1, 4, '103.10.28.134'),
(1682, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:48:21', 1, 4, '103.10.28.134'),
(1683, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:48:33', 1, 4, '103.10.28.134'),
(1684, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:52:18', 1, 4, '103.10.28.134'),
(1685, 'Changes on Hotspot \'Junior Suite Bathroom-2\' has b', '2025-02-03 17:52:34', 1, 4, '103.10.28.134'),
(1686, '360 Image \'Mountain Wing\' has added successfully.', '2025-02-03 17:54:13', 1, 3, '103.10.28.134'),
(1687, '360 Image \'Deluxe Room\' has added successfully.', '2025-02-03 17:56:42', 1, 3, '103.10.28.134'),
(1688, '360 Image \'Deluxe Room (Entrance)\' has added succe', '2025-02-03 17:57:02', 1, 3, '103.10.28.134'),
(1689, 'Login: Hotel Sarathi   logged in.', '2025-02-04 12:02:17', 1, 1, '103.10.28.145'),
(1690, '360 Image \'Mountain Wing Entrance\' has added succe', '2025-02-04 12:05:56', 1, 3, '103.10.28.145'),
(1691, 'Hotspot \'Exterior 4-Mountain Wing Entrance\' has ad', '2025-02-04 12:06:46', 1, 3, '103.10.28.145'),
(1692, 'Changes on Hotspot \'Exterior 4-Mountain Wing Entra', '2025-02-04 12:07:00', 1, 4, '103.10.28.145'),
(1693, 'Changes on Hotspot \'Exterior 4-Mountain Wing Entra', '2025-02-04 12:07:26', 1, 4, '103.10.28.145'),
(1694, 'Changes on Hotspot \'Exterior 4-Mountain Wing Entra', '2025-02-04 12:07:38', 1, 4, '103.10.28.145'),
(1695, 'Changes on Hotspot \'Exterior 4-Mountain Wing Entra', '2025-02-04 12:07:48', 1, 4, '103.10.28.145'),
(1696, 'Changes on Hotspot \'Exterior 4-Mountain Wing Entra', '2025-02-04 12:07:56', 1, 4, '103.10.28.145'),
(1697, 'Changes on Hotspot \'Exterior 4-Mountain Wing Entra', '2025-02-04 12:08:08', 1, 4, '103.10.28.145'),
(1698, 'Changes on Hotspot \'Exterior 4-Mountain Wing Entra', '2025-02-04 12:08:46', 1, 4, '103.10.28.145'),
(1699, 'Changes on Hotspot \'Exterior 4-Mountain Wing Entra', '2025-02-04 12:09:11', 1, 4, '103.10.28.145'),
(1700, 'Hotspot \'Mountain wing entrance-Exterior 4\' has ad', '2025-02-04 12:10:20', 1, 3, '103.10.28.145'),
(1701, 'Changes on Hotspot \'Mountain wing entrance-Exterio', '2025-02-04 12:10:41', 1, 4, '103.10.28.145'),
(1702, 'Changes on Hotspot \'Mountain wing entrance-Exterio', '2025-02-04 12:10:53', 1, 4, '103.10.28.145'),
(1703, 'Changes on Hotspot \'Mountain wing entrance-Exterio', '2025-02-04 12:11:06', 1, 4, '103.10.28.145'),
(1704, 'Changes on Hotspot \'Mountain wing entrance-Exterio', '2025-02-04 12:11:19', 1, 4, '103.10.28.145'),
(1705, '360 Image \'Mountain Wing Corridor\' has added succe', '2025-02-04 12:13:09', 1, 3, '103.10.28.145'),
(1706, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:13:32', 1, 4, '103.10.28.145'),
(1707, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:13:41', 1, 4, '103.10.28.145'),
(1708, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:13:48', 1, 4, '103.10.28.145'),
(1709, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:13:57', 1, 4, '103.10.28.145'),
(1710, 'Changes on Hotspot \'Mountain wing entrance-Exterio', '2025-02-04 12:14:12', 1, 4, '103.10.28.145'),
(1711, 'Hotspot \'Mountain Wing Corridor-Entrance\' has adde', '2025-02-04 12:14:49', 1, 3, '103.10.28.145'),
(1712, 'Login: Hotel Sarathi   logged in.', '2025-02-04 12:24:01', 1, 1, '103.10.28.145'),
(1713, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:28:31', 1, 4, '103.10.28.145'),
(1714, 'Changes on Hotspot \'Mountain Wing Corridor-Entranc', '2025-02-04 12:28:57', 1, 4, '103.10.28.145'),
(1715, 'Changes on Hotspot \'Mountain Wing Corridor-Entranc', '2025-02-04 12:29:04', 1, 4, '103.10.28.145'),
(1716, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:29:22', 1, 4, '103.10.28.145'),
(1717, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:29:29', 1, 4, '103.10.28.145'),
(1718, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:29:35', 1, 4, '103.10.28.145'),
(1719, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:29:41', 1, 4, '103.10.28.145'),
(1720, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 12:29:50', 1, 4, '103.10.28.145'),
(1721, '360 Image [Main Entrance]Data has deleted successf', '2025-02-04 12:52:29', 1, 6, '103.10.28.145'),
(1722, '360 Image \'Main Entrance\' has added successfully.', '2025-02-04 12:53:00', 1, 3, '103.10.28.145'),
(1723, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 12:59:17', 1, 4, '103.10.28.145'),
(1724, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 12:59:39', 1, 4, '103.10.28.145'),
(1725, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 13:01:01', 1, 4, '103.10.28.145'),
(1726, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 13:01:14', 1, 4, '103.10.28.145'),
(1727, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 13:01:21', 1, 4, '103.10.28.145'),
(1728, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 13:01:27', 1, 4, '103.10.28.145'),
(1729, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 13:01:33', 1, 4, '103.10.28.145'),
(1730, 'Login: Hotel Sarathi   logged in.', '2025-02-04 13:47:52', 1, 1, '103.10.28.145'),
(1731, 'Login: Hotel Sarathi   logged in.', '2025-02-04 14:14:55', 1, 1, '103.10.28.145'),
(1732, 'Login: Hotel Sarathi   logged in.', '2025-02-04 14:22:14', 1, 1, '103.10.28.145'),
(1733, 'Login: Hotel Sarathi   logged in.', '2025-02-04 14:29:50', 1, 1, '103.10.28.145'),
(1734, 'Login: Hotel Sarathi   logged in.', '2025-02-04 14:44:09', 1, 1, '103.10.28.145'),
(1735, 'Login: Hotel Sarathi   logged in.', '2025-02-04 14:48:19', 1, 1, '103.10.28.145'),
(1736, 'Login: Hotel Sarathi   logged in.', '2025-02-04 15:14:21', 1, 1, '103.10.28.145'),
(1737, 'Hotspot \'Main Entrance - Entrance\' has added succe', '2025-02-04 15:18:48', 1, 3, '103.10.28.145'),
(1738, 'Changes on Hotspot \'Main Entrance - Entrance\' has ', '2025-02-04 15:28:49', 1, 4, '103.10.28.145'),
(1739, 'Changes on Hotspot \'Main Entrance - Entrance\' has ', '2025-02-04 15:29:06', 1, 4, '103.10.28.145'),
(1740, 'Changes on Hotspot \'Main Entrance - Entrance\' has ', '2025-02-04 15:29:47', 1, 4, '103.10.28.145'),
(1741, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 15:30:06', 1, 4, '103.10.28.145'),
(1742, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 15:30:18', 1, 4, '103.10.28.145'),
(1743, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 15:30:29', 1, 4, '103.10.28.145'),
(1744, 'Hotspot \'Main Entrance-Exterior 4\' has added succe', '2025-02-04 15:31:53', 1, 3, '103.10.28.145'),
(1745, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:32:25', 1, 4, '103.10.28.145'),
(1746, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:32:32', 1, 4, '103.10.28.145'),
(1747, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:32:42', 1, 4, '103.10.28.145'),
(1748, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:32:55', 1, 4, '103.10.28.145'),
(1749, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:33:03', 1, 4, '103.10.28.145'),
(1750, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:33:14', 1, 4, '103.10.28.145'),
(1751, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:33:24', 1, 4, '103.10.28.145'),
(1752, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:33:36', 1, 4, '103.10.28.145'),
(1753, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:33:49', 1, 4, '103.10.28.145'),
(1754, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:33:59', 1, 4, '103.10.28.145'),
(1755, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:34:06', 1, 4, '103.10.28.145'),
(1756, 'Changes on Hotspot \'Main Entrance-Exterior 4\' has ', '2025-02-04 15:34:25', 1, 4, '103.10.28.145'),
(1757, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-02-04 15:35:29', 1, 4, '103.10.28.145'),
(1758, 'Changes on Hotspot \'Main Entrance - Entrance\' has ', '2025-02-04 15:54:09', 1, 4, '103.10.28.134'),
(1759, '360 Image \'Corridor 1\' has added successfully.', '2025-02-04 16:02:50', 1, 3, '103.10.28.134'),
(1760, 'Hotspot \'Exterior 6- Corridor 1\' has added success', '2025-02-04 16:03:27', 1, 3, '103.10.28.134'),
(1761, 'Changes on Hotspot \'Exterior 6- Corridor 1\' has be', '2025-02-04 16:03:42', 1, 4, '103.10.28.134'),
(1762, 'Changes on 360 Image \'Corridor 1\' has been saved s', '2025-02-04 16:03:59', 1, 4, '103.10.28.134'),
(1763, 'Changes on 360 Image \'Corridor 1\' has been saved s', '2025-02-04 16:04:11', 1, 4, '103.10.28.134'),
(1764, 'Changes on 360 Image \'Corridor 1\' has been saved s', '2025-02-04 16:04:19', 1, 4, '103.10.28.134'),
(1765, 'Changes on 360 Image \'Corridor 1\' has been saved s', '2025-02-04 16:04:31', 1, 4, '103.10.28.134'),
(1766, 'Hotspot \'Corridor 1- Junior Suite Room\' has added ', '2025-02-04 16:05:33', 1, 3, '103.10.28.134'),
(1767, 'Changes on Hotspot \'Corridor 1- Junior Suite Room\'', '2025-02-04 16:06:25', 1, 4, '103.10.28.134'),
(1768, 'Changes on Hotspot \'Corridor 1- Junior Suite Room\'', '2025-02-04 16:06:33', 1, 4, '103.10.28.134'),
(1769, 'Changes on Hotspot \'Corridor 1- Junior Suite Room\'', '2025-02-04 16:06:40', 1, 4, '103.10.28.134'),
(1770, 'Changes on Hotspot \'Corridor 1- Junior Suite Room\'', '2025-02-04 16:07:01', 1, 4, '103.10.28.134'),
(1771, 'Changes on Hotspot \'Corridor 1- Junior Suite Room\'', '2025-02-04 16:07:13', 1, 4, '103.10.28.134'),
(1772, 'Changes on Hotspot \'Corridor 1- Junior Suite Room\'', '2025-02-04 16:07:19', 1, 4, '103.10.28.134'),
(1773, 'Changes on Hotspot \'Corridor 1- Junior Suite Room\'', '2025-02-04 16:07:35', 1, 4, '103.10.28.134'),
(1774, 'Changes on Hotspot \'Corridor 1- Junior Suite Room\'', '2025-02-04 16:07:54', 1, 4, '103.10.28.134'),
(1775, 'Hotspot \'Corridor 1- Exterior 6\' has added success', '2025-02-04 16:09:08', 1, 3, '103.10.28.134'),
(1776, 'Changes on Hotspot \'Corridor 1- Exterior 6\' has be', '2025-02-04 16:09:45', 1, 4, '103.10.28.134'),
(1777, 'Changes on Hotspot \'Corridor 1- Exterior 6\' has be', '2025-02-04 16:09:52', 1, 4, '103.10.28.134'),
(1778, 'Changes on Hotspot \'Corridor 1- Exterior 6\' has be', '2025-02-04 16:09:59', 1, 4, '103.10.28.134'),
(1779, 'Changes on Hotspot \'Corridor 1- Exterior 6\' has be', '2025-02-04 16:10:11', 1, 4, '103.10.28.134'),
(1780, 'Changes on Hotspot \'Corridor 1- Exterior 6\' has be', '2025-02-04 16:10:19', 1, 4, '103.10.28.134'),
(1781, 'Changes on Hotspot \'Corridor 1- Exterior 6\' has be', '2025-02-04 16:10:29', 1, 4, '103.10.28.134'),
(1782, 'Hotspot \'Corridor 1- Mountain Wing Entrance\' has a', '2025-02-04 16:11:08', 1, 3, '103.10.28.134'),
(1783, 'Changes on Hotspot \'Corridor 1- Mountain Wing Entr', '2025-02-04 16:11:23', 1, 4, '103.10.28.134'),
(1784, 'Changes on Hotspot \'Corridor 1- Mountain Wing Entr', '2025-02-04 16:11:30', 1, 4, '103.10.28.134'),
(1785, 'Changes on Hotspot \'Corridor 1- Mountain Wing Entr', '2025-02-04 16:11:36', 1, 4, '103.10.28.134'),
(1786, 'Changes on Hotspot \'Corridor 1- Mountain Wing Entr', '2025-02-04 16:11:43', 1, 4, '103.10.28.134'),
(1787, 'Changes on Hotspot \'Corridor 1- Mountain Wing Entr', '2025-02-04 16:11:48', 1, 4, '103.10.28.134'),
(1788, 'Changes on Hotspot \'Corridor 1- Mountain Wing Entr', '2025-02-04 16:11:54', 1, 4, '103.10.28.134'),
(1789, 'Changes on Hotspot \'Corridor 1- Mountain Wing Entr', '2025-02-04 16:12:01', 1, 4, '103.10.28.134'),
(1790, 'Changes on Hotspot \'Corridor 1- Mountain Wing Entr', '2025-02-04 16:12:07', 1, 4, '103.10.28.134'),
(1791, 'Changes on Hotspot \'Corridor 1- Mountain Wing Entr', '2025-02-04 16:12:16', 1, 4, '103.10.28.134'),
(1792, 'Changes on Hotspot \'Corridor 1- Mountain Wing Corr', '2025-02-04 16:12:59', 1, 4, '103.10.28.134'),
(1793, 'Changes on 360 Image \'Mountain Wing Corridor\' has ', '2025-02-04 16:13:15', 1, 4, '103.10.28.134'),
(1794, 'Hotspot \'Mountain Wing Corridor-Corridor 1\' has ad', '2025-02-04 16:14:18', 1, 3, '103.10.28.134'),
(1795, 'Changes on Hotspot \'Mountain Wing Corridor-Corrido', '2025-02-04 16:15:21', 1, 4, '103.10.28.134'),
(1796, 'Changes on Hotspot \'Mountain Wing Corridor-Corrido', '2025-02-04 16:15:34', 1, 4, '103.10.28.134'),
(1797, 'Changes on Hotspot \'Mountain Wing Corridor-Corrido', '2025-02-04 16:15:40', 1, 4, '103.10.28.134'),
(1798, 'Changes on Hotspot \'Mountain Wing Corridor-Corrido', '2025-02-04 16:15:53', 1, 4, '103.10.28.134'),
(1799, 'Hotspot \'Mountain Wing Corridor-Exterior 6\' has ad', '2025-02-04 16:17:20', 1, 3, '103.10.28.136'),
(1800, 'Changes on Hotspot \'Mountain Wing Corridor-Exterio', '2025-02-04 16:17:36', 1, 4, '103.10.28.136'),
(1801, 'Changes on Hotspot \'Mountain Wing Corridor-Exterio', '2025-02-04 16:17:45', 1, 4, '103.10.28.136'),
(1802, 'Changes on Hotspot \'Mountain Wing Corridor-Exterio', '2025-02-04 16:17:54', 1, 4, '103.10.28.136'),
(1803, 'Changes on Hotspot \'Mountain Wing Corridor-Exterio', '2025-02-04 16:18:06', 1, 4, '103.10.28.136'),
(1804, 'Changes on Hotspot \'Mountain Wing Corridor-Exterio', '2025-02-04 16:18:13', 1, 4, '103.10.28.136'),
(1805, 'Changes on Hotspot \'Mountain Wing Corridor-Exterio', '2025-02-04 16:18:21', 1, 4, '103.10.28.136'),
(1806, 'Changes on Hotspot \'Mountain Wing Corridor-Exterio', '2025-02-04 16:18:32', 1, 4, '103.10.28.136'),
(1807, 'Changes on Hotspot \'Mountain Wing Corridor-Entranc', '2025-02-04 16:23:20', 1, 4, '103.10.28.136'),
(1808, '360 Image \'Corridor 2\' has added successfully.', '2025-02-04 16:29:01', 1, 3, '103.10.28.135'),
(1809, 'Hotspot \'Mountain Wing Corridor - Corridor 2\' has ', '2025-02-04 16:29:59', 1, 3, '103.10.28.135'),
(1810, 'Hotspot \'Corridor 2- Deluxe Room (Entrance)\' has a', '2025-02-04 16:31:16', 1, 3, '103.10.28.135'),
(1811, 'Changes on 360 Image \'Deluxe Room (Entrance)\' has ', '2025-02-04 16:32:59', 1, 4, '103.10.28.135'),
(1812, 'Changes on Hotspot \'Corridor 2- Deluxe Room (Entra', '2025-02-04 16:33:13', 1, 4, '103.10.28.135'),
(1813, 'Changes on Hotspot \'Corridor 2- Deluxe Room (Entra', '2025-02-04 16:33:20', 1, 4, '103.10.28.135'),
(1814, 'Changes on Hotspot \'Corridor 2- Deluxe Room (Entra', '2025-02-04 16:33:33', 1, 4, '103.10.28.135'),
(1815, 'Hotspot \'Deluxe Room-Corridor 2\' has added success', '2025-02-04 16:34:38', 1, 3, '103.10.28.135'),
(1816, 'Changes on Hotspot \'Deluxe Room-Corridor 2\' has be', '2025-02-04 16:35:01', 1, 4, '103.10.28.135'),
(1817, 'Changes on Hotspot \'Deluxe Room-Corridor 2\' has be', '2025-02-04 16:35:11', 1, 4, '103.10.28.135'),
(1818, 'Changes on Hotspot \'Deluxe Room-Corridor 2\' has be', '2025-02-04 16:35:20', 1, 4, '103.10.28.135'),
(1819, 'Changes on Hotspot \'Deluxe Room-Corridor 2\' has be', '2025-02-04 16:35:30', 1, 4, '103.10.28.135'),
(1820, 'Changes on 360 Image \'Corridor 2\' has been saved s', '2025-02-04 16:35:51', 1, 4, '103.10.28.135'),
(1821, 'Hotspot \'Corrdior 2-1\' has added successfully.', '2025-02-04 16:36:35', 1, 3, '103.10.28.135'),
(1822, 'Changes on Hotspot \'Corrdior 2-1\' has been saved s', '2025-02-04 16:36:47', 1, 4, '103.10.28.135'),
(1823, 'Changes on Hotspot \'Corrdior 2-1\' has been saved s', '2025-02-04 16:36:54', 1, 4, '103.10.28.135'),
(1824, 'Changes on Hotspot \'Corrdior 2-1\' has been saved s', '2025-02-04 16:37:01', 1, 4, '103.10.28.135'),
(1825, 'Changes on Hotspot \'Corrdior 2-1\' has been saved s', '2025-02-04 16:37:08', 1, 4, '103.10.28.135'),
(1826, 'Changes on Hotspot \'Corrdior 2-1\' has been saved s', '2025-02-04 16:37:14', 1, 4, '103.10.28.135'),
(1827, 'Changes on Hotspot \'Corrdior 2-1\' has been saved s', '2025-02-04 16:37:21', 1, 4, '103.10.28.135'),
(1828, 'Changes on Hotspot \'Corrdior 2-1\' has been saved s', '2025-02-04 16:37:28', 1, 4, '103.10.28.135'),
(1829, 'Changes on Hotspot \'Corrdior 2-1\' has been saved s', '2025-02-04 16:37:39', 1, 4, '103.10.28.135'),
(1830, 'Changes on Hotspot \'Corrdior 2-1\' has been saved s', '2025-02-04 16:37:49', 1, 4, '103.10.28.135'),
(1831, 'Hotspot \'Mountain Wing Entrance-Corridor\' has adde', '2025-02-04 16:39:28', 1, 3, '103.10.28.135'),
(1832, 'Changes on Hotspot \'Mountain Wing Entrance-Corrido', '2025-02-04 16:39:44', 1, 4, '103.10.28.135'),
(1833, 'Changes on Hotspot \'Mountain Wing Entrance-Corrido', '2025-02-04 16:39:57', 1, 4, '103.10.28.135'),
(1834, 'Changes on Hotspot \'Mountain Wing Entrance-Corrido', '2025-02-04 16:40:12', 1, 4, '103.10.28.135'),
(1835, 'Changes on Hotspot \'Mountain Wing Entrance-Corrido', '2025-02-04 16:40:28', 1, 4, '103.10.28.135'),
(1836, 'Changes on Hotspot \'Mountain Wing Entrance-Corrido', '2025-02-04 16:40:41', 1, 4, '103.10.28.135'),
(1837, 'Changes on Hotspot \'Mountain Wing Entrance-Corrido', '2025-02-04 16:40:54', 1, 4, '103.10.28.135'),
(1838, 'Changes on Hotspot \'Mountain Wing Entrance-Corrido', '2025-02-04 16:41:07', 1, 4, '103.10.28.135'),
(1839, 'Changes on Hotspot \'Mountain Wing Entrance-Corrido', '2025-02-04 16:41:22', 1, 4, '103.10.28.135'),
(1840, 'Changes on Hotspot \'Mountain Wing Entrance-Corrido', '2025-02-04 16:41:40', 1, 4, '103.10.28.135'),
(1841, 'Hotspot \'Haveli Restaurant 2-1\' has added successf', '2025-02-04 16:42:40', 1, 3, '103.10.28.135'),
(1842, '360 Image [Haveli Restaurant 2]Data has deleted su', '2025-02-04 16:46:13', 1, 6, '103.10.28.135'),
(1843, '360 Image [Haveli Restaurant (Entrance)]Data has d', '2025-02-04 16:46:26', 1, 6, '103.10.28.135'),
(1844, '360 Image [Haveli Restaurant (Entrance)]Data has d', '2025-02-04 16:47:20', 1, 6, '103.10.28.135'),
(1845, '360 Image \'Haveli Restaurant (Entrance)\' has added', '2025-02-04 16:48:05', 1, 3, '103.10.28.135'),
(1846, 'Hotspot \'Haveli Restaurant (Entance)-1\' has added ', '2025-02-04 16:48:50', 1, 3, '103.10.28.135'),
(1847, 'Hotspot \'Haveli Restaurant-2\' has added successful', '2025-02-04 16:50:07', 1, 3, '103.10.28.135'),
(1848, 'Hotspot \'Haveli Restaurant 2-1\' has added successf', '2025-02-04 16:52:40', 1, 3, '103.10.28.135'),
(1849, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:53:00', 1, 4, '103.10.28.135'),
(1850, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:53:16', 1, 4, '103.10.28.135'),
(1851, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:53:35', 1, 4, '103.10.28.135'),
(1852, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:53:49', 1, 4, '103.10.28.135'),
(1853, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:53:59', 1, 4, '103.10.28.135'),
(1854, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:54:21', 1, 4, '103.10.28.135'),
(1855, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:54:35', 1, 4, '103.10.28.135'),
(1856, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:54:44', 1, 4, '103.10.28.135'),
(1857, 'Changes on Hotspot \'Haveli Restaurant-2\' has been ', '2025-02-04 16:55:16', 1, 4, '103.10.28.135'),
(1858, 'Changes on Hotspot \'Haveli Restaurant-2\' has been ', '2025-02-04 16:55:31', 1, 4, '103.10.28.135'),
(1859, '360 Image \'Haveli Restaurant (Balcony)\' has added ', '2025-02-04 16:56:49', 1, 3, '103.10.28.135'),
(1860, 'Hotspot \'Haveli Restaurant - (Balcony)\' has added ', '2025-02-04 16:56:57', 1, 3, '103.10.28.135'),
(1861, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 16:57:07', 1, 4, '103.10.28.135'),
(1862, 'Changes on 360 Image \'Haveli Restaurant (Balcony)\'', '2025-02-04 16:57:12', 1, 4, '103.10.28.135'),
(1863, 'Changes on 360 Image \'Haveli Restaurant \' has been', '2025-02-04 16:57:52', 1, 4, '103.10.28.135'),
(1864, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 16:58:02', 1, 4, '103.10.28.135'),
(1865, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 16:58:10', 1, 4, '103.10.28.135'),
(1866, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 16:58:19', 1, 4, '103.10.28.135'),
(1867, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 16:58:29', 1, 4, '103.10.28.135'),
(1868, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 16:58:49', 1, 4, '103.10.28.135'),
(1869, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 16:59:06', 1, 4, '103.10.28.135'),
(1870, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:59:29', 1, 4, '103.10.28.135'),
(1871, 'Changes on Hotspot \'Haveli Restaurant 2-1\' has bee', '2025-02-04 16:59:46', 1, 4, '103.10.28.135'),
(1872, 'Changes on Hotspot \'Haveli Restaurant 1-2\' has bee', '2025-02-04 17:00:18', 1, 4, '103.10.28.135'),
(1873, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 17:00:52', 1, 4, '103.10.28.135'),
(1874, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 17:01:05', 1, 4, '103.10.28.135'),
(1875, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 17:01:18', 1, 4, '103.10.28.135'),
(1876, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 17:01:30', 1, 4, '103.10.28.135'),
(1877, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 17:01:49', 1, 4, '103.10.28.135'),
(1878, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 17:02:10', 1, 4, '103.10.28.135'),
(1879, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 17:02:29', 1, 4, '103.10.28.135'),
(1880, 'Changes on Hotspot \'Haveli Restaurant - (Balcony)\'', '2025-02-04 17:02:43', 1, 4, '103.10.28.135'),
(1881, 'Changes on 360 Image \'Haveli Restaurant (Entrance)', '2025-02-04 17:04:38', 1, 4, '103.10.28.135'),
(1882, 'Changes on Hotspot \'Haveli Restaurant (Entance)-1\'', '2025-02-04 17:04:50', 1, 4, '103.10.28.135'),
(1883, 'Changes on Hotspot \'Haveli Restaurant (Entance)-1\'', '2025-02-04 17:05:20', 1, 4, '103.10.28.135'),
(1884, 'Changes on Hotspot \'Haveli Restaurant (Entance)-1\'', '2025-02-04 17:05:32', 1, 4, '103.10.28.135'),
(1885, 'Changes on Hotspot \'Haveli Restaurant (Entrance)-1', '2025-02-04 17:05:47', 1, 4, '103.10.28.135'),
(1886, 'Changes on Hotspot \'Haveli Restaurant (Entrance)-1', '2025-02-04 17:06:04', 1, 4, '103.10.28.135'),
(1887, 'Hotspot \'Haveli Restaurant 1-(Entrance)\' has added', '2025-02-04 17:06:54', 1, 3, '103.10.28.135'),
(1888, 'Changes on Hotspot \'Haveli Restaurant 1-(Entrance)', '2025-02-04 17:07:12', 1, 4, '103.10.28.135'),
(1889, 'Changes on Hotspot \'Haveli Restaurant 1-(Entrance)', '2025-02-04 17:07:21', 1, 4, '103.10.28.135'),
(1890, 'Changes on Hotspot \'Haveli Restaurant 1-(Entrance)', '2025-02-04 17:07:28', 1, 4, '103.10.28.135'),
(1891, 'Changes on Hotspot \'Haveli Restaurant 1-(Entrance)', '2025-02-04 17:07:44', 1, 4, '103.10.28.135'),
(1892, 'Changes on Hotspot \'Haveli Restaurant 1-(Entrance)', '2025-02-04 17:07:56', 1, 4, '103.10.28.135'),
(1893, 'Changes on Hotspot \'Haveli Restaurant 1-(Entrance)', '2025-02-04 17:08:10', 1, 4, '103.10.28.135'),
(1894, 'Changes on Hotspot \'Haveli Restaurant 1-(Entrance)', '2025-02-04 17:08:21', 1, 4, '103.10.28.135'),
(1895, 'Changes on Hotspot \'Haveli Restaurant 1-(Entrance)', '2025-02-04 17:08:33', 1, 4, '103.10.28.135'),
(1896, 'Hotspot \'Haveli Restaurant 2-Entrance2\' has added ', '2025-02-04 17:09:21', 1, 3, '103.10.28.135'),
(1897, 'Changes on Hotspot \'Haveli Restaurant 2-Entrance 2', '2025-02-04 17:09:43', 1, 4, '103.10.28.135'),
(1898, 'Changes on Hotspot \'Haveli Restaurant 2-Entrance 2', '2025-02-04 17:10:01', 1, 4, '103.10.28.135'),
(1899, 'Changes on Hotspot \'Haveli Restaurant 2-Entrance 2', '2025-02-04 17:10:07', 1, 4, '103.10.28.135'),
(1900, 'Changes on Hotspot \'Haveli Restaurant 2-Entrance 2', '2025-02-04 17:10:29', 1, 4, '103.10.28.135'),
(1901, 'Changes on Hotspot \'Haveli Restaurant 2-Entrance 2', '2025-02-04 17:10:50', 1, 4, '103.10.28.135'),
(1902, 'Changes on Hotspot \'Haveli Restaurant 2-Entrance 2', '2025-02-04 17:11:12', 1, 4, '103.10.28.135'),
(1903, 'Changes on Hotspot \'Haveli Restaurant 2-Entrance 2', '2025-02-04 17:11:47', 1, 4, '103.10.28.135'),
(1904, 'Changes on Hotspot \'Haveli Restaurant 2-Entrance 2', '2025-02-04 17:12:05', 1, 4, '103.10.28.135'),
(1905, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-04 17:13:45', 1, 4, '103.10.28.135'),
(1906, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-04 17:16:17', 1, 4, '103.10.28.135'),
(1907, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-04 17:16:36', 1, 4, '103.10.28.135'),
(1908, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-04 17:17:26', 1, 4, '103.10.28.135'),
(1909, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-04 17:17:59', 1, 4, '103.10.28.135'),
(1910, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-04 17:18:31', 1, 4, '103.10.28.135'),
(1911, 'Hotspot \'Haveli Restaurant (Entrance)-Exterior 3\' ', '2025-02-04 17:19:17', 1, 3, '103.10.28.135'),
(1912, 'Changes on Hotspot \'Haveli Restaurant (Entrance)-E', '2025-02-04 17:19:39', 1, 4, '103.10.28.135'),
(1913, 'Changes on Hotspot \'Haveli Restaurant (Entrance)-E', '2025-02-04 17:20:06', 1, 4, '103.10.28.135'),
(1914, 'Changes on Hotspot \'Haveli Restaurant (Entrance)-E', '2025-02-04 17:20:18', 1, 4, '103.10.28.135'),
(1915, 'Changes on Hotspot \'Haveli Restaurant (Entrance)-E', '2025-02-04 17:20:30', 1, 4, '103.10.28.135'),
(1916, 'Changes on Hotspot \'Haveli Restaurant (Entrance)-E', '2025-02-04 17:20:46', 1, 4, '103.10.28.135'),
(1917, 'Changes on Hotspot \'Haveli Restaurant (Entrance)-E', '2025-02-04 17:20:58', 1, 4, '103.10.28.135'),
(1918, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-04 17:22:15', 1, 4, '103.10.28.135'),
(1919, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-04 17:22:36', 1, 4, '103.10.28.135'),
(1920, 'Changes on Hotspot \'Exterior 3-Haveli Restaurant E', '2025-02-04 17:22:50', 1, 4, '103.10.28.135'),
(1921, 'Changes on 360 Image \'Entrance\' has been saved suc', '2025-02-04 17:24:26', 1, 4, '103.10.28.135'),
(1922, '360 Image [Main Entrance]Data has deleted successf', '2025-02-04 17:47:51', 1, 6, '103.10.28.135'),
(1923, '360 Image \'Main Entrance\' has added successfully.', '2025-02-04 17:48:49', 1, 3, '103.10.28.135'),
(1924, '360 Image \'Main Entrance\' has added successfully.', '2025-02-04 17:51:23', 1, 3, '103.10.28.135'),
(1925, 'Changes on Hotspot \'Main Entrance - Entrance\' has ', '2025-02-04 17:53:21', 1, 4, '103.10.28.135'),
(1926, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 17:54:56', 1, 4, '103.10.28.135'),
(1927, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 17:57:19', 1, 4, '103.10.28.135'),
(1928, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 17:57:29', 1, 4, '103.10.28.135'),
(1929, 'Changes on 360 Image \'Main Entrance\' has been save', '2025-02-04 17:57:38', 1, 4, '103.10.28.135'),
(1930, 'Hotspot \'Main Entrance -Exterior 4\' has added succ', '2025-02-04 18:02:19', 1, 3, '103.10.28.135'),
(1931, 'Changes on Hotspot \'Main Entrance -Exterior 4\' has', '2025-02-04 18:02:38', 1, 4, '103.10.28.135'),
(1932, 'Changes on Hotspot \'Main Entrance -Exterior 4\' has', '2025-02-04 18:02:52', 1, 4, '103.10.28.135'),
(1933, 'Changes on Hotspot \'Main Entrance -Exterior 4\' has', '2025-02-04 18:03:01', 1, 4, '103.10.28.135'),
(1934, 'Changes on Hotspot \'Main Entrance -Exterior 4\' has', '2025-02-04 18:03:09', 1, 4, '103.10.28.135'),
(1935, 'Changes on Hotspot \'Main Entrance -Exterior 4\' has', '2025-02-04 18:03:15', 1, 4, '103.10.28.135'),
(1936, 'Changes on Hotspot \'Main Entrance -Exterior 4\' has', '2025-02-04 18:03:23', 1, 4, '103.10.28.135'),
(1937, 'Changes on Hotspot \'Main Entrance -Exterior 4\' has', '2025-02-04 18:03:29', 1, 4, '103.10.28.135'),
(1938, 'Changes on Hotspot \'Main Entrance -Exterior 4\' has', '2025-02-04 18:03:40', 1, 4, '103.10.28.135'),
(1939, 'Changes on Hotspot \'Exterior 4 - Main Entrance\' ha', '2025-02-04 18:04:09', 1, 4, '103.10.28.135'),
(1940, '360 Image [Main Entrance]Data has deleted successf', '2025-02-04 18:04:24', 1, 6, '103.10.28.135');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1941, 'Changes on Hotspot \'Entrance-Main Entrance\' has be', '2025-02-04 18:06:18', 1, 4, '103.10.28.135'),
(1942, 'Login: Super admin   logged in.', '2025-02-05 15:02:55', 1, 1, '103.10.28.145'),
(1943, 'Login: Hotel Sarathi   logged in.', '2025-02-05 15:20:52', 1, 1, '103.10.28.145'),
(1944, 'Virtual Tour \'vt2\' has added successfully.', '2025-02-05 15:35:30', 1, 3, '103.10.28.145'),
(1945, 'Virtual Tour [vt2]Data has deleted successfully.', '2025-02-05 15:36:07', 1, 6, '103.10.28.145'),
(1946, 'Virtual Tour \'vt2\' has added successfully.', '2025-02-05 15:37:20', 1, 3, '103.10.28.145'),
(1947, '360 Image \'img\' has added successfully.', '2025-02-05 15:38:34', 1, 3, '103.10.28.145'),
(1948, '360 Image [img]Data has deleted successfully.', '2025-02-05 15:38:46', 1, 6, '103.10.28.145'),
(1949, 'Login: Super admin   logged in.', '2025-02-05 16:02:40', 1, 1, '103.10.28.145'),
(1950, 'Login: Hotel Sarathi   logged in.', '2025-02-06 09:36:32', 1, 1, '103.10.28.139'),
(1951, 'Login: Hotel Sarathi   logged in.', '2025-02-06 09:39:59', 1, 1, '103.10.28.139'),
(1952, 'Virtual Tour [vt2]Data has deleted successfully.', '2025-02-06 10:07:47', 1, 6, '103.10.28.139'),
(1953, 'Virtual Tour \'Virtual Tour -1\' has added successfu', '2025-02-06 10:08:41', 1, 3, '103.10.28.139'),
(1954, 'Virtual Tour [Virtual Tour -1]Data has deleted suc', '2025-02-06 10:08:54', 1, 6, '103.10.28.139'),
(1955, 'Virtual Tour \'Virtual Tour -2\' has added successfu', '2025-02-06 10:10:29', 1, 3, '103.10.28.139'),
(1956, 'Virtual Tour [Virtual Tour -2]Data has deleted suc', '2025-02-06 10:11:04', 1, 6, '103.10.28.139'),
(1957, 'Virtual Tour \'Virtual Tour -2\' has added successfu', '2025-02-06 10:11:33', 1, 3, '103.10.28.139'),
(1958, 'Virtual Tour [Virtual Tour -2]Data has deleted suc', '2025-02-06 10:16:39', 1, 6, '103.10.28.139'),
(1959, 'Login: Hotel Sarathi   logged in.', '2025-02-06 10:52:31', 1, 1, '103.10.28.139'),
(1960, 'Virtual Tour \'Virtual Tour -2\' has added successfu', '2025-02-06 10:53:08', 1, 3, '103.10.28.139'),
(1961, 'Changes on Virtual Tour \'Virtual Tour -2\' has been', '2025-02-06 10:53:38', 1, 4, '103.10.28.139'),
(1962, 'Login: Hotel Sarathi   logged in.', '2025-02-06 11:47:56', 1, 1, '103.10.28.139'),
(1963, '360 Image \'House\' has added successfully.', '2025-02-06 11:48:47', 1, 3, '103.10.28.139'),
(1964, 'Hotspot \'Hotspot-3\' has added successfully.', '2025-02-06 11:49:34', 1, 3, '103.10.28.139'),
(1965, 'Hotspot \'Hotspot-4\' has added successfully.', '2025-02-06 11:50:06', 1, 3, '103.10.28.139'),
(1966, 'Image  [Hotspot-4]Data has deleted successfully.', '2025-02-06 11:54:35', 1, 6, '103.10.28.139'),
(1967, 'Login: Hotel Sarathi   logged in.', '2025-02-06 12:50:35', 1, 1, '103.10.28.139'),
(1968, 'Login: Hotel Sarathi   logged in.', '2025-02-07 14:06:55', 1, 1, '103.181.227.230'),
(1969, '360 Image \'bighotel test\' has added successfully.', '2025-02-07 14:09:01', 1, 3, '103.181.227.230'),
(1970, '360 Image \'bighotel test2\' has added successfully.', '2025-02-07 14:09:43', 1, 3, '103.181.227.230'),
(1971, 'Hotspot \'bighotel test\' has added successfully.', '2025-02-07 14:10:22', 1, 3, '103.181.227.230'),
(1972, 'Login: Hotel Sarathi   logged in.', '2025-02-10 10:11:37', 1, 1, '103.181.227.230'),
(1973, 'Login: Hotel Sarathi   logged in.', '2025-02-10 17:38:34', 1, 1, '103.181.227.230'),
(1974, 'Login: Hotel Sarathi   logged in.', '2025-02-13 14:32:33', 1, 1, '103.10.28.139'),
(1975, 'Login: Hotel Sarathi   logged in.', '2025-02-17 11:09:14', 1, 1, '103.10.28.151'),
(1976, 'Login: Hotel Sarathi   logged in.', '2025-03-07 11:22:10', 1, 1, '103.10.28.136'),
(1977, 'Changes on Virtual Tour \'Virtual Tour -2\' has been', '2025-03-07 12:07:52', 1, 4, '103.10.28.136'),
(1978, 'Changes on Virtual Tour \'Virtual Tour -2\' has been', '2025-03-07 12:08:08', 1, 4, '103.10.28.136'),
(1979, '360 Image \'second image\' has added successfully.', '2025-03-07 12:09:13', 1, 3, '103.10.28.136'),
(1980, 'Hotspot \'go to 2nd img\' has added successfully.', '2025-03-07 12:09:51', 1, 3, '103.10.28.136'),
(1981, 'Virtual Tour \'virtual tour 3\' has added successful', '2025-03-07 12:13:30', 1, 3, '103.10.28.136'),
(1982, '360 Image \'img 1\' has added successfully.', '2025-03-07 12:14:05', 1, 3, '103.10.28.136'),
(1983, 'Hotspot \'this is information\' has added successful', '2025-03-07 12:18:13', 1, 3, '103.10.28.136'),
(1984, '360 Image \'img 2\' has added successfully.', '2025-03-07 12:18:53', 1, 3, '103.10.28.136'),
(1985, 'Changes on Hotspot \'go to 2nd img\' has been saved ', '2025-03-07 12:19:35', 1, 4, '103.10.28.136'),
(1986, 'Login: Hotel Sarathi   logged in.', '2025-03-07 13:40:18', 1, 1, '103.10.28.136'),
(1987, 'Login: Hotel Sarathi   logged in.', '2025-03-10 16:39:48', 1, 1, '103.10.28.150'),
(1988, 'Login: Hotel Sarathi   logged in.', '2025-04-09 12:37:24', 1, 1, '103.181.226.168'),
(1989, 'Login: Hotel Sarathi   logged in.', '2025-04-09 12:40:11', 1, 1, '27.34.66.76'),
(1990, 'Login: Hotel Sarathi   logged in.', '2025-07-01 11:17:41', 1, 1, '160.250.255.250'),
(1991, 'Login: Hotel Sarathi   logged in.', '2025-07-01 15:45:25', 1, 1, '160.250.255.250'),
(1992, 'Login: Super admin   logged in.', '2025-07-04 13:06:49', 1, 1, '160.250.255.228'),
(1993, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2025-07-04 13:07:12', 1, 4, '160.250.255.228'),
(1994, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2025-07-04 13:07:22', 1, 4, '160.250.255.228'),
(1995, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2025-07-04 13:07:29', 1, 4, '160.250.255.228'),
(1996, 'Login: Hotel Sarathi   logged in.', '2025-07-07 16:38:17', 1, 1, '160.250.254.254'),
(1997, 'Login: Hotel Sarathi   logged in.', '2025-07-22 13:14:24', 1, 1, '160.250.255.217'),
(1998, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2025-07-22 13:14:40', 1, 4, '160.250.255.217'),
(1999, 'Login: Hotel Sarathi   logged in.', '2025-08-11 14:29:40', 1, 1, '110.34.5.224'),
(2000, 'Login: Super admin   logged in.', '2025-08-13 16:08:13', 1, 1, '160.250.255.112'),
(2001, 'Login: Super admin   logged in.', '2026-02-09 12:25:06', 1, 1, '160.250.254.107'),
(2002, 'User [Hotel Sarathi  ] Edit Successfully', '2026-02-09 12:25:32', 1, 4, '160.250.254.107'),
(2003, 'Login: Hotel Sarathi   logged in.', '2026-02-09 13:41:35', 1, 1, '160.250.254.119'),
(2004, 'Login: Hotel Sarathi   logged in.', '2026-02-09 13:56:34', 1, 1, '160.250.254.179'),
(2005, 'Popup \'Valenttine Package \' has added successfully', '2026-02-09 13:58:49', 1, 3, '160.250.254.179'),
(2006, 'Login: Hotel Sarathi   logged in.', '2026-02-12 11:49:07', 1, 1, '160.250.254.152'),
(2007, 'Login: Super admin   logged in.', '2026-02-12 16:02:49', 1, 1, '160.250.254.152'),
(2008, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2026-02-12 16:05:05', 1, 4, '160.250.254.152'),
(2009, 'Changes on Article \'About Us\' has been saved succe', '2026-02-12 16:10:19', 1, 4, '160.250.254.152'),
(2010, 'Package Accommodation Edit Successfully', '2026-02-12 16:14:15', 1, 4, '160.250.254.152'),
(2011, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2026-02-12 16:15:41', 1, 4, '160.250.254.152'),
(2012, 'Login: Super admin   logged in.', '2026-02-12 16:24:16', 1, 1, '160.250.254.152'),
(2013, 'Changes on Article \'About Us\' has been saved succe', '2026-02-12 16:37:15', 1, 4, '160.250.254.152'),
(2014, 'Changes on Config \'Hotel Sarathi\' has been saved s', '2026-02-12 16:45:01', 1, 4, '160.250.254.152'),
(2015, 'Package Hall Edit Successfully', '2026-02-12 16:48:28', 1, 4, '160.250.254.152'),
(2016, 'Package Dining Edit Successfully', '2026-02-12 16:50:06', 1, 4, '160.250.254.152'),
(2017, 'Package Accommodation Edit Successfully', '2026-02-12 16:53:17', 1, 4, '160.250.254.152'),
(2018, 'Changes on Sub Package \'Araniko Hall\' has been sav', '2026-02-12 16:56:16', 1, 4, '160.250.254.152'),
(2019, 'Changes on Sub Package \'Sarathi Events\' has been s', '2026-02-12 17:00:55', 1, 4, '160.250.254.152'),
(2020, 'Changes on Sub Package \'Haveli Restaurant\' has bee', '2026-02-12 17:04:28', 1, 4, '160.250.254.152'),
(2021, 'Changes on Sub Package \'Bentil Bar\' has been saved', '2026-02-12 17:06:29', 1, 4, '160.250.254.152'),
(2022, 'Changes on Sub Package \'Deluxe Room \' has been sav', '2026-02-12 17:08:40', 1, 4, '160.250.254.152'),
(2023, 'Changes on Sub Package \'Premium Deluxe Room\' has b', '2026-02-12 17:09:53', 1, 4, '160.250.254.152'),
(2024, 'Login: Super admin   logged in.', '2026-02-12 17:13:24', 1, 1, '160.250.254.152'),
(2025, 'Changes on Sub Package \'Junior Suite Room\' has bee', '2026-02-12 17:17:35', 1, 4, '160.250.254.152'),
(2026, 'Changes on Article \'Accommodation\' has been saved ', '2026-02-12 17:20:18', 1, 4, '160.250.254.152'),
(2027, 'Changes on Article \'Finest dining in town\' has bee', '2026-02-12 17:20:29', 1, 4, '160.250.254.152'),
(2028, 'Changes on Article \'Unrivaled Location\' has been s', '2026-02-12 17:23:39', 1, 4, '160.250.254.152'),
(2029, 'Login: Hotel Sarathi   logged in.', '2026-02-12 23:09:20', 1, 1, '27.34.66.34'),
(2030, 'Changes on Popup \'Valenttine Package \' has been sa', '2026-02-12 23:11:42', 1, 4, '27.34.66.34'),
(2031, 'Login: Super admin   logged in.', '2026-02-16 11:04:57', 1, 1, '160.250.255.77'),
(2032, 'Changes on Sub Package \'Bhrikuti Hall\' has been sa', '2026-02-16 11:31:35', 1, 4, '160.250.255.77'),
(2033, 'Login: Super admin   logged in.', '2026-02-16 11:45:15', 1, 1, '160.250.255.77'),
(2034, 'Changes on Article \'Unrivaled Location\' has been s', '2026-02-16 11:57:37', 1, 4, '160.250.255.77'),
(2035, 'Login: Super admin   logged in.', '2026-02-16 16:41:25', 1, 1, '160.250.255.77'),
(2036, 'Login: Hotel Sarathi   logged in.', '2026-03-14 17:50:56', 1, 1, '103.10.28.149');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `bgcolor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `linksrc` varchar(150) NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT 0,
  `linktype` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`) VALUES
(2, 'About Us', 'page/about-us', 0, '0', 1, 2, '2016-11-16 17:16:57', 1, ''),
(3, 'Deluxe Room', 'package/accommodation', 3, '0', 1, 3, '2016-11-16 17:17:38', 1, ''),
(4, 'Dining', 'package/dining', 0, '0', 1, 3, '2016-11-16 17:17:55', 1, ''),
(5, 'Gallery', 'gallery-list', 0, '0', 1, 6, '2016-11-16 17:18:10', 1, ''),
(6, 'Reviews', 'reviews-list', 0, '0', 1, 7, '2016-11-16 17:18:54', 1, ''),
(8, 'Contact Us', 'contact-us', 0, '0', 1, 9, '2016-11-16 17:19:21', 1, ''),
(9, 'Deluxe Room', 'subpackage/deluxe-room', 3, '0', 1, 1, '2016-11-16 17:20:22', 1, ''),
(10, 'Super Deluxe Room', 'subpackage/super-deluxe-room', 3, '0', 1, 2, '2016-11-16 17:20:46', 1, ''),
(11, 'Honeymoon Super Deluxe', 'subpackage/honeymoon-super-deluxe', 3, '0', 0, 3, '2016-11-16 17:21:11', 1, ''),
(12, 'Deluxe Room', '3', 3, '0', 1, 4, '2023-09-20 15:10:00', 1, ''),
(13, 'Accommodation', 'subpackage/premium-room', 15, '0', 1, 3, '2023-09-20 15:38:14', 1, ''),
(14, 'Deluxe Room', 'subpackage/deluxe', 13, '0', 1, 1, '2023-09-20 15:39:40', 1, ''),
(15, 'Premium Room', 'package/accommodation', 13, '0', 1, 2, '2023-09-20 15:41:01', 1, ''),
(16, 'Executive Room', 'package/accommodation', 13, '0', 1, 3, '2023-09-20 15:41:52', 1, ''),
(17, 'Suite Room', 'package/accommodation', 13, '0', 1, 4, '2023-09-20 15:42:12', 1, ''),
(18, 'Presidential Suite Room', 'package/accommodation', 13, '0', 1, 5, '2023-09-20 15:42:35', 1, ''),
(19, 'Room', 'package/accommodation', 0, '0', 1, 4, '2023-09-20 16:54:27', 1, ''),
(20, 'Event & Conference', 'package/hall', 0, '0', 1, 5, '2023-09-20 17:20:14', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) NOT NULL,
  `icon_link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `sortorder`, `added_date`, `properties`) VALUES
(1, 0, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, '0000-00-00', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 2, '0000-00-00', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 3, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 1, 5, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:3:\"800\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 6, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(6, 0, 'News Mgmt', 'news/list', 'news', 'icon-list-alt', 0, 17, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(7, 0, 'Event Mgmt', 'events/list', 'events', 'icon-bullhorn', 1, 8, '0000-00-00', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 0, 11, '0000-00-00', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 19, '0000-00-00', ''),
(11, 0, 'Social Link Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 9, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 18, '0000-00-00', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 1, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";s:9:\"simgwidth\";s:3:\"125\";s:10:\"simgheight\";s:2:\"80\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 3, '0000-00-00', ''),
(16, 12, 'Properties Mgmt', 'properties/list', 'properties', 'icon-gear', 0, 4, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 1, 10, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"100\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 0, 12, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 1, 16, '2015-05-20', 'a:2:{s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 0, 14, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:3:\"800\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 13, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 15, '2015-11-01', ''),
(23, 25, 'Package Mgmt', 'package/list', 'package', 'icon-exchange', 1, 2, '2016-06-17', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(24, 25, 'Features Mgmt', 'features/list', 'features', 'icon-gear', 1, 1, '2016-11-16', ''),
(25, 0, 'Package Mgmt', '', '', 'icon-bullhorn', 1, 7, '2016-11-16', ''),
(100, 0, 'Popup', 'popup/list', 'popup', 'icon-list', 1, 15, '2023-12-23', ''),
(101, 0, 'Virtual Tour', 'virtualtour/list', 'virtualtour', 'icon-list', 1, 4, '2025-01-23', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `id` int(11) NOT NULL,
  `slug` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `image` varchar(250) NOT NULL,
  `banner_image` varchar(250) NOT NULL,
  `release_date` varchar(50) NOT NULL,
  `server_name` varchar(100) NOT NULL,
  `dta_service` tinyint(1) NOT NULL DEFAULT 0,
  `youtube_video` text NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `movie_type` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`id`, `slug`, `title`, `image`, `banner_image`, `release_date`, `server_name`, `dta_service`, `youtube_video`, `brief`, `content`, `movie_type`, `action_type`, `status`, `sortorder`, `added_date`, `meta_keywords`, `meta_description`) VALUES
(1, 'katti-batti', 'Katti Batti', 'nBRNS-1.jpg', 'Pee8o-katti_bate.jpg', '2015-09-18', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=a23GO0NXOtg\";}', 'Katti Batti is an Indian romantic comedy film directed by Nikhil Advan', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE&nbsp;</h4>\r\n	<p class=\"text-justify\">\r\n		Katti Batti is an Indian romantic comedy film directed by Nikhil Advani and produced by Siddharth Roy Kapur under the banner of UTV Motion Pictures. The film stars Kangana Ranaut and Imran Khan in the lead roles. The first look of the movie was revealed on 12 June 2015, and the trailer of the movie was released on 14 June 2015.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:&nbsp;18 September 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 3, 1, 1, 8, '2015-11-01 16:17:59', 'keyword', 'Description'),
(2, 'everest', 'Everest', 'vtJOH-2.jpg', 'nL4Vh-everest.jpg', '2015-09-18', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=5ZQVpPiOji0\";}', 'movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		Everest is a 2015 survival film directed by Baltasar Korm&aacute;kur and written by William Nicholson and Simon Beaufoy. The film stars are Jason Clarke, Josh Brolin, John Hawkes, Robin Wright, Michael Kelly, Sam Worthington, Keira Knightley, Emily Watson, and Jake Gyllenhaal.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:18th September 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Nikhil Upreti, Anu Shah, Nagendra Rijal, Robin Hood Sen, Ratan Daruwalla</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Action</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Ratan Daruwalla</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nikhil Upreti (Debut)</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n', 2, 3, 1, 1, '2015-11-01 16:18:56', '', ''),
(3, 'singh-is-bling', 'Singh is Bling', '4j70E-4.jpg', 'Es8gp-singh-is-bling-hindi-movie-review-rating.jpg', '2015-10-02', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=J6HIAfNxzQk\";}', 'Movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		Singh Is Bling is a 2015 Bollywood action comedy film directed by Prabhu Deva and produced by Ashvini Yardi and Jayantilal Gada under the banners Grazing Goat Pictures and Pen India Pvt. Ltd. The film features Akshay Kumar, Amy Jackson, Lara Dutta and Kay Kay Menon in lead roles.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: 2nd October 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 3, 3, 1, 2, '2015-11-01 16:19:33', '', ''),
(4, 'shaandaar', 'Shaandaar', 'mvssx-5.jpg', '01Krg-shaandaar-movie-trailer-shahid-kapoor-alia-bhatt-0001.jpg', '2015-10-22', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=k99-vMPh3-A\";}', 'Movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		Shaandaar (English: Fabulous/Grand) is an Indian romantic comedy film, directed by Vikas Bahl and produced by Anurag Kashyap and Vikramaditya Motwane. It stars Alia Bhatt and Shahid Kapoor in lead roles, with Pankaj Kapur and Sanjay Kapoor in supporting roles. The Times of India described Shaandar as &quot;India&#39;s first destination wedding film&quot;. Principal photography began in August 2014 in Leeds, and the film is released on 22 October 2015 and coinciding with Dussehra.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:22nd October 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 3, 1, 1, 5, '2015-11-01 16:20:25', '', ''),
(5, 'chankhe-shankhe-pankhe', 'Chankhe Shankhe Pankhe', 'EO1Od-3.jpg', 'gsxpz-chankhe-shankhe-pankhe1.jpg', '2015-11-02', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=GTca2iKeajo\";}', 'movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE CHANKHE SANKHE PANKHE</h4>\r\n	<p class=\"text-justify\">\r\n		Chankhe Sankhe Pankhe is yet another new nepali movie of 2015 which will be the 6th movie direction by director Sudarshan Thapa. Sudarshan Thapa&#39;s previous movie include Mero Auta Sathi Chha, Ke Yo Maya Ho, Mero Love Story, Dhanda and Madhumas. The three characters in the movie i.e. Chankhe, Sankhe and Pankhe thinks that they are useless for the country and society and thus they try to commit suicide. The movie focuses on the fact that if given the right counselling to such people, then the suicidal tendency can be reduced.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: 25th September 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 1, 1, 1, 4, '2015-11-01 16:40:50', '', ''),
(6, 'batman-v-superman-dawn-of-justice', 'Batman v Superman: Dawn of Justice', 'fhDbi-dawn_of_justice_by_jprart-d85mie6.jpg', 'vf8QA-batman-vs-superman.jpg', '2016-03-25', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=0WWzgGyAH6Y\";}', 'Coming soon', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		Fearing the actions of a god-like Super Hero left unchecked, Gotham City&#39;s own formidable, forceful vigilante takes on Metropolis&#39; most revered, modern-day savior, while the world wrestles with what sort of hero it really needs. And with Batman and Superman at war with one another, a new threat quickly arises, putting mankind in greater danger than it&#39;s ever known before.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: 25 March 2016</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 2, 1, 1, 6, '2015-11-05 14:47:52', '', ''),
(7, 'spectre', 'Spectre', 'N65D6-spectre-poster-black-white.jpg', 'ZTWHk-spectre-007-banner-compressed.jpg', '2015-11-06', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=LTDaET-JweU\";}', 'Spectre (2015) is the twenty-fourth James Bond film', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE&nbsp;</h4>\r\n	<p class=\"text-justify\">\r\n		Spectre (2015) is the twenty-fourth James Bond film produced by Eon Productions. It features Daniel Craig in his fourth performance as James Bond, and Christoph Waltz as Ernst Stavro Blofeld, with the film marking the character&#39;s re-introduction into the series.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:&nbsp;6 November 2015&nbsp;</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n', 2, 1, 1, 7, '2015-11-05 15:05:17', '', ''),
(9, 'kis-kis-ko-pyaar-karoon', 'Kis Kis Ko Pyaar Karoon', 'pkB6u-kis-kisko-pyaar-karoon.jpg', 'qN1gm-maxresdefault.jpg', '2015-09-25', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=Xhmej50EGM8\";}', 'Kis Kis Ko Pyaar Karoon', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE&nbsp;</h4>\r\n	<p class=\"text-justify\">\r\n		Kis Kisko Pyaar Karoon (English translation: &quot;Whom Should I Love&quot;) is an Indian romantic comedy film directed by director Abbas Mustan. Indian stand-up comedian Kapil Sharma will make his Bollywood debut with this movie</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:&nbsp;25 September 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 3, 1, 1, 9, '2015-11-08 15:38:22', '', ''),
(10, 'adhkatti', 'Adhkatti', '7jHz1-adhkatti.jpg', 'hC6UC-adhkatti-first-poster.jpg', '2015-10-20', 'dcn', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=7lKAbpFgRrs\";}', 'movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		Adhkatti is the new nepali movie directed by the debut director and media personality Subrat Acharya. The movie is a comedy where some illiterate youths dream of earning money. The trailer of the movie has been recently released and is just admirable. Actress Namrata Shrestha will have a special appearance in the movie. Other actors/actress in the movie include Gaurav Pahari, Rista Basnet, Ashishma Nakarmi, Wilson Bikram Rai etc. Gaurav Pahari has been known through his previous movies like Manjari (2013) - Debut, Hostel (2013), Utsav (2014) etc.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: October 20 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 1, 1, 1, 10, '2015-11-08 15:49:07', '', ''),
(11, 'nagarik', 'Nagarik', 'hkK1L-milind-soman-nagrik-movie-poster.jpg', 'KQ8Ff-marathi.jpg', '2015-11-08', 'dcn', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=dCXZT1GxXGI\";}', 'Movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<h4 class=\"text-Justify\">\r\n		<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">Nagrik is a very technically sound film; the photography, sound mixing and editing, all are fantastic. The irony of many situations has been beautifully captured and so has everything that goes on in the belly of Mumbai. It exposes corrupt builders helping corrupt politicians and vice-versa, the plight of poor villagers lured to the city in search of work and the fact that everyone knows everything going on but no one wants to talk about it.</span></h4>\r\n	<p>\r\n		&nbsp;</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:12th June 2015 [Jestha 29, 2072 B.S]</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	\r\n', 3, 1, 1, 11, '2015-11-08 15:51:53', '', ''),
(12, 'pardeshi', 'Pardeshi', 'TE3J6-pardeshi.jpg', 'DJjkN-4.jpg', '2015-10-13', 'DCN', 0, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=jbTpTIX1En4\";}', 'Movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		&lsquo;Pardeshi&rsquo; is a presentation of Oscar Cine Arts &ndash; a group of Oscar. The 1998 release movie is produced by the director Deepak Alok (late).The child artists in the movie are Sanjog Koirala and Wilson Rai.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: Oct 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n\r\n', 1, 1, 1, 12, '2015-11-08 16:30:11', '', ''),
(13, 'pyar-ka-punchnama-2', 'Pyar ka punchnama 2', 'KArZs-images.jpg', 'Ww0PG-pyaar-ka-punchnama-2-story-movie-cast-wiki-trailer-songs-list.jpg', '2015-10-16', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=tC-HGUhxyyc\";}', 'Pyaar Ka Punchnama 2 is a 2015 Hindi film. It is a sequel to the 2011 film Pyaar Ka Punchnama. ', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		Pyaar Ka Punchnama 2 is a 2015 Hindi film. It is a sequel to the 2011 film Pyaar Ka Punchnama. The sequel is directed by Luv Ranjan and produced by Viacom 18 Motion Pictures and Panorama Studios Production. The film stars Kartik Aaryan as gogo, Omkar Kapoor as Thakur, Sunny Nijar as Chauka, Sonnalli Seygall as Supriya, Ishita Raj Sharma as Kusum and Nushrat Bharucha as Chikoo</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: 16 October 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 3, 1, 1, 13, '2015-11-08 16:41:54', '', ''),
(14, 'wada-no-6', 'wada no 6', 'qFt2x-68396wada-number-6-poster.jpg', 'TmHan-maxresdefault.jpg', '2015-09-18', 'DCN', 0, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=afE0vPVqtjw\";}', 'Movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE&nbsp;</h4>\r\n	<p class=\"text-justify\">\r\n		Nepali comedy movie staring Priyanka Karki, Dayahang Rai, Jitu Nepal, Sitaram Kattel and Kedar Ghimire.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: Sep 18, 2072</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Black Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Khagendra Singh Bania</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nischal Basnet</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 1, 1, 1, 14, '2015-11-08 16:50:37', '', ''),
(15, 'shushree', 'Shushree', 'sg5sT-sushri-nepali-movie-poster.jpg', 'uiQPf-sushri-nepali-movie-poster.jpg', '2015-10-20', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=9MOg5GkzpTk\";}', 'movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		Known as Nepali Angelina Jolie - Ashika Tamang is debuting via the new nepali movie Sushree starring Aaryan Sigdel. Sushree is directed by Shivam Adhikari and is made under the actress Ashika&#39;s own home production - Ashika Films. Aaryan Sigdel will be seen in a comedy role in this movie for the first time in his acting career.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: October 20, 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<strong>Cast </strong></td>\r\n				<td>\r\n					Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Genre </strong></td>\r\n				<td>\r\n					Black Comedy</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Produced By </strong></td>\r\n				<td>\r\n					Khagendra Singh Bania</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Directed By </strong></td>\r\n				<td>\r\n					Nischal Basnet</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n', 1, 1, 1, 15, '2015-11-08 17:03:22', '', ''),
(16, 'main-aur-charles', 'Main Aur Charles', 'ooV49-main-aur-charlies-motion-poster.jpg', 'mGvzV-main-aur-charles-poster.jpg', '2015-10-30', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=wOF9MlEOfuE\";}', 'Movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		Main aur Charles is a 2015 bollywood drama film, written and directed by Prawaal Raman and produced by Cynozure Networkz. This film is a fictitious thriller, inspired by true events and told from the perspective of respected Indian cop, Amod Kanth who handled the notorious case of serial killer, Charles Sobhraj.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: October&nbsp;30,&nbsp;2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<strong>Cast </strong></td>\r\n				<td>\r\n					Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Genre </strong></td>\r\n				<td>\r\n					Black Comedy</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Produced By </strong></td>\r\n				<td>\r\n					Khagendra Singh Bania</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Directed By </strong></td>\r\n				<td>\r\n					Nischal Basnet</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n', 3, 1, 1, 3, '2015-11-08 17:11:58', '', ''),
(19, 'welcome-back', 'Welcome Back', 'EIUKt-welcome-back-movie-posters-6-768x1024.jpg', 'tblDM-welcome-back-poster-review.jpg', '2015-09-04', 'dcn', 0, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=SIKfSPbsuyw\";}', 'Movie', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		Welcome Back is a Indian action comedy film directed by Anees Bazmee and produced by Firoz Nadiadwala, released in 2015. It features an ensemble cast that includes Anil Kapoor, Nana Patekar, John Abraham, Shruti Haasan, Paresh Rawal, Dimple Kapadia and Naseeruddin Shah.While Kapoor, Patekar and Rawal have reprised their roles from the 2007 film Welcome, Abraham and Hassan are new additions to the lead cast.[8] Made on a budget of US$16 million, the film was largely shot in and around Dubai, United Arab Emirates.</p>\r\n	<h4 class=\"text-center\">\r\n		Release Date: 4 September 2015</h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Anil Kapoor, Nana Patekar, John Abraham</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Firoz Nadiadwala</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Anees Bazmee</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n', 3, 1, 0, 16, '2015-11-08 17:51:33', '', ''),
(20, 'resham-filili', 'Resham Filili', 'AuAwN-resham-filili-poster.jpg', 'XKFHO-nepali-movie-resham-filili-title-song.jpg', '2015-08-28', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=sbxoVp6FVCo\";}', 'Resham filili is a Nepali movie written and directed by Pranab Joshi and produced by Madhav Wagle. The Resham FIlili song title “Jalma” had been viral on various social networks and YouTube. ', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">Resham filili is a Nepali movie written and directed by Pranab Joshi and produced by Madhav Wagle. The Resham FIlili song title &ldquo;Jalma&rdquo; had been viral on various social networks and YouTube. </span></p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:&nbsp;<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">August 28, 2015</span></h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Vinay Shrestha, Kameshwor Chaurasia, Menuka Pradhan, Shishir Bangdel, Karma Arun Regmi</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Comedy</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Madhav Wagle</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Pranab Joshi</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	\r\n</div>\r\n', 1, 1, 1, 17, '2015-11-10 15:20:29', '', ''),
(21, 'bajrangi-bhaijaan', 'Bajrangi Bhaijaan', '9PQdA-05-bajrang-bhaijaan.jpg', '71kfX-bajrangi-bhaijaan-2015-movie-poster.jpg', '2015-07-15', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=vyX4toD395U\";}', 'A man with a magnanimous spirit tries to take a young mute Pakistani girl back to her homeland to reunite her with her family', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">A man with a magnanimous spirit tries to take a young mute Pakistani girl back to her homeland to reunite her with her family</span></p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:&nbsp;<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">July 17, 2015</span></h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	<div class=\"col-lg-4 padd_btm\">\r\n		<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<strong>Cast </strong></td>\r\n				<td>\r\n					Salman Khan, Kareena Kapoor, Harshaali Malhotra</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Genre </strong></td>\r\n				<td>\r\n					Indian comedy-drama</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Produced By </strong></td>\r\n				<td>\r\n					Salman Khan, Rockline Venkatesh</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Directed By </strong></td>\r\n				<td>\r\n					Kabir Khan</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>', 3, 2, 1, 18, '2015-11-10 15:27:13', '', ''),
(22, 'hostel-returns', 'Hostel Returns', 'JnDjm-11011670_952889374745230_9211981824569295012_n_150633.jpg', 'A1PuX-event_305.jpg', '2015-08-21', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=S3GIWlRYyjM\";}', 'Hostel Returns is a 2015 Nepalese teen romance film directed by Suraj Bhusal', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">Hostel Returns is a 2015 Nepalese teen romance film directed by Suraj Bhusal and produced by Sunil Rawal under Durgish Films banner. This film is a sequel to 2013 film Hostel and is based on the hostel life of civil engineering students</span></p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:&nbsp;<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">August 21, 2015</span></h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<strong>Cast </strong></td>\r\n				<td>\r\n					Swastima Khadka, Sushil Shrestha, Sashi Shrestha</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Genre </strong></td>\r\n				<td>\r\n					Romantic, Comedy</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Produced By </strong></td>\r\n				<td>\r\n					Sunil Raval</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Directed By </strong></td>\r\n				<td>\r\n					Suraj Bhusal</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>', 1, 1, 1, 19, '2015-11-10 15:34:07', '', ''),
(23, 'baazigar', 'Baazigar', 'sEFXf-baazigar-copy.jpg', 'Fy9ih-baazigar-bhojpurimovieshd.jpg', '2015-11-14', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=cGmx_xUrFmo\";}', ' Its an action love story bhojpuri film, starring Pawan Singh, Ravi Kishan, Subhi Sharma and Ananya Sarkaar in the main lead roles.', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">Tirupati Balaji Motion Pictures presents upcoming bhojpuri movie &#39;Baazigar&#39;, Its an action love story bhojpuri film, starring Pawan Singh, Ravi Kishan, Subhi Sharma and Ananya Sarkaar in the main lead roles. The movie is directed by Sanoj Mishra and produced by Mahendra Pawan Singh.</span></p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:&nbsp;<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">November 14, 2015</span></h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<strong>Cast </strong></td>\r\n				<td>\r\n					Pawan Singh, Ravi Kishan, Subhi Sharma, Ananya Sarkaar</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Genre </strong></td>\r\n				<td>\r\n					Action, Love story</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Produced By </strong></td>\r\n				<td>\r\n					Mahendra Pawan Singh</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Directed By </strong></td>\r\n				<td>\r\n					Sanoj Mishra</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>', 3, 2, 1, 20, '2015-11-10 15:41:11', '', ''),
(24, 'talakjung-vs-tulke', 'Talakjung Vs Tulke', 'RO5a4-talakjung-vs-tulke-posters-1.jpg', 'mhnnh-event_261.jpg', '2015-10-31', 'DCN', 1, 'a:2:{i:0;s:43:\"https://www.youtube.com/watch?v=EweSy8ND6Us\";i:1;s:43:\"https://www.youtube.com/watch?v=Zl-JXV0JTzw\";}', 'Tulké is a day-laborer in a Nepalese mountain village. He struggles to reclaim his lost aristocratic identity, while a violent revolution disrupts every aspect of village life.', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">Tulk&eacute; is a day-laborer in a Nepalese mountain village. He struggles to reclaim his lost aristocratic identity, while a violent revolution disrupts every aspect of village life.</span></p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:&nbsp;<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">October 31, 2014</span></h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<strong>Cast </strong></td>\r\n				<td>\r\n					Khagendra Lamichhane, Dayahang Rai, Reecha Sharma, Prakash Ghimere</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Genre </strong></td>\r\n				<td>\r\n					Black Comedy</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Produced By </strong></td>\r\n				<td>\r\n					Khagendra Singh Bania</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Directed By </strong></td>\r\n				<td>\r\n					Nischal Basnet</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 1, 2, 1, 21, '2015-11-10 16:32:27', '', ''),
(25, 'bhairab', 'Bhairab', '0VEyx-214x31737870bhairav-nepali-movie-poster.jpg', '842Wj-maxresdefault.jpg', '2015-08-28', 'DCN', 1, 'a:1:{i:0;s:43:\"https://www.youtube.com/watch?v=d2_rTS26hvA\";}', 'The movie is based on the situation that\'s going on in the border area of Nepal and its the story of a policeman. - See more at: http://nepalimovieworld.blogspot.com/2015/05/bhairav.html#sthash.kGoJfozv.dpuf', '<div class=\"row yellowh4\">\r\n	<h4 class=\"text-center\">\r\n		ABOUT THE MOVIE</h4>\r\n	<p class=\"text-justify\">\r\n		<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">Nepali Actor Nikhil Upreti has not been seen in any movies for nearly the past 5 years. Now he is back with the new nepali movie action movie Bhairav with his own direction and production.The movie is based on the situation that&#39;s going on in the border area of Nepal and its the story of a policeman.</span></p>\r\n	<h4 class=\"text-center\">\r\n		Release Date:&nbsp;<span style=\"font-family: arial, sans-serif; font-size: 13px; line-height: 14.6545px;\">August 28, 2015</span></h4>\r\n</div>\r\n<div class=\"row details-list yellowh4\">\r\n	<h4>\r\n		Details</h4>\r\n	<div>\r\n		<table>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>Cast </strong></td>\r\n					<td>\r\n						Nikhil Upreti, Anu Shah, Nagendra Rijal, Robin Hood Sen, Ratan Daruwalla</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Genre </strong></td>\r\n					<td>\r\n						Action</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Produced By </strong></td>\r\n					<td>\r\n						Ratan Daruwalla</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						<strong>Directed By </strong></td>\r\n					<td>\r\n						Nikhil Upreti (Debut)</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 4, 3, 1, 22, '2015-11-10 16:41:17', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_theaters`
--

CREATE TABLE `tbl_movie_theaters` (
  `theaters_id` int(11) NOT NULL,
  `movies_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_movie_theaters`
--

INSERT INTO `tbl_movie_theaters` (`theaters_id`, `movies_id`, `type`) VALUES
(1, 2, 1),
(1, 5, 1),
(1, 6, 1),
(1, 3, 2),
(1, 4, 2),
(3, 2, 1),
(3, 5, 1),
(3, 4, 2),
(4, 1, 1),
(4, 2, 1),
(4, 5, 1),
(4, 3, 2),
(4, 4, 2),
(9, 2, 1),
(9, 3, 2),
(9, 5, 1),
(9, 6, 1),
(10, 2, 1),
(10, 5, 1),
(10, 4, 2),
(11, 2, 1),
(11, 4, 2),
(12, 6, 1),
(12, 3, 2),
(13, 9, 1),
(14, 10, 1),
(14, 11, 1),
(15, 10, 1),
(16, 12, 1),
(17, 11, 1),
(18, 12, 1),
(19, 12, 1),
(20, 12, 1),
(13, 19, 1),
(13, 17, 1),
(13, 16, 1),
(13, 12, 1),
(13, 3, 2),
(23, 12, 1),
(24, 10, 1),
(25, 12, 1),
(26, 12, 1),
(29, 12, 1),
(30, 12, 1),
(31, 12, 1),
(31, 11, 1),
(32, 12, 1),
(33, 11, 1),
(33, 16, 1),
(33, 10, 1),
(34, 16, 1),
(34, 10, 1),
(35, 12, 1),
(36, 10, 1),
(37, 12, 1),
(38, 11, 1),
(39, 12, 1),
(41, 11, 1),
(42, 16, 1),
(44, 12, 1),
(45, 19, 1),
(46, 17, 1),
(48, 16, 1),
(48, 12, 1),
(49, 15, 1),
(49, 11, 1),
(51, 13, 1),
(52, 4, 1),
(53, 12, 1),
(54, 12, 1),
(54, 11, 1),
(55, 16, 1),
(55, 4, 1),
(56, 16, 1),
(57, 16, 1),
(62, 11, 1),
(64, 11, 1),
(67, 12, 1),
(71, 15, 1),
(71, 12, 1),
(71, 11, 1),
(72, 12, 1),
(72, 11, 1),
(73, 4, 1),
(74, 16, 1),
(76, 15, 1),
(77, 12, 1),
(78, 12, 1),
(79, 12, 1),
(80, 14, 1),
(81, 12, 1),
(82, 12, 1),
(87, 16, 1),
(87, 11, 1),
(74, 3, 1),
(13, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `source` mediumtext NOT NULL,
  `type` int(1) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `slug`, `title`, `author`, `brief`, `content`, `news_date`, `archive_date`, `sortorder`, `status`, `image`, `source`, `type`, `viewcount`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(1, 'sanjay-guptas-next-ek-tha-gangster-to-feature-abhishek-bachchan', 'Sanjay Gupta\'s next Ek Tha Gangster to feature Abhishek Bachchan', 'Digital Cinema Nepal', 'We opened the doors to our Santa Monica digs for press from around the world in the days leading up to the League of Legends Season Two World Championship in Los Angeles. Forbes.com\'s Paul Tassi shared his thoughts on the day\'s experiences, saying', '<div class=\"content\">\r\n	<p>\r\n		We opened the doors to our Santa Monica digs for press from around the world in the days leading up to the League of Legends Season Two World Championship in Los Angeles. Forbes.com&#39;s Paul Tassi shared his thoughts on the day&#39;s experiences, saying:</p>\r\n	<p>\r\n		&quot;There&#39;s an almost obsessive drive to keep adding value [for] players, something Riot believes is crucial to their success and, really, is their entire company philosophy.&quot;</p>\r\n	<p>\r\n		Flip over to Forbes.com for the whole story.</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '2015-11-05', '0000-00-00', 1, 0, 'KogKt-565tx-nepal7.jpg', '', 1, 6, '', '', '2015-11-05 12:36:58'),
(2, 'sanjay-guptas-next-ek-tha-gangster', 'Sanjay Gupta\'s next Ek Tha Gangster', 'Digital Cinema Nepal', 'Over the years maverick director Sanjay Gupta has become synonyms for his gritty gangster flicks like the ‘Shootout’ series. Well after his recent release ‘Jazbaa’ that featured Irrfan Khan and Aishwarya Rai Bachchan we hear that Gupta is all set for his next that will feature Abhishek Bachchan.', '<p style=\"text-align: justify;\">\r\n	Over the years maverick director Sanjay Gupta has become synonyms for his gritty gangster flicks like the &lsquo;Shootout&rsquo; series. Well after his recent release &lsquo;Jazbaa&rsquo; that featured Irrfan Khan and Aishwarya Rai Bachchan we hear that Gupta is all set for his next that will feature Abhishek Bachchan. In fact, the film in question is titled &lsquo;Ek Tha Gangster&rsquo; which will feature Abhishek Bachchan in the role of a gangster.</p>\r\n<p style=\"text-align: justify;\">\r\n	The racy thriller is based on S. Hussain Zaidi&rsquo;s 2014 bestseller, Byculla to Bangkok, a sequel to his 2012 novel, Dongri to Dubai. The story of the film will trace how youngsters were recruited and they went on to become local goons like Arun Gawli, Ashwin Naik and Chhota Rajan. However, despite being a gangster flick we hear that the film won&rsquo;t focus on the dreaded gangster, but instead it will follow the lives of the cops and politicians who are also involved.</p>\r\n<p style=\"text-align: justify;\">\r\n	Apart from this, the film will also feature characters inspired by real-life cops Vijay Salaskar and Pradeep Sharma.</p>\r\n', '2015-11-07', '0000-00-00', 2, 1, 'fUVaY-abhishek-sanjay-759.jpg', '', 1, 20, '', '', '2015-11-05 12:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `sub_title` tinytext NOT NULL,
  `image` varchar(50) NOT NULL,
  `header_image` tinytext NOT NULL,
  `banner_image` text NOT NULL,
  `fb_upload` text NOT NULL,
  `detail` mediumtext NOT NULL,
  `content` text NOT NULL,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`id`, `slug`, `title`, `sub_title`, `image`, `header_image`, `banner_image`, `fb_upload`, `detail`, `content`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `type`) VALUES
(1, 'accommodation', 'Accommodation', 'Luxury and Comfort Oriented', '', '', 'a:1:{i:0;s:12:\"cFXF0-3.jpeg\";}', '8tq5D-social.jpg', '', '<!-- Text Block | START -->\r\n<div class=\"section text feature fade\">\r\n	<div class=\"center\">\r\n		<div class=\"col-1\">\r\n			<h3>\r\n				<span>Hotel Sarathi in Dhulikhel unveils an unparalleled selection of accommodations, comprising 23 Deluxe rooms, 50 Premium rooms, 6 Junior Suites, and an expansive Presidential suite, a pioneering gem in the region. Each room offers awe-inspiring vistas of the majestic mountains, promising an enchanting experience that lingers in memory.</span></h3>\r\n			<div>\r\n				Our unwavering dedication to ensuring your comfort is palpable in every aspect of our hotel&#39;s offerings. Modern comforts and standard amenities seamlessly intertwine, setting the stage for an extraordinary stay that harmoniously blends luxury and relaxation. Welcome to Hotel Sarathi, where your every need is met with impeccable style and grace.</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Services | END -->', 'Accommodation', ' Hotel Sarathi, Dhulikhel, luxury accommodations, Deluxe rooms, Premium rooms, Executive rooms, Suites, Presidential suite, mountain views, comfort, relaxation,Enchanting, impeccable style,grace,extraordinary,Presidential, comprising, opulent, expansive', 'Hotel Sarathi in Dhulikhel unveils an unparalleled selection of accommodations, comprising 28 Deluxe rooms, 19 Premium rooms, 22 Executive rooms, 10 opulent Suites, and an expansive Presidential suite, a pioneering gem in the region. Each room offers awe-', 1, 1, '2016-11-16 11:45:55', 1),
(2, 'dining', 'Dining', 'Our Restaurant and Bar', '', '', 'a:4:{i:0;s:14:\"FDBAG-gg3.jpeg\";i:1;s:14:\"aTgWw-gg1.jpeg\";i:2;s:14:\"qh0G9-gg4.jpeg\";i:3;s:14:\"aRKdS-gg2.jpeg\";}', 'kKRyF-social.jpg', '', '', '', '', '', 1, 2, '2016-11-16 12:51:44', 0),
(3, 'hall', 'Hall', 'Event and Conference', '', '', 'a:2:{i:0;s:19:\"nyA9i-rilwb-c4.jpeg\";i:1;s:12:\"hEzuH-1.jpeg\";}', 'RH5Ke-social.jpg', '', 'Hotel Sarathi stands as the ideal destination, offering specialized services for seminars, conferences, workshops, and unforgettable holidays. Moreover, it serves as the premier choice for hosting a myriad of events, including wedding receptions, family gatherings, birthdays, picnics, product launches, and both formal and informal parties and programs.', 'Hall', 'Hotel Sarathi, seminars, conferences, workshops, events, holidays, wedding receptions, family gatherings, birthdays, picnics, product launches, parties,Hall,Entertainment,Formal,Informal,Host', 'Hotel Sarathi stands as the ideal destination, offering specialized services for seminars, conferences, workshops, and unforgettable holidays. Moreover, it serves as the premier choice for hosting a myriad of events, including wedding receptions, family g', 1, 3, '2023-09-20 17:21:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_old`
--

CREATE TABLE `tbl_package_old` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sub`
--

CREATE TABLE `tbl_package_sub` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `be_room_type` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `image` text NOT NULL,
  `header_image` tinytext NOT NULL,
  `fb_upload` text NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `feature` blob NOT NULL,
  `content` text NOT NULL,
  `facility_title` varchar(255) NOT NULL,
  `number_room` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `discount` int(11) NOT NULL,
  `people_qnty` int(11) NOT NULL,
  `onep_price` tinytext NOT NULL,
  `twop_price` tinyint(4) NOT NULL,
  `threep_price` tinyint(4) NOT NULL,
  `extra_bed` varchar(10) NOT NULL,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_package_sub`
--

INSERT INTO `tbl_package_sub` (`id`, `slug`, `title`, `sub_title`, `be_room_type`, `detail`, `image`, `header_image`, `fb_upload`, `image2`, `image3`, `feature`, `content`, `facility_title`, `number_room`, `currency`, `discount`, `people_qnty`, `onep_price`, `twop_price`, `threep_price`, `extra_bed`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `type`) VALUES
(1, 'junior-suite-room', 'Junior Suite Room', '', '', 'Uncover our exclusive collection of 6 exquisite Junior Suite rooms', 'a:5:{i:0;s:12:\"LILm1-1.jpeg\";i:1;s:12:\"NBrqg-3.jpeg\";i:2;s:12:\"QoBOk-4.jpeg\";i:3;s:12:\"1KrXY-5.jpeg\";i:4;s:12:\"uSXhi-2.jpeg\";}', '', 'rfN3I-social.jpg', 'lmUJe-1.jpeg', '', 0x613a323a7b693a313b613a323a7b693a303b613a313a7b693a303b733a373a2246656174757265223b7d693a313b613a31313a7b693a303b733a323a223136223b693a313b733a323a223135223b693a323b733a323a223134223b693a333b733a323a223130223b693a343b733a313a2239223b693a353b733a313a2237223b693a363b733a313a2236223b693a373b733a313a2235223b693a383b733a313a2234223b693a393b733a313a2233223b693a31303b733a313a2232223b7d7d693a31313b613a323a7b693a303b613a313a7b693a303b733a31343a224164646564204c75787572696573223b7d693a313b613a333a7b693a303b733a323a223137223b693a313b733a323a223133223b693a323b733a323a223132223b7d7d7d, '<p style=\"text-align: center;\">\r\n	Step into luxury with our Junior Suite rooms at Hotel Sarathi. These spacious, beautifully designed rooms are<br />\r\n	all about comfort and style, offering a truly lavish stay. Every detail is carefully crafted to give you<br />\r\n	an unforgettable experience, with all the amenities you need to feel pampered.</p>\r\n', '', 6, 'USD', 0, 2, '130', 127, 110, '', '', '', '', 1, 7, '2016-11-16 12:29:13', 1),
(2, 'premium-deluxe-room', 'Premium Deluxe Room', '', '', 'Indulge in luxury at Hotel Sarathi, where we present 50 exquisite Premium rooms designed.', 'a:3:{i:0;s:13:\"d8ioj-22.jpeg\";i:1;s:14:\"4thZ7-222.jpeg\";i:2;s:15:\"jRfTP-2222.jpeg\";}', '', 'wW0e7-social.jpg', 'OqoXg-2.jpeg', '', 0x613a323a7b693a313b613a323a7b693a303b613a313a7b693a303b733a373a2246656174757265223b7d693a313b613a31313a7b693a303b733a323a223135223b693a313b733a323a223134223b693a323b733a323a223130223b693a333b733a313a2239223b693a343b733a313a2238223b693a353b733a313a2237223b693a363b733a313a2236223b693a373b733a313a2235223b693a383b733a313a2234223b693a393b733a313a2233223b693a31303b733a313a2232223b7d7d693a31313b613a323a7b693a303b613a313a7b693a303b733a31343a224164646564204c75787572696573223b7d693a313b613a333a7b693a303b733a323a223137223b693a313b733a323a223133223b693a323b733a323a223132223b7d7d7d, '<p style=\"text-align: center;\">\r\n	Experience the best of comfort at Hotel Sarathi with our Premium rooms. Designed for relaxation, these rooms<br />\r\n	come with top-quality amenities to make your stay extra special. Enjoy a luxurious experience<br />\r\n	with all the details that ensure your time here is both comfortable and relaxing.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 50, 'USD', 0, 2, '60', 70, 0, '', '', '', '', 1, 6, '2016-11-16 12:32:47', 1),
(4, 'haveli-restaurant', 'Haveli Restaurant', '', '', '', '', '', 'ICzTW-social.jpg', 'TpPMl-aa.jpeg', '', 0x613a303a7b7d, '<div>\r\n	<div style=\"text-align: justify;\">\r\n		Indulge your taste buds at Hotel Sarathi&#39;s Haveli Restaurant, where culinary excellence takes center stage. Our diverse menu is a celebration of flavors, showcasing a tantalizing array of Nepali, Indian, Chinese, and Continental dishes. Our unwavering commitment to culinary excellence is evident in our meticulous selection of the finest ingredients, including locally sourced vegetables and herbs, ensuring that each dish is a masterpiece of flavor.</div>\r\n	<div style=\"text-align: justify;\">\r\n		&nbsp;</div>\r\n	<div style=\"text-align: justify;\">\r\n		But that&#39;s not all. We offer the added allure of private dining, customizable to your preferences. Whether you&#39;re seeking an intimate dinner setting or planning a memorable group celebration, we&#39;re dedicated to tailoring the experience to meet your desires. At Hotel Sarathi, we&#39;re not just serving meals; we&#39;re crafting unforgettable dining experiences for you to savor.</div>\r\n</div>\r\n<p>\r\n	<a class=\"button\" href=\"/gallery-list\"><i class=\"icon ion-ios-arrow-right\"></i></a></p>\r\n', '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 1, 3, '2016-11-16 12:57:55', 2),
(5, 'bentil-bar', 'Bentil Bar', '', '', '', '', '', 'nmfo5-social.jpg', 'BNdLh-bb.jpeg', '', 0x613a303a7b7d, '<div style=\"text-align: justify;\">\r\n	Join us at our Bar and embark on a journey of refreshment and relaxation. We extend an invitation to revel in a refreshing assortment of cold beverages, ranging from revitalizing juices to tantalizing mocktails. Moreover, we take pride in offering a meticulously curated selection of perfectly chilled beers, wines, whiskies, rums, and premium beverages.</div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	As you savor your chosen libations, let your gaze wander to the breathtaking views of the natural terrain and majestic mountains that envelop us. This exceptional setting serves as the perfect backdrop for enjoying your drinks alongside a delightful assortment of delectable bites, meticulously crafted to complement your overall experience. At our Bar, we aim to elevate your moments of leisure and indulgence to new heights</div>\r\n<p>\r\n	<a class=\"button\" href=\"/gallery-list\"><i class=\"icon ion-ios-arrow-right\"></i></a></p>\r\n', '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 1, 2, '2016-11-16 13:00:47', 2),
(6, 'deluxe-room', 'Deluxe Room ', '', '', 'At Hotel Sarathi, you\'ll discover our 23 Deluxe rooms, thoughtfully designed for your utmost comfort.', 'a:4:{i:0;s:14:\"ZAVu9-111.jpeg\";i:1;s:16:\"ZYcXz-11111.jpeg\";i:2;s:15:\"M0wps-1111.jpeg\";i:3;s:13:\"C2mLd-11.jpeg\";}', '', 'GLc5L-social.jpg', 'vwN2T-1.jpeg', '', 0x613a323a7b693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a393a7b693a303b733a323a223135223b693a313b733a323a223134223b693a323b733a323a223130223b693a333b733a313a2239223b693a343b733a313a2238223b693a353b733a313a2235223b693a363b733a313a2234223b693a373b733a313a2233223b693a383b733a313a2232223b7d7d693a31313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a333a7b693a303b733a323a223137223b693a313b733a323a223133223b693a323b733a323a223132223b7d7d7d, '<style type=\"text/css\">\r\np{ text-align: justify; }</style>\r\n<p style=\"text-align: center;\">\r\n	Our Deluxe rooms at Hotel Sarathi are designed for your comfort and convenience.<br />\r\n	Each room is fully equipped with all the essentials to make your stay enjoyable,<br />\r\n	providing a perfect balance of comfort and quality for a great experience.</p>\r\n', '', 23, 'USD', 0, 2, '55', 65, 0, '', '', '', '', 1, 5, '2023-09-20 15:25:13', 1),
(8, 'executive-room', 'Executive Room', '', '', 'We proudly present 22 Executive rooms with standard amenities to enhance your stay.', 'a:0:{}', '', '', 'GIWV8-1.jpg', '', 0x613a323a7b693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a393a7b693a303b733a323a223135223b693a313b733a323a223134223b693a323b733a323a223130223b693a333b733a313a2239223b693a343b733a313a2238223b693a353b733a313a2235223b693a363b733a313a2234223b693a373b733a313a2233223b693a383b733a313a2232223b7d7d693a31313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a333a7b693a303b733a323a223137223b693a313b733a323a223133223b693a323b733a323a223132223b7d7d7d, '<div>\r\n	<div>\r\n		Hotel Sarathi boasts 22 Executive rooms, with rates set at 7200 Nepalese Rupees under the EP (European Plan) and 9200 Nepalese Rupees under the BB (Bed and Breakfast) plan. These rooms offer a luxurious experience and include standard amenities to enhance your stay.</div>\r\n	<br />\r\n	<div>\r\n		&nbsp;</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 22, '', 0, 1, '85', 0, 0, '', '', '', '', 0, 4, '2023-09-20 17:04:51', 1),
(9, 'presidential-suite-room', 'Presidential Suite Room', '', '', 'Experience sheer opulence in our expansive Presidential Suite. ', 'a:5:{i:0;s:12:\"SIVMc-1.jpeg\";i:1;s:12:\"3sW0S-3.jpeg\";i:2;s:12:\"VoWuh-2.jpeg\";i:3;s:12:\"9zUyu-5.jpeg\";i:4;s:12:\"UkA5Q-4.jpeg\";}', '', '', 'i5dLu-1.jpeg', '', 0x613a323a7b693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31303a7b693a303b733a323a223135223b693a313b733a323a223130223b693a323b733a313a2239223b693a333b733a313a2238223b693a343b733a313a2237223b693a353b733a313a2236223b693a363b733a313a2235223b693a373b733a313a2234223b693a383b733a313a2233223b693a393b733a313a2232223b7d7d693a31313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a333a7b693a303b733a323a223137223b693a313b733a323a223133223b693a323b733a323a223132223b7d7d7d, '<div>\r\n	Indulge in the ultimate grandeur of Hotel Sarathi, where you can experience sheer opulence in our expansive Presidential Suite. This uniquely exquisite room is yours to enjoy at a rate of 65,000 Nepalese Rupees under the EP (European Plan) and 70,000 Nepalese Rupees under the BB (Bed and Breakfast) plan.</div>\r\n<div>\r\n	Step into a realm of unparalleled grandeur, where every detail is designed to create an extraordinary experience. Our Presidential Suite is a testament to our unwavering commitment to ensuring your stay is nothing short of exceptional. Revel in the sophistication of this exclusive haven, complete with standard amenities that define our dedication to your ultimate comfort and luxury at Hotel Sarathi.</div>\r\n<div>\r\n	&nbsp;</div>\r\n', '', 1, 'USD', 0, 2, '520', 127, 0, '', '', '', '', 0, 8, '2023-09-20 17:12:10', 1),
(10, 'araniko-hall', 'Araniko Hall', '', '', '', '', '', 'jRSGR-social.jpg', 'YSi1H-1.jpeg', '', 0x613a303a7b7d, '<style type=\"text/css\">\r\n.arko_table span{\r\nfont-size: 13px !important;\r\n	}\r\n	.arko_table tr, td{\r\n		text-align: center;\r\n		line-height: 18.5px;\r\n		padding: 6px;\r\n	}</style>\r\n<div style=\"text-align: justify;\">\r\n	Our distinguished Araniko Meeting Hall, adorned with contemporary decor and state-of-the-art technology, sets the stage for success. Equipped with modern amenities such as air conditioning, a professional P.A. system, an overhead projector, a podium, and DJ services available upon request, we ensure that your event is executed flawlessly. Our commitment to connectivity is underscored by the provision of free Wi-Fi, and we further facilitate your presentations with supplementary amenities, including a whiteboard, flip chart, writing pads, and pencils. At Hotel Sarathi, we are dedicated to making your gatherings and events truly memorable and seamlessly organized.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"arko_table\" style=\"width: 502px; height:94px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<span style=\"color:#000000;\">Hall Name</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;Hall Area</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;Length</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;Theatre Style</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;U Shape</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;Round Table</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;Class Room Style</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span style=\"color:#000000;\">Araniko Hall</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;155 msq</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;60*25ft</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;200 Pax</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;50 Pax</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;70&nbsp;Pax</span></td>\r\n			<td>\r\n				<span style=\"color:#000000;\">&nbsp;70 Pax</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p style=\"margin-top:30px; font-weight: 500;\">\r\n	Mountain view garden,capacity up to 500 PAX</p>\r\n', '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 1, 8, '2023-09-20 17:22:16', 3),
(11, 'bhrikuti-hall', 'Bhrikuti Hall', '', '', '', '', '', 'QiUb8-1.jpg', 'OJFYK-bhrikuti.jpg', '', 0x613a303a7b7d, '<style type=\"text/css\">\r\n.table_style p{\r\nmargin-bottom: 0;}</style>\r\n<p style=\"text-align: justify;\">\r\n	Welcome to our Bhrikuti Hall, a sophisticated venue spanning an expansive 55 square meters. With a theater-style seating capacity of up to 75 guests, this versatile space is your canvas for a wide array of functions, programs, and joyous celebrations.</p>\r\n<p style=\"text-align: justify;\">\r\n	Experience the pinnacle of modern convenience with complimentary Wi-Fi connectivity. We also provide essential amenities such as a whiteboard, flip chart, writing pads, and pencils, ensuring your event is executed with precision and flair.</p>\r\n<p style=\"text-align: justify;\">\r\n	Our commitment to excellence is further underscored by the inclusion of air conditioning, a state-of-the-art P.A. system, an overhead projector, a podium, and the option for DJ services, available upon request</p>\r\n<p style=\"text-align: justify;\">\r\n	At Hotel Sarathi, we strive to elevate every facet of your event experience within the Bhrikuti Hall, where sophistication meets convenience, and where your gatherings transform into unforgettable moments.</p>\r\n<div>\r\n	<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"table_style\" style=\"width:584px; height:94px;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"width:79px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						Hall Name</p>\r\n				</td>\r\n				<td style=\"width:72px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						Hall Area</p>\r\n				</td>\r\n				<td style=\"width:66px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						Length</p>\r\n				</td>\r\n				<td style=\"width:96px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						Theatre Style</p>\r\n				</td>\r\n				<td style=\"width:72px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						U shape</p>\r\n				</td>\r\n				<td style=\"width:90px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						Round Table</p>\r\n				</td>\r\n				<td style=\"width:129px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						Class Room Style</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"width:79px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						Bhrikuti Hall</p>\r\n				</td>\r\n				<td style=\"width:72px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						55msq</p>\r\n				</td>\r\n				<td style=\"width:66px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						33*17ft</p>\r\n				</td>\r\n				<td style=\"width:96px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						75px</p>\r\n				</td>\r\n				<td style=\"width:72px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						30px</p>\r\n				</td>\r\n				<td style=\"width:90px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						30px</p>\r\n				</td>\r\n				<td style=\"width:129px;height:16px;\">\r\n					<p style=\"text-align: center;\">\r\n						30px</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<p>\r\n		Mountain view garden,capacity up to 500 PAX</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 1, 9, '2023-09-20 17:25:13', 3),
(12, 'sarathi-events', 'Sarathi Events', '', '', '', '', '', 'S1rYJ-social.jpg', 'GdfX4-rilwb-c4.jpeg', '', 0x613a303a7b7d, '<div font-size:=\"\" style=\"color: rgb(85, 85, 85); font-family: \" text-align:=\"\" work=\"\">\r\n	Discover Sarathi Events, where contemporary sophistication meets seamless functionality. Our venue is equipped with state-of-the-art technology and modern amenities, including air conditioning, a professional P.A. system, an overhead projector, and optional DJ services, ensuring every event is executed flawlessly. Stay connected with complimentary Wi-Fi and enhance your presentations with supplementary amenities like whiteboards and writing essentials. At Hotel Sarathi, we&#39;re dedicated to creating truly memorable experiences, leaving you free to focus on enjoying a perfectly organized gathering.</div>\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"arko_table\" font-size:=\"\" height:=\"\" style=\"color: rgb(85, 85, 85); font-family: \" width:=\"\" work=\"\">\r\n	<tbody>\r\n		<tr style=\"text-align: center; line-height: 18.5px; padding: 6px;\">\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">Hall Name</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;Hall Area</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;Length</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;Theatre Style</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;U Shape</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;Round Table</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;Class Room Style</span></td>\r\n		</tr>\r\n		<tr style=\"text-align: center; line-height: 18.5px; padding: 6px;\">\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">Sarathi Events</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;293 msq</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;90*35ft</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;400 Pax</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;160 Pax</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;160&nbsp;Pax</span></td>\r\n			<td style=\"line-height: 18.5px; padding: 6px;\">\r\n				<span style=\"font-size: 13px !important; color: rgb(0, 0, 0);\">&nbsp;160 Pax</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 1, 7, '2024-05-14 19:10:13', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `group_id` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_polloptions`
--

CREATE TABLE `tbl_polloptions` (
  `id` int(11) NOT NULL,
  `pollid` int(11) NOT NULL COMMENT 'foreign id for tbl_polls.id',
  `pollOption` varchar(100) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_polls`
--

CREATE TABLE `tbl_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_popup`
--

INSERT INTO `tbl_popup` (`id`, `title`, `date1`, `date2`, `image`, `source`, `linktype`, `linksrc`, `position`, `status`, `sortorder`, `type`, `slug`) VALUES
(21, 'asdasdasd', '2024-04-01', '2024-04-16', 'a:1:{i:0;s:21:\"9qD0x-ingredients.jpg\";}', '', '0', '', 1, 0, 1, 1, 'asdasdasd'),
(23, 'New Year Offer', '2024-04-02', '2024-10-31', 'a:1:{i:0;s:15:\"OnBOT-31.1.jpeg\";}', '', '0', '', 3, 0, 2, 1, 'new-year-offer'),
(24, 'SATA', '2024-05-09', '2024-08-30', 'a:1:{i:0;s:14:\"bCsEk-sata.jpg\";}', '', '1', 'https://southasiantravelawards.com/vote/hotel-sarathi-2024', 3, 0, 3, 1, 'sata'),
(25, 'Valenttine Package ', '2026-02-09', '2026-02-14', 'a:1:{i:0;s:58:\"RsjUq-626761958_1473140301480498_1289166025741240471_n.jpg\";}', '', '0', 'contact-us', 1, 1, 4, 1, 'valenttine-package');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_price`
--

CREATE TABLE `tbl_room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `one_person` int(11) NOT NULL,
  `two_person` int(11) NOT NULL,
  `three_person` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `slug`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `added_date`, `sortorder`, `type`) VALUES
(1, 'history', 'History', 'a:2:{i:0;s:19:\"tDYBf-barbarchi.jpg\";i:1;s:20:\"FiDBE-barbarchi2.jpg\";}', '', 0, '<p>\r\n	this is history</p>\r\n', 1, '2016-06-17 13:11:04', 1, 0),
(2, 'the-complex', 'The Complex', 'a:1:{i:0;s:15:\"h02mu-third.jpg\";}', '', 0, '', 1, '2016-06-17 14:20:43', 2, 0),
(3, 'shops', 'Shops', 'a:1:{i:0;s:15:\"k0cp1-log_o.png\";}', '', 0, '', 1, '2016-06-17 14:21:14', 3, 0),
(4, 'restaurant', 'Restaurant', 'a:1:{i:0;s:15:\"UkS2Y-forth.jpg\";}', '', 0, '', 1, '2016-06-17 14:21:37', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `m_status` tinyint(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_slideshow`
--

INSERT INTO `tbl_slideshow` (`id`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `m_status`, `added_date`, `sortorder`, `type`) VALUES
(1, 'Luxurious Stay <strong>vibrant</strong> location', 'nzzOn-4.jpeg', 'page/unrivaled-location', 0, '<p>\r\n	Plan your stay</p>\r\n', 1, 0, '2016-10-27 18:14:07', 3, 1),
(2, 'Welcome to <strong>Hotel Sarathi</strong>', 'ncSij-a.jpeg', 'page/unrivaled-location', 0, '<p>\r\n	Explore Now</p>\r\n', 1, 0, '2016-10-27 18:14:52', 4, 1),
(3, '<strong>Multi Cuisine </strong> Restaurant', 'Dp3p6-2.jpeg', 'page/unrivaled-location', 1, '<div>\r\n	Delightful Dining Experiences</div>\r\n<div>\r\n	&nbsp;</div>\r\n', 1, 0, '2016-11-30 16:54:00', 1, 1),
(4, 'Event <strong>& Conference</strong>', 'BQy6m-1.jpeg', '#', 0, 'Ideal destination', 1, 0, '2024-02-29 17:00:15', 2, 1),
(5, 'Poolside <strong>Paradise</strong>', 'Dwrk7-5.jpeg', '#', 0, 'Refreshing escape', 1, 0, '2024-02-29 17:06:42', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(1, 'Facebook', 'FVx87-fb.png', 'https://www.facebook.com/hotelsarathi', 1, 1, ''),
(2, 'Google Plus', 'pbTf8-gplus.png', 'https://www.google.com/search?gs_ssp=eJzj4tVP1zc0TC42LDY0y8o1YLRSNagwtkxNMrBMTDYxM0tJNDY2tzKoSE41T01KSTEzNDBOsrA0SPLizcgvSc1RKE4sSizJyAQArCQUrw&q=hotel+sarathi&oq=hotel+sarat&aqs=chrome.1.0i355i512j46i175i199i512i664i665j69i57j0i512j46i175i199i512i66', 1, 2, ''),
(3, 'Tiktok', 'hKjh4-jhluj-group-1.png', 'https://www.tiktok.com/@sarathihotel', 0, 3, ''),
(4, 'Youtube', 'WJxFy-ytube.png', 'https://www.youtube.com/@Longtailemedia', 0, 4, ''),
(5, 'Pinterest', 'DUi5n-pintrest.png', '#', 0, 5, ''),
(6, 'Instagram', 'FJPN8-insta.png', 'https://www.instagram.com/hotel_sarathi/', 1, 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(225) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `content` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `via_type` varchar(200) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `parentOf`, `name`, `image`, `linksrc`, `content`, `sortorder`, `status`, `country`, `via_type`, `type`) VALUES
(1, 0, 'Nirey G', '2U3qH-oip.jpg', '', '<div>\r\n	Me and my mate were there with our better halves and our little ones. The place is fantastic and the front office is very welcoming. They upgraded our rooms at no extra cost since we were with 11-month-old and 2-year-old little kids. The rooms are majestic and the view is amazing. We will return for sure and I highly recommend this place. the picture here doesn&#39;t sell the property. You must visit to see it. The staff were top-notch.</div>\r\n<div>\r\n	&nbsp;</div>\r\n', 1, 1, '', 'TripAdvisor', 0),
(2, 0, 'Kshitiz Gautam', 'mkDRm-oip-(1).jpg', '', 'Excellent. The hospitality was just great. We took our own BBQ machine, and everything was arranged for us without even a slight hint of hesitation. Mr. Ram Shrestha was very kind staying with us till late and attending to all our requests.', 2, 1, 'Nepal', 'Google', 2),
(3, 0, 'Lilli knippers', 'AIMJi-4.png', '', '<p class=\"lead\">\r\n	Great experience staying there. The hotel is simply amazing. Quality food with friendly staffs. The rooms were comfortable to stay.The staffs provided 24 hrs service.</p>\r\n', 3, 1, 'Canada', 'Agoda', 0),
(4, 0, 'Dawa S.', 'hdnVW-twitter.jpg', '', '<p class=\"lead\">\r\n	The environment was peaceful. They have great interior designs. The rooms were clean. The service given was also great.Would conder visiting there again for more enjoyment.</p>\r\n', 4, 1, 'Nepal', 'twitter', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theaters`
--

CREATE TABLE `tbl_theaters` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` tinytext NOT NULL,
  `nserver_name` varchar(100) NOT NULL,
  `ndta_service` tinyint(1) NOT NULL DEFAULT 0,
  `cserver_name` varchar(100) NOT NULL,
  `cdta_service` tinyint(1) NOT NULL DEFAULT 0,
  `showing_date` varchar(20) NOT NULL,
  `coming_date` varchar(20) NOT NULL,
  `showing_movies` tinytext NOT NULL,
  `coming_movies` tinytext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_theaters`
--

INSERT INTO `tbl_theaters` (`id`, `slug`, `parentOf`, `title`, `image`, `address`, `nserver_name`, `ndta_service`, `cserver_name`, `cdta_service`, `showing_date`, `coming_date`, `showing_movies`, `coming_movies`, `status`, `meta_keywords`, `meta_description`, `sortorder`, `added_date`) VALUES
(19, 'bina-chalchitra-mandir', 0, 'Bina Chalchitra Mandir', '', 'Lalbandi', '', 0, '', 0, '2015-11-08', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 7, '2015-11-08 18:13:14'),
(20, 'bindabasini-chalchitra-mandir', 0, 'Bindabasini Chalchitra Mandir', '', 'Pokhara', '', 0, '', 0, '2015-11-08', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 8, '2015-11-08 18:14:27'),
(18, 'bhole-chalchitra-mandir', 0, 'Bhole Chalchitra Mandir', '', 'Bhaluwang', '', 0, '', 0, '2015-11-08', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 6, '2015-11-08 18:06:08'),
(37, 'shuvalaxmi-chitralaya-ka', 0, 'Shuvalaxmi Chitralaya (Ka)', '', 'Gaighat', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 25, '2015-11-09 14:27:33'),
(17, 'barahi-movies-kha', 0, 'Barahi Movies (Kha)', '', 'Bhaktapur', '', 0, '', 0, '2015-11-08', '', 'a:1:{i:0;s:2:\"11\";}', '', 1, '', '', 5, '2015-11-08 18:05:32'),
(13, 'asha-chalchitra-mandir', 0, 'Asha Chalchitra Mandir', '', 'Janakpur', 'DCN 2K', 1, 'DCN 4K', 0, '2015-11-08', '2015-11-08', 'a:2:{i:0;s:1:\"1\";i:1;s:2:\"16\";}', '', 1, '', '', 1, '2015-11-08 17:58:59'),
(14, 'barahi-chalchitra-mandir-kha', 0, 'Barahi Chalchitra Mandir (Kha)', '', 'Pokhara', '', 0, '', 0, '2015-11-08', '', 'a:1:{i:0;s:2:\"11\";}', '', 1, '', '', 2, '2015-11-08 18:01:23'),
(15, 'barahi-chalchitra-mandir-ka', 0, 'Barahi Chalchitra Mandir (Ka)', '', 'Pokhara', '', 0, '', 0, '2015-11-08', '', 'a:1:{i:0;s:2:\"10\";}', '', 1, '', '', 3, '2015-11-08 18:03:56'),
(16, 'barahi-movies-ka', 0, 'Barahi Movies (Ka)', '', 'Bhaktapur', '', 0, '', 0, '2015-11-08', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 4, '2015-11-08 18:04:47'),
(21, 'baba-chalachitra-mandir', 0, 'Baba Chalachitra Mandir', '', 'Rani,Biratnagar', '', 0, '', 0, '', '', '', '', 1, '', '', 9, '2015-11-09 14:08:41'),
(22, 'bageshwori-chalachitra-mandir', 0, 'Bageshwori Chalachitra Mandir', '', 'Nepalgunj', '', 0, '', 0, '', '', '', '', 1, '', '', 10, '2015-11-09 14:09:31'),
(23, 'village-cinema', 0, 'Village Cinema', '', 'Urlabari', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 11, '2015-11-09 14:10:33'),
(24, 'view-cinema', 0, 'View Cinema', '', 'Butwal', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"10\";}', '', 1, '', '', 12, '2015-11-09 14:10:50'),
(25, 'uttarshila-chalchitra-mandir', 0, 'Uttarshila Chalchitra Mandir', '', 'Damauli', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 13, '2015-11-09 14:11:11'),
(26, 'trishna-talkies', 0, 'Trishna Talkies', '', 'Dhulabari', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 14, '2015-11-09 14:11:44'),
(27, 'trimurti-chalchitra-mandir', 0, 'Trimurti Chalchitra Mandir', '', 'Birjung', '', 0, '', 0, '', '', '', '', 1, '', '', 15, '2015-11-09 14:12:05'),
(28, 'thanie-movies', 0, 'Thanie Movies', '', 'Vimad', '', 0, '', 0, '', '', '', '', 1, '', '', 16, '2015-11-09 14:12:30'),
(29, 'sworgadwari-chalchitra-mandir', 0, 'Sworgadwari Chalchitra Mandir', '', 'Ghorai', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 17, '2015-11-09 14:12:48'),
(30, 'sukuna-chalchitra-mandir', 0, 'Sukuna Chalchitra mandir', '', 'Biratchowk', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 18, '2015-11-09 14:13:06'),
(31, 'subeksha-chalchitra-mandir', 0, 'Subeksha Chalchitra Mandir', '', 'Sindhuli', '', 0, '', 0, '2015-11-10', '', 'a:2:{i:0;s:2:\"12\";i:1;s:2:\"11\";}', '', 1, '', '', 19, '2015-11-09 14:14:05'),
(32, 'siddhibinayak-chalchitra-mandir', 0, 'Siddhibinayak Chalchitra Mandir', '', 'Gauriganj', '', 0, '', 0, '2015-11-08', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 20, '2015-11-09 14:15:07'),
(33, 'siddhartha-chalchitra-mandir-a', 0, 'Siddhartha Chalchitra Mandir (A)', '', 'Kathmandu', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"11\";}', '', 1, '', '', 21, '2015-11-09 14:20:30'),
(34, 'siddhartha-chalchitra-mandir-b', 0, 'Siddhartha Chalchitra Mandir (B)', '', 'Bhairawa', '', 0, '', 0, '', '', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"10\";}', '', 1, '', '', 22, '2015-11-09 14:22:40'),
(35, 'siddeshwor-chalchitra-mandir', 0, 'Siddeshwor Chalchitra Mandir', '', 'Kusma', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 23, '2015-11-09 14:23:16'),
(36, 'shuvalaxmi-chitralaya-kha', 0, 'Shuvalaxmi Chitralaya (Kha)', '', 'Gaighat', '', 0, '', 0, '2015-11-01', '', 'a:1:{i:0;s:2:\"10\";}', '', 1, '', '', 24, '2015-11-09 14:24:24'),
(38, 'shubhakamana-high-vision-hall', 0, 'Shubhakamana High Vision Hall', '', 'Banepa', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"11\";}', '', 1, '', '', 26, '2015-11-09 14:27:51'),
(39, 'shree-satya-sai-chalachitra-mandir', 0, 'Shree Satya Sai Chalachitra Mandir', '', 'Lamahi', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 27, '2015-11-09 14:28:22'),
(40, 'shree-ram-pictures', 0, 'Shree Ram Pictures', '', 'Birjung', '', 0, '', 0, '', '', '', '', 1, '', '', 28, '2015-11-09 14:28:35'),
(41, 'shree-krishna-chalchitra-mandir-abukhaireni', 0, 'Shree Krishna Chalchitra Mandir (AbuKhaireni)', '', 'AbuKhaireni', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"11\";}', '', 1, '', '', 29, '2015-11-09 14:28:51'),
(42, 'shree-krishna-chalchitra-mandir-pokhara', 0, 'Shree Krishna Chalchitra Mandir (Pokhara)', '', 'Pokhara', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"16\";}', '', 1, '', '', 30, '2015-11-09 14:29:19'),
(43, 'shree-ganesh-chalchitra-mandir', 0, 'Shree Ganesh Chalchitra Mandir', '', 'Ghorai', '', 0, '', 0, '', '', '', '', 1, '', '', 31, '2015-11-09 14:29:43'),
(44, 'shiva-shakti-chalchitra-mandir', 0, 'Shiva Shakti Chalchitra Mandir', '', 'Tamghas, Gulmi', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 32, '2015-11-09 14:29:59'),
(45, 'shiva-sankar-chalchitra-mandir', 0, 'Shiva Sankar Chalchitra Mandir', '', 'Rajbiraj', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"19\";}', '', 1, '', '', 33, '2015-11-09 14:30:12'),
(46, 'shiva-parbati-c-mandir', 0, 'Shiva Parbati C.Mandir', '', 'Jitpur', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"17\";}', '', 1, '', '', 34, '2015-11-09 14:30:25'),
(47, 'shanta-chalchitra-mandir', 0, 'Shanta Chalchitra Mandir', '', 'Gaur', '', 0, '', 0, '', '', '', '', 1, '', '', 35, '2015-11-09 14:30:42'),
(48, 'santosh-chalchitra-mandir', 0, 'Santosh Chalchitra Mandir', '', 'Palpa', '', 0, '', 0, '', '', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"12\";}', '', 1, '', '', 36, '2015-11-09 14:30:55'),
(49, 'ruchi-chalchitra-mandir', 0, 'Ruchi Chalchitra Mandir', '', 'Beni', '', 0, '', 0, '', '', 'a:2:{i:0;s:2:\"15\";i:1;s:2:\"11\";}', '', 1, '', '', 37, '2015-11-09 14:31:09'),
(50, 'ramjanaki-pictures-palace-pvt-ltd', 0, 'Ramjanaki Pictures Palace Pvt.Ltd', '', 'Janakpur', '', 0, '', 0, '', '', '', '', 1, '', '', 38, '2015-11-09 14:31:24'),
(51, 'qfx-kumari-screen-2', 0, 'QFX Kumari Screen 2', '', 'Kathmandu', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"13\";}', '', 1, '', '', 39, '2015-11-09 14:31:38'),
(52, 'qfx-kumari-screen-1', 0, 'QFX Kumari Screen 1', '', 'Kathmandu', '', 0, '', 0, '', '', 'a:1:{i:0;s:1:\"4\";}', '', 1, '', '', 40, '2015-11-09 14:31:56'),
(53, 'qfx-jalma-cinema-2', 0, 'QFX Jalma Cinema 2', '', 'Narayanghat', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 41, '2015-11-09 14:32:10'),
(54, 'qfx-jalma-cinema-1', 0, 'QFX Jalma Cinema 1', '', 'Narayanghat', '', 0, '', 0, '', '', 'a:2:{i:0;s:2:\"12\";i:1;s:2:\"11\";}', '', 1, '', '', 42, '2015-11-09 14:32:26'),
(55, 'qfx-jai-nepal', 0, 'QFX Jai Nepal', '', 'Kathmandu', '', 0, '', 0, '', '', 'a:2:{i:0;s:2:\"16\";i:1;s:1:\"4\";}', '', 1, '', '', 43, '2015-11-09 14:32:38'),
(56, 'qfx-central-screen-3', 0, 'QFX Central Screen 3', '', 'Kathmandu', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"16\";}', '', 1, '', '', 44, '2015-11-09 14:32:51'),
(57, 'qfx-central-screen-2', 0, 'QFX Central Screen 2', '', 'Kathmandu', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"16\";}', '', 1, '', '', 45, '2015-11-09 14:33:03'),
(58, 'qfx-central-screen-1', 0, 'QFX Central Screen 1', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 46, '2015-11-09 14:33:16'),
(63, 'q-s-cinema-audi-1', 0, 'Q S Cinema Audi 1', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 48, '2015-11-09 15:19:30'),
(62, 'q-s-cinema-audi-2', 0, 'Q S Cinema Audi 2', '', 'Kathmandu', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"11\";}', '', 1, '', '', 47, '2015-11-09 15:18:58'),
(64, 'pushpanjali-chalchitra-mandir', 0, 'Pushpanjali Chalchitra Mandir', '', 'Kathmandu', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"11\";}', '', 1, '', '', 49, '2015-11-09 15:20:20'),
(65, 'purnima-chalchitra-ghar', 0, 'Purnima Chalchitra Ghar', '', 'Pokhara', '', 0, '', 0, '', '', '', '', 1, '', '', 50, '2015-11-09 15:20:37'),
(66, 'prithivi-chalchitra-mandir', 0, 'Prithivi Chalchitra Mandir', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 51, '2015-11-09 15:20:49'),
(67, 'pooja-chalchitra-mandir', 0, 'Pooja Chalchitra Mandir', '', 'Baglung', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 52, '2015-11-09 15:21:04'),
(68, 'pokhara-cineplex-screen-2', 0, 'Pokhara Cineplex Screen 2', '', 'Pokhara', '', 0, '', 0, '', '', '', '', 1, '', '', 53, '2015-11-09 15:21:16'),
(69, 'pokhara-cineplex-screen-1', 0, 'Pokhara Cineplex Screen 1', '', 'Pokhara', '', 0, '', 0, '', '', '', '', 1, '', '', 54, '2015-11-09 15:21:29'),
(70, 'pashupati-chalchitra-mandir', 0, 'Pashupati Chalchitra Mandir', '', 'Lahan', '', 0, '', 0, '', '', '', '', 1, '', '', 55, '2015-11-09 15:21:42'),
(71, 'om-chalchitra-mandir', 0, 'Om Chalchitra Mandir', '', 'Hetauda', '', 0, '', 0, '', '', 'a:3:{i:0;s:2:\"15\";i:1;s:2:\"12\";i:2;s:2:\"11\";}', '', 1, '', '', 56, '2015-11-09 15:21:55'),
(72, 'o-max-c-mandir', 0, 'O-Max C.Mandir', '', 'Hetauda', '', 0, '', 0, '', '', 'a:2:{i:0;s:2:\"12\";i:1;s:2:\"11\";}', '', 1, '', '', 57, '2015-11-09 15:22:07'),
(73, 'ns-cinemas-screen-2', 0, 'NS Cinemas Screen 2', '', 'Hetauda', '', 0, '', 0, '', '', 'a:1:{i:0;s:1:\"4\";}', '', 1, '', '', 58, '2015-11-09 15:22:21'),
(74, 'ns-cinemas-screen-1', 0, 'NS Cinemas Screen 1', '', 'Hetauda', '', 0, '', 0, '', '', 'a:2:{i:0;s:2:\"16\";i:1;s:1:\"3\";}', '', 1, '', '', 59, '2015-11-09 15:22:33'),
(75, 'nilam-chalchitra-mandir', 0, 'Nilam Chalchitra Mandir', '', 'Janakpur', '', 0, '', 0, '', '', '', '', 1, '', '', 60, '2015-11-09 15:22:48'),
(76, 'new-shiva-cinema', 0, 'New Shiva Cinema', '', 'Gauradha', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"15\";}', '', 1, '', '', 61, '2015-11-09 15:23:02'),
(77, 'myagdi-chalchitra-mandir', 0, 'Myagdi Chalchitra Mandir', '', 'Beni', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 62, '2015-11-09 15:23:38'),
(78, 'mohini-chalchitra-mandir', 0, 'Mohini Chalchitra Mandir', '', 'Bardaghat', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 63, '2015-11-09 15:23:55'),
(79, 'mandip-milan-chalchitra-mandir', 0, 'Mandip Milan Chalchitra Mandir', '', 'Gagangaudha', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 64, '2015-11-09 15:24:08'),
(80, 'manakamana-chalchitra-mandir', 0, 'Manakamana Chalchitra Mandir', '', 'Damauli', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"14\";}', '', 1, '', '', 65, '2015-11-09 15:24:19'),
(81, 'mai-manakamana-chalchitra-mandir', 0, 'Mai Manakamana Chalchitra Mandir', '', 'AbuKhaireni', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 66, '2015-11-09 15:24:32'),
(82, 'mahalaxmi-chalchitra-mandir', 0, 'Mahalaxmi Chalchitra Mandir', '', 'Narayanpur', '', 0, '', 0, '', '', 'a:1:{i:0;s:2:\"12\";}', '', 1, '', '', 67, '2015-11-09 15:24:48'),
(83, 'luv-kush-chalchitra-mandir', 0, 'Luv-Kush Chalchitra Mandir', '', 'Mahendra Nagar', '', 0, '', 0, '', '', '', '', 1, '', '', 68, '2015-11-09 15:25:02'),
(84, 'laxmi-chalchitra-mandir', 0, 'Laxmi Chalchitra Mandir', '', 'Nepalgunj', '', 0, '', 0, '', '', '', '', 1, '', '', 69, '2015-11-09 15:25:18'),
(85, 'krishna-talkies', 0, 'Krishna Talkies', '', 'Britamod', '', 0, '', 0, '', '', '', '', 1, '', '', 70, '2015-11-09 15:25:32'),
(86, 'kiran-chalchitra-mandir', 0, 'Kiran Chalchitra Mandir', '', 'Jhumka', '', 0, '', 0, '', '', '', '', 1, '', '', 71, '2015-11-09 15:25:43'),
(87, 'kashi-cineplex', 0, 'Kashi Cineplex', '', 'Bhairawa ', '', 0, '', 0, '', '', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"11\";}', '', 1, '', '', 72, '2015-11-09 15:25:55'),
(88, 'kalika-chalchitra-mandir-palmanpur', 0, 'Kalika Chalchitra Mandir (Palmanpur)', '', 'Palmanpur', '', 0, '', 0, '', '', '', '', 1, '', '', 73, '2015-11-09 15:26:13'),
(89, 'kalika-chalchitra-mandir-butwal', 0, 'Kalika Chalchitra Mandir (Butwal)', '', 'Butwal', '', 0, '', 0, '', '', '', '', 1, '', '', 74, '2015-11-09 15:26:40'),
(90, 'kaligandaki-chalchitra-mandir', 0, 'Kaligandaki Chalchitra Mandir', '', 'Baglung', '', 0, '', 0, '', '', '', '', 1, '', '', 75, '2015-11-09 15:26:52'),
(91, 'kalanki-c-mandir-ka', 0, 'Kalanki C.Mandir (Ka)', '', '	Kalanki', '', 0, '', 0, '', '', '', '', 1, '', '', 76, '2015-11-09 15:27:05'),
(92, 'joshi-talkies', 0, 'Joshi Talkies', '', 'Dhangadi', '', 0, '', 0, '', '', '', '', 1, '', '', 77, '2015-11-09 15:27:17'),
(93, 'jeevandeep-chalchitra-mandir', 0, 'Jeevandeep Chalchitra Mandir', '', 'Barathawa', '', 0, '', 0, '', '', '', '', 1, '', '', 78, '2015-11-09 15:27:32'),
(94, 'jawahar-talkies', 0, 'Jawahar Talkies', '', 'Bhadrapur', '', 0, '', 0, '', '', '', '', 1, '', '', 79, '2015-11-09 15:27:45'),
(95, 'janaki-chalchitra-mandir', 0, 'Janaki Chalchitra Mandir', '', 'Kalaiya', '', 0, '', 0, '', '', '', '', 1, '', '', 80, '2015-11-09 15:27:59'),
(96, 'jana-jyoti-chalchitra-mandir', 0, 'Jana Jyoti Chalchitra Mandir', '', 'Parsa', '', 0, '', 0, '', '', '', '', 1, '', '', 81, '2015-11-09 15:28:13'),
(97, 'itahari-cinema-screen-2', 0, 'Itahari Cinema(Screen 2)', '', 'Itahari', '', 0, '', 0, '', '', '', '', 1, '', '', 82, '2015-11-09 15:28:25'),
(98, 'itahari-cinema-screen-1', 0, 'Itahari Cinema(Screen 1)', '', 'Itahari', '', 0, '', 0, '', '', '', '', 1, '', '', 83, '2015-11-09 15:28:38'),
(99, 'hiraratna-chalachitra-mandir', 0, 'Hiraratna Chalachitra Mandir', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 84, '2015-11-09 15:28:50'),
(100, 'guna-chalchitra-mandir-ka', 0, 'Guna Chalchitra Mandir (Ka)', '', 'Lalitpur', '', 0, '', 0, '', '', '', '', 1, '', '', 85, '2015-11-09 15:29:03'),
(101, 'guna-chalchitra-mandir-cha', 0, 'Guna Chalchitra Mandir (Cha)', '', 'Lalitpur', '', 0, '', 0, '', '', '', '', 1, '', '', 86, '2015-11-09 15:29:17'),
(102, 'gorkhakali-chalchitra-mandir', 0, 'Gorkhakali Chalchitra Mandir', '', 'Gorkha', '', 0, '', 0, '', '', '', '', 1, '', '', 87, '2015-11-09 15:29:30'),
(103, 'gopi-cinema', 0, 'Gopi Cinema', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 88, '2015-11-09 15:30:00'),
(104, 'girija-chalchitra-mandir', 0, 'Girija Chalchitra Mandir', '', 'Janakpur', '', 0, '', 0, '', '', '', '', 1, '', '', 89, '2015-11-09 15:30:10'),
(105, 'ganga-chalchitra-mandir-kha', 0, 'Ganga Chalchitra Mandir (Kha)', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 90, '2015-11-09 15:30:23'),
(106, 'ganga-chalchitra-mandir-ka', 0, 'Ganga Chalchitra Mandir (Ka)', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 91, '2015-11-09 15:30:35'),
(107, 'ganesh-chalchitra-mandir', 0, 'Ganesh Chalchitra Mandir', '', 'Nijgadh', '', 0, '', 0, '', '', '', '', 1, '', '', 92, '2015-11-09 15:30:51'),
(108, 'fcube-cinema-3', 0, 'Fcube Cinema 3', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 93, '2015-11-09 15:31:26'),
(109, 'fcube-cinema-2', 0, 'Fcube Cinema 2', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 94, '2015-11-09 15:31:39'),
(110, 'fcube-cinema-1', 0, 'Fcube Cinema 1', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 95, '2015-11-09 15:31:52'),
(111, 'damak-chalchitra-mandir', 0, 'Damak Chalchitra Mandir', '', 'Damak', '', 0, '', 0, '', '', '', '', 1, '', '', 96, '2015-11-09 15:32:12'),
(112, 'city-max-cinema-screen-2', 0, 'City Max Cinema Screen 2', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 97, '2015-11-09 15:32:28'),
(113, 'city-max-cinema', 0, 'City Max Cinema', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 98, '2015-11-09 15:32:41'),
(114, 'cinestar-big-movies-3', 0, 'Cinestar Big Movies 3', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 99, '2015-11-09 15:32:53'),
(115, 'cinestar-big-movies-2', 0, 'Cinestar Big Movies 2', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 100, '2015-11-09 15:33:10'),
(116, 'cinestar-big-movies-1', 0, 'Cinestar Big Movies 1', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 101, '2015-11-09 15:33:21'),
(117, 'cine-de-chef-audi-2', 0, 'Cine De Chef Audi 2', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 102, '2015-11-09 15:33:36'),
(118, 'cine-de-chef-audi-1', 0, 'Cine De Chef Audi 1', '', 'Kathmandu	', '', 0, '', 0, '', '', '', '', 1, '', '', 103, '2015-11-09 15:33:51'),
(119, 'chandra-talkies', 0, 'Chandra Talkies', '', 'Katari', '', 0, '', 0, '', '', '', '', 1, '', '', 104, '2015-11-09 15:34:02'),
(120, 'c-max-cinema', 0, 'C-Max Cinema', '', 'Narayanghat', '', 0, '', 0, '', '', '', '', 1, '', '', 105, '2015-11-09 15:34:19'),
(121, 'buddha-highvision-hall', 0, 'Buddha Highvision Hall', '', 'Bhurtiwang', '', 0, '', 0, '', '', '', '', 1, '', '', 106, '2015-11-09 15:34:33'),
(122, 'buddha-chalchitra-mandir', 0, 'Buddha Chalchitra Mandir', '', 'Mirchaiya', '', 0, '', 0, '', '', '', '', 1, '', '', 107, '2015-11-09 15:34:47'),
(123, 'bro-sis-digital-cinema', 0, 'Bro-Sis Digital Cinema', '', 'Chandranigapur', '', 0, '', 0, '', '', '', '', 1, '', '', 108, '2015-11-09 15:35:01'),
(124, 'bishwojyoti-cinema-bhawan', 0, 'Bishwojyoti Cinema Bhawan', '', 'Kathmandu', '', 0, '', 0, '', '', '', '', 1, '', '', 109, '2015-11-09 15:35:14'),
(125, 'bishnu-chalchitra-mandir', 0, 'Bishnu Chalchitra Mandir', '', 'Tulsipur', '', 0, '', 0, '', '', '', '', 1, '', '', 110, '2015-11-09 15:35:26'),
(126, 'bhumi-chalchitra-mandir', 0, 'Bhumi Chalchitra Mandir', '', 'Bhurigaun', '', 0, '', 0, '', '', '', '', 1, '', '', 111, '2015-11-09 15:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `optional_email` mediumtext NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(65) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) NOT NULL,
  `facebook_uid` varchar(255) NOT NULL,
  `facebook_accesstoken` varchar(255) NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`) VALUES
(1, 'Hotel Sarathi', '', '', '', 'info@sarathihotel.com', 'info@sarathihotel.com', 'admin', '0b6152dc39bc06cd6b525c99353ce6c3', 'mZVVg7mkWjKSGdFcUpw62zFIj', '', 1, 'ckdisEDkvt', '', '', '2015-04-08 17:45:04', 1, 1, '2014-03-26'),
(2, 'Super admin', '', '', '', 'support@longtail.info', 'support@longtail.info', 'superadmin', '4ef961d430016feab913571a25818e97', '5BnuwlwbgTcJNtbymC8Kmq23e', '', 1, '', '', '', '2023-11-09 10:20:54', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_info`
--

CREATE TABLE `tbl_user_info` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `zodic_sign` varchar(100) NOT NULL,
  `current_city` tinytext NOT NULL,
  `education` tinytext NOT NULL,
  `home_town` tinytext NOT NULL,
  `phone_res` varchar(30) NOT NULL,
  `phone_office` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `mobile_no2` varchar(30) NOT NULL,
  `children_name` tinytext NOT NULL,
  `pet_name` tinytext NOT NULL,
  `nick_name` varchar(255) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `maritial_status` enum('married','single','divorced') NOT NULL,
  `spouse_name` varchar(100) NOT NULL,
  `publish_spoush_name` tinyint(1) NOT NULL,
  `publish_children_name` varchar(255) NOT NULL,
  `career_start_date` date NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `facebook_page` tinytext NOT NULL,
  `twitter_link` tinytext NOT NULL,
  `google_plus` tinytext NOT NULL,
  `linkedin` tinytext NOT NULL,
  `skpye_address` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `other_profession` tinytext NOT NULL,
  `question_set` int(11) NOT NULL,
  `answer_status` tinyint(1) NOT NULL COMMENT '0=>Not finished,1=>finised,2=>ongoing review,3=>complete review,',
  `notification` varchar(50) NOT NULL COMMENT 'notification for answer status complete.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `title` mediumtext NOT NULL,
  `thumb_image` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `class` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitorcounter`
--

CREATE TABLE `tbl_visitorcounter` (
  `id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `action_id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_visitorcounter`
--

INSERT INTO `tbl_visitorcounter` (`id`, `action`, `action_id`, `ip_address`, `added_date`) VALUES
(1, 'news', 1, '192.168.2.121', '2015-11-05'),
(2, 'news', 2, '192.168.2.130', '2015-11-08'),
(3, 'news', 2, '192.168.2.121', '2015-11-08'),
(4, 'news', 2, '192.168.2.2', '2015-11-09'),
(5, 'news', 2, '192.168.2.111', '2015-11-09'),
(6, 'news', 2, '192.168.2.141', '2015-11-09'),
(7, 'news', 2, '192.168.2.114', '2015-11-09'),
(8, 'news', 2, '192.168.2.80', '2015-11-10'),
(9, 'news', 1, '192.168.2.141', '2015-11-10'),
(10, 'news', 2, '192.168.2.141', '2015-11-10'),
(11, 'news', 2, '192.168.2.130', '2015-11-10'),
(12, 'news', 2, '192.168.2.121', '2015-11-10'),
(13, 'news', 2, '192.168.2.14', '2015-11-16'),
(14, 'news', 2, '192.168.2.121', '2015-11-16'),
(15, 'news', 1, '192.168.2.121', '2015-11-16'),
(16, 'news', 1, '192.168.2.141', '2015-11-16'),
(17, 'news', 2, '192.168.2.17', '2015-11-17'),
(18, 'news', 2, '192.168.2.80', '2015-11-17'),
(19, 'news', 2, '192.168.2.113', '2015-11-17'),
(20, 'news', 2, '192.168.2.121', '2015-11-17'),
(21, 'news', 1, '192.168.2.80', '2015-11-17'),
(22, 'news', 2, '192.168.2.14', '2015-11-17'),
(23, 'news', 2, '192.168.2.130', '2015-11-19'),
(24, 'news', 2, '192.168.2.19', '2015-11-20'),
(25, 'news', 1, '192.168.2.130', '2015-11-22'),
(26, 'news', 2, '192.168.2.130', '2015-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vt_360_images`
--

CREATE TABLE `tbl_vt_360_images` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `hfov` int(5) NOT NULL,
  `pitch` int(11) NOT NULL,
  `yaw` int(11) NOT NULL,
  `type` text NOT NULL,
  `panorama` longblob NOT NULL,
  `status` int(1) NOT NULL,
  `sortorder` int(5) NOT NULL,
  `added_date` datetime(6) NOT NULL,
  `virtual_tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vt_360_images`
--

INSERT INTO `tbl_vt_360_images` (`id`, `title`, `hfov`, `pitch`, `yaw`, `type`, `panorama`, `status`, `sortorder`, `added_date`, `virtual_tour_id`) VALUES
(1, 'Guest Room', 110, -3, 117, '', 0x53694852352d494d475f32303234313232325f3134313631325f30305f3039312e6a7067, 1, 1, '2025-01-23 15:19:43.000000', 19),
(2, 'IMG', 100, 0, 0, '', 0x4d3649516d2d314d422e6a7067, 1, 1, '2025-01-29 17:20:59.000000', 1),
(3, 'IMG 2', 100, 0, 0, '', 0x725573505a2d494d475f32303234303930395f3137323430325f30305f3031322d456469745f312e6a7067, 0, 2, '2025-01-29 17:28:02.000000', 1),
(6, '2', 100, 0, 0, '', 0x74393930672d494d475f32303234303130345f3131313635325f30305f6d65726765642e6a7067, 1, 3, '2025-01-30 12:36:44.000000', 1),
(9, 'Haveli Restaurant 2', 100, 0, 0, '', 0x7551744d762d486176656c692052657374617572616e7420322e6a7067, 1, 19, '2025-01-31 13:27:30.000000', 1),
(10, 'Sarathi Events (Entrance)', 100, 0, 0, '', 0x586f6970332d53617261746869204576656e74732028456e7472616e6365292e6a7067, 1, 6, '2025-01-31 13:28:27.000000', 1),
(11, 'Sarathi Events', 100, 0, 0, '', 0x6e42457a742d53617261746869204576656e74732e6a7067, 1, 4, '2025-01-31 13:29:09.000000', 1),
(12, 'Sarathi Events 2', 100, 0, 0, '', 0x3868714a6f2d53617261746869204576656e747320322e6a7067, 1, 5, '2025-01-31 13:29:35.000000', 1),
(17, 'Entrance', 200, 0, 0, '', 0x33777741682d456e7472616e63652e6a7067, 1, 33, '2025-01-31 13:59:33.000000', 1),
(18, 'Lobby Area', 100, 0, -50, '', 0x49694e6c7a2d4c6f62627920417265612e6a7067, 1, 7, '2025-01-31 14:01:15.000000', 1),
(23, 'Swimming Pool (Terrace View)', 100, 0, 0, '', 0x44766477492d5377696d6d696e6720506f6f6c2028546572726163652056696577292e6a7067, 1, 8, '2025-01-31 14:55:43.000000', 1),
(24, 'Exterior 2', 100, 0, 0, '', 0x51496744692d4578746572696f7220322e6a7067, 1, 25, '2025-01-31 15:31:36.000000', 1),
(25, 'Exterior 3', 100, 0, 0, '', 0x75744352742d4578746572696f7220332e6a7067, 1, 32, '2025-01-31 15:50:52.000000', 1),
(28, 'Haveli Restaurant (Entrance 2)', 100, 0, 0, '', 0x5732674a7a2d486176656c692052657374617572616e742028456e7472616e63652032292e6a7067, 1, 22, '2025-01-31 16:09:31.000000', 1),
(29, 'Exterior 4', 100, 0, 0, '', 0x3356355a4e2d4578746572696f7220342e6a7067, 1, 27, '2025-01-31 16:23:40.000000', 1),
(31, 'Exterior 5', 100, 0, 0, '', 0x69573468382d4578746572696f7220352e6a7067, 1, 31, '2025-01-31 16:49:47.000000', 1),
(32, 'Outdoor Restaurant', 100, 0, 0, '', 0x53354e61472d4f7574646f6f722052657374617572616e742e6a7067, 1, 9, '2025-01-31 16:55:54.000000', 1),
(33, 'Swimming Pool', 100, 0, 0, '', 0x5931386a572d5377696d6d696e6720506f6f6c2e6a7067, 1, 10, '2025-01-31 17:01:12.000000', 1),
(34, 'Playground', 100, 0, 0, '', 0x724655534d2d506c61792047726f756e642e6a7067, 1, 11, '2025-01-31 17:12:21.000000', 1),
(36, 'Haveli Restaurant ', 200, 0, 0, '', 0x327069484b2d486176656c692052657374617572616e742e6a7067, 1, 24, '2025-01-31 17:19:45.000000', 1),
(37, 'Exterior 6', 100, 0, 0, '', 0x56566f77432d4578746572696f7220362e6a7067, 1, 29, '2025-02-03 16:47:29.000000', 1),
(38, 'Junior Suite Room ', 100, 0, 0, '', 0x674573715a2d4a756e696f7220537569746520526f6f6d2e6a7067, 1, 14, '2025-02-03 17:01:06.000000', 1),
(39, 'Junior Suite Room 2', 100, 0, 0, '', 0x6b766e65662d4a756e696f7220537569746520526f6f6d20322e6a7067, 1, 12, '2025-02-03 17:01:33.000000', 1),
(41, 'Junior Suite Room (Balcony)', 100, 0, 0, '', 0x68494b61792d4a756e696f7220537569746520526f6f6d202842616c636f6e79292e6a7067, 1, 13, '2025-02-03 17:02:20.000000', 1),
(42, 'Junior Suite Bathroom', 100, 0, 0, '', 0x4e6d6162762d4a756e696f7220537569746520526f6f6d202842617468726f6f6d292e6a7067, 1, 15, '2025-02-03 17:45:33.000000', 1),
(43, 'Mountain Wing', 100, 0, 0, '', 0x733645636f2d4d6f756e7461696e2057696e672e6a7067, 1, 16, '2025-02-03 17:54:13.000000', 1),
(44, 'Deluxe Room', 100, 0, 0, '', 0x3375676d752d44656c75786520526f6f6d2e6a7067, 1, 20, '2025-02-03 17:56:42.000000', 1),
(45, 'Deluxe Room (Entrance)', 200, 0, 0, '', 0x4c4972554f2d44656c75786520526f6f6d2028456e7472616e6365292e6a7067, 1, 17, '2025-02-03 17:57:02.000000', 1),
(46, 'Mountain Wing Entrance', 100, 0, 0, '', 0x335266567a2d4d6f756e7461696e2057696e672e6a7067, 1, 18, '2025-02-04 12:05:56.000000', 1),
(47, 'Mountain Wing Corridor', 200, 0, 170, '', 0x31487042342d4d6f756e7461696e2057696e6720436f727269646f722e6a7067, 1, 23, '2025-02-04 12:13:09.000000', 1),
(49, 'Corridor 1', 500, 0, 0, '', 0x44415335752d436f727269646f7220312e6a7067, 1, 21, '2025-02-04 16:02:50.000000', 1),
(50, 'Corridor 2', 300, 0, 0, '', 0x43796259462d436f727269646f7220322e6a7067, 1, 26, '2025-02-04 16:29:01.000000', 1),
(51, 'Haveli Restaurant (Entrance)', 200, 0, 0, '', 0x523439377a2d486176656c692052657374617572616e742028456e7472616e6365292e6a7067, 1, 30, '2025-02-04 16:48:05.000000', 1),
(52, 'Haveli Restaurant (Balcony)', 200, 0, 0, '', 0x33694d38712d486176656c692052657374617572616e74202842616c636f6e79292e6a7067, 1, 28, '2025-02-04 16:56:49.000000', 1),
(54, 'Main Entrance', 200, 10, -90, '', 0x734b3735782d4d61696e20456e7472616e63652e6a7067, 1, 34, '2025-02-04 17:51:23.000000', 1),
(56, 'House', 100, 34, 180, '', 0x6d324e37782d3239373135363031372e6a7067, 1, 36, '2025-02-06 11:48:47.000000', 7),
(59, 'second image', 100, 0, 0, '', 0x5456767a382d494d475f32303234303931315f3039313734325f30305f3032382d456469742e4a5047, 1, 35, '2025-03-07 12:09:13.000000', 7),
(60, 'img 1', 100, 0, 0, '', 0x666c3064692d6a696d62755f7061726b696e672e6a7067, 1, 38, '2025-03-07 12:14:05.000000', 8),
(61, 'img 2', 100, 1, 1, '', 0x534e7141432d494d475f32303234303931315f3039313734325f30305f3032382d456469742e4a5047, 1, 37, '2025-03-07 12:18:53.000000', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vt_hotspots`
--

CREATE TABLE `tbl_vt_hotspots` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `hotspot_pitch` float NOT NULL,
  `hotspot_yaw` float NOT NULL,
  `hotspot_type` varchar(50) NOT NULL,
  `hotspot_text` text NOT NULL,
  `scene_id` varchar(50) NOT NULL,
  `target_yaw` float NOT NULL,
  `target_pitch` float NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `three60_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vt_hotspots`
--

INSERT INTO `tbl_vt_hotspots` (`id`, `title`, `hotspot_pitch`, `hotspot_yaw`, `hotspot_type`, `hotspot_text`, `scene_id`, `target_yaw`, `target_pitch`, `status`, `sortorder`, `added_date`, `three60_id`) VALUES
(1, 'Hotspot-1', -2.1, 132.9, '', 'Spring House or Dairy', '26', -23, 2, 1, 1, '2025-01-23 15:23:23', 26),
(2, 'asdf', 0, 0, 'scene', '', '3', 0, 0, 1, 2, '2025-01-29 17:28:21', 2),
(9, 'Entrance', 10, 0, 'scene', '', '13', 0, 0, 1, 3, '2025-01-31 13:46:23', 13),
(11, '1', -10, -80, 'scene', '', '17', 0, 0, 1, 4, '2025-01-31 14:00:12', 16),
(12, 'Entrance-Lobby Area', 0, 0, 'scene', '', '18', -50, 0, 1, 5, '2025-01-31 14:01:32', 17),
(13, '3', 0, 0, 'scene', '', '20', 0, 0, 1, 6, '2025-01-31 14:51:43', 19),
(14, 'Swimming Pool 2 - Swimming Pool ', 0, 0, 'scene', '', '33', 0, 0, 1, 7, '2025-01-31 14:56:16', 22),
(15, '4 -Swimming pool', 0, 0, 'scene', '', '22', 0, 0, 1, 8, '2025-01-31 14:56:42', 23),
(16, 'Sarathi events (Entrance)-Sarathi Events', -15, 168, 'scene', '', '11', 0, 0, 1, 23, '2025-01-31 14:58:21', 10),
(17, 'Sarathi Events-2', 0, 0, 'scene', '', '12', 0, 0, 1, 9, '2025-01-31 14:58:54', 11),
(18, '2-Sarahi Events', 0, 0, 'info', '', '', 0, 0, 1, 10, '2025-01-31 14:59:16', 12),
(19, '2-Sarathi events', 0, 0, 'scene', '', '11', 0, 0, 1, 11, '2025-01-31 14:59:41', 12),
(20, 'to entrance', 50, 50, 'scene', '', '17', 50, 0, 1, 12, '2025-01-31 15:04:38', 18),
(21, 'Entrance-Main Entrance', -10, 80, 'scene', '', '54', 0, 0, 1, 13, '2025-01-31 15:06:06', 17),
(22, 'to Exterior 2', -5, -95, 'scene', '', '24', 130, 0, 1, 14, '2025-01-31 15:32:45', 17),
(23, 'to Entrance', -5, 80, 'scene', '', '17', 0, 0, 1, 15, '2025-01-31 15:37:06', 24),
(24, 'Lobby Area-Entrance', -12, 175, 'scene', '', '17', 0, 0, 1, 16, '2025-01-31 15:44:56', 18),
(25, 'Exterior 2-3', 0, 170, 'scene', '', '25', 230, 0, 1, 17, '2025-01-31 15:51:59', 24),
(27, 'Exterior 3-2', -25, 23, 'scene', '', '24', 0, 0, 1, 18, '2025-01-31 16:10:00', 25),
(28, 'Exterior 3 -Haveli Restaurant (Entrance 2)', -10, -92, 'scene', '', '28', 70, 0, 1, 20, '2025-01-31 16:13:27', 25),
(29, 'Exterior 3-Haveli Restaurant Entrance 1', -15, -180, 'scene', '', '51', -38, 0, 1, 19, '2025-01-31 16:18:16', 25),
(30, 'Main Entrance-Exterior 4', -8, -133, 'scene', '', '29', 0, 0, 1, 21, '2025-01-31 16:24:18', 16),
(31, 'Exterior 4 - Main Entrance', -2, -96, 'scene', '', '54', 0, 0, 1, 22, '2025-01-31 16:27:12', 29),
(32, 'Exterior 4-Sarathi Events (Entrance)', -30, 25, 'scene', '', '10', 170, 0, 1, 24, '2025-01-31 16:30:58', 29),
(33, 'Sarathi Entrance-Exterior 4', -10, -100, 'scene', '', '29', 0, 0, 1, 25, '2025-01-31 16:40:47', 10),
(34, 'Haveli Resraurant (Entrance 2)-Exterior 5', 0, -33, 'scene', '', '31', 0, 0, 1, 26, '2025-01-31 16:50:52', 28),
(35, 'Exterior 5-Haveli Restaurant (Entrance 2)', -10, -6, 'scene', '', '28', 10, -50, 1, 27, '2025-01-31 16:52:37', 31),
(36, 'Exterior 5-Outdoor Restaurant', -10, 59, 'scene', '', '32', 0, 0, 1, 28, '2025-01-31 16:56:09', 31),
(37, 'Outdoor Restaurant-Exterior 5', -16, 83, 'scene', '', '31', 0, 0, 1, 29, '2025-01-31 16:58:59', 32),
(38, 'Exterior 5 - Swimming Pool', -10, 162, 'scene', '', '', -80, 0, 1, 30, '2025-01-31 17:01:25', 31),
(39, 'Swimming Pool - Exterior 5', -10, 110, 'scene', '', '31', 0, 0, 1, 31, '2025-01-31 17:07:21', 33),
(40, 'Exterior 5-Playground', -20, 200, 'scene', '', '34', 0, 0, 1, 32, '2025-01-31 17:12:59', 31),
(41, 'Playground-Exterior 5', -10, -31, 'scene', '', '31', 0, 0, 1, 33, '2025-01-31 17:14:05', 34),
(42, 'Haveli Restaurant (Entrance 2)-Haveli Restaurant 2', -25, 150, 'scene', '', '35', 0, 0, 1, 34, '2025-01-31 17:17:36', 28),
(43, 'Haveli Restaurant 2- 1', -10, 10, 'scene', '', '36', 0, 0, 1, 35, '2025-01-31 17:21:06', 35),
(44, 'Exterior 5-6', -9, 512, 'scene', '', '37', 0, 0, 1, 36, '2025-02-03 16:48:06', 31),
(45, 'Exterior 6-5', -6, -100, 'scene', '', '31', 0, 0, 1, 37, '2025-02-03 16:52:22', 37),
(47, 'Junior Suite Room 2-1', -23, 22, 'scene', '', '38', 0, 0, 1, 38, '2025-02-03 17:03:32', 39),
(48, 'Junior Suite Room-(Balcony)', -13, -510, 'scene', '', '41', 0, 0, 1, 39, '2025-02-03 17:04:46', 38),
(49, 'Junior Suite Room (Balcony)-1', -13, 170, 'scene', '', '38', -60, 0, 1, 40, '2025-02-03 17:13:15', 41),
(50, 'Junior Suite Room-2', -25, -67, 'scene', '', '39', 0, 0, 1, 41, '2025-02-03 17:16:07', 38),
(52, 'Junior Suite Room 2-Bathroom', -19, 182, 'scene', '', '42', 0, 0, 1, 42, '2025-02-03 17:25:52', 39),
(53, 'Junior Suite Room Bathroom-2', -20, -180, 'scene', '', '', 0, 0, 1, 43, '2025-02-03 17:27:56', 40),
(54, 'Junior Suite Bathroom-2', -15, -187, 'scene', '', '39', 100, 0, 1, 44, '2025-02-03 17:46:44', 42),
(55, 'Exterior 4-Mountain Wing Entrance', -10, 89, 'scene', '', '46', 0, 0, 1, 45, '2025-02-04 12:06:46', 29),
(56, 'Mountain wing entrance-Exterior 4', -5, 12, 'scene', '', '29', 0, 0, 1, 46, '2025-02-04 12:10:20', 46),
(57, 'Mountain Wing Corridor-Entrance', -10, 80, 'scene', '', '43', 0, 0, 1, 47, '2025-02-04 12:14:49', 47),
(58, 'Main Entrance - Entrance', -10, -70, 'scene', '', '17', 0, 0, 1, 48, '2025-02-04 15:18:48', 54),
(59, 'Main Entrance-Exterior 4', -8, -135, 'scene', '', '29', 0, 0, 1, 49, '2025-02-04 15:31:53', 48),
(60, 'Exterior 6- Corridor 1', -10, 100, 'scene', '', '49', 0, 0, 1, 50, '2025-02-04 16:03:27', 37),
(61, 'Corridor 1- Junior Suite Room', -8, 0, 'scene', '', '38', -100, 0, 1, 51, '2025-02-04 16:05:33', 49),
(62, 'Corridor 1- Exterior 6', -23, 105, 'scene', '', '37', 0, 0, 1, 52, '2025-02-04 16:09:08', 49),
(63, 'Corridor 1- Mountain Wing Corridor', -15, 88, 'scene', '', '47', 0, 0, 1, 53, '2025-02-04 16:11:08', 49),
(64, 'Mountain Wing Corridor-Corridor 1', -10, 205, 'scene', '', '49', 0, 0, 1, 54, '2025-02-04 16:14:18', 47),
(65, 'Mountain Wing Corridor-Exterior 6', -10, 126, 'scene', '', '37', 0, 0, 1, 55, '2025-02-04 16:17:20', 47),
(66, 'Mountain Wing Corridor - Corridor 2', 0, 0, 'scene', '', '50', 0, 0, 1, 56, '2025-02-04 16:29:59', 47),
(67, 'Corridor 2- Deluxe Room (Entrance)', -10, 100, 'scene', '', '45', 0, 0, 1, 57, '2025-02-04 16:31:16', 50),
(68, 'Deluxe Room-Corridor 2', -12, 88, 'scene', '', '50', 0, 0, 1, 58, '2025-02-04 16:34:38', 45),
(69, 'Corrdior 2-1', -13, -83, 'scene', '', '49', 0, 0, 1, 59, '2025-02-04 16:36:35', 50),
(70, 'Mountain Wing Entrance-Corridor', -10, -177, 'scene', '', '47', 0, 0, 1, 60, '2025-02-04 16:39:28', 46),
(71, 'Haveli Restaurant 2-1', -10, 10, 'info', '', '', 0, 0, 1, 61, '2025-02-04 16:42:40', 35),
(72, 'Haveli Restaurant (Entrance)-1', -10, -39, 'scene', '', '36', 0, 0, 1, 62, '2025-02-04 16:48:50', 51),
(73, 'Haveli Restaurant 1-2', -10, 0, 'scene', '', '9', 200, 0, 1, 63, '2025-02-04 16:50:07', 36),
(74, 'Haveli Restaurant 2-1', -15, 172, 'scene', '', '36', 0, 0, 1, 64, '2025-02-04 16:52:40', 9),
(75, 'Haveli Restaurant - (Balcony)', -13, -86, 'scene', '', '52', 23, 0, 1, 65, '2025-02-04 16:56:57', 36),
(76, 'Haveli Restaurant 1-(Entrance)', 0, 1605, 'scene', '', '51', 0, 0, 1, 66, '2025-02-04 17:06:54', 36),
(77, 'Haveli Restaurant 2-Entrance 2', -20, 60, 'scene', '', '28', 0, 0, 1, 67, '2025-02-04 17:09:21', 9),
(78, 'Haveli Restaurant (Entrance)-Exterior 3', -20, 46, 'scene', '', '25', 0, 0, 1, 68, '2025-02-04 17:19:17', 51),
(79, 'Main Entrance -Exterior 4', -8, -132, 'scene', '', '29', 0, 0, 1, 69, '2025-02-04 18:02:19', 54),
(80, 'Hotspot-3', 23, 134, 'info', '', ' ', 0, 0, 1, 70, '2025-02-06 11:49:34', 56),
(82, 'bighotel test', 0, 0, 'scene', '', '58', 0, 0, 1, 71, '2025-02-07 14:10:22', 57),
(83, 'go to 2nd img', 10, 10, 'scene', '', '59', 0, 0, 1, 72, '2025-03-07 12:09:51', 56),
(84, 'go to 2nd img', 0, 0, 'scene', '', '61', 0, 0, 1, 73, '2025-03-07 12:18:13', 60);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vt_virtual_tour`
--

CREATE TABLE `tbl_vt_virtual_tour` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `scene_fade_duration` int(11) NOT NULL,
  `image_width` varchar(255) NOT NULL,
  `image_height` varchar(255) NOT NULL,
  `hotspot_icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vt_virtual_tour`
--

INSERT INTO `tbl_vt_virtual_tour` (`id`, `title`, `status`, `sortorder`, `added_date`, `scene_fade_duration`, `image_width`, `image_height`, `hotspot_icon`) VALUES
(1, 'Virtual Tour -1', 1, 1, '2025-01-23 15:13:54', 2000, '1200', '600', ''),
(7, 'Virtual Tour -2', 1, 2, '2025-02-06 10:53:08', 500, '1200', '720', 'WJ2zI-img_20240910_172746_00_022-edit.jpg'),
(8, 'virtual tour 3', 1, 3, '2025-03-07 12:13:30', 500, '1200', '600', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogcomment`
--
ALTER TABLE `tbl_blogcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_old`
--
ALTER TABLE `tbl_package_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_polloptions`
--
ALTER TABLE `tbl_polloptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_polls`
--
ALTER TABLE `tbl_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theaters`
--
ALTER TABLE `tbl_theaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visitorcounter`
--
ALTER TABLE `tbl_visitorcounter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vt_360_images`
--
ALTER TABLE `tbl_vt_360_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vt_hotspots`
--
ALTER TABLE `tbl_vt_hotspots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vt_virtual_tour`
--
ALTER TABLE `tbl_vt_virtual_tour`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_blogcomment`
--
ALTER TABLE `tbl_blogcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2037;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_package_old`
--
ALTER TABLE `tbl_package_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_polloptions`
--
ALTER TABLE `tbl_polloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_polls`
--
ALTER TABLE `tbl_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_theaters`
--
ALTER TABLE `tbl_theaters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_visitorcounter`
--
ALTER TABLE `tbl_visitorcounter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_vt_360_images`
--
ALTER TABLE `tbl_vt_360_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_vt_hotspots`
--
ALTER TABLE `tbl_vt_hotspots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_vt_virtual_tour`
--
ALTER TABLE `tbl_vt_virtual_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
