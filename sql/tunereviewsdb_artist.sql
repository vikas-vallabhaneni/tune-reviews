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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `Artist_ID` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Bio` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'John Smith','John Smith is a versatile artist with a passion for creating beautiful artworks.'),(2,'Sarah Johnson','Sarah Johnson is known for her unique abstract art and vibrant colors.'),(3,'Michael Brown','Michael Brown is a sculptor who specializes in creating stunning bronze sculptures.'),(4,'Emma Wilson','Emma Wilson is a talented photographer capturing the beauty of nature and wildlife.'),(5,'David Martinez','David Martinez is a graffiti artist known for his street art in urban landscapes.'),(6,'Olivia White','Olivia White creates intricate and detailed pencil drawings.'),(7,'James Turner','James Turner is a master of watercolor painting, specializing in landscapes.'),(8,'Sophia Green','Sophia Green is a contemporary artist exploring the intersection of technology and art.'),(9,'Henry Hall','Henry Hall is a renowned glassblower, crafting exquisite glass sculptures.'),(10,'Lily Adams','Lily Adams creates colorful and abstract oil paintings.'),(11,'William Black','William Black\'s photography focuses on urban architecture and geometry.'),(12,'Ella Parker','Ella Parker is a mixed-media artist known for her unique collage work.'),(13,'Andrew Johnson','Andrew Johnson creates stunning pottery with intricate designs.'),(14,'Grace Davis','Grace Davis is a textile artist, specializing in handwoven tapestries.'),(15,'Samuel Wright','Samuel Wright is a landscape painter inspired by the beauty of the outdoors.'),(16,'Ava Lewis','Ava Lewis is a digital artist, experimenting with interactive installations.'),(17,'Noah Moore','Noah Moore creates abstract sculptures using reclaimed materials.'),(18,'Mia Anderson','Mia Anderson\'s illustrations are whimsical and imaginative.'),(19,'Benjamin Reed','Benjamin Reed is known for his woodcarvings and intricate wooden furniture.'),(20,'Zoe Hill','Zoe Hill is a ceramic artist who creates unique and functional pottery.');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
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
