CREATE DATABASE  IF NOT EXISTS `pwh_hotel1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pwh_hotel1`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: pwh_hotel1
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pwh_comment`
--

DROP TABLE IF EXISTS `pwh_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pwh_comment` (
  `cId` varchar(36) NOT NULL,
  `hotelId` int(11) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `com` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cId`),
  KEY `FK_use` (`username`),
  CONSTRAINT `FK_use` FOREIGN KEY (`username`) REFERENCES `pwh_users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwh_comment`
--

LOCK TABLES `pwh_comment` WRITE;
/*!40000 ALTER TABLE `pwh_comment` DISABLE KEYS */;
INSERT INTO `pwh_comment` VALUES ('2c948a826f7aec6c016f7aedafb00000',3,'潘伟航','还可以');
/*!40000 ALTER TABLE `pwh_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwh_hotelinformation`
--

DROP TABLE IF EXISTS `pwh_hotelinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pwh_hotelinformation` (
  `hotelId` int(11) NOT NULL,
  `username` varchar(36) NOT NULL,
  `hotelname` varchar(50) DEFAULT NULL,
  `area` varchar(50) NOT NULL,
  `place` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`hotelId`),
  KEY `fk` (`username`),
  CONSTRAINT `fk` FOREIGN KEY (`username`) REFERENCES `pwh_users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwh_hotelinformation`
--

LOCK TABLES `pwh_hotelinformation` WRITE;
/*!40000 ALTER TABLE `pwh_hotelinformation` DISABLE KEYS */;
INSERT INTO `pwh_hotelinformation` VALUES (1,'李彤','布丁','杭州','留下店','057185663336'),(2,'李彤','汉庭','杭州','西湖店','057134234343'),(3,'潘银','圣西罗','杭州','留下店','057123188281'),(4,'潘银','布丁','上海','浦东店','068378123687'),(5,'潘银','速8','上海','静安店','068353281622'),(6,'李彤','格蕾丝精选酒店','杭州','西湖区','057185663337'),(7,'李彤','李彤的小窝','杭州','西湖区','057185663314'),(8,'潘银','潘银的小窝','杭州','西湖区','057185663345');
/*!40000 ALTER TABLE `pwh_hotelinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwh_order1`
--

DROP TABLE IF EXISTS `pwh_order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pwh_order1` (
  `oId` varchar(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `roomId` int(11) DEFAULT NULL,
  `hotelname` varchar(50) DEFAULT NULL,
  `roomstyle` varchar(50) DEFAULT NULL,
  `uname` varchar(36) DEFAULT NULL,
  `ordernumber` int(11) DEFAULT NULL,
  `checkinTime` varchar(30) DEFAULT NULL,
  `checkoutTime` varchar(30) DEFAULT NULL,
  `orderTime` varchar(30) DEFAULT NULL,
  `statu` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`oId`),
  KEY `FK_username` (`username`),
  KEY `FK_roomId` (`roomId`),
  CONSTRAINT `FK_roomId` FOREIGN KEY (`roomId`) REFERENCES `pwh_room` (`roomId`),
  CONSTRAINT `FK_username` FOREIGN KEY (`username`) REFERENCES `pwh_users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwh_order1`
--

LOCK TABLES `pwh_order1` WRITE;
/*!40000 ALTER TABLE `pwh_order1` DISABLE KEYS */;
INSERT INTO `pwh_order1` VALUES ('2c948a826f70e996016f70eb48910000','潘伟航',1,'圣西罗','大床房','潘银',1,'01/04/2020','01/07/2020','2020-01-04 22:17:45','已取消'),('2c948a826f70e996016f70ed56030001','潘伟航',1,'圣西罗','大床房','潘银',1,'01/04/2020','01/07/2020','2020-01-04 22:19:59','已完成'),('2c948a826f70e996016f70f7030b0002','潘银',1,'圣西罗','大床房','潘银',2,'01/03/2020','01/13/2020','2020-01-04 22:30:33','已取消'),('2c948a826f737a0b016f737d07750000','潘伟航',1,'圣西罗','大床房','潘银',1,'01/03/2020','01/13/2020','2020-01-05 10:16:11','已完成'),('2c948a826f737a0b016f738719100001','潘伟航',3,'速8','大床房','潘银',2,'01/04/2020','01/07/2020','2020-01-05 10:27:11','已取消'),('2c948a826f7a8618016f7a88f40c0000','潘伟航',8,'格蕾丝精选酒店','单人房','李彤',2,'01/04/2020','01/14/2020','2020-01-06 19:06:33','已完成'),('2c948a826f7a922b016f7a92edf90000','潘伟航',3,'速8','大床房','潘银',2,'01/04/2020','01/07/2020','2020-01-06 19:17:27','已取消'),('2c948a826f7a9433016f7a9593ac0000','潘伟航',8,'格蕾丝精选酒店','单人房','李彤',2,'02/01/2020','02/04/2020','2020-01-06 19:20:20','已取消'),('4028ab526f8337ea016f833c4e900000','潘伟航',3,'速8','大床房','潘银',1,'01/04/2020','01/14/2020','2020-01-08 11:39:25','已预订'),('ff8080816f7396c9016f739730d60000','潘伟航',3,'速8','大床房','潘银',2,'01/03/2020','01/14/2020','2020-01-05 10:44:45','已取消'),('ff8080816f7396c9016f739865610001','潘伟航',3,'速8','大床房','潘银',2,'01/03/2020','01/14/2020','2020-01-05 10:46:04','已取消'),('ff8080816f73b124016f73b1a20f0000','潘伟航',3,'速8','大床房','潘银',3,'01/04/2020','01/14/2020','2020-01-05 11:13:38','已取消'),('ff8080816f75df6a016f75e10dc50000','潘伟航',3,'速8','大床房','潘银',1,'01/04/2020','01/07/2020','2020-01-05 21:24:40','已完成'),('ff8080816f760a27016f760ede4b0000','潘伟航',7,'汉庭','双床房','李彤',1,'01/04/2020','01/07/2020','2020-01-05 22:14:43','已取消'),('ff8080816f7bb6c4016f7bd2dd390000','潘伟航',7,'汉庭','双床房','李彤',2,'01/04/2020','01/07/2020','2020-01-07 01:06:54','已预订'),('ff8080816f7bb6c4016f7bd7a8520001','潘伟航',2,'布丁','大床房','潘银',1,'01/04/2020','01/07/2020','2020-01-07 01:12:08','已预订'),('ff8080816f7e444f016f7e44ed6f0000','潘伟航',5,'圣西罗','单人房','潘银',1,'01/04/2020','01/07/2020','2020-01-07 12:30:44','已取消'),('ff8080816f82dd2f016f82dde4bf0000','潘伟航',4,'圣西罗','双床房','潘银',2,'01/04/2020','01/07/2020','2020-01-08 09:56:17','已预订');
/*!40000 ALTER TABLE `pwh_order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwh_room`
--

DROP TABLE IF EXISTS `pwh_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pwh_room` (
  `roomId` int(11) NOT NULL,
  `hotelId` int(11) DEFAULT NULL,
  `hotelname` varchar(50) DEFAULT NULL,
  `username` varchar(36) NOT NULL,
  `roomstyle` varchar(50) DEFAULT NULL,
  `breakfast` varchar(30) DEFAULT NULL,
  `unit` double DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roomId`),
  KEY `FK_hotelId` (`hotelId`),
  CONSTRAINT `FK_hotelId` FOREIGN KEY (`hotelId`) REFERENCES `pwh_hotelinformation` (`hotelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwh_room`
--

LOCK TABLES `pwh_room` WRITE;
/*!40000 ALTER TABLE `pwh_room` DISABLE KEYS */;
INSERT INTO `pwh_room` VALUES (1,3,'圣西罗','潘银','大床房','双早',200,50,'无'),(2,4,'布丁','潘银','大床房','双早',150,9,'无'),(3,5,'速8','潘银','大床房','双早',180,7,'无'),(4,3,'圣西罗','潘银','双床房','双早',200,18,'无'),(5,3,'圣西罗','潘银','单人房','不含早',120,19,'无'),(6,1,'布丁','李彤','大床房','双早',200,30,'无'),(7,2,'汉庭','李彤','双床房','不含早',220,22,'无'),(8,6,'格蕾丝精选酒店','李彤','单人房','双早',140,26,'无');
/*!40000 ALTER TABLE `pwh_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwh_users`
--

DROP TABLE IF EXISTS `pwh_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pwh_users` (
  `username` varchar(36) NOT NULL,
  `password` varchar(30) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `useridentity` varchar(50) DEFAULT NULL,
  `money` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwh_users`
--

LOCK TABLES `pwh_users` WRITE;
/*!40000 ALTER TABLE `pwh_users` DISABLE KEYS */;
INSERT INTO `pwh_users` VALUES ('李彤','123456','男','17231241233','商家','0'),('江颉','123456','男','17326037328','管理员','0'),('潘伟航','123456','男','17326037328','普通用户','0'),('潘潘','123456','男','17326037328','管理员','0'),('潘银','123456','男','17818236127','商家','0');
/*!40000 ALTER TABLE `pwh_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-08 14:34:56
