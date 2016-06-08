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
-- Table structure for table `employement`
--

DROP TABLE IF EXISTS `employement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employement` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key user',
  `fname` text COMMENT 'first name',
  `lname` text COMMENT 'last name',
  `phone` text COMMENT 'phone ',
  `email` text COMMENT 'email',
  `country` text COMMENT 'country',
  `city` text COMMENT 'city',
  `resume` text COMMENT 'resume',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='employement Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employement`
--

LOCK TABLES `employement` WRITE;
/*!40000 ALTER TABLE `employement` DISABLE KEYS */;
INSERT INTO `employement` VALUES (1,'g','h','t','sd@gh.g','hfgh','fgh',NULL),(2,'dsdfgdfg dfgdfg','uddin','5345345','newpartner@fsdf.sdf','Afghanistan','Kolkata','http://jungledroneadmin.spectrumiq.com/sites/default/files/505447695_1456824371.pdf'),(3,'iftekar','uddin','5345345','iftekarkta@gmail.com','Afghanistan','Kolkata','http://jungledroneadmin.spectrumiq.com/sites/default/files/1162609801_1456825373.pdf'),(4,'iftekar','uddin','5345345','iftekarkta@gmail.com','2','Kolkata',NULL),(5,'dsdfgdfg dfgdfg','uddin','9856789056','iftekarkta@gmail.com','Belarus','Kolkata','http://jungledroneadmin.spectrumiq.com/sites/default/files/731096547_1456825782.pdf'),(6,'kjhkjhkjhkjhkj','gdfg','5345345','iftekarkta@gmail.com','2','Kolkata',''),(7,'dsdfgdfg dfgdfg','gdfg','9856789056','iftekarkta@gmail.com','Albania','howrah',''),(8,'iftekar','gdfg','9856789056','iftekarkta@gmail.com','2','Kolkata','http://jungledroneadmin.spectrumiq.com/sites/default/files/767604244_1456826216.pdf'),(9,'iftekar','uddin','5345345','newpartner@fsdf.sdf','Andorra','Kolkata','http://jungledroneadmin.spectrumiq.com/sites/default/files/1115704669_1456827067.pdf'),(10,'dsdfgdfg dfgdfg','jaman','9856789056','iftekarkta@gmail.com','2','rtytrytr',''),(11,'dsdfgdfg dfgdfg','uddin','9856789056','hiifte@gmail.com','American Samoa','howrah','http://jungledroneadmin.spectrumiq.com/sites/default/files/1997149943_1456828795.pdf'),(12,'John','Maxwell','588427863','samsujj@gmail.com','India','Mumbai',''),(13,'John','Maxwell','739292952572','samsujj@gmail.com','India','Delhi','http://jungledroneadmin.spectrumiq.com/sites/default/files/316987869_1456999681.'),(14,'John','Maxwell','5678990446','samsujj@gmail.com','Colombia','Gy jg d b','http://jungledroneadmin.spectrumiq.com/sites/default/files/1955736222_1456999950.');
/*!40000 ALTER TABLE `employement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-12 13:07:06
