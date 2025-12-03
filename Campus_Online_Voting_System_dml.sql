-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: covs
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `action` varchar(255) NOT NULL,
  `entity` varchar(100) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `logged_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
INSERT INTO `audit_logs` VALUES (1,1,'New user registered','users',1,'2025-11-13 18:23:17'),(2,2,'New user registered','users',2,'2025-11-13 18:23:17'),(3,3,'New user registered','users',3,'2025-11-13 18:23:17'),(4,4,'New user registered','users',4,'2025-11-13 18:23:17'),(5,5,'New user registered','users',5,'2025-11-13 18:23:17'),(6,6,'New user registered','users',6,'2025-11-13 18:23:17'),(7,7,'New user registered','users',7,'2025-11-13 18:23:17'),(8,8,'New user registered','users',8,'2025-11-13 18:23:17'),(9,9,'New user registered','users',9,'2025-11-13 18:23:17'),(10,10,'New user registered','users',10,'2025-11-13 18:23:17'),(11,11,'New user registered','users',11,'2025-11-13 18:23:17'),(12,12,'New user registered','users',12,'2025-11-13 18:23:17'),(13,13,'New user registered','users',13,'2025-11-13 18:23:17'),(14,14,'New user registered','users',14,'2025-11-13 18:23:17'),(15,15,'New user registered','users',15,'2025-11-13 18:23:17'),(16,16,'New user registered','users',16,'2025-11-13 18:23:17'),(17,17,'New user registered','users',17,'2025-11-13 18:23:17'),(18,18,'New user registered','users',18,'2025-11-13 18:23:17'),(19,19,'New user registered','users',19,'2025-11-13 18:23:17'),(20,20,'New user registered','users',20,'2025-11-13 18:23:17'),(21,21,'New user registered','users',21,'2025-11-13 18:23:17'),(22,22,'New user registered','users',22,'2025-11-13 18:23:17'),(23,23,'New user registered','users',23,'2025-11-13 18:23:17'),(24,24,'New user registered','users',24,'2025-11-13 18:23:17'),(25,25,'New user registered','users',25,'2025-11-13 18:23:17'),(26,1,'Created election','elections',1,'2025-11-13 18:25:27'),(27,1,'Created election','elections',2,'2025-11-13 18:25:27'),(28,6,'Candidate nomination submitted','candidates',1,'2025-11-13 18:26:41'),(29,7,'Candidate nomination submitted','candidates',2,'2025-11-13 18:26:41'),(30,8,'Candidate nomination submitted','candidates',3,'2025-11-13 18:26:41'),(31,9,'Candidate nomination submitted','candidates',4,'2025-11-13 18:26:41'),(32,10,'Candidate nomination submitted','candidates',5,'2025-11-13 18:26:41'),(33,11,'Candidate nomination submitted','candidates',6,'2025-11-13 18:26:41'),(34,12,'Candidate nomination submitted','candidates',7,'2025-11-13 18:26:41'),(35,13,'Candidate nomination submitted','candidates',8,'2025-11-13 18:26:41'),(36,14,'Candidate nomination submitted','candidates',9,'2025-11-13 18:26:41'),(37,15,'Candidate nomination submitted','candidates',10,'2025-11-13 18:26:41'),(38,16,'Candidate nomination submitted','candidates',11,'2025-11-13 18:26:41'),(39,17,'Candidate nomination submitted','candidates',12,'2025-11-13 18:26:41'),(40,6,'Ballot token issued','ballot_tokens',1,'2025-11-13 18:28:55'),(41,7,'Ballot token issued','ballot_tokens',2,'2025-11-13 18:28:55'),(42,8,'Ballot token issued','ballot_tokens',3,'2025-11-13 18:28:55'),(43,9,'Ballot token issued','ballot_tokens',4,'2025-11-13 18:28:55'),(44,10,'Ballot token issued','ballot_tokens',5,'2025-11-13 18:28:55'),(45,11,'Ballot token issued','ballot_tokens',6,'2025-11-13 18:28:55'),(46,12,'Ballot token issued','ballot_tokens',7,'2025-11-13 18:28:55'),(47,13,'Ballot token issued','ballot_tokens',8,'2025-11-13 18:28:55'),(48,14,'Ballot token issued','ballot_tokens',9,'2025-11-13 18:28:55'),(49,15,'Ballot token issued','ballot_tokens',10,'2025-11-13 18:28:55'),(50,16,'Ballot token issued','ballot_tokens',11,'2025-11-13 18:28:55'),(51,17,'Ballot token issued','ballot_tokens',12,'2025-11-13 18:28:55'),(52,18,'Ballot token issued','ballot_tokens',13,'2025-11-13 18:28:55'),(53,19,'Ballot token issued','ballot_tokens',14,'2025-11-13 18:28:55'),(54,20,'Ballot token issued','ballot_tokens',15,'2025-11-13 18:28:55'),(55,21,'Ballot token issued','ballot_tokens',16,'2025-11-13 18:28:55'),(56,22,'Ballot token issued','ballot_tokens',17,'2025-11-13 18:28:55'),(57,6,'Ballot token issued','ballot_tokens',18,'2025-11-13 18:28:58'),(58,7,'Ballot token issued','ballot_tokens',19,'2025-11-13 18:28:58'),(59,8,'Ballot token issued','ballot_tokens',20,'2025-11-13 18:28:58'),(60,9,'Ballot token issued','ballot_tokens',21,'2025-11-13 18:28:58'),(61,10,'Ballot token issued','ballot_tokens',22,'2025-11-13 18:28:58'),(62,11,'Ballot token issued','ballot_tokens',23,'2025-11-13 18:28:58'),(63,12,'Ballot token issued','ballot_tokens',24,'2025-11-13 18:28:58'),(64,13,'Ballot token issued','ballot_tokens',25,'2025-11-13 18:28:58'),(65,14,'Ballot token issued','ballot_tokens',26,'2025-11-13 18:28:58'),(66,15,'Ballot token issued','ballot_tokens',27,'2025-11-13 18:28:58'),(67,16,'Ballot token issued','ballot_tokens',28,'2025-11-13 18:28:58'),(68,17,'Ballot token issued','ballot_tokens',29,'2025-11-13 18:28:58'),(69,18,'Ballot token issued','ballot_tokens',30,'2025-11-13 18:28:58'),(70,19,'Ballot token issued','ballot_tokens',31,'2025-11-13 18:28:58'),(71,20,'Ballot token issued','ballot_tokens',32,'2025-11-13 18:28:58'),(72,21,'Ballot token issued','ballot_tokens',33,'2025-11-13 18:28:58'),(73,22,'Ballot token issued','ballot_tokens',34,'2025-11-13 18:28:58'),(74,6,'Vote cast for candidate 1','vote',1,'2025-11-13 18:29:54'),(75,7,'Vote cast for candidate 1','vote',2,'2025-11-13 18:29:54'),(76,8,'Vote cast for candidate 1','vote',3,'2025-11-13 18:29:54'),(77,9,'Vote cast for candidate 1','vote',4,'2025-11-13 18:29:54'),(78,10,'Vote cast for candidate 1','vote',5,'2025-11-13 18:29:54'),(79,11,'Vote cast for candidate 1','vote',6,'2025-11-13 18:29:54'),(80,12,'Vote cast for candidate 1','vote',7,'2025-11-13 18:29:54'),(81,13,'Vote cast for candidate 1','vote',8,'2025-11-13 18:29:54'),(82,14,'Vote cast for candidate 1','vote',9,'2025-11-13 18:29:54'),(83,15,'Vote cast for candidate 2','vote',10,'2025-11-13 18:29:54'),(84,16,'Vote cast for candidate 2','vote',11,'2025-11-13 18:29:54'),(85,17,'Vote cast for candidate 2','vote',12,'2025-11-13 18:29:54'),(86,18,'Vote cast for candidate 2','vote',13,'2025-11-13 18:29:54'),(87,19,'Vote cast for candidate 3','vote',14,'2025-11-13 18:29:54'),(88,20,'Vote cast for candidate 3','vote',15,'2025-11-13 18:29:54'),(89,21,'Vote cast for candidate 3','vote',16,'2025-11-13 18:29:54'),(90,22,'Vote cast for candidate 3','vote',17,'2025-11-13 18:29:54'),(91,6,'Vote cast for candidate 4','vote',1,'2025-11-13 18:30:11'),(92,7,'Vote cast for candidate 4','vote',2,'2025-11-13 18:30:11'),(93,8,'Vote cast for candidate 4','vote',3,'2025-11-13 18:30:11'),(94,9,'Vote cast for candidate 4','vote',4,'2025-11-13 18:30:11'),(95,10,'Vote cast for candidate 5','vote',5,'2025-11-13 18:30:11'),(96,11,'Vote cast for candidate 5','vote',6,'2025-11-13 18:30:11'),(97,12,'Vote cast for candidate 5','vote',7,'2025-11-13 18:30:11'),(98,13,'Vote cast for candidate 6','vote',8,'2025-11-13 18:30:11'),(99,14,'Vote cast for candidate 6','vote',9,'2025-11-13 18:30:11'),(100,15,'Vote cast for candidate 6','vote',10,'2025-11-13 18:30:11'),(101,16,'Vote cast for candidate 6','vote',11,'2025-11-13 18:30:11'),(102,17,'Vote cast for candidate 6','vote',12,'2025-11-13 18:30:11'),(103,18,'Vote cast for candidate 6','vote',13,'2025-11-13 18:30:11'),(104,19,'Vote cast for candidate 6','vote',14,'2025-11-13 18:30:11'),(105,20,'Vote cast for candidate 6','vote',15,'2025-11-13 18:30:11'),(106,21,'Vote cast for candidate 6','vote',16,'2025-11-13 18:30:11'),(107,22,'Vote cast for candidate 6','vote',17,'2025-11-13 18:30:11'),(108,6,'Vote cast for candidate 7','vote',18,'2025-11-13 18:30:16'),(109,7,'Vote cast for candidate 7','vote',19,'2025-11-13 18:30:16'),(110,8,'Vote cast for candidate 7','vote',20,'2025-11-13 18:30:16'),(111,9,'Vote cast for candidate 7','vote',21,'2025-11-13 18:30:16'),(112,10,'Vote cast for candidate 8','vote',22,'2025-11-13 18:30:16'),(113,11,'Vote cast for candidate 8','vote',23,'2025-11-13 18:30:16'),(114,12,'Vote cast for candidate 8','vote',24,'2025-11-13 18:30:16'),(115,13,'Vote cast for candidate 9','vote',25,'2025-11-13 18:30:16'),(116,14,'Vote cast for candidate 9','vote',26,'2025-11-13 18:30:16'),(117,15,'Vote cast for candidate 9','vote',27,'2025-11-13 18:30:16'),(118,16,'Vote cast for candidate 9','vote',28,'2025-11-13 18:30:16'),(119,17,'Vote cast for candidate 9','vote',29,'2025-11-13 18:30:16'),(120,18,'Vote cast for candidate 9','vote',30,'2025-11-13 18:30:16'),(121,19,'Vote cast for candidate 9','vote',31,'2025-11-13 18:30:16'),(122,20,'Vote cast for candidate 9','vote',32,'2025-11-13 18:30:16'),(123,21,'Vote cast for candidate 9','vote',33,'2025-11-13 18:30:16'),(124,22,'Vote cast for candidate 9','vote',34,'2025-11-13 18:30:16'),(125,6,'Vote cast for candidate 10','vote',18,'2025-11-13 18:30:22'),(126,7,'Vote cast for candidate 10','vote',19,'2025-11-13 18:30:22'),(127,8,'Vote cast for candidate 10','vote',20,'2025-11-13 18:30:22'),(128,9,'Vote cast for candidate 10','vote',21,'2025-11-13 18:30:22'),(129,10,'Vote cast for candidate 10','vote',22,'2025-11-13 18:30:22'),(130,11,'Vote cast for candidate 11','vote',23,'2025-11-13 18:30:22'),(131,12,'Vote cast for candidate 11','vote',24,'2025-11-13 18:30:22'),(132,13,'Vote cast for candidate 11','vote',25,'2025-11-13 18:30:22'),(133,14,'Vote cast for candidate 11','vote',26,'2025-11-13 18:30:22'),(134,15,'Vote cast for candidate 11','vote',27,'2025-11-13 18:30:22'),(135,16,'Vote cast for candidate 11','vote',28,'2025-11-13 18:30:22'),(136,17,'Vote cast for candidate 11','vote',29,'2025-11-13 18:30:22'),(137,18,'Vote cast for candidate 11','vote',30,'2025-11-13 18:30:22'),(138,19,'Vote cast for candidate 11','vote',31,'2025-11-13 18:30:22'),(139,20,'Vote cast for candidate 12','vote',32,'2025-11-13 18:30:22'),(140,21,'Vote cast for candidate 12','vote',33,'2025-11-13 18:30:22'),(141,22,'Vote cast for candidate 12','vote',34,'2025-11-13 18:30:22');
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ballot_tokens`
--

DROP TABLE IF EXISTS `ballot_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ballot_tokens` (
  `token_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `election_id` int NOT NULL,
  `token_value` varchar(64) NOT NULL,
  `issued_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `used_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `token_value` (`token_value`),
  UNIQUE KEY `unique_token_per_user_per_election` (`user_id`,`election_id`),
  KEY `election_id` (`election_id`),
  CONSTRAINT `ballot_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `ballot_tokens_ibfk_2` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ballot_tokens`
--

LOCK TABLES `ballot_tokens` WRITE;
/*!40000 ALTER TABLE `ballot_tokens` DISABLE KEYS */;
INSERT INTO `ballot_tokens` VALUES (1,6,1,'T25-001','2025-11-13 18:28:55',NULL),(2,7,1,'T25-002','2025-11-13 18:28:55',NULL),(3,8,1,'T25-003','2025-11-13 18:28:55',NULL),(4,9,1,'T25-004','2025-11-13 18:28:55',NULL),(5,10,1,'T25-005','2025-11-13 18:28:55',NULL),(6,11,1,'T25-006','2025-11-13 18:28:55',NULL),(7,12,1,'T25-007','2025-11-13 18:28:55',NULL),(8,13,1,'T25-008','2025-11-13 18:28:55',NULL),(9,14,1,'T25-009','2025-11-13 18:28:55',NULL),(10,15,1,'T25-010','2025-11-13 18:28:55',NULL),(11,16,1,'T25-011','2025-11-13 18:28:55',NULL),(12,17,1,'T25-012','2025-11-13 18:28:55',NULL),(13,18,1,'T25-013','2025-11-13 18:28:55',NULL),(14,19,1,'T25-014','2025-11-13 18:28:55',NULL),(15,20,1,'T25-015','2025-11-13 18:28:55',NULL),(16,21,1,'T25-016','2025-11-13 18:28:55',NULL),(17,22,1,'T25-017','2025-11-13 18:28:55',NULL),(18,6,2,'T24-001','2025-11-13 18:28:58',NULL),(19,7,2,'T24-002','2025-11-13 18:28:58',NULL),(20,8,2,'T24-003','2025-11-13 18:28:58',NULL),(21,9,2,'T24-004','2025-11-13 18:28:58',NULL),(22,10,2,'T24-005','2025-11-13 18:28:58',NULL),(23,11,2,'T24-006','2025-11-13 18:28:58',NULL),(24,12,2,'T24-007','2025-11-13 18:28:58',NULL),(25,13,2,'T24-008','2025-11-13 18:28:58',NULL),(26,14,2,'T24-009','2025-11-13 18:28:58',NULL),(27,15,2,'T24-010','2025-11-13 18:28:58',NULL),(28,16,2,'T24-011','2025-11-13 18:28:58',NULL),(29,17,2,'T24-012','2025-11-13 18:28:58',NULL),(30,18,2,'T24-013','2025-11-13 18:28:58',NULL),(31,19,2,'T24-014','2025-11-13 18:28:58',NULL),(32,20,2,'T24-015','2025-11-13 18:28:58',NULL),(33,21,2,'T24-016','2025-11-13 18:28:58',NULL),(34,22,2,'T24-017','2025-11-13 18:28:58',NULL);
/*!40000 ALTER TABLE `ballot_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_token_insert` AFTER INSERT ON `ballot_tokens` FOR EACH ROW BEGIN
    INSERT INTO audit_logs (user_id, action, entity, entity_id, logged_at)
    VALUES (NEW.user_id, 'Ballot token issued', 'ballot_tokens', NEW.token_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `position_id` int NOT NULL,
  `party_id` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `manifesto_link` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','withdrawn','disqualified') DEFAULT 'pending',
  PRIMARY KEY (`candidate_id`),
  KEY `user_id` (`user_id`),
  KEY `position_id` (`position_id`),
  KEY `party_id` (`party_id`),
  CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `candidates_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`),
  CONSTRAINT `candidates_ibfk_3` FOREIGN KEY (`party_id`) REFERENCES `parties` (`party_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (1,6,1,1,'Candidate 1','/m1.pdf','/p1.jpg','approved'),(2,7,1,2,'Candidate 2','/m2.pdf','/p2.jpg','approved'),(3,8,1,3,'Candidate 3','/m3.pdf','/p3.jpg','approved'),(4,9,2,1,'Candidate 4','/m4.pdf','/p4.jpg','approved'),(5,10,2,2,'Candidate 5','/m5.pdf','/p5.jpg','approved'),(6,11,2,3,'Candidate 6','/m6.pdf','/p6.jpg','approved'),(7,12,3,1,'Candidate 7','/m7.pdf','/p7.jpg','approved'),(8,13,3,2,'Candidate 8','/m8.pdf','/p8.jpg','approved'),(9,14,3,3,'Candidate 9','/m9.pdf','/p9.jpg','approved'),(10,15,4,2,'Candidate 10','/m10.pdf','/p10.jpg','approved'),(11,16,4,1,'Candidate 11','/m11.pdf','/p11.jpg','approved'),(12,17,4,3,'Candidate 12','/m12.pdf','/p12.jpg','approved');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_candidate_insert` AFTER INSERT ON `candidates` FOR EACH ROW BEGIN
    INSERT INTO audit_logs (user_id, action, entity, entity_id, logged_at)
    VALUES (NEW.user_id, 'Candidate nomination submitted', 'candidates', NEW.candidate_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `elections`
--

DROP TABLE IF EXISTS `elections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elections` (
  `election_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_ts` datetime NOT NULL,
  `end_ts` datetime NOT NULL,
  `status` enum('upcoming','ongoing','completed','cancelled') DEFAULT 'upcoming',
  PRIMARY KEY (`election_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `elections_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elections`
--

LOCK TABLES `elections` WRITE;
/*!40000 ALTER TABLE `elections` DISABLE KEYS */;
INSERT INTO `elections` VALUES (1,1,'University of Hyderabad Students Union Elections 2025','2025-02-15 09:00:00','2025-02-15 17:00:00','upcoming'),(2,1,'University of Hyderabad Students Union Elections 2024','2024-02-18 09:00:00','2024-02-18 17:00:00','completed');
/*!40000 ALTER TABLE `elections` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_election_insert` AFTER INSERT ON `elections` FOR EACH ROW BEGIN
    INSERT INTO audit_logs (user_id, action, entity, entity_id, logged_at)
    VALUES (NEW.user_id, 'Created election', 'elections', NEW.election_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parties` (
  `party_id` int NOT NULL AUTO_INCREMENT,
  `party_name` varchar(100) NOT NULL,
  `abbreviation` varchar(20) DEFAULT NULL,
  `leader_name` varchar(100) DEFAULT NULL,
  `symbol_path` varchar(255) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `status` enum('approved','pending','rejected') DEFAULT 'pending',
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;
INSERT INTO `parties` VALUES (1,'United Student Front','USF','Amit Kumar','/symbols/usf.png','usf@uohyd.ac.in','approved'),(2,'Akshara Students Association','ASA','Devika Reddy','/symbols/asa.png','asa@uohyd.ac.in','approved'),(3,'SFI Hyderabad','SFI','Ramesh V','/symbols/sfi.png','sfi@uohyd.ac.in','approved'),(4,'ABVP UoH Chapter','ABVP','Rohan Shetty','/symbols/abvp.png','abvp@uohyd.ac.in','approved');
/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `election_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_ts` datetime DEFAULT NULL,
  `end_ts` datetime DEFAULT NULL,
  PRIMARY KEY (`position_id`),
  KEY `election_id` (`election_id`),
  CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,1,'President','2025-02-15 09:00:00','2025-02-15 17:00:00'),(2,1,'General Secretary','2025-02-15 09:00:00','2025-02-15 17:00:00'),(3,2,'President','2024-02-18 09:00:00','2024-02-18 17:00:00'),(4,2,'General Secretary','2024-02-18 09:00:00','2024-02-18 17:00:00');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit`
--

DROP TABLE IF EXISTS `submit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submit` (
  `position_id` int NOT NULL,
  `election_id` int NOT NULL,
  `party_id` int NOT NULL,
  PRIMARY KEY (`position_id`,`election_id`,`party_id`),
  KEY `election_id` (`election_id`),
  KEY `party_id` (`party_id`),
  CONSTRAINT `submit_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`),
  CONSTRAINT `submit_ibfk_2` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`),
  CONSTRAINT `submit_ibfk_3` FOREIGN KEY (`party_id`) REFERENCES `parties` (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit`
--

LOCK TABLES `submit` WRITE;
/*!40000 ALTER TABLE `submit` DISABLE KEYS */;
INSERT INTO `submit` VALUES (1,1,1),(1,1,2),(1,1,3),(2,1,1),(2,1,2),(2,1,3),(3,2,1),(3,2,2),(3,2,3),(4,2,1),(4,2,2),(4,2,3);
/*!40000 ALTER TABLE `submit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `role` enum('admin','voter') NOT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `status` enum('active','inactive','suspended') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `roll_no` (`roll_no`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Harsh Raj','admin',NULL,'harsh@uohyd.ac.in','active','2025-11-13 18:23:17'),(2,'Akshay Guru','admin',NULL,'akshay@uohyd.ac.in','active','2025-11-13 18:23:17'),(3,'Pratibha Yadav','admin',NULL,'pratibha@uohyd.ac.in','active','2025-11-13 18:23:17'),(4,'Sowden Ramu','admin',NULL,'sowden@uohyd.ac.in','active','2025-11-13 18:23:17'),(5,'Vaibhav Ranjan Singh','admin',NULL,'vaibhav@uohyd.ac.in','inactive','2025-11-13 18:23:17'),(6,'Ashish','voter','25MCMC01','25MCMC01@uohyd.ac.in','active','2025-11-13 18:23:17'),(7,'Shashank Jaiswal','voter','25MCMC18','25MCMC18@uohyd.ac.in','inactive','2025-11-13 18:23:17'),(8,'Nikunj Patel','voter','25MCMC02','25MCMC02@uohyd.ac.in','active','2025-11-13 18:23:17'),(9,'Rishabh Omar','voter','25MCMC03','25MCMC03@uohyd.ac.in','active','2025-11-13 18:23:17'),(10,'Ayush Toppo','voter','25MCMC19','25MCMC19@uohyd.ac.in','inactive','2025-11-13 18:23:17'),(11,'Aryan Seth','voter','25MCMC04','25MCMC04@uohyd.ac.in','active','2025-11-13 18:23:17'),(12,'Garv Agrawal','voter','25MCMC05','25MCMC05@uohyd.ac.in','active','2025-11-13 18:23:17'),(13,'Loudiya Vikas','voter','25MCMC06','25MCMC06@uohyd.ac.in','active','2025-11-13 18:23:17'),(14,'Subham Rajput','voter','25MCMC07','25MCMC07@uohyd.ac.in','active','2025-11-13 18:23:17'),(15,'K.S. Shreeya','voter','25MCMC08','25MCMC08@uohyd.ac.in','active','2025-11-13 18:23:17'),(16,'Aman Kumar','voter','25MCMC09','25MCMC09@uohyd.ac.in','active','2025-11-13 18:23:17'),(17,'Adarsh Kumar Pandey','voter','25MCMC10','25MCMC10@uohyd.ac.in','active','2025-11-13 18:23:17'),(18,'Dasari Vinayaka Vijay','voter','25MCMC11','25MCMC11@uohyd.ac.in','active','2025-11-13 18:23:17'),(19,'Archana Kumari','voter','25MCMC20','25MCMC20@uohyd.ac.in','inactive','2025-11-13 18:23:17'),(20,'Anjali Kumari Shaw','voter','25MCMC12','25MCMC12@uohyd.ac.in','active','2025-11-13 18:23:17'),(21,'Ganjara Anjali Ramesh','voter','25MCMC13','25MCMC13@uohyd.ac.in','active','2025-11-13 18:23:17'),(22,'B. Rikheet Kumar','voter','25MCMC14','25MCMC14@uohyd.ac.in','active','2025-11-13 18:23:17'),(23,'Suyash Singh','voter','25MCMC15','25MCMC15@uohyd.ac.in','active','2025-11-13 18:23:17'),(24,'Khushuboo Kumari','voter','25MCMC16','25MCMC16@uohyd.ac.in','active','2025-11-13 18:23:17'),(25,'Vadthy Avath Srinivas Naya','voter','25MCMC17','25MCMC17@uohyd.ac.in','active','2025-11-13 18:23:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_user_insert` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    INSERT INTO audit_logs (user_id, action, entity, entity_id, logged_at)
    VALUES (NEW.user_id, 'New user registered', 'users', NEW.user_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vote` (
  `token_id` int NOT NULL,
  `election_id` int NOT NULL,
  `position_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  PRIMARY KEY (`token_id`,`election_id`,`position_id`,`candidate_id`),
  KEY `election_id` (`election_id`),
  KEY `position_id` (`position_id`),
  KEY `candidate_id` (`candidate_id`),
  CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`token_id`) REFERENCES `ballot_tokens` (`token_id`),
  CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`),
  CONSTRAINT `vote_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`),
  CONSTRAINT `vote_ibfk_4` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (1,1,1,1),(1,1,2,4),(2,1,1,1),(2,1,2,4),(3,1,1,1),(3,1,2,4),(4,1,1,1),(4,1,2,4),(5,1,1,1),(5,1,2,5),(6,1,1,1),(6,1,2,5),(7,1,1,1),(7,1,2,5),(8,1,1,1),(8,1,2,6),(9,1,1,1),(9,1,2,6),(10,1,1,2),(10,1,2,6),(11,1,1,2),(11,1,2,6),(12,1,1,2),(12,1,2,6),(13,1,1,2),(13,1,2,6),(14,1,1,3),(14,1,2,6),(15,1,1,3),(15,1,2,6),(16,1,1,3),(16,1,2,6),(17,1,1,3),(17,1,2,6),(18,2,3,7),(18,2,4,10),(19,2,3,7),(19,2,4,10),(20,2,3,7),(20,2,4,10),(21,2,3,7),(21,2,4,10),(22,2,3,8),(22,2,4,10),(23,2,3,8),(23,2,4,11),(24,2,3,8),(24,2,4,11),(25,2,3,9),(25,2,4,11),(26,2,3,9),(26,2,4,11),(27,2,3,9),(27,2,4,11),(28,2,3,9),(28,2,4,11),(29,2,3,9),(29,2,4,11),(30,2,3,9),(30,2,4,11),(31,2,3,9),(31,2,4,11),(32,2,3,9),(32,2,4,12),(33,2,3,9),(33,2,4,12),(34,2,3,9),(34,2,4,12);
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_vote_insert` AFTER INSERT ON `vote` FOR EACH ROW BEGIN
    INSERT INTO audit_logs (user_id, action, entity, entity_id, logged_at)
    VALUES (
        (SELECT user_id FROM ballot_tokens WHERE token_id = NEW.token_id),
        CONCAT('Vote cast for candidate ', NEW.candidate_id),
        'vote',
        NEW.token_id,
        NOW()
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `voter_registry`
--

DROP TABLE IF EXISTS `voter_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter_registry` (
  `user_id` int NOT NULL,
  `election_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`election_id`),
  KEY `election_id` (`election_id`),
  CONSTRAINT `voter_registry_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `voter_registry_ibfk_2` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter_registry`
--

LOCK TABLES `voter_registry` WRITE;
/*!40000 ALTER TABLE `voter_registry` DISABLE KEYS */;
INSERT INTO `voter_registry` VALUES (6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2);
/*!40000 ALTER TABLE `voter_registry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-14  0:04:07
