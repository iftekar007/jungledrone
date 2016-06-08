CREATE DATABASE  IF NOT EXISTS `jungledrone_drupal` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jungledrone_drupal`;
-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: 107.180.51.205    Database: jungledrone_drupal
-- ------------------------------------------------------
-- Server version	5.5.45-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `variable`
--

DROP TABLE IF EXISTS `variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variable` (
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT 'The name of the variable.',
  `value` longblob NOT NULL COMMENT 'The value of the variable.',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Named variable/value pairs created by Drupal core or any...';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variable`
--

LOCK TABLES `variable` WRITE;
/*!40000 ALTER TABLE `variable` DISABLE KEYS */;
INSERT INTO `variable` VALUES ('admin_theme','s:5:\"seven\";'),('anonymous','s:9:\"Anonymous\";'),('clean_url','i:1;'),('comment_page','i:0;'),('cron_key','s:43:\"k1UQ1I2BXAG6WE-bHGpisPYocATvGZYktKNWZxpPmFQ\";'),('cron_last','i:1460436600;'),('css_js_query_string','s:6:\"o5if8o\";'),('date_default_timezone','s:19:\"Indian/Antananarivo\";'),('default_nodes_main','s:2:\"10\";'),('drupal_http_request_fails','b:0;'),('drupal_private_key','s:43:\"j6tewWAyKOnGOHhzHeNkBV0dRcKko8F9GOUuFsYcdGk\";'),('email__active_tab','s:27:\"edit-email-pending-approval\";'),('entity_cache_tables_created','N;'),('file_temporary_path','s:4:\"/tmp\";'),('filter_fallback_format','s:10:\"plain_text\";'),('install_profile','s:8:\"standard\";'),('install_task','s:4:\"done\";'),('install_time','i:1455518704;'),('menu_expanded','a:1:{i:0;s:10:\"navigation\";}'),('menu_masks','a:34:{i:0;i:501;i:1;i:493;i:2;i:250;i:3;i:247;i:4;i:246;i:5;i:245;i:6;i:125;i:7;i:123;i:8;i:122;i:9;i:121;i:10;i:117;i:11;i:63;i:12;i:62;i:13;i:61;i:14;i:60;i:15;i:59;i:16;i:58;i:17;i:44;i:18;i:31;i:19;i:30;i:20;i:29;i:21;i:28;i:22;i:24;i:23;i:21;i:24;i:15;i:25;i:14;i:26;i:13;i:27;i:11;i:28;i:7;i:29;i:6;i:30;i:5;i:31;i:3;i:32;i:2;i:33;i:1;}'),('node_admin_theme','s:1:\"1\";'),('node_options_page','a:1:{i:0;s:6:\"status\";}'),('node_submitted_page','b:0;'),('path_alias_whitelist','a:0:{}'),('site_403','s:0:\"\";'),('site_404','s:0:\"\";'),('site_default_country','s:2:\"IN\";'),('site_frontpage','s:4:\"node\";'),('site_mail','s:24:\"support@jungledrones.com\";'),('site_name','s:12:\"JungleDrones\";'),('site_slogan','s:0:\"\";'),('theme_default','s:6:\"bartik\";'),('user_admin_role','s:1:\"3\";'),('user_cancel_method','s:17:\"user_cancel_block\";'),('user_email_verification','i:1;'),('user_mail_cancel_confirm_body','s:381:\"[user:name],\r\n\r\nA request to cancel your account has been made at [site:name].\r\n\r\nYou may now cancel your account on [site:url-brief] by clicking this link or copying and pasting it into your browser:\r\n\r\n[user:cancel-url]\r\n\r\nNOTE: The cancellation of your account is not reversible.\r\n\r\nThis link expires in one day and nothing will happen if it is not used.\r\n\r\n--  [site:name] team\";'),('user_mail_cancel_confirm_subject','s:59:\"Account cancellation request for [user:name] at [site:name]\";'),('user_mail_password_reset_body','s:407:\"[user:name],\r\n\r\nA request to reset the password for your account has been made at [site:name].\r\n\r\nYou may now log in by clicking this link or copying and pasting it to your browser:\r\n\r\n[user:one-time-login-url]\r\n\r\nThis link can only be used once to log in and will lead you to a page where you can set your password. It expires after one day and nothing will happen if it\'s not used.\r\n\r\n--  [site:name] team\";'),('user_mail_password_reset_subject','s:60:\"Replacement login information for [user:name] at [site:name]\";'),('user_mail_register_admin_created_body','s:268:\"You can go log into Pilot\'s Corner and clock in all of your flight time right\r\nnow!\r\n  We would love for you to use our website to track your flight progress with\r\nus,\r\n\r\nPlease use this  link http://www.jungledrones.com/login to log in now!\r\n\r\nThank you Jungle Drones\";'),('user_mail_register_admin_created_subject','s:47:\"Thank you for joining as a Jungle Drones Pilot!\";'),('user_mail_register_no_approval_required_body','s:450:\"[user:name],\r\n\r\nThank you for registering at [site:name]. You may now log in by clicking this link or copying and pasting it to your browser:\r\n\r\n[user:one-time-login-url]\r\n\r\nThis link can only be used once to log in and will lead you to a page where you can set your password.\r\n\r\nAfter setting your password, you will be able to log in at [site:login-url] in the future using:\r\n\r\nusername: [user:name]\r\npassword: Your password\r\n\r\n--  [site:name] team\";'),('user_mail_register_no_approval_required_subject','s:46:\"Account details for [user:name] at [site:name]\";'),('user_mail_register_pending_approval_body','s:262:\"We have a lot of fun things for you to be excited about! Welcome to the future of small craft aviation!\r\nWe will be sending you updates and letting you know when many of the things we are doing go live.\r\n\r\nWe will be back with you very soon!\r\nJungle Drones Staff\";'),('user_mail_register_pending_approval_subject','s:55:\"Thank you for deciding to be a member of Jungle Drones!\";'),('user_mail_status_activated_body','s:461:\"[user:name],\r\n\r\nYour account at [site:name] has been activated.\r\n\r\nYou may now log in by clicking this link or copying and pasting it into your browser:\r\n\r\n[user:one-time-login-url]\r\n\r\nThis link can only be used once to log in and will lead you to a page where you can set your password.\r\n\r\nAfter setting your password, you will be able to log in at [site:login-url] in the future using:\r\n\r\nusername: [user:name]\r\npassword: Your password\r\n\r\n--  [site:name] team\";'),('user_mail_status_activated_notify','i:1;'),('user_mail_status_activated_subject','s:57:\"Account details for [user:name] at [site:name] (approved)\";'),('user_mail_status_blocked_body','s:85:\"[user:name],\r\n\r\nYour account on [site:name] has been blocked.\r\n\r\n--  [site:name] team\";'),('user_mail_status_blocked_notify','i:0;'),('user_mail_status_blocked_subject','s:56:\"Account details for [user:name] at [site:name] (blocked)\";'),('user_mail_status_canceled_body','s:86:\"[user:name],\r\n\r\nYour account on [site:name] has been canceled.\r\n\r\n--  [site:name] team\";'),('user_mail_status_canceled_notify','i:0;'),('user_mail_status_canceled_subject','s:57:\"Account details for [user:name] at [site:name] (canceled)\";'),('user_pictures','i:1;'),('user_picture_default','s:0:\"\";'),('user_picture_dimensions','s:9:\"1024x1024\";'),('user_picture_file_size','s:3:\"800\";'),('user_picture_guidelines','s:0:\"\";'),('user_picture_path','s:8:\"pictures\";'),('user_picture_style','s:9:\"thumbnail\";'),('user_register','s:1:\"2\";'),('user_signatures','i:0;');
/*!40000 ALTER TABLE `variable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-12 13:11:32
