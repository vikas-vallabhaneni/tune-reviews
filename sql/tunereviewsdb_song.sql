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
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `Song_ID` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Duration` time DEFAULT NULL,
  `Date_Made` datetime DEFAULT NULL,
  `Album_ID` int DEFAULT NULL,
  PRIMARY KEY (`Song_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Song 1 from Album 1','03:45:00','2022-07-15 00:00:00',1),(2,'Song 2 from Album 1','04:12:00','2022-07-15 00:00:00',1),(3,'Song 3 from Album 1','03:28:00','2022-07-15 00:00:00',1),(4,'Song 4 from Album 1','05:03:00','2022-07-15 00:00:00',1),(5,'Song 5 from Album 1','04:21:00','2022-07-15 00:00:00',1),(6,'Song 6 from Album 1','04:56:00','2022-07-15 00:00:00',1),(7,'Song 7 from Album 1','03:40:00','2022-07-15 00:00:00',1),(8,'Song 8 from Album 1','04:17:00','2022-07-15 00:00:00',1),(9,'Song 9 from Album 1','03:14:00','2022-07-15 00:00:00',1),(10,'Song 10 from Album 1','04:09:00','2022-07-15 00:00:00',1),(11,'Song 11 from Album 1','04:35:00','2022-07-15 00:00:00',1),(12,'Song 12 from Album 1','03:52:00','2022-07-15 00:00:00',1),(13,'Serene Melody','04:03:00','2021-11-30 00:00:00',2),(14,'Vibrant Echo','03:48:00','2021-11-30 00:00:00',2),(15,'Sapphire Skies','05:17:00','2021-11-30 00:00:00',2),(16,'Golden Horizons','04:35:00','2021-11-30 00:00:00',2),(17,'Harmony in Dusk','03:52:00','2021-11-30 00:00:00',2),(18,'Mystic Sunrise','04:09:00','2021-11-30 00:00:00',2),(19,'Whispers of Dreams','03:27:00','2021-11-30 00:00:00',2),(20,'Eternal Serenade','04:14:00','2021-11-30 00:00:00',2),(21,'Gentle Waves','03:40:00','2021-11-30 00:00:00',2),(22,'Lullaby of Stars','04:28:00','2021-11-30 00:00:00',2);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
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
