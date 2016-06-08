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
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key user',
  `fflight` text COMMENT 'first flight',
  `lflight` text COMMENT 'last flight',
  `datef` text COMMENT 'datef ',
  `timef` text COMMENT 'timef',
  `aircraft` text COMMENT 'aircraft',
  `manoeuvre` text COMMENT 'manoeuvre',
  `notes` text COMMENT 'notes',
  `user_id` varchar(256) NOT NULL,
  `createdtime` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='employement Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (1,'01.01.2014','02.01.2016','1458412200','05 : 5 to 15 : 5','Drone','Zigzag','lkzjdbfds ghd ndfkgn dfkgfgkhs kdnfgdkdfn gskdjfh','67',1458815645,1),(2,'01.03.2013','02.02.2016','1458585000','05 : 7 to 18 : 7','Drone','Freeride','gfd cjhf vhg hvjhgd jhg kvj gcdj ygh jbh','67',1458815645,1),(3,'05.01.2014','15.02.2016','1458757800','08 : 8 to 15 : 8','Aircraft','Swing','hft sckhjv td yghkvjbj b','67',0,1),(5,'01.01.2014','02.01.2016','1458671400','06 : 14 to 14 : 14','Aircraft','freeride','sjkdfbds kjfksd sdjfjgdsbfdsj','68',0,1),(6,'02.03.2014','06.01.2015','1459362600','08 : 15 to 10 : 15','Drone','swing','dgsfjsgdf jsdgfdsbjfgsd jfksdb','68',0,1),(7,'test','test','1457935200','07 : 44 to 08 : 44',NULL,NULL,'yay this flight was awesome','78',1458815645,1),(8,'Test data','Test data','1457679600','08 : 47 to 09 : 47','Phantom 3 Silver','Manuver type','test notes.','80',1458815645,1),(9,'Ken','Jones','1457856000','15 : 5 to 15 : 30','Blade','Basic Hover','Had difficulty stabilizing the bird','79',0,1),(10,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1457634600','18 : 1 to 19 : 1','Inspire Pro White','iftedsfkarkta@gmail.com vxcv','czxczxc','54',0,1),(11,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1457980200','17 : 18 to 19 : 18','Walk the dog',NULL,'fgdfg dfg','54',1458815645,1),(12,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1458153000','18 : 20 to 19 : 20','Phantom 3 Blue','Basic Hover','asfdasfsdf','54',0,1),(13,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1457548200','18 : 21 to 19 : 21','Phantom 3 Pink','Walk the dog','asdas dasd','54',0,1),(14,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1457634600','18 : 22 to 19 : 22','Inspire Pro White','Basic Hover','vxcvxcv','54',1458815645,1),(15,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1457375400','19 : 10 to 19 : 25','Inspire Pro White','Figure 8','d sdfds dsf','54',0,1),(16,'Subhra Bitan','Ghatak','1457980200','18 : 23 to 19 : 23','Inspire Pro White','Walk the dog','xjhgdj jdfgjdfh gjkdf','95',1458815645,1),(17,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1517950175.4','19 : 10 to 20 : 10','Inspire Pro White','Basic Hover','cvbncvb cbv','54',0,0),(18,'Subhra Bitan','Ghatak','1630780.2','18 : 23 to 19 : 23','Inspire Pro White','Walk the dog','agdfhbfg gnfg hgbmj','95',0,1),(19,'Subhra Bitan','Ghatak','1630.78','18 : 23 to 19 : 23','Inspire Pro White','Walk the dog','ghfghfg','95',0,1),(20,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1457634600','18 : 27 to 19 : 12','Phantom 3 Blue','Figure 8','scdadasdasd','54',0,1),(21,'Subhra Bitan','Ghatak','1457980200','11 : 28 to 19 : 28','Phantom 3 Blue','Figure 8','xbdfhfg f ghjghh j','95',0,1),(22,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1458153000','12 : 28 to 23 : 28','Inspire Pro White','Basic Hover','dsdfsfsdfsdf sfsdf','54',0,1),(23,'Subhra Bitan','Ghatak','1458585000','18 : 30 to 19 : 30','Blade Nano','Basic Hover','sdffdg dfhf gvn hg','95',0,1),(24,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1458153000','18 : 31 to 19 : 31','Inspire Pro White','Figure 8','cxcbcvbcvb','54',0,1),(25,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1458239400','18 : 32 to 19 : 32','Inspire Pro White','Basic Hover - tail facing','sdcsdcxzc','54',0,1),(26,'Subhra Bitan','Ghatak','1458153000','18 : 33 to 19 : 33','Proto','Basic Hover - tail facing','sgdh gkndflg fdn','95',0,1),(27,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1457.548','25200','Phantom 3 Pink','Walk the dog','xbcvbcvb','54',1458028538,1),(28,'Subhra Bitan','Ghatak','1458757800','34800','Inspire Pro White','Basic Hover','jksdkfjdskf jksdhf dksfj','56',1458047980,1),(31,'Subhra Bitan','Ghatak','1459189800','3600','Blade Nano','Walk the dog','iugsdfbjnd ksdkjhgfbd','56',1458048029,1),(32,'Subhra Bitan','Ghatak','1459189800','39600','Vista','Figure 8','skdjgfbd fgglihnsdkfgj kdfgd','56',1458048076,1),(35,'Heriberto','Paredes','1458021600','2160','Phantom 3 Blue','Basic Hover - tail facing','Testing and something.','69',1458056199,1),(36,'Ken','Jones','1457938800','600','Phantom 3 Pink','Figure 8','Test 123','70',1458056820,1),(37,'Ken','Jones','1458025200','1920','Inspire Pro White','Basic Hover','test 2','70',1458057025,1),(38,'Ken','Jones','1458025200','720','Phantom 3 Pink','Basic Hover','test 2','70',1458057062,1),(39,'dsdfgdfg dfgdfg','iftedsfkarkta@gmail.com','1457289000','11700','Inspire Pro White','Figure 8','test flight','54',1458104798,1),(40,'Subhra Bitan','Ghatak','1459103400','3600','Proto','Basic Hover','sgdhfghgjg','56',1458130348,0),(41,'Ken','Jones','1460012400','600','Proto',NULL,'Just wanted to see if this thing time stamps.  I just put in a time that was not possible.','70',1460050473,1);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-12 13:05:29
