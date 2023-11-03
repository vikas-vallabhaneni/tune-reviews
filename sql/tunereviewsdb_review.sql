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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `Review_ID` int NOT NULL,
  `Review_Text` varchar(450) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Album_ID` int DEFAULT NULL,
  `Song_ID` int DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`Review_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'This song is amazing! I can listen to it all day.','2022-10-05 00:00:00',1,1,1),(2,'The lyrics are so touching. I love this song.','2022-09-20 00:00:00',1,2,2),(3,'Such a catchy tune! I can\'t get it out of my head.','2022-10-12 00:00:00',1,3,3),(4,'A masterpiece of music. Truly breathtaking.','2022-08-28 00:00:00',2,4,4),(5,'I feel so relaxed listening to this song. Great work!','2022-09-15 00:00:00',2,5,5),(6,'This song takes me on a journey. Love it.','2022-10-03 00:00:00',2,6,6),(7,'A beautiful composition. I can\'t stop listening.','2022-09-25 00:00:00',3,7,7),(8,'The melody is enchanting. One of my favorites.','2022-10-08 00:00:00',3,8,8),(9,'Incredible songwriting. It touches my heart.','2022-09-22 00:00:00',3,9,9),(10,'A fantastic song. I play it on repeat.','2022-09-13 00:00:00',4,10,10),(11,'The singer\'s voice is so soothing. Love this.','2022-09-18 00:00:00',4,11,11),(12,'A great song for a road trip. I can\'t get enough.','2022-09-28 00:00:00',4,12,12),(13,'I get lost in the music. Absolutely wonderful.','2022-10-10 00:00:00',5,13,13),(14,'Unique and captivating. It\'s a musical gem.','2022-09-24 00:00:00',5,14,14),(15,'This song has a special place in my heart. Amazing!','2022-08-31 00:00:00',5,15,15),(16,'A real mood-lifter. I love the rhythm.','2022-10-02 00:00:00',6,16,16),(17,'This song makes me smile. It\'s so joyful.','2022-09-19 00:00:00',6,17,17),(18,'I dance to this song every time. So much fun!','2022-09-30 00:00:00',6,18,18),(19,'One of the best songs I\'ve heard. Great composition.','2022-09-11 00:00:00',7,19,19),(20,'A musical treasure. I\'m hooked on this song.','2022-09-27 00:00:00',7,20,20);
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

-- Dump completed on 2023-11-03 14:28:58
