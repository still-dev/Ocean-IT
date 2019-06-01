CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `ocean_it`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ocean_it
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `research_fields`
--

DROP TABLE IF EXISTS `research_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `research_fields` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `research_name_ko` varchar(45) DEFAULT NULL,
  `research_name_en` varchar(45) DEFAULT NULL,
  `classification_ko` varchar(45) DEFAULT NULL,
  `classification_en` varchar(45) DEFAULT NULL,
  `support_organization_ko` varchar(45) DEFAULT NULL,
  `support_organization_en` varchar(45) DEFAULT NULL,
  `research_purpose_ko` varchar(1000) DEFAULT NULL,
  `research_contents_ko` varchar(1000) DEFAULT NULL,
  `research_expected_ko` varchar(1000) DEFAULT NULL,
  `research_purpose_en` varchar(1000) DEFAULT NULL,
  `research_contents_en` varchar(1000) DEFAULT NULL,
  `research_expected_en` varchar(1000) DEFAULT NULL,
  `date_start` varchar(45) DEFAULT NULL,
  `date_end` varchar(45) DEFAULT NULL,
  `research_charge_ko` varchar(45) DEFAULT NULL,
  `research_charge_en` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_fields`
--

LOCK TABLES `research_fields` WRITE;
/*!40000 ALTER TABLE `research_fields` DISABLE KEYS */;
INSERT INTO `research_fields` VALUES (1,'1번과제','ㅇㄴㄹㄴㅇㄹ','위탁',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴ','ㅇㅁㄴㅇㅁㄴㅇ','ㄴㅁㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(2,'2번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(3,'3번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(4,'4번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(5,'5번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(6,'6번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(7,'7번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(8,'8번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(9,'9번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(10,'2번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(11,'2번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(12,'2번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(13,'2번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(14,'2번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(15,'2번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL),(16,'2번과제',NULL,'ㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,NULL,NULL,NULL,NULL,'ㅁㄴㅇ','ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',NULL);
/*!40000 ALTER TABLE `research_fields` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-01 20:47:19
