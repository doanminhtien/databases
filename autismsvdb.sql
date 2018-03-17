-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: autismsvdb
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Current Database: `autismsvdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `autismsvdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `autismsvdb`;

--
-- Table structure for table `career_type`
--

DROP TABLE IF EXISTS `career_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career_type` (
  `career_id` int(11) NOT NULL AUTO_INCREMENT,
  `career_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `career_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`career_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_type`
--

LOCK TABLES `career_type` WRITE;
/*!40000 ALTER TABLE `career_type` DISABLE KEYS */;
INSERT INTO `career_type` VALUES (1,'CongNhan','Công nhân làm trong nhà mấy'),(2,'NongDan','Nông nhân'),(3,'CanBo','Cán Bộ'),(4,'IT','Công Nghệ Thông Tin'),(5,'ThoDIen','Thợ Điện'),(6,'ThuKy','Thư Ký'),(7,'GiaoVien','Giáo Viên');
/*!40000 ALTER TABLE `career_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `fullName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_of_birth` datetime DEFAULT NULL,
  `father_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `mother_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_created` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `child_fk0` (`u_id`),
  CONSTRAINT `child_fk0` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child`
--

LOCK TABLES `child` WRITE;
/*!40000 ALTER TABLE `child` DISABLE KEYS */;
INSERT INTO `child` VALUES (1,2,'Tuấn Sinh','2015-10-23 00:00:00','Võ Tấn Trường','Chi Pu','2017-10-11 00:00:00',0,NULL),(2,2,'Tuấn Tú','2015-11-23 00:00:00','Võ Tấn Trường','Phuong Trinh','2017-10-11 00:00:00',0,NULL),(3,13,'Sang Tú','2015-11-23 00:00:00','Võ Tiến Thu','Hồ QUyênh','2017-10-11 00:00:00',0,NULL),(4,3,'Thị Tú','2015-11-23 00:00:00','Võ Tiến Thu','Võ Thị Trường','2017-10-11 00:00:00',0,NULL),(5,13,'Ta ta','2015-11-23 00:00:00','Lê Văn Hậu','Võ Thị Minh Tiến','2017-10-11 00:00:00',0,NULL),(6,4,'Xu Xu','2015-11-23 00:00:00','Lê Văn Hậu','Nguyễn Thị Khắc Ẩn','2017-10-11 00:00:00',0,NULL),(7,5,'Sang ','2015-11-23 00:00:00','Võ Tiến Thu','Nguyễn Thị Khắc Ẩn','2017-10-11 00:00:00',0,NULL),(8,5,'Tú','2015-11-23 00:00:00','Võ Tiến Thu','Nguyễn Thị Khắc Ẩn','2017-10-11 00:00:00',0,NULL),(9,6,'Ka','2015-11-23 00:00:00','Võ Tiến Thu','Đoàn Thị Minh Tiến','2017-10-11 00:00:00',0,NULL),(10,6,'Pi','2015-11-23 00:00:00','Võ Tiến Thu','Đoàn Thị Minh Tiến','2017-10-11 00:00:00',0,NULL),(11,14,'Cu','2015-11-23 00:00:00','Võ Tiến Thu','Đoàn Thị Minh Tiến','2017-10-11 00:00:00',0,NULL),(12,7,'Meo','2015-11-23 00:00:00','Võ Tiến Thu','Đoàn Thị Minh Tiến','2017-10-11 00:00:00',0,NULL),(13,10,'Béo','2015-11-23 00:00:00','Võ Tiến Thu','Võ Thị Trường','2017-10-11 00:00:00',0,NULL),(14,14,'Peo Peo','2015-11-23 00:00:00','Võ Tiến Thu','Võ Thị Trường','2017-10-11 00:00:00',0,NULL),(15,8,'Bù','2015-11-23 00:00:00','Võ Tiến Thu','Võ Thị Trường','2017-10-11 00:00:00',0,NULL),(16,8,'Chá','2015-11-23 00:00:00','Võ Tiến Thu','Võ Thị Trường','2017-10-11 00:00:00',0,NULL),(17,2,'Sang Tú','2015-11-23 00:00:00','Võ Tiến Thu','Võ Thị Trường','2017-10-11 00:00:00',0,NULL),(18,9,'TƠ','2015-11-23 00:00:00','Võ Tiến Thu','Võ Thị Trường','2017-10-11 00:00:00',0,NULL),(19,3,'Tiến','2015-11-23 00:00:00','Võ Tuấn Sinh','Điêu Thuyền','2017-10-11 00:00:00',0,NULL),(20,4,'Ẩn','2015-11-23 00:00:00','Lê Văn Hậu','Tây Thi','2017-10-11 00:00:00',0,NULL),(34,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(35,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(40,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(41,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(44,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(45,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(46,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(47,2,'An Nguyen','2010-01-05 00:00:00','dsd','','2017-10-23 00:00:00',0,'/images/images.jpg'),(48,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(49,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(50,2,'An Nguyen','2010-01-05 00:00:00','dsd','ad','2017-10-23 00:00:00',0,'/images/images.jpg'),(52,2,'An Nguyen','2010-01-05 00:00:00','dsd','asda','2017-10-27 00:00:00',1,'/images/22851541_1998504010434675_1860565726_o.jpg'),(53,2,'An Nguyen','2010-01-05 00:00:00','dsd','asda','2017-11-01 00:00:00',0,'/images/nintchdbpict0003290301282.jpg'),(54,15,'Ted Mosby','2017-01-03 00:00:00','Tien Mosby','None Mosby','2017-12-01 00:00:00',0,'/images/IMG_2164f8d2-4861-496b-9f78-7e7f1fea411b'),(55,16,'My Child','2017-12-31 00:00:00','Unknown ','Unknown ','2018-01-18 00:00:00',0,'/images/IMG_f4bd3406-e7eb-4cba-add1-4c35d12358f3'),(56,16,'My Child','2017-12-31 00:00:00','Unknown ','Unknown ','2018-01-18 00:00:00',0,'/images/IMG_f4bd3406-e7eb-4cba-add1-4c35d12358f3'),(57,15,'Doan Minh Tinh Tinh','2017-12-31 00:00:00','Doan Minh Tien','Unknown','2018-02-25 00:00:00',1,'/images/IMG_6fa1a2be-16c8-4f99-987f-7a72ae1d70fc'),(58,17,'Unknown ','2017-12-31 00:00:00','Unknown ','Unknown ','2018-03-03 00:00:00',0,'/images/IMG_eb99d5ac-9a78-4ec0-b031-6c6076c5ebaa'),(59,17,'Vi?n ','2017-12-31 00:00:00','Chemistry ','Chemistry ','2018-03-03 00:00:00',1,'/images/IMG_0fa95ac5-7c8e-498e-b246-7b145f7877c4');
/*!40000 ALTER TABLE `child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_child`
--

DROP TABLE IF EXISTS `child_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_child` (
  `c_id1` int(11) DEFAULT NULL,
  `similarity` float DEFAULT NULL,
  `c_id2` int(11) DEFAULT NULL,
  KEY `child_child_fk0` (`c_id1`),
  KEY `child_child_fk1` (`c_id2`),
  CONSTRAINT `child_child_fk0` FOREIGN KEY (`c_id1`) REFERENCES `child` (`c_id`),
  CONSTRAINT `child_child_fk1` FOREIGN KEY (`c_id2`) REFERENCES `child` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_child`
--

LOCK TABLES `child_child` WRITE;
/*!40000 ALTER TABLE `child_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_solution`
--

DROP TABLE IF EXISTS `child_solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_solution` (
  `c_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT '0',
  KEY `child_solution_fk0` (`c_id`),
  KEY `child_solution_fk1` (`s_id`),
  CONSTRAINT `child_solution_fk0` FOREIGN KEY (`c_id`) REFERENCES `child` (`c_id`),
  CONSTRAINT `child_solution_fk1` FOREIGN KEY (`s_id`) REFERENCES `solution` (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_solution`
--

LOCK TABLES `child_solution` WRITE;
/*!40000 ALTER TABLE `child_solution` DISABLE KEYS */;
INSERT INTO `child_solution` VALUES (1,4,3),(1,3,0),(1,2,0),(9,1,5),(11,1,2),(13,1,2),(14,1,2),(54,15,5),(54,16,4),(54,17,1),(54,18,4),(54,19,5);
/*!40000 ALTER TABLE `child_solution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_solution_recommend`
--

DROP TABLE IF EXISTS `child_solution_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_solution_recommend` (
  `c_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  KEY `c_id` (`c_id`),
  KEY `s_id` (`s_id`),
  CONSTRAINT `child_solution_recommend_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `child` (`c_id`),
  CONSTRAINT `child_solution_recommend_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `solution` (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_solution_recommend`
--

LOCK TABLES `child_solution_recommend` WRITE;
/*!40000 ALTER TABLE `child_solution_recommend` DISABLE KEYS */;
INSERT INTO `child_solution_recommend` VALUES (1,4,3),(1,2,NULL),(1,3,NULL);
/*!40000 ALTER TABLE `child_solution_recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `child_view`
--

DROP TABLE IF EXISTS `child_view`;
/*!50001 DROP VIEW IF EXISTS `child_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `child_view` AS SELECT 
 1 AS `c_id`,
 1 AS `name`,
 1 AS `date_of_birth`,
 1 AS `image_url`,
 1 AS `father`,
 1 AS `mother`,
 1 AS `income`,
 1 AS `sex`,
 1 AS `father_carrer`,
 1 AS `mother_carrer`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cluster`
--

DROP TABLE IF EXISTS `cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cluster` (
  `groupId` int(11) DEFAULT NULL,
  `center` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cluster`
--

LOCK TABLES `cluster` WRITE;
/*!40000 ALTER TABLE `cluster` DISABLE KEYS */;
INSERT INTO `cluster` VALUES (1,'1 0 1.5 1 3.5 1 0 0 0 1 .5 '),(2,'1 0 2.5 0 5.5 1 1 0 0 1 .5 '),(3,'1 0 1.5 1 3.5 1 2.5 0 0 0 '),(4,'1 0 2.5 1 3.5 1 0 0 1 1 .5 ');
/*!40000 ALTER TABLE `cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examination` (
  `ex_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `test_rule_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ex_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `exam_result` varchar(255) DEFAULT 'none',
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ex_id`),
  KEY `examination_fk0` (`c_id`),
  KEY `examination_fk1` (`test_rule_id`),
  CONSTRAINT `examination_fk0` FOREIGN KEY (`c_id`) REFERENCES `child` (`c_id`),
  CONSTRAINT `examination_fk1` FOREIGN KEY (`test_rule_id`) REFERENCES `test_rule` (`test_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (1,1,1,'2017-10-13 00:00:00',NULL,'none',0),(2,2,1,'2017-10-01 00:00:00',NULL,'none',1),(3,3,1,'2017-10-03 00:00:00',NULL,'0',0),(4,1,1,'2017-10-23 00:00:00',NULL,'none',0),(5,5,1,'2017-10-05 00:00:00',NULL,'none',0),(6,1,1,'2017-10-03 00:00:00',NULL,'none',0),(7,7,1,'2017-10-03 00:00:00',NULL,'none',0),(8,8,1,'2017-10-03 00:00:00',NULL,'none',0),(9,9,1,'2017-10-03 00:00:00',NULL,'none',0),(10,10,1,'2017-10-03 00:00:00',NULL,'none',0),(11,11,1,'2017-10-03 00:00:00',NULL,'none',0),(12,12,1,'2017-10-03 00:00:00',NULL,'none',0),(13,13,1,'2017-10-03 00:00:00',NULL,'none',0),(14,14,1,'2017-10-03 00:00:00',NULL,'none',0),(15,15,1,'2017-10-03 00:00:00',NULL,'none',0),(16,16,1,'2017-10-03 00:00:00',NULL,'none',0),(17,17,1,'2017-10-03 00:00:00',NULL,'none',0),(18,18,1,'2017-10-03 00:00:00',NULL,'none',0),(19,19,1,'2017-10-03 00:00:00',NULL,'none',0),(20,20,1,'2017-10-03 00:00:00',NULL,'none',0),(21,1,1,'2017-11-02 00:00:00','test con toi','none',0),(22,54,1,'2017-12-01 00:00:00','First exam','0',0),(23,54,1,'2017-12-02 00:00:00','second one','1',0),(24,55,1,'2018-01-18 00:00:00','bai test dau tien','1',0),(25,54,1,'2018-02-21 00:00:00','Cho Vui','0',1),(26,57,1,'2018-02-25 00:00:00','Fun','none',0),(27,57,1,'2018-02-27 00:00:00','a','0',0),(28,54,1,'2018-03-01 00:00:00','Test','0',1),(29,54,1,'2018-03-03 00:00:00','Kt lan 1','1',0),(30,58,1,'2018-03-03 00:00:00','lan 2','0',0);
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `examinationview`
--

DROP TABLE IF EXISTS `examinationview`;
/*!50001 DROP VIEW IF EXISTS `examinationview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `examinationview` AS SELECT 
 1 AS `ex_id`,
 1 AS `ex_title`,
 1 AS `test_rule_id`,
 1 AS `exam_result`,
 1 AS `deleted`,
 1 AS `c_id`,
 1 AS `u_id`,
 1 AS `fullName`,
 1 AS `date_of_birthFROM`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `extra_info`
--

DROP TABLE IF EXISTS `extra_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra_info` (
  `c_id` int(11) DEFAULT NULL,
  `fater_career_id` int(11) DEFAULT NULL,
  `divorce_status` tinyint(1) DEFAULT NULL,
  `mother_career_id` int(11) DEFAULT NULL,
  `monthly_income` int(11) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  KEY `extra_info_fk0` (`c_id`),
  KEY `extra_info_fk1` (`fater_career_id`),
  KEY `extra_info_fk2` (`mother_career_id`),
  KEY `extra_info_fk3` (`monthly_income`),
  CONSTRAINT `extra_info_fk0` FOREIGN KEY (`c_id`) REFERENCES `child` (`c_id`),
  CONSTRAINT `extra_info_fk1` FOREIGN KEY (`fater_career_id`) REFERENCES `career_type` (`career_id`),
  CONSTRAINT `extra_info_fk2` FOREIGN KEY (`mother_career_id`) REFERENCES `career_type` (`career_id`),
  CONSTRAINT `extra_info_fk3` FOREIGN KEY (`monthly_income`) REFERENCES `income_type` (`income_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_info`
--

LOCK TABLES `extra_info` WRITE;
/*!40000 ALTER TABLE `extra_info` DISABLE KEYS */;
INSERT INTO `extra_info` VALUES (1,2,1,2,1,0.5,20,1,1),(2,2,0,2,1,0.5,20,1,1),(3,3,0,4,2,0.5,20,1,1),(2,2,0,2,1,0.5,2,1,1),(3,3,0,4,2,0.5,5,1,2),(4,4,0,7,9,0.5,7,1,3),(5,7,0,2,3,0.5,2,1,1),(6,5,0,1,7,0.5,1,1,2),(7,6,0,6,8,0.5,2,1,3),(8,7,0,7,1,0.5,5.5,1,1),(9,6,0,5,2,0.5,4,1,1),(10,4,0,4,3,0.5,14,1,2),(11,6,0,3,4,0.5,9,1,3),(12,4,0,2,5,0.5,10,1,2),(13,2,0,1,1,0.5,11,1,1),(14,1,0,2,2,0.5,12,1,1),(15,3,0,5,2,0.5,7,1,3),(16,2,0,4,4,0.5,9,1,3),(17,5,0,2,8,0.5,10.5,1,2),(41,2,0,2,1,0,0,0,1),(52,1,0,2,3,0,0,4,1),(53,1,0,2,3,0,0,4,1),(54,3,0,5,5,0,0,0,4),(55,2,0,6,5,0,0,0,4),(56,2,0,6,5,0,0,0,0),(57,3,0,6,4,0,0,0,0),(59,6,0,2,3,0,0,0,0);
/*!40000 ALTER TABLE `extra_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_type`
--

DROP TABLE IF EXISTS `income_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income_type` (
  `income_id` int(11) NOT NULL AUTO_INCREMENT,
  `range` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_type`
--

LOCK TABLES `income_type` WRITE;
/*!40000 ALTER TABLE `income_type` DISABLE KEYS */;
INSERT INTO `income_type` VALUES (1,'Thấp'),(2,'TB Khá'),(3,' Khá'),(4,'TB Cao'),(5,'Cao'),(6,'Rất Cao'),(7,'Rất Rất Cao'),(8,'Siêu Cao'),(9,'Tỉ Phú');
/*!40000 ALTER TABLE `income_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `like_view`
--

DROP TABLE IF EXISTS `like_view`;
/*!50001 DROP VIEW IF EXISTS `like_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `like_view` AS SELECT 
 1 AS `s_id`,
 1 AS `likes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `likeview`
--

DROP TABLE IF EXISTS `likeview`;
/*!50001 DROP VIEW IF EXISTS `likeview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `likeview` AS SELECT 
 1 AS `s_id`,
 1 AS `likes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `url` text,
  `image_url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Title1','Description1','Url1','Image Url 1');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solution`
--

DROP TABLE IF EXISTS `solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solution` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `s_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `s_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `s_picture` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_created` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`s_id`),
  KEY `solution_fk0` (`u_id`),
  CONSTRAINT `solution_fk0` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solution`
--

LOCK TABLES `solution` WRITE;
/*!40000 ALTER TABLE `solution` DISABLE KEYS */;
INSERT INTO `solution` VALUES (1,1,'ăn cơm chay','trẻ nên đi tu, tích đức để có thể vượt qua bệnh tật',NULL,'2017-10-13 00:00:00',0),(2,3,'uống nhiều nước','nên cho trẻ em uống ngày 3-5 lít nước ',NULL,'2017-10-13 00:00:00',0),(3,4,'chơi game nhiều vào','nên sắm cho trẻ 1 giàn máy tính tốt để chơi game',NULL,'2017-10-13 00:00:00',0),(4,5,'ăn nhiều trái cây','trẻ nên ăn nhiều trái cây, đặc biệt là trái mù u',NULL,'2017-10-13 00:00:00',0),(5,7,'choi the thao','test thôi','/url/cceer.jpg','2017-10-01 00:00:00',0),(9,1,'danh lon','danh lon voi tre khac','danh lon','2017-11-01 00:00:00',0),(10,1,'test','test','/test.jpg','2017-11-14 00:00:00',0),(11,1,'test day',' chi de test','test day','2017-12-01 00:00:00',0),(13,1,'test day',' chi de test','test day','2017-12-01 00:00:00',0),(14,1,'test day',' chi de test','test day','2017-12-01 00:00:00',0),(15,15,'boss dmt solution','super solution','none','2017-12-01 00:00:00',0),(16,15,'super solution 2','I\'m supoer man','none','2017-12-01 00:00:00',0),(17,15,'solution super 3','I\'m super super man','none','2017-12-01 00:00:00',0),(18,15,'Solution number 2','Actually I don\'t how to say this but the truth is there is no way you can fix Autism. But, it is possible to reduce the affection of AUTISM so that your child can become more ....','none','2017-12-08 00:00:00',0),(19,15,'1','2','none','2018-02-21 00:00:00',0);
/*!40000 ALTER TABLE `solution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solution_like`
--

DROP TABLE IF EXISTS `solution_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solution_like` (
  `s_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  KEY `s_id` (`s_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `solution_like_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `solution` (`s_id`),
  CONSTRAINT `solution_like_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solution_like`
--

LOCK TABLES `solution_like` WRITE;
/*!40000 ALTER TABLE `solution_like` DISABLE KEYS */;
INSERT INTO `solution_like` VALUES (1,1),(1,2),(2,1),(3,4),(3,1),(2,8),(4,3),(3,2),(1,4),(1,4),(9,2),(10,1),(2,2),(11,2),(13,2),(14,2),(16,15),(17,15),(1,15),(18,15),(19,15),(2,15);
/*!40000 ALTER TABLE `solution_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solution_subcribe`
--

DROP TABLE IF EXISTS `solution_subcribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solution_subcribe` (
  `s_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  KEY `s_id` (`s_id`),
  KEY `c_id` (`c_id`),
  CONSTRAINT `solution_subcribe_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `solution` (`s_id`),
  CONSTRAINT `solution_subcribe_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `child` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solution_subcribe`
--

LOCK TABLES `solution_subcribe` WRITE;
/*!40000 ALTER TABLE `solution_subcribe` DISABLE KEYS */;
INSERT INTO `solution_subcribe` VALUES (1,2),(1,4),(9,1),(11,1),(13,1),(14,1),(15,54),(16,54),(4,54),(17,54),(2,54),(1,54),(18,54),(1,55),(19,54),(1,57),(2,57);
/*!40000 ALTER TABLE `solution_subcribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `solution_view`
--

DROP TABLE IF EXISTS `solution_view`;
/*!50001 DROP VIEW IF EXISTS `solution_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `solution_view` AS SELECT 
 1 AS `id`,
 1 AS `s_title`,
 1 AS `s_content`,
 1 AS `s_picture`,
 1 AS `date_created`,
 1 AS `deleted`,
 1 AS `likes`,
 1 AS `subcribes`,
 1 AS `contributer`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `subcribed_view`
--

DROP TABLE IF EXISTS `subcribed_view`;
/*!50001 DROP VIEW IF EXISTS `subcribed_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `subcribed_view` AS SELECT 
 1 AS `s_id`,
 1 AS `subcribes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `ex_id` int(11) DEFAULT NULL,
  `result_test` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`test_id`),
  KEY `test_fk0` (`type_id`),
  CONSTRAINT `test_fk0` FOREIGN KEY (`type_id`) REFERENCES `test_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,1,1,'0 1 1 1 1',0),(2,1,1,'0 0 0 1 0',0),(3,1,1,'0 0 0 1 1',0),(4,1,4,'1 1 1 1 1',0),(5,1,5,'1 1 1 1 1',0),(6,1,6,'1 1 1 0 0',0),(7,1,7,'1 0 0 1 0',0),(8,1,8,'1 1 1 1 0',0),(9,1,9,'1 1 1 1 1',0),(10,1,10,'0 0 0 0 1',0),(11,1,11,'0 0 0 0 1',0),(12,1,12,'1 1 1 1 1',0),(13,1,13,'1 1 1 1 1',0),(14,1,14,'0 0 1 0 1',0),(15,1,15,'1 1 1 1 1',0),(16,1,16,'1 1 1 1 0',0),(17,1,17,'1 1 1 1 1',0),(18,1,18,'1 1 1 1 0',0),(19,1,19,'1 1 1 1 1',0),(20,1,20,'1 1 1 1 0',0),(21,2,1,'0 0 1 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 0 0 1 0 1',0),(22,2,2,'0 1 0 1 1 1 1 0 1 1 0 1 1 0 0 0 1 0 1 0 1 0 0',0),(23,2,3,'1 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 1 0 1 0 0 0 1',0),(24,2,4,'0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 0 0 0 1 0 0',0),(25,2,5,'0 0 0 0 1 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0 1 1 1',0),(26,2,6,'1 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 1 0',0),(27,2,7,'1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1',0),(28,2,8,'0 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 0 1',0),(29,2,9,'0 1 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1',0),(30,2,10,'0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0',0),(31,2,11,'0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 0 1 0 0 1 0 0',0),(32,2,12,'0 1 0 0 1 0 0 0 1 0 1 1 0 1 0 0 0 0 1 0 0 0 1',0),(33,2,13,'0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 1',0),(34,2,14,'0 0 0 0 1 1 1 0 0 1 1 0 0 0 1 0 0 0 0 0 1 0 1',0),(35,2,15,'1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 1 0 1 0 1 1 1',0),(36,2,16,'0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 0 0 1 0 1',0),(37,2,17,'1 1 1 1 1 1 1 1 1 0 0 1 1 0 1 0 1 1 1 0 1 1 1',0),(38,2,18,'0 0 0 0 1 1 1 0 0 1 1 0 1 0 0 0 0 0 0 0 1 1 1',0),(39,2,19,'0 0 0 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1',0),(40,2,20,'0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 0 1 0 0 0 1',0),(41,3,1,'3 3 3 3 4 4 4 3 3 4 3.5 3.5 3 4 4',0),(42,3,2,'2 3 2.5 3 2.5 2 3 2 1 2 4 4 2 3 3.5',0),(43,3,3,'3 2.5 2.5 2.5 2.5 3 3 2.5 2.5 3 3.5 3.5 3 3.5 3',0),(44,3,4,'2.5 2 2.5 2 2 3 2.5 2.5 2.5 3 3 3 1 3 3',0),(45,3,5,'3 2 2 2 2 2 2 1 1 3 3 3 2 3 3',0),(46,3,6,'2 2 2 2 2 2 1 1 1 2 3 3 2 3 2',0),(47,3,7,'3 4 4 4 3 4 3.5 3 3 3.5 4 3.5 3.5 3.5 4',0),(48,3,8,'3 3 2 2 3 2 3 2 2 3 3.5 3.5 2 3.5 3',0),(49,3,9,'2 2 2 2 2 2 3 2 1 2 3 3 2 3 3',0),(50,3,10,'3 2.5 2.5 2.5 2.5 3.5 2 2.5 3 4 3 2.5 2.5 3 2.5',0),(51,3,11,'3 3 3 2.5 2.5 2.5 2.5 2.5 2 2 3.5 3 3 3 2.5',0),(52,3,12,'2.5 2 1.5 1.5 2 2 1.5 2 1.5 1.5 3.5 3 2 3 1.5',0),(53,3,13,'3 3 2.5 2.5 2.5 3 3 3 2.5 2.5 3 3 2.5 3 3',0),(54,3,14,'2 2 2 2 2 2 2 2 2 2 3 3 3 3 2',0),(55,3,15,'3.5 3.5 3 3.5 3.5 3 3.5 3 3 3.5 4 3 3.5 4 3.5',0),(56,3,16,'2 2 2 2 2 2 3 2 2 2 3 3 2 3 3',0),(57,3,17,'3 4 3 3 4 4 3 2 2 3 4 4 4 4 4',0),(58,3,18,'2 2 2 2 2 2 3 2 2 3 3 3 2 3 3',0),(59,3,19,'3 2.5 2.5 3 2 2.5 3 3 3 3 3 3 2 3 3',0),(60,3,20,'3 2.5 2 2.5 2.5 2 2 1.5 1.5 1.5 2.5 2 2 3 2',0),(61,1,3,'1 0 0 1 0 1 1',0),(62,1,3,'1 0 0 1 0 1 1',0),(63,1,3,'1 0 0 1 0 1 1',0),(64,1,3,'0 0 0 0 0 0 0',0),(65,3,3,' 1 3 4 5 1 2 3 4 5  5 7 3 2 3 1 2',0),(66,2,3,' 0.0 1.0 1.0 0.0 1.0 0.0 0.0 1.0 1.0 1',0),(67,1,3,' 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0',0),(68,1,3,' 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 0',0),(69,1,3,' 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 1',0),(70,1,3,' 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0',0),(71,3,3,' 1.5 1.5 1.5 1.5 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 2',0),(72,3,3,' 1.5 1.5 1.5 1.5 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0',0),(73,1,22,'0 1 0 1 1 1',0),(74,2,22,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1',0),(75,3,22,'3.0 4.0 3.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0',0),(76,1,23,'1 1 0 0 1 1',0),(77,2,23,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1',0),(78,3,23,'4.0 3.5 3.5 3.0 3.0 3.0 2.5 1.0 1.0 1.0 1.0 1.0 3.0 3.0 1.0 1',0),(79,1,24,'0 0 1 0 0 1',0),(80,2,24,'0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 1',0),(81,3,24,'1.5 2.5 2.0 2.0 2.0 2.0 1.0 4.0 4.0 4.0 4.0 3.0 2.0 2.0 2.0 2',0),(82,1,26,'0 1 0 0 0 1',0),(83,2,26,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1',0),(84,1,27,'1 1 2 2 1 1',0),(85,2,27,'0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 0 1 0 0',0),(86,3,27,'1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0',0),(87,1,25,'0 0 0 0 0 0',0),(88,2,25,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1',0),(89,3,25,'1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0',0),(90,1,28,'0 0 0 1 0 1',0),(91,2,28,'1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1',0),(92,3,28,'3.0 2.5 3.0 2.5 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0',0),(93,1,29,'0 1 0 1 0 1',0),(94,2,29,'0 0 0 1 0 1 0 0 1 1 0 1 0 1 0 1 0 1 1 1 1 1 1 1',0),(95,3,29,'2.5 3.0 2.5 3.5 2.0 3.5 3.0 3.0 3.5 3.0 2.5 3.0 3.5 3.0 3.5 2',0),(96,1,30,'0 1 1 1 0 1',0),(97,2,30,'0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 1',0),(98,3,30,'3.0 3.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 3.0 3.0 3.0 3.0 3.0 2',0),(99,3,30,'3.0 3.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 3.0 3.0 3.0 3.0 3.0 2',0),(100,3,30,'3.0 3.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 3.0 3.0 3.0 3.0 3.0 2',0),(101,3,30,'3.0 3.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 3.0 3.0 3.0 3.0 3.0 2',0),(102,3,30,'3.0 3.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 4.0 3.0 3.0 3.0 3.0 3.0 2',0),(103,3,30,'3.0 2.5 3.0 3.5 3.5 3.0 3.0 3.5 3.5 3.5 3.0 3.5 4.0 4.0 4.0 2',0),(104,3,30,'3.0 2.5 3.0 3.5 3.5 3.0 3.0 3.5 3.5 3.5 3.0 3.5 4.0 4.0 4.0 2',0),(105,3,30,'3.0 2.5 3.0 3.5 3.5 3.0 3.0 3.5 3.5 3.5 3.0 3.5 4.0 4.0 3.0 2',0),(106,3,30,'3.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 2.5 3.0 1.0 0',0);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_rule`
--

DROP TABLE IF EXISTS `test_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_rule` (
  `test_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`test_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_rule`
--

LOCK TABLES `test_rule` WRITE;
/*!40000 ALTER TABLE `test_rule` DISABLE KEYS */;
INSERT INTO `test_rule` VALUES (1,'2017-10-13 00:00:00',1);
/*!40000 ALTER TABLE `test_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_rule_detail`
--

DROP TABLE IF EXISTS `test_rule_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_rule_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_rule_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `test_rule_detail_fk0` (`test_rule_id`),
  KEY `test_rule_detail_fk1` (`type_id`),
  CONSTRAINT `test_rule_detail_fk0` FOREIGN KEY (`test_rule_id`) REFERENCES `test_rule` (`test_rule_id`),
  CONSTRAINT `test_rule_detail_fk1` FOREIGN KEY (`type_id`) REFERENCES `test_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_rule_detail`
--

LOCK TABLES `test_rule_detail` WRITE;
/*!40000 ALTER TABLE `test_rule_detail` DISABLE KEYS */;
INSERT INTO `test_rule_detail` VALUES (1,1,1,1),(2,1,2,2),(3,1,3,3);
/*!40000 ALTER TABLE `test_rule_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_type`
--

DROP TABLE IF EXISTS `test_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `question_src` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_type`
--

LOCK TABLES `test_type` WRITE;
/*!40000 ALTER TABLE `test_type` DISABLE KEYS */;
INSERT INTO `test_type` VALUES (1,'CoDo','/testfiles/codo.txt'),(2,'MChat','/testfiles/mchat.txt'),(3,'Cars','/testfiles/cars.txt');
/*!40000 ALTER TABLE `test_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `tk_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `token` text,
  PRIMARY KEY (`tk_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `token_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (3,4,'566dfba2886807e0767882cdde813e312b0ddb525f76084d11db94e94f48c5e2'),(4,2,'5609b662ab5c429bb5147abf73d88a74f58bc44d23a0bf68fd72eac123537bae'),(10,12,'12c3be4d065310f6264202c36e57f1b26fe1d21237c097e4717af324021abc99'),(11,13,'93ce4dd6fe737b76ed61fb40e552f50e553aac1b09ba034c3fb05beeb9bd78d8'),(12,14,'a7e42d794fd3b0ad3ceaf2d2679b508c10214c19d06406df969de9026ee3ca32'),(16,5,'5a011f1a4ab81d6815e1c224b2c717eb0d4f05014f8ba55e4169e631fad2503b4'),(17,15,'1565c21b2ea253db84c3357d028e611defd715f4fd42c16e98de5660643539f469'),(18,15,'159ecbc63d0b283f7ce6aa6bf43e3c0d5f0c480eb281a58ef4a44cd0e2440635ed'),(19,15,'15ab1147eb221967b02e9e53d68f009ec90943341b5e4ab413b97cec3decf446dd'),(20,15,'659125c3c3f5f5361ad3ebe9bcb7ebbaa319efc19f5242abec5197b06874e2f4'),(21,15,'68cd134b852e46b645db0d93ad493ee9509de1fcf12ced81a8a62b27d9873fdc'),(22,16,'8eb2f76734d63a22703714f8a1dc144ab4f2b5e591a67fab9685cbdb86db3cfb'),(23,15,'1549a6ab30a20b7d3aa2a5cb1b1f10aa00de96fb471d78031408deb7c12d7a2ffe'),(24,15,'15cf71c364e7f1db6d6de38f8684e4b36860a0bf67d1ac3f77c9a5acaf06ee661f'),(25,15,'158c01beed0a43cb6509568c77313474bb5a3bc8e927f6259dfcd48fdc714667cf'),(26,15,'c78f1997af9c026597f650182d57fe72abc90fb416ece19b2f6a426b98744c14'),(27,17,'17f843c4c85428aab7d50c870b3572111cacd4ebc4c75895fcce795f8551d6e122'),(28,17,'17df49da500f247938b64e21787135aabd9500b659913c960e5311d6d8def31ea0'),(29,17,'1721adab8c70fb1a53be732c63a9bf33257b2e064544ea1063d61818c4fd0e04b8');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fullName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `age` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','Nguyễn Admin','QN','0976679753','adcm.edu@gmail','1994-01-05 00:00:00','2017-10-08 00:00:00',0),(2,'user01','aad415a73c4cef1ef94a5c00b2642b571a3e5494536328ad960db618','Nguyễn Khắc Ẩn',NULL,NULL,NULL,NULL,NULL,2),(3,'VoCongTaiThe','aad415a73c4cef1ef94a5c00b2642b571a3e5494536328ad960db61889bd9368','Võ Công Tái Thế','Đại Lộc','0975012445','vanhau@gmail.com','1999-10-29 00:00:00','2017-10-24 05:15:15',1),(4,'NoName1','aad415a73c4cef1ef94a5c00b2642b571a3e5494536328ad960db61889bd9368','Võ Đại Ca','Quang Ngãi','01221515245','daica@gmai.com','1999-10-03 00:00:00','2017-10-09 00:00:00',1),(5,'NoName2','aad415a73c4cef1ef94a5c00b2642b571a3e5494536328ad960db61889bd9368','Le Đại Hoaf','Quang Nam','01221518845','daica1@gmai.com','1999-10-03 00:00:00','2017-10-09 00:00:00',1),(6,'NoName3','aad415a73c4cef1ef94a5c00b2642b571a3e5494536328ad960db61889bd9368','Nguyen Đại Hoaf','Quang Nam','01221518845','daica1@gmai.com','1999-10-03 00:00:00','2017-10-09 00:00:00',0),(7,'NoName4','aad415a73c4cef1ef94a5c00b2642b571a3e5494536328ad960db61889bd9368','Võ Đại Hoaf','Quang Nam','01221518845','daica1@gmai.com','1999-10-03 00:00:00','2017-10-09 00:00:00',1),(8,'NoName5','aad415a73c4cef1ef94a5c00b2642b571a3e5494536328ad960db61889bd9368','Võ Đại BB','Quang Nam','01221518845','daica1@gmai.com','1999-10-03 00:00:00','2017-10-09 00:00:00',0),(9,'User2','aad415a73c4cef1ef94a5c00b2642b571a3e5494536328ad960db61889bd9368','Võ Đại AAA','Quang Bình','01221518845','dais1@gmai.com','1999-10-03 00:00:00','2017-10-09 00:00:00',1),(10,'User4','aad415a73c4cef1ef94a5c00b2642b571a3e5494536328ad960db61889bd9368','Trương Hồng Koong','Hà Nội','094421518845','tutuca1@gmai.com','1999-10-03 00:00:00','2017-10-09 00:00:00',1),(12,'user02','1232132344','khac an','Address of user','phone number of user','emailofuser@dmt.com','1994-01-05 00:00:00','2017-10-18 00:00:00',2),(13,'dmt','dmt','dmt','dmt','123456','dmt@dmt.com','1995-01-09 00:00:00','2017-10-18 00:00:00',2),(14,'doanminhtien','123456','Doan Minh Tien','K82/103 Nguyen Luong Bang','0942834097','iamdoanminhtien@gmail.com','1995-01-19 00:00:00','2017-10-18 00:00:00',2),(15,'bossdmt','e1adc3949ba59abbe56e057f2f883e','Doan Tien','None','095255','iamdoanminhtien@gmail.com','1995-01-08 00:00:00','2017-12-01 00:00:00',2),(16,'doantien1','e1adc3949ba59abbe56e057f2f883e','Doan ','T ','0942834097','doanminhtien@outlook.com','2018-01-01 00:00:00','2018-01-18 00:00:00',2),(17,'nvhieu','e1adc3949ba59abbe56e057f2f883e','Nguyen Van Hieu','Da Nang','0869129684','nvhieu@dut.udn.vn','1982-01-01 00:00:00','2018-01-01 00:00:00',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `autismsvdb`
--

USE `autismsvdb`;

--
-- Final view structure for view `child_view`
--

/*!50001 DROP VIEW IF EXISTS `child_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `child_view` AS select `child`.`c_id` AS `c_id`,`child`.`fullName` AS `name`,`child`.`date_of_birth` AS `date_of_birth`,`child`.`image_url` AS `image_url`,`child`.`father_name` AS `father`,`child`.`mother_name` AS `mother`,`income_type`.`range` AS `income`,`extra_info`.`sex` AS `sex`,(select `career_type`.`career_title` from `career_type` where (`career_type`.`career_id` = `extra_info`.`fater_career_id`)) AS `father_carrer`,(select `career_type`.`career_title` from `career_type` where (`career_type`.`career_id` = `extra_info`.`mother_career_id`)) AS `mother_carrer` from ((`child` left join `extra_info` on((`child`.`c_id` = `extra_info`.`c_id`))) left join `income_type` on((`extra_info`.`monthly_income` = `income_type`.`income_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `examinationview`
--

/*!50001 DROP VIEW IF EXISTS `examinationview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `examinationview` AS select `examination`.`ex_id` AS `ex_id`,`examination`.`ex_title` AS `ex_title`,`examination`.`test_rule_id` AS `test_rule_id`,`examination`.`exam_result` AS `exam_result`,`examination`.`deleted` AS `deleted`,`child`.`c_id` AS `c_id`,`child`.`u_id` AS `u_id`,`child`.`fullName` AS `fullName`,`child`.`date_of_birth` AS `date_of_birthFROM` from (`examination` join `child` on((`examination`.`c_id` = `child`.`c_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `like_view`
--

/*!50001 DROP VIEW IF EXISTS `like_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `like_view` AS select `solution`.`s_id` AS `s_id`,count(`solution_like`.`u_id`) AS `likes` from (`solution` left join `solution_like` on((`solution`.`s_id` = `solution_like`.`s_id`))) group by `solution`.`s_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `likeview`
--

/*!50001 DROP VIEW IF EXISTS `likeview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `likeview` AS select `solution_like`.`s_id` AS `s_id`,count(`solution_like`.`u_id`) AS `likes` from `solution_like` group by `solution_like`.`s_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `solution_view`
--

/*!50001 DROP VIEW IF EXISTS `solution_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `solution_view` AS select `solution`.`s_id` AS `id`,`solution`.`s_title` AS `s_title`,`solution`.`s_content` AS `s_content`,`solution`.`s_picture` AS `s_picture`,`solution`.`date_created` AS `date_created`,`solution`.`deleted` AS `deleted`,`like_view`.`likes` AS `likes`,`subcribed_view`.`subcribes` AS `subcribes`,`user`.`fullName` AS `contributer`,`user`.`email` AS `email` from (((`solution` join `like_view` on((`solution`.`s_id` = `like_view`.`s_id`))) join `subcribed_view` on((`solution`.`s_id` = `subcribed_view`.`s_id`))) join `user` on((`solution`.`u_id` = `user`.`u_id`))) group by `solution`.`s_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subcribed_view`
--

/*!50001 DROP VIEW IF EXISTS `subcribed_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subcribed_view` AS select `solution`.`s_id` AS `s_id`,count(`solution_subcribe`.`c_id`) AS `subcribes` from (`solution` left join `solution_subcribe` on((`solution`.`s_id` = `solution_subcribe`.`s_id`))) group by `solution`.`s_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-17 11:56:45
