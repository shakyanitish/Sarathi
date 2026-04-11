<?php 

$online = ($_SERVER['HTTP_HOST'] == "localhost" || $_SERVER['HTTP_HOST'] == "localhost:2020" || $_SERVER['HTTP_HOST'] == "127.0.0.1" || $_SERVER['HTTP_HOST'] == "192.168.2.121") ? false : true;
defined('SITE_FOLDER') ? '' : define('SITE_FOLDER', 'sarathi');
defined('SITE_STR')    ? '' : define('SITE_STR', '');

if($online){ // ONLINE SETUP

define('DB_SERVER',   'localhost');
define('DB_USER', 	  'acehotel_sarathihotel');
define('DB_PASS', 	  'L0ngt@il22');
define('DB_NAME', 	  'acehotel_sarathihotel');

} else { 	// LOCAL SETUP

define('DB_SERVER',   'localhost');
define('DB_USER', 	  'root');
define('DB_PASS', 	  '12345');
define('DB_NAME', 	  'sarathi');

}

?>
