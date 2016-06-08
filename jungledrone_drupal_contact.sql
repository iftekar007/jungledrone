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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'name',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email',
  `subject` text COMMENT 'subject',
  `phone` varchar(255) NOT NULL COMMENT 'phone',
  `message` text COMMENT 'message',
  `create_time` varchar(255) DEFAULT '' COMMENT 'create time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='contact Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (2,'test','test@test.com','this is a test','test','hi','1456324238'),(3,'avcvbcbb','bn@gmail.com','vbnvnbvbvn','67687978979','bvbnvnbvbvb','1456336260'),(4,'zxczx','xcvxc@gmail.com','zxczx','zxczx','xzczxcz','1456336480'),(5,'zxcxz','xcvxc@gmail.com','zxcz','zxczx','zxczx','1456336544'),(6,'knjk','hjjh@hgfhgf.khh','JHBHJGH','bnbmnb','bhkjhkjhkhkh','1456339929'),(7,'jhghjg','gj@hgh.sdf','hjhggjhg','7678687','nvnvjhvhvhgfvhg','1456340076'),(8,'bbmn','bn@kkkh.fsd','hjhb','h87897','hkjmjbmbmvdv','1456340124'),(9,'bmnb','mbmb@gsdg.dfg','jkhjh','8789798','gbmnbmnbmn','1456340193'),(10,'test','test@test.com','hi','hello','hi','1456343545'),(11,'fdff','fffifte@gmail.com','fdsfsfff','76757575','fgfgdg','1456373097'),(12,'bvcbvcbvcb','vbcbcvb@mail.com','fdgfdg','4545545465454','gfdgfdgdfgfgfdg','1456407831'),(13,'fgdfgdf','fdgfdg@mail.com','fdsvgfdsvg','564456456','dsfvdfsv','1456407973'),(14,'Maxwell Lord','rahul@gmail.com','hsgdjh dskfg ds','7545424272427','skdhfnsdm fdhnkj dfkvgdf nkgsldkfdns k','1456817050'),(15,'Rajib Das','rdas123@gmail.com','hjfjsd ifhds fdsfsd bf','7412589631','jhgfbds hf sdjfdishf lsfash sdfsdh fld sjlfdsiluh','1456817107'),(16,'fdff','newpartner@fsdf.sdf','dsdad','9856789056','asasdasd','1456832286'),(17,'fdff','iftekarkta@gmail.com','dsdad','9856789056','hi test','1456837764'),(18,'Maxwell Lord','rdas123@gmail.com','hsgdjh dskfg ds','2456862255','shdfgf kjsdgfbdjf djnf','1456999068'),(19,'Maxwell Lord','bhaskar.involutiontech@gmail.com','hsgdjh dskfg ds','7894562315','hv jlgbjgk jhbkjhb kj','1456999531'),(20,'Maxwell Lord','rdas123@gmail.com','hsgdjh dskfg ds','74125893321','hfj vjgugf jgcv ugjv gh vjhgv','1456999565'),(21,'dfsdf','fsgsdfgsdf@dfgdfg.dfgd','sdfsdf','53484','sdfs','1457607782'),(22,'sfgsfs','fsgsdfgsdf@dfgdfg.dfgd','sfd','4789745','sdfsdf','1457607800'),(23,'sdfsdf','fsgsdfgsdf@dfgdfg.dfgd','sdfsdf','53484','sdfsdf','1457607991');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-12 13:09:54
