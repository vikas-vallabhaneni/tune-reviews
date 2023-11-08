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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Bio` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Alice Johnson','Alice is an avid reader and enjoys writing poetry in her free time.'),(2,'Bob Smith','Bob is a software engineer with a passion for open-source development.'),(3,'Charlie Brown','Charlie is a chef who loves experimenting with new recipes.'),(4,'David Wilson','David is a nature enthusiast and wildlife photographer.'),(5,'Eva Martinez','Eva is a professional dancer who performs in various cultural events.'),(6,'Frank Adams','Frank is a science teacher who enjoys stargazing and astronomy.'),(7,'Grace Turner','Grace is a graphic designer who creates stunning visual concepts.'),(8,'Hannah Green','Hannah is a hiker and nature lover who explores national parks.'),(9,'Ian Davis','Ian is a history buff and a collector of rare antiques.'),(10,'Jennifer Reed','Jennifer is a fashion designer known for her unique clothing line.'),(11,'Kevin Hill','Kevin is a rock climber and outdoor adventure enthusiast.'),(12,'Laura Moore','Laura is a nurse dedicated to helping others in the healthcare field.'),(13,'Michael Lewis','Michael is a musician who composes electronic music.'),(14,'Nina Parker','Nina is an artist known for her abstract and vibrant paintings.'),(15,'Oliver Wright','Oliver is a surfer who spends his free time riding the waves.'),(16,'Paige White','Paige is a yoga instructor and holistic wellness advocate.'),(17,'Quinn Smith','Quinn is a science fiction writer with a vivid imagination.'),(18,'Rachel Adams','Rachel is a software developer with a love for coding.'),(19,'Samuel Brown','Samuel is a fitness trainer and a marathon runner.'),(20,'Tara Johnson','Tara is an aspiring chef who enjoys experimenting in the kitchen.');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
