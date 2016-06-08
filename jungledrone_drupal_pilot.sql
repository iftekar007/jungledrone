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
-- Table structure for table `pilot`
--

DROP TABLE IF EXISTS `pilot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pilot` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key id',
  `fname` varchar(255) NOT NULL DEFAULT '' COMMENT 'first name',
  `lname` varchar(255) NOT NULL DEFAULT '' COMMENT 'last name',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email',
  `phone` varchar(255) NOT NULL COMMENT 'phone',
  `country` varchar(255) NOT NULL COMMENT 'country',
  `city` varchar(255) NOT NULL COMMENT 'city',
  `user_id` varchar(255) NOT NULL COMMENT 'gender',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='pilot Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilot`
--

LOCK TABLES `pilot` WRITE;
/*!40000 ALTER TABLE `pilot` DISABLE KEYS */;
INSERT INTO `pilot` VALUES (1,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','newpartner@fsdf.sdf','9856789056','Belize','sdf','54'),(2,'Subhra Bitan','Ghatak','subhra.influxiq@gmail.com','03325822167','Belize','Belize','56'),(3,'John','Doe','jd123@gmail.com','8456123697','United States','Kansas','57'),(4,'kjhkjhkjhkjhkj','rahrtyul@gmail.com','gghf@gdf.dfg','rty','Belize','bcv','58'),(5,'rhfgh','ryeg','sfsd@sgdfgdfg.dfg','fsdfsdf','Belize','dfgdfg','59'),(6,'xzzxc','dasd','neererwpartner@fsdf.sdf','asfsdf','Belize','fsdf','60'),(7,'gdgfdfgdfg','fdsgdfgdf','fsgsdfgsdf@dfgdfg.dfgd','4789745','Belize','fgdf','61'),(8,'tfhfgh','dfghdf','hfhfhrfy@dghd.dfh','54742518','Belize','dfhdfh','62'),(9,'dfghfd','ghfgh','dfhdg@dhdh.dfghd','1468746745641','Belize','dfgdfg','63'),(10,'dfhrt','54trg','ndgewpartner@fsdf.sdf','xcbdfhdfh','Belize','xcvxcvxcv','64'),(11,'John','Doe','john71838@gmail.com','8451236987','Belize','Belize','65'),(12,'xcvx','xcvx','xcvxcxc@gdfg.dfgdfg','3548748','Belize','dfgdfg','66'),(13,'Jane','Doe','jane222@gmail.com','741256845','Belize','Belize','67'),(14,'James','Maxwell','john123@gmail.com','8459942138','United States','Kansas','68'),(15,'Heriberto','Paredes','director@betoparedes.com','555.555.5555','Belize','Belize City','69'),(16,'Ken','Jones','pnidirector@yahoo.com','555-555-5555','United States','Santa Ana','70'),(17,'Beto','P','beto@betoparedes.com','555.555.5555','Belize','Belize City','71'),(18,'Beto','Paredes','betocparedes@gmail.com','555.555.5555','Belize','Belize City','72');
/*!40000 ALTER TABLE `pilot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-12 13:07:27
