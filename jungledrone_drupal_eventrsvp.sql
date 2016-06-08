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
-- Table structure for table `eventrsvp`
--

DROP TABLE IF EXISTS `eventrsvp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventrsvp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key id',
  `event_id` int(11) NOT NULL DEFAULT '0' COMMENT 'event id',
  `fname` varchar(255) NOT NULL DEFAULT '' COMMENT 'first name',
  `lname` varchar(255) NOT NULL DEFAULT '' COMMENT 'last name',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT 'phone',
  `gender` varchar(255) NOT NULL DEFAULT '' COMMENT 'phone',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='eventrsvp Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventrsvp`
--

LOCK TABLES `eventrsvp` WRITE;
/*!40000 ALTER TABLE `eventrsvp` DISABLE KEYS */;
INSERT INTO `eventrsvp` VALUES (1,1,'dsdasdas','dasdad','newpartner@fsdf.sdf','9856789056','male'),(2,1,'raju','sarkar','raju@gmail.com','85657757577','male'),(3,1,'test','test','test@yahoo.com','test','female'),(4,1,'test','test','test@yahoo.com','test','female'),(5,1,'test','test','test@yahoo.com','test','female'),(6,1,'kallol','ghosh','hiifte@gmail.com','9856789056','male'),(7,1,'dfdsff','fsdfsf','hiifte@gmail.com','9856789056','female'),(8,1,'John','Doe','john71838@gmail.com','8100820803','male'),(9,1,'kallol','ghosh','hiifte@gmail.com','9856789056','male'),(10,1,'kallol','ghosh','hiifte@gmail.com','9856789056','male'),(11,1,'vbcbcvb','bfbxcvb','bhaskar.involutiontech@gmail.com','564456456','male'),(12,1,'vbcbcvb','bfbxcvb','bhaskar.involutiontech@gmail.com','564456456','female'),(13,14,'kallol','ghosh','hiifte@gmail.com','9856789056','male'),(14,14,'jsdhf','dksjhfk','ksdjhfkjsdh@sjfgdj.com','2456862255','male'),(15,13,'jsdhf','dksjhfk','ksdjhfkjsdh@sjfgdj.com','2456862255','male'),(16,12,'Jane','Doe','hgsd@hgfsjhd.com','7894562315','female'),(17,14,'dsdfgdfg dfgdfg','gdfg','iftekarkta@gmail.com','9856789056','male'),(18,14,'John','Doe','rahul@gmail.com','74125893321','male');
/*!40000 ALTER TABLE `eventrsvp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-12 13:07:14
