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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Primary Key: Unique user ID.',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT 'Unique user name.',
  `pass` varchar(128) NOT NULL DEFAULT '' COMMENT 'User’s password (hashed).',
  `mail` varchar(254) DEFAULT '' COMMENT 'User’s e-mail address.',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT 'User’s default theme.',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT 'User’s signature.',
  `signature_format` varchar(255) DEFAULT NULL COMMENT 'The filter_format.format of the signature.',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp for when user was created.',
  `access` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp for previous time user accessed the site.',
  `login` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp for user’s last login.',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Whether the user is active(1) or blocked(0).',
  `timezone` varchar(32) DEFAULT NULL COMMENT 'User’s time zone.',
  `language` varchar(12) NOT NULL DEFAULT '' COMMENT 'User’s default language.',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT 'Foreign key: file_managed.fid of user’s picture.',
  `init` varchar(254) DEFAULT '' COMMENT 'E-mail address used for initial account creation.',
  `data` longblob COMMENT 'A serialized array of name value pairs that are related to the user. Any form values posted during user edit are stored and are loaded into the $user object during user_load(). Use of this field is discouraged and it will likely disappear in a future...',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`name`),
  KEY `access` (`access`),
  KEY `created` (`created`),
  KEY `mail` (`mail`),
  KEY `picture` (`picture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores user data.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$S$DTxGc0HGDvqAB6KhHT9Ri2SFcQdHpObco/5maWm9RuxAl462J335','hiifte@gmail.com','','',NULL,1455518569,1460445829,1460444878,1,'Indian/Antananarivo','',0,'hiifte@gmail.com','b:0;'),(50,'rahul@gmail.com','$S$D7RFe8j/UjtNYFXR7ZoVst5ZXIGKUqTPacKop9sLJ7eIIJ6/CwoI','rahul@gmail.com','','','filtered_html',1456381846,0,0,1,'','',0,'','b:0;'),(51,'test@gmail.com','$S$DiY7n6cAZ5reOaxGOrprIeANM4./qlKwcu1XF4LIVjPdyfRM1Gf4','test@gmail.com','','',NULL,1456382208,0,0,1,NULL,'',0,'','b:0;'),(52,'amitava@gmail.com','$S$DlTnd/Tq6tD6UwoW0E8fGrHIm8oJvshaM1v1b/zrLxn/t7.Mup7b','amitava@gmail.com','','',NULL,1456382636,0,0,0,NULL,'',0,'','b:0;'),(53,'subhra@gmail.com','$S$D7gOSAJ.PPVZ4LQSMl.stZeBS8x1Vnj0McEdyZ./UQQ9Bbw78wWZ','subhra@gmail.com','','',NULL,1456382688,0,0,1,NULL,'',0,'','b:0;'),(54,'iftekarkta@gmail.com','$S$DVt9z00urRXxhJvlWgus83DRtYqjR0fS4SNkV7/BXPzhVPygpdRm','iftekarkta@gmail.com','','','filtered_html',1457527583,0,0,1,'','',0,'','b:0;'),(55,'newpartner@fsdf.sdf','$S$Dl9M.OKgnMhfC9bxcCk5Mhx2BSI0B97emxf6vvpK8ZgKVswz1Y.L','newpartner@fsdf.sdf','','',NULL,1457529549,0,0,1,NULL,'',0,'',NULL),(56,'subhra.influxiq@gmail.com','$S$Dhp/0wqilLjDMIIoFoOIZ8gmIedm1FpUYhdnxQzJQgFRRylPMKxs','subhra.influxiq@gmail.com','','',NULL,1457606275,0,0,1,NULL,'',0,'',NULL),(57,'jd123@gmail.com','$S$DBLh/8R0knrdaydyVeoE5A.mEsD0ibuo66zXTocBlb8VUKBBMKa4','jd123@gmail.com','','',NULL,1457606865,0,0,1,NULL,'',0,'',NULL),(58,'gghf@gdf.dfg','$S$DB1ZFNfJG/HDvCF1dfnQ5iVWGbOWSbRh2m0B93D.aHzrXUxLzHzy','gghf@gdf.dfg','','',NULL,1457607148,0,0,1,NULL,'',0,'',NULL),(59,'sfsd@sgdfgdfg.dfg','$S$D4lMEGTyk8kwFsIxyLYJcQhU.IXT9tWyPQDg72J/j60o9jjYU0eN','sfsd@sgdfgdfg.dfg','','',NULL,1457607340,0,0,1,NULL,'',0,'',NULL),(60,'neererwpartner@fsdf.sdf','$S$DBnMc7sD7SYzFe4.yXirqCWRxV1eNz8lPkniDqWU7zXvftowBjib','neererwpartner@fsdf.sdf','','',NULL,1457607395,0,0,1,NULL,'',0,'',NULL),(61,'fsgsdfgsdf@dfgdfg.dfgd','$S$DCW3CVVJjDGSyTVK7TULiKPDFNnV3FyEHUaboiGaItLCH9/W/SB3','fsgsdfgsdf@dfgdfg.dfgd','','',NULL,1457607400,0,0,1,NULL,'',0,'',NULL),(62,'hfhfhrfy@dghd.dfh','$S$D09oyi5GdsWwSBYP/HwgtJ0VGCul24AqEMoV2TzlaBsPLuS8K9lN','hfhfhrfy@dghd.dfh','','',NULL,1457607446,0,0,1,NULL,'',0,'',NULL),(63,'dfhdg@dhdh.dfghd','$S$D0OiXf0XO17Ta3QXtAY/dQsup8DH1Xt0wSYqUq.jWBoFK7B6w4gF','dfhdg@dhdh.dfghd','','',NULL,1457607477,0,0,1,NULL,'',0,'',NULL),(64,'ndgewpartner@fsdf.sdf','$S$D.R72o6yRk5Qp7/H32icaDS4weMrWPZrUQBmFN..hntIG0yKDiHr','ndgewpartner@fsdf.sdf','','',NULL,1457607535,0,0,1,NULL,'',0,'',NULL),(65,'john71838@gmail.com','$S$D8cS30eN79oPBjYA4KXIuSmDXjxohkXz7ryzFvXp6cMhRU/N27hc','john71838@gmail.com','','',NULL,1457607729,0,0,1,NULL,'',0,'',NULL),(66,'xcvxcxc@gdfg.dfgdfg','$S$Dmf4ovuu1GZbubH16LEkdocMQ1OGAVbtxtTNsPhoWTaqXvrSISJq','xcvxcxc@gdfg.dfgdfg','','',NULL,1457607934,0,0,1,NULL,'',0,'',NULL),(67,'jane222@gmail.com','$S$DsGM8uFX.zcYEzkM.W1904pwZmDHjUm7Rio8h/EkISeGp4apu1s1','jane222@gmail.com','','',NULL,1457609672,0,0,1,NULL,'',0,'',NULL),(68,'john123@gmail.com','$S$DXq.akFvluC1/TfyS..cwnzJHV9fWzAG8gptRFsI1yYOq82keVMb','john123@gmail.com','','',NULL,1457617321,0,0,1,NULL,'',0,'',NULL),(69,'director@betoparedes.com','$S$DHQfpWCZZRT.7C8lvcP1/t720x15qKKZqhbGaRH9k0lJMRLLWSAx','director@betoparedes.com','','',NULL,1458053910,0,0,1,NULL,'',0,'',NULL),(70,'pnidirector@yahoo.com','$S$Dzpk9nkJZ3xdTMJ8Aaw/C.J8m.dG/dXxzQ4TpNk7if8lt8AWcNwm','pnidirector@yahoo.com','','',NULL,1458056270,0,0,1,NULL,'',0,'',NULL),(71,'beto@betoparedes.com','$S$D2sfPV2wlDVVq.2xr6CpdPMJJ6K6dZ0O5VyA6S3PpMFn6P.JwUdp','beto@betoparedes.com','','',NULL,1458134240,0,0,1,NULL,'',0,'',NULL),(72,'betocparedes@gmail.com','$S$Dg7grB8uyCi2z/ULo.PWqJyMJqFSLYPZXaC/80AttLlrGC9y/hLt','betocparedes@gmail.com','','',NULL,1458134464,0,0,1,NULL,'',0,'',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-12 13:09:06
