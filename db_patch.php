<?php require_once('includes/initialize.php'); global $db; $db->query('ALTER TABLE tbl_testimonial ADD email VARCHAR(255) NULL, ADD rating INT NULL'); echo 'Success';
