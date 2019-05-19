-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: class623
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review` (
  `recommendation` varchar(145) DEFAULT NULL,
  `reviewid` int(11) NOT NULL,
  `MeritScore` int(11) DEFAULT NULL,
  `PaperId` int(11) DEFAULT NULL,
  `ReadabilityScore` int(11) DEFAULT NULL,
  `ReviewerId` int(11) DEFAULT NULL,
  `OriginalityScore` int(11) DEFAULT NULL,
  `RelevanceScore` int(11) DEFAULT NULL,
  PRIMARY KEY (`reviewid`),
  KEY `reviewer_id_idx` (`ReviewerId`),
  CONSTRAINT `ReviewerId` FOREIGN KEY (`ReviewerId`) REFERENCES `reviewer` (`reviewer id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES ('would read again 10/10',1,8,1,7,1,10,6),('Highly Recommend 10/10',2,9,2,10,1,10,9),('7/10, Awesome',3,6,3,8,1,7,6),('5/10 not my type',4,4,4,10,1,5,3),('3/10 too childish',5,3,5,10,1,3,2),('Great with the kids 8/10',6,10,6,10,1,8,9),('Scary, chill to the bone 10/10',7,10,1,10,2,10,10),('7/10, Awesome',8,10,3,10,2,10,10),('1/10 too easy of a read',9,1,6,10,2,4,3),('9/10 very enjoyable read',10,9,2,10,3,8,9),('8/10 another rare read',11,8,4,10,3,10,9),('10/10 childhood favorite',12,10,5,10,3,10,10);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-18 21:37:39
