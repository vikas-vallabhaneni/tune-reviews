-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tunereviewsdb
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `Album_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Num_Songs` int DEFAULT NULL,
  `Date_Made` datetime DEFAULT NULL,
  `Artist_ID` int DEFAULT NULL,
  PRIMARY KEY (`Album_ID`),
  FOREIGN KEY (`Artist_ID`) REFERENCES `artist`(`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Album 1 by John Smith',12,'2022-07-15 00:00:00',1),(2,'Colors of Sarah',10,'2021-11-30 00:00:00',2),(3,'Bronze Melodies',8,'2022-04-02 00:00:00',3),(4,'Photographic Journeys',14,'2021-08-19 00:00:00',4),(5,'Rhythms of the Streets',11,'2023-01-05 00:00:00',5),(6,'Sketches and Shading',9,'2022-06-28 00:00:00',6),(7,'Watercolor Dreams',13,'2021-12-10 00:00:00',7),(8,'Digital Visions',10,'2022-02-14 00:00:00',8),(9,'Glass Symphony',7,'2023-03-22 00:00:00',9),(10,'Abstract Harmonies',12,'2021-10-08 00:00:00',10),(11,'Urban Landscapes in Pixels',9,'2022-05-11 00:00:00',11),(12,'Mixed-Media Magic',8,'2023-04-17 00:00:00',12),(13,'Clay Creations',11,'2021-09-27 00:00:00',13),(14,'Textile Tales',6,'2022-08-11 00:00:00',14),(15,'Nature\'s Canvas',10,'2021-07-04 00:00:00',15),(16,'Digital Dreamscapes',15,'2023-02-08 00:00:00',16),(17,'Reclaimed Expressions',9,'2022-11-14 00:00:00',17),(18,'Whimsical Illustrations',7,'2021-05-19 00:00:00',18),(19,'Wooden Dreams',9,'2022-09-18 00:00:00',19),(20,'Clay Creations',7,'2023-02-25 00:00:00',20);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03 14:28:57
