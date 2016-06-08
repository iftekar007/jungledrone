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
-- Table structure for table `contactuser`
--

DROP TABLE IF EXISTS `contactuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key id',
  `fname` varchar(255) NOT NULL DEFAULT '' COMMENT 'first name',
  `lname` varchar(255) NOT NULL DEFAULT '' COMMENT 'last name',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email',
  `phone` varchar(255) NOT NULL COMMENT 'phone',
  `country` varchar(255) NOT NULL COMMENT 'country',
  `city` varchar(255) NOT NULL COMMENT 'city',
  `gender` varchar(255) NOT NULL COMMENT 'gender',
  `drone` varchar(255) NOT NULL COMMENT 'drone',
  `dron_race` varchar(255) NOT NULL COMMENT 'drone race',
  `message` text COMMENT 'message',
  `create_time` varchar(255) DEFAULT '' COMMENT 'create time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='contactuser Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactuser`
--

LOCK TABLES `contactuser` WRITE;
/*!40000 ALTER TABLE `contactuser` DISABLE KEYS */;
INSERT INTO `contactuser` VALUES (1,'iftekar','uddin','iftekarkta@gmail.com','9856789056','India','Kolkata','male','yes','yes','iftekar message','1456381016'),(3,'vxcv','xcv','vcxzv@mailo.com','5654554546546','Bahrain','czxczx','male','yes','yes','zczdcv','1456407243'),(4,'vcbcvb','vncvc','cnv@mail.com','65+65+6','Albania','vsdfvsdv','male','yes','yes','vcxvxcv','1456407477'),(5,'nbbvn','bfbxcvb','das.amitava08@gmail.com','5654554546546','Bangladesh','bvcbvcbcv','male','yes','yes','fdnbfcbn vc','1456407598'),(6,'xcbcxvb','xvcbvb','xbxfcv@mail.com','5645544556','Algeria','bvcbvcbcv','male','yes','yes','cxbxcvb','1456407658'),(7,'bvcbvc','vbcbvxc','xvcbvcb@m.com','954554','Albania','64554546','male','yes','yes','bcvbb','1456407772'),(8,'fdssd','sdfvgs','xbxf2cv@mail.com','54654546554','Bahrain','fggfsdg','male','yes','yes','fdgfdgfdg','1456408029'),(9,'kallol','ghosh','hiifte@gmail.com','9856789056','Anguilla','kalyani','male','no','no','dxfbvcvbvcb','1456486420'),(10,'dfdsff','fsdfsf','hiifte@gmail.com','9856789056','Angola','kalyani','female','no','no','yghjghj','1456721037'),(11,'kallol','ghosh','hiifte@gmail.com','9856789056','Antigua and Barbuda','kalyani','female','yes','no','13131','1456721907'),(12,'kallol','ghosh','hiifte@gmail.com','9856789056','Andorra','kalyani','male','yes','no','gdfgdfg','1456722057'),(13,'kallol','ghosh','hiifte@gmail.com','9856789056','Andorra','kalyani','female','yes','no','fsdf','1456722210'),(14,'dfdsff','fsdfsf','hiifte@gmail.com','9856789056','Anguilla','kalyani','male','no','yes','dfdg','1456722288'),(15,'dfdsff','fsdfsf','hiifte@gmail.com','9856789056','Antigua and Barbuda','kalyani','male','no','yes','46464654','1456722347'),(16,'dsdfgdfg dfgdfg','uddin','newpartner@fsdf.sdf','9856789056','Algeria','Kolkata','male','no','no','32132','1456722482'),(17,'samsuj','uddin','iftekarkta@gmail.com','9856789056','American Samoa','kalyani','female','yes','no','htryrt','1456722627'),(18,'iftekar','jaman','iftekarkta@gmail.com','5654646','Belarus','howrah','male','no','yes','1313','1456722746'),(19,'iftekar','Uddin','hiifte@gmail.com','5345345','American Samoa','howrah','female','yes','no','fgdfgdfg','1456722827'),(20,'iftekar','jaman','hiifte@gmail.com','98987999','Belarus','howrah','male','yes','yes','11321','1456722925'),(21,'iftekar','jaman','hiifte@gmail.com','5345345','Belarus','Kolkata','male','no','no','hfgh','1456723266'),(22,'kjhkjhkjhkjhkj','jaman','hiifte@gmail.com','5654646','Belarus','howrah','female','yes','no','sfsdf','1456723453'),(23,'iftekar','jaman','iftekarkta@gmail.com','5345345','Andorra','howrah','male','no','yes','sdvsdv','1456724103'),(24,'iftekar','jaman','dfgdfrtner@fsdf.sdf','9856789056','American Samoa','howrah','male','no','no','rwerwer','1456724176'),(25,'dsdfgdfg dfgdfg','gdfg','hiifte@gmail.com','98987999','Armenia','howrah','male','no','yes','6546546','1456724301'),(26,'cb','jaman','newpartner@fsdf.sdf','5345345','Angola','howrah','male','no','yes','dfgdfg','1456724434'),(27,'iftekar','uddin','iftekarkta@gmail.com','5345345','Bangladesh','howrah','male','no','yes','dsfsdfds','1456724493'),(28,'dsdfgdfg dfgdfg','jaman','hiifte@gmail.com','9856789056','Albania','Kolkata','male','no','no','6456456','1456724567'),(29,'iftekar','jaman','iftekarkta@gmail.com','5345345','Belarus','howrah','male','no','yes','sdfsdf','1456725122'),(30,'kjhkjhkjhkjhkj','jaman','iftekarkta@gmail.com','5345345','Bangladesh','howrah','male','no','yes','56','1456725842'),(31,'dsdfgdfg dfgdfg','gdfg','sam@gmail.com','9856789056','American Samoa','rtytrytr','male','no','yes','xd ertf efsd','1456725916'),(32,'kjhkjhkjhkjhkj','gdfg','hiifte@gmail.com','9856789056','Barbados','howrah','male','no','yes','gdfg dfg','1456726029'),(33,'kjhkjhkjhkjhkj','Uddin','hiifte@gmail.com','5654646','Anguilla','Kolkata','female','yes','no','dfcgdfg','1456726084'),(34,'iftekar','gdfg','sam@gmail.com','5345345','American Samoa','howrah','female','yes','no','rtdfg','1456726180'),(35,'iftekar','uddin','newpartner@fsdf.sdf','9856789056','Andorra','Kolkata','female','yes','no','dfsf','1456726409'),(36,'iftekar','uddin','iftekarkta@gmail.com','5654646','Andorra','Kolkata','female','yes','no','asdasd','1456726497'),(37,'wef','jaman','hiifte@gmail.com','5345345','Belarus','Kolkata','male','no','yes','ewewr','1456726632'),(38,'iftekar','gdfg','newpartner@fsdf.sdf','9856789056','Antigua and Barbuda','Kolkata','female','yes','no','er v34rt','1456726814'),(39,'dsdfgdfg dfgdfg','gdfg','iftekarkta@gmail.com','5345345','Andorra','Kolkata','male','no','yes','ewrewr','1456727387'),(40,'kjhkjhkjhkjhkj','jaman','iftekarkta@gmail.com','5654646','American Samoa','kalyani','male','no','yes','dfgdfg','1456727493'),(41,'dsdfgdfg dfgdfg','gdfg','raju@gmail.com','9856789056','Belgium','rtytrytr','male','no','no','gfh fghgfh','1456727580'),(42,'dsdfgdfg dfgdfg','gdfg','sam@gmail.com','9856789056','Barbados','Kolkata','male','no','yes','asdasd','1456728144'),(43,'dsdfgdfg dfgdfg','gdfg','iftekarkta@gmail.com','9856789056','Angola','Kolkata','male','no','yes','dfg dfgd g','1456728556'),(44,'sirin','jaman','iftekarkta@gmail.com','9856789056','Andorra','rtytrytr','male','no','yes','dgdfg','1456728933'),(45,'dsdfgdfg dfgdfg','uddin','iftekarkta@gmail.com','98987999','Belarus','rtytrytr','male','no','yes','gdfgdfg','1456729301'),(46,'hfgh','fghfgh','fgh@dfgdfg.dfg','fgh','Anguilla','fgh','male','no','yes','fghfghfgh','1456729360'),(47,'iftekar','gdfg','newpartner@fsdf.sdf','9856789056','Argentina','Kolkata','male','no','yes','gfdhgfh','1456729702'),(48,'dsdfgdfg dfgdfg','gdfg','hiifte@gmail.com','5654646','Albania','Kolkata','male','no','yes','ewrewr','1456730191'),(49,'raju','gdfg','iftekarkta@gmail.com','5654646','Antigua and Barbuda','Kolkata','female','yes','no','retret','1456730574'),(50,'John','Doe','john71838@gmail.com','1234567895','Belize','Belize','male','yes','no','sgjsdb fbl jgflhdsjbf djhg avsds dfysvdf hsd This is a test message','1456732981'),(51,'Jane','Doe','john71838@gmail.com','8451236987','2','Belize','female','no','no','osidjbfn ;dkshfdn fdhsb fsdfiohds nfsdf dsfds','1456812795'),(52,'John','Doe','john71838@gmail.com','7894562315','Algeria','panama','male','yes','yes','this is a test message','1456814943'),(53,'Jane','Doe','john71838@gmail.com','7894562315','2','sdhfkj','female','no','yes','dfhghf dcfh dxfg sxg xg xhxfb','1456815348'),(54,'iftekar','uddin','iftekarkta@gmail.com','9856789056','Barbados','Kolkata','male','no','yes','fgfdg','1456815437'),(55,'dsdfgdfg dfgdfg','jaman','hiifte123@gmail.com','9856789056','Algeria','howrah','male','no','yes','sdfsdfdsf','1456815732'),(56,'Richard','Maxwell','john71838@gmail.com','7894562315','Belize','sdgdgdfgdfg','male','yes','yes','gdfgfdgdfgdfgdfg','1456815937'),(57,'John','Doe','subhra.influxiq@gmail.com','845622315856','2','Belize','male','yes','yes','jasg vbdjsd sjdfd bfjdn dj','1456816089'),(58,'kallol','ghosh','hiifte@gmail.com','9856789056','2','kalyani','male','yes','yes','idhfnd skghdfngfd','1456823017'),(59,'iftekar','uddin','iftekarkta@gmail.com','9856789056','Bangladesh','Kolkata','male','no','yes','fsdfsdf','1456827151'),(60,'dsdfgdfg dfgdfg','uddin','newpartner@fsdf.sdf','5345345','2','howrah','male','no','yes','sdfsdf','1456828839'),(61,'iftekar','gdfg','iftekarkta@gmail.com','9856789056','Bangladesh','Kolkata','male','no','yes','sfsf sfsdf','1456828965'),(62,'dsdfgdfg dfgdfg','uddin','newpartner@fsdf.sdf','9856789056','2','Kolkata','male','no','yes','dfasfsdf','1456829112'),(63,'iftekar','gdfg','iftekarkta@gmail.com','9856789056','Albania','Kolkata','male','no','yes','asd','1456829349'),(64,'dsdfgdfg dfgdfg','gdfg','iftekarkta@gmail.com','9856789056','Belarus','kalyani','male','no','yes','sdfds','1456829533'),(65,'dsdfgdfg dfgdfg','gdfg','newpartner@fsdf.sdf','9856789056','2','Kolkata','male','no','yes','sdf sdfs fsdf','1456829570'),(66,'v test','v title','hiifte@gmail.com','9856789056','Belgium','kalyani','male','no','yes','fsdf sdfs fsdf sdf','1456894851'),(67,'kallol','ghosh','hiifte@gmail.com','9856789056','2','kalyani','female','yes','no','dv dfdg','1456894915'),(68,'Jane','Doe','jd123@gmail.com','8234561773','Antigua and Barbuda','gdmbudj','female','yes','no','This is just a test message','1456988935'),(69,'iftekar','gdfg','newpartner@fsdf.sdf','5345345','2','Kolkata','male','no','yes','vbcvbcv','1456999604'),(70,'iftekar','uddin','iftekarkta@gmail.com','9856789056','Bolivia','howrah','male','no','yes','cbcxbcb','1456999636'),(71,'iftekar','jaman','iftekarkta@gmail.com','9856789056','20','Kolkata','male','no','yes','xdv v','1456999937'),(72,'kjhkjhkjhkjhkj','gdfg','newpartner@fsdf.sdf','9856789056','Belize','Kolkata','male','no','yes','sddsfds','1457000026'),(73,'dsdfgdfg dfgdfg','gdfg','iftekarkta@gmail.com','5654646','Angola','rtytrytr','male','no','yes','xzc cxz','1457000083'),(74,'Ken','Jones','pnidirector@yahoo.com','888-555-1222','United States','santa ana','male','no','no','Sign me up!!!!!!!','1458057442'),(75,'iftekar','uddin','debasiskar007@gmail.com','s5345','Afghanistan','345345','male','no','yes','345345345','1458135525'),(76,'iftekar','jaman','debasiskar007@gmail.com','9856789056','Bangladesh','retert','male','no','yes','gfdgdfg','1458136338'),(77,'John','Smith','pnidirector@mac.com','888-555-1212','United States','Costa Mesa','male','yes','yes','Looking forward to hearing more about becoming a member.  Do you guys need contest directors? Are you hiring judges right now?  What would be the hourly wage for a part time worker?  Thank you.  Please get back to me asap.\nJohn S.','1459446957');
/*!40000 ALTER TABLE `contactuser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-12 13:03:49
