-- Drop the database if it exists
DROP DATABASE IF EXISTS tunereviewsdb;

-- Create the database
CREATE DATABASE tunereviewsdb;

-- Use the database
USE tunereviewsdb;

-- Set the timezone to Eastern Standard Time
SET @@session.time_zone = '-05:00';


-- Create the artist table
CREATE TABLE `artist` (
  `Artist_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Bio` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Create the album table
CREATE TABLE `album` (
  `Album_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Num_Songs` int DEFAULT NULL,
  `Date_Made` datetime DEFAULT NULL,
  `Artist_ID` int DEFAULT NULL,
  PRIMARY KEY (`Album_ID`),
  FOREIGN KEY (`Artist_ID`) REFERENCES `artist`(`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Create the user table
CREATE TABLE `user` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Bio` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Create the song table
CREATE TABLE `song` (
  `Song_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Duration` time DEFAULT NULL,
  `Date_Made` datetime DEFAULT NULL,
  `Album_ID` int DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  FOREIGN KEY (`Album_ID`) REFERENCES `album`(`Album_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Create the review table
CREATE TABLE `review` (
  `Review_ID` int NOT NULL AUTO_INCREMENT,
  `Review_Text` varchar(450) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Album_ID` int DEFAULT NULL,
  `Song_ID` int DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`Review_ID`),
  FOREIGN KEY (`Album_ID`) REFERENCES `album`(`Album_ID`),
  FOREIGN KEY (`Song_ID`) REFERENCES `song`(`Song_ID`),
  FOREIGN KEY (`User_ID`) REFERENCES `user`(`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Alice Johnson','Alice is an avid reader and enjoys writing poetry in her free time.'),(2,'Bob Smith','Bob is a software engineer with a passion for open-source development.'),(3,'Charlie Brown','Charlie is a chef who loves experimenting with new recipes.'),(4,'David Wilson','David is a nature enthusiast and wildlife photographer.'),(5,'Eva Martinez','Eva is a professional dancer who performs in various cultural events.'),(6,'Frank Adams','Frank is a science teacher who enjoys stargazing and astronomy.'),(7,'Grace Turner','Grace is a graphic designer who creates stunning visual concepts.'),(8,'Hannah Green','Hannah is a hiker and nature lover who explores national parks.'),(9,'Ian Davis','Ian is a history buff and a collector of rare antiques.'),(10,'Jennifer Reed','Jennifer is a fashion designer known for her unique clothing line.'),(11,'Kevin Hill','Kevin is a rock climber and outdoor adventure enthusiast.'),(12,'Laura Moore','Laura is a nurse dedicated to helping others in the healthcare field.'),(13,'Michael Lewis','Michael is a musician who composes electronic music.'),(14,'Nina Parker','Nina is an artist known for her abstract and vibrant paintings.'),(15,'Oliver Wright','Oliver is a surfer who spends his free time riding the waves.'),(16,'Paige White','Paige is a yoga instructor and holistic wellness advocate.'),(17,'Quinn Smith','Quinn is a science fiction writer with a vivid imagination.'),(18,'Rachel Adams','Rachel is a software developer with a love for coding.'),(19,'Samuel Brown','Samuel is a fitness trainer and a marathon runner.'),(20,'Tara Johnson','Tara is an aspiring chef who enjoys experimenting in the kitchen.');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'John Smith','John Smith is a versatile artist with a passion for creating beautiful artworks.'),(2,'Sarah Johnson','Sarah Johnson is known for her unique abstract art and vibrant colors.'),(3,'Michael Brown','Michael Brown is a sculptor who specializes in creating stunning bronze sculptures.'),(4,'Emma Wilson','Emma Wilson is a talented photographer capturing the beauty of nature and wildlife.'),(5,'David Martinez','David Martinez is a graffiti artist known for his street art in urban landscapes.'),(6,'Olivia White','Olivia White creates intricate and detailed pencil drawings.'),(7,'James Turner','James Turner is a master of watercolor painting, specializing in landscapes.'),(8,'Sophia Green','Sophia Green is a contemporary artist exploring the intersection of technology and art.'),(9,'Henry Hall','Henry Hall is a renowned glassblower, crafting exquisite glass sculptures.'),(10,'Lily Adams','Lily Adams creates colorful and abstract oil paintings.'),(11,'William Black','William Black\'s photography focuses on urban architecture and geometry.'),(12,'Ella Parker','Ella Parker is a mixed-media artist known for her unique collage work.'),(13,'Andrew Johnson','Andrew Johnson creates stunning pottery with intricate designs.'),(14,'Grace Davis','Grace Davis is a textile artist, specializing in handwoven tapestries.'),(15,'Samuel Wright','Samuel Wright is a landscape painter inspired by the beauty of the outdoors.'),(16,'Ava Lewis','Ava Lewis is a digital artist, experimenting with interactive installations.'),(17,'Noah Moore','Noah Moore creates abstract sculptures using reclaimed materials.'),(18,'Mia Anderson','Mia Anderson\'s illustrations are whimsical and imaginative.'),(19,'Benjamin Reed','Benjamin Reed is known for his woodcarvings and intricate wooden furniture.'),(20,'Zoe Hill','Zoe Hill is a ceramic artist who creates unique and functional pottery.');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Album 1 by John Smith',12,'2022-07-15 00:00:00',1),(2,'Colors of Sarah',10,'2021-11-30 00:00:00',2),(3,'Bronze Melodies',8,'2022-04-02 00:00:00',3),(4,'Photographic Journeys',14,'2021-08-19 00:00:00',4),(5,'Rhythms of the Streets',11,'2023-01-05 00:00:00',5),(6,'Sketches and Shading',9,'2022-06-28 00:00:00',6),(7,'Watercolor Dreams',13,'2021-12-10 00:00:00',7),(8,'Digital Visions',10,'2022-02-14 00:00:00',8),(9,'Glass Symphony',7,'2023-03-22 00:00:00',9),(10,'Abstract Harmonies',12,'2021-10-08 00:00:00',10),(11,'Urban Landscapes in Pixels',9,'2022-05-11 00:00:00',11),(12,'Mixed-Media Magic',8,'2023-04-17 00:00:00',12),(13,'Clay Creations',11,'2021-09-27 00:00:00',13),(14,'Textile Tales',6,'2022-08-11 00:00:00',14),(15,'Nature\'s Canvas',10,'2021-07-04 00:00:00',15),(16,'Digital Dreamscapes',15,'2023-02-08 00:00:00',16),(17,'Reclaimed Expressions',9,'2022-11-14 00:00:00',17),(18,'Whimsical Illustrations',7,'2021-05-19 00:00:00',18),(19,'Wooden Dreams',9,'2022-09-18 00:00:00',19),(20,'Clay Creations',7,'2023-02-25 00:00:00',20);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Song 1 from Album 1','03:45:00','2022-07-15 00:00:00',1),(2,'Song 2 from Album 1','04:12:00','2022-07-15 00:00:00',1),(3,'Song 3 from Album 1','03:28:00','2022-07-15 00:00:00',1),(4,'Song 4 from Album 1','05:03:00','2022-07-15 00:00:00',1),(5,'Song 5 from Album 1','04:21:00','2022-07-15 00:00:00',1),(6,'Song 6 from Album 1','04:56:00','2022-07-15 00:00:00',1),(7,'Song 7 from Album 1','03:40:00','2022-07-15 00:00:00',1),(8,'Song 8 from Album 1','04:17:00','2022-07-15 00:00:00',1),(9,'Song 9 from Album 1','03:14:00','2022-07-15 00:00:00',1),(10,'Song 10 from Album 1','04:09:00','2022-07-15 00:00:00',1),(11,'Song 11 from Album 1','04:35:00','2022-07-15 00:00:00',1),(12,'Song 12 from Album 1','03:52:00','2022-07-15 00:00:00',1),(13,'Serene Melody','04:03:00','2021-11-30 00:00:00',2),(14,'Vibrant Echo','03:48:00','2021-11-30 00:00:00',2),(15,'Sapphire Skies','05:17:00','2021-11-30 00:00:00',2),(16,'Golden Horizons','04:35:00','2021-11-30 00:00:00',2),(17,'Harmony in Dusk','03:52:00','2021-11-30 00:00:00',2),(18,'Mystic Sunrise','04:09:00','2021-11-30 00:00:00',2),(19,'Whispers of Dreams','03:27:00','2021-11-30 00:00:00',2),(20,'Eternal Serenade','04:14:00','2021-11-30 00:00:00',2),(21,'Gentle Waves','03:40:00','2021-11-30 00:00:00',2),(22,'Lullaby of Stars','04:28:00','2021-11-30 00:00:00',2);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'This song is amazing! I can listen to it all day.','2022-10-05 00:00:00',1,1,1),(2,'The lyrics are so touching. I love this song.','2022-09-20 00:00:00',1,2,2),(3,'Such a catchy tune! I can\'t get it out of my head.','2022-10-12 00:00:00',1,3,3),(4,'A masterpiece of music. Truly breathtaking.','2022-08-28 00:00:00',2,4,4),(5,'I feel so relaxed listening to this song. Great work!','2022-09-15 00:00:00',2,5,5),(6,'This song takes me on a journey. Love it.','2022-10-03 00:00:00',2,6,6),(7,'A beautiful composition. I can\'t stop listening.','2022-09-25 00:00:00',3,7,7),(8,'The melody is enchanting. One of my favorites.','2022-10-08 00:00:00',3,8,8),(9,'Incredible songwriting. It touches my heart.','2022-09-22 00:00:00',3,9,9),(10,'A fantastic song. I play it on repeat.','2022-09-13 00:00:00',4,10,10),(11,'The singer\'s voice is so soothing. Love this.','2022-09-18 00:00:00',4,11,11),(12,'A great song for a road trip. I can\'t get enough.','2022-09-28 00:00:00',4,12,12),(13,'I get lost in the music. Absolutely wonderful.','2022-10-10 00:00:00',5,13,13),(14,'Unique and captivating. It\'s a musical gem.','2022-09-24 00:00:00',5,14,14),(15,'This song has a special place in my heart. Amazing!','2022-08-31 00:00:00',5,15,15),(16,'A real mood-lifter. I love the rhythm.','2022-10-02 00:00:00',6,16,16),(17,'This song makes me smile. It\'s so joyful.','2022-09-19 00:00:00',6,17,17),(18,'I dance to this song every time. So much fun!','2022-09-30 00:00:00',6,18,18),(19,'One of the best songs I\'ve heard. Great composition.','2022-09-11 00:00:00',7,19,19),(20,'A musical treasure. I\'m hooked on this song.','2022-09-27 00:00:00',7,20,20);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;