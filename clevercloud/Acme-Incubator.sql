-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: acme-incubator
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2a5vcjo3stlfcwadosjfq49l1` (`user_account_id`),
  CONSTRAINT `FK_2a5vcjo3stlfcwadosjfq49l1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (8,0,7),(11,0,10);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ales_bulletin`
--

DROP TABLE IF EXISTS `ales_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ales_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `lucky_number` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ales_bulletin`
--

LOCK TABLES `ales_bulletin` WRITE;
/*!40000 ALTER TABLE `ales_bulletin` DISABLE KEYS */;
INSERT INTO `ales_bulletin` VALUES (23,0,'Manuel Ales','2','2002-04-20 14:00:00.000000','Hola Mundo'),(24,0,'Master Chief','117','2002-04-21 14:00:00.000000','I love you Cortana'),(25,0,'Spike Spiegel','27','2002-04-22 14:00:00.000000','La vida es como un juego de cartas, unas veces se gana y otras se pierde.');
/*!40000 ALTER TABLE `ales_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anonymous`
--

DROP TABLE IF EXISTS `anonymous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anonymous` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6lnbc6fo3om54vugoh8icg78m` (`user_account_id`),
  CONSTRAINT `FK_6lnbc6fo3om54vugoh8icg78m` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anonymous`
--

LOCK TABLES `anonymous` WRITE;
/*!40000 ALTER TABLE `anonymous` DISABLE KEYS */;
INSERT INTO `anonymous` VALUES (2,0,1);
/*!40000 ALTER TABLE `anonymous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authenticated`
--

DROP TABLE IF EXISTS `authenticated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authenticated` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h52w0f3wjoi68b63wv9vwon57` (`user_account_id`),
  CONSTRAINT `FK_h52w0f3wjoi68b63wv9vwon57` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authenticated`
--

LOCK TABLES `authenticated` WRITE;
/*!40000 ALTER TABLE `authenticated` DISABLE KEYS */;
INSERT INTO `authenticated` VALUES (4,0,3),(6,0,5),(9,0,7),(12,0,10);
/*!40000 ALTER TABLE `authenticated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `credit_card_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr19baq0bri0akndc7ruwhngy4` (`credit_card_id`),
  CONSTRAINT `FKr19baq0bri0akndc7ruwhngy4` FOREIGN KEY (`credit_card_id`) REFERENCES `credit_card` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (54,0,'https://upload.wikimedia.org/wikipedia/commons/4/4f/Black_hole_-_Messier_87_crop_max_res.jpg','Esto es un agujero negro','https://es.wikipedia.org/',51),(55,0,'https://upload.wikimedia.org/wikipedia/commons/d/d1/Artist%E2%80%99s_impression_of_the_quasar_3C_279.jpg','Aquí vemos un quasar','https://es.wikipedia.org/',51),(56,0,'https://upload.wikimedia.org/wikipedia/commons/f/f0/Vega_-_star_in_Lyra.png','La estrella Vega','https://es.wikipedia.org/',NULL),(57,0,'https://upload.wikimedia.org/wikipedia/commons/f/f0/Vega_-_star_in_Lyra.png','La estrella Vega de nuevo','https://es.wikipedia.org/',52);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonacini_bulletin`
--

DROP TABLE IF EXISTS `bonacini_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonacini_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonacini_bulletin`
--

LOCK TABLES `bonacini_bulletin` WRITE;
/*!40000 ALTER TABLE `bonacini_bulletin` DISABLE KEYS */;
INSERT INTO `bonacini_bulletin` VALUES (19,0,'Emiya Shirou','Fuyuki','2002-04-20 14:00:00.000000','People die if they\'re killed...'),(20,0,'Luca Bonacini','Planet Usamin','2014-04-02 12:00:00.000000','I am eternally 17 (◕‿◕✿)'),(21,0,'Suzumiya Haruhi','Tokyo','2007-10-23 20:37:00.000000','All ships, open fire! Go out there and burn the enemy leader with all the fires of hell!'),(22,0,'Sasasegawa Sasami','Keyverse','2011-05-13 10:45:00.000000','My name is Sasasesa... Sasasegawa Sasami!');
/*!40000 ALTER TABLE `bonacini_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge`
--

DROP TABLE IF EXISTS `challenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenge` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `average_goal` varchar(255) DEFAULT NULL,
  `average_reward_amount` double DEFAULT NULL,
  `average_reward_currency` varchar(255) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `expert_goal` varchar(255) DEFAULT NULL,
  `expert_reward_amount` double DEFAULT NULL,
  `expert_reward_currency` varchar(255) DEFAULT NULL,
  `rookie_goal` varchar(255) DEFAULT NULL,
  `rookie_reward_amount` double DEFAULT NULL,
  `rookie_reward_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge`
--

LOCK TABLES `challenge` WRITE;
/*!40000 ALTER TABLE `challenge` DISABLE KEYS */;
INSERT INTO `challenge` VALUES (44,0,'Achieve a podium finish!',250,'€','2020-10-04 21:59:00.000000','The first to finish wins!','Finish in first place!',500,'€','Finish the challenge!',100,'€','Challenge 1'),(45,0,'Jump at least 1 metre!',100,'€','2020-01-09 22:59:00.000000','Jump high and win!','Break the world record!',700,'€','Finish the challenge!',250,'€','Challenge 2'),(46,0,'Finish in less than 30 minutes!',700,'€','2021-11-24 20:47:00.000000','The fastest will win!','Finish in less than 1 minute!',1000,'€','Finish the challenge!',500,'€','Challenge 1');
/*!40000 ALTER TABLE `challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `activity_sectors` varchar(255) DEFAULT NULL,
  `spam_words` varchar(255) DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (13,0,'Technology, Science, Arts, Business, Health','sex, hard core, viagra, cialis, Nigeria, you\'ve won, million dolar ',2.5);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6cyha9f1wpj0dpbxrrjddrqed` (`user_account_id`),
  CONSTRAINT `FK_6cyha9f1wpj0dpbxrrjddrqed` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL,
  `expiration_date` datetime(6) DEFAULT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES (51,0,'Visa','000','2025-06-27 22:00:00.000000','Alguien Uno','5500000000000004'),(52,0,'Master Card','123','2024-06-11 22:00:00.000000','Alguien Dos','6011000000000004'),(53,0,'Visa','999','2022-05-09 22:00:00.000000','Alguien Tres','3088000000000009');
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fernandez_bulletin`
--

DROP TABLE IF EXISTS `fernandez_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fernandez_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `favourite_song` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fernandez_bulletin`
--

LOCK TABLES `fernandez_bulletin` WRITE;
/*!40000 ALTER TABLE `fernandez_bulletin` DISABLE KEYS */;
INSERT INTO `fernandez_bulletin` VALUES (17,0,'Espartaco','POP SMOKE - DIOR','2020-05-05 13:45:00.000000','It\'s so good!'),(18,0,'Lagarto Juancho','JACKBOYS, Pop Smoke, Travis Scott - GATTI','2020-06-05 15:40:00.000000','Good song!');
/*!40000 ALTER TABLE `fernandez_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (58);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry`
--

DROP TABLE IF EXISTS `inquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `max_money_amount` double DEFAULT NULL,
  `max_money_currency` varchar(255) DEFAULT NULL,
  `min_money_amount` double DEFAULT NULL,
  `min_money_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry`
--

LOCK TABLES `inquiry` WRITE;
/*!40000 ALTER TABLE `inquiry` DISABLE KEYS */;
INSERT INTO `inquiry` VALUES (38,0,'contactEmail@gmail.com','2019-06-20 22:30:00.000000','2021-06-21 22:00:00.000000','This is a description!',500,'€',200,'€','Inquiry 1'),(39,0,'contactEmail@gmail.com','2019-05-13 15:30:00.000000','2019-07-19 20:30:00.000000','This is a description!',250,'€',100,'€','Inquiry 2'),(40,0,'contactEmail@gmail.com','2020-01-15 14:35:00.000000','2020-10-11 15:05:00.000000','This is a description!',700,'€',250,'€','Inquiry 3');
/*!40000 ALTER TABLE `inquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `links` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (47,0,'This is a body!','2020-07-27 22:30:00.000000','2021-07-27 22:00:00.000000','https://upload.wikimedia.org/wikipedia/commons/4/4f/Black_hole_-_Messier_87_crop_max_res.jpg','https://anilist.co/ ; https://es.wikipedia.org/','Notice 1'),(48,0,'This is a body 2!','2020-06-27 22:30:00.000000','2020-07-27 22:00:00.000000','https://upload.wikimedia.org/wikipedia/commons/d/d1/Artist%E2%80%99s_impression_of_the_quasar_3C_279.jpg',NULL,'Notice 2'),(49,0,'This is a body 3!','2020-06-27 22:30:00.000000','2021-07-27 22:00:00.000000','https://upload.wikimedia.org/wikipedia/commons/f/f0/Vega_-_star_in_Lyra.png','https://anilist.co/','Notice 3'),(50,0,'This is a body 3!','2020-06-27 22:30:00.000000','2021-07-27 22:00:00.000000','https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA04204_hires.jpg','https://es.wikipedia.org/','Notice 4');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overture`
--

DROP TABLE IF EXISTS `overture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overture` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `max_money_amount` double DEFAULT NULL,
  `max_money_currency` varchar(255) DEFAULT NULL,
  `min_money_amount` double DEFAULT NULL,
  `min_money_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overture`
--

LOCK TABLES `overture` WRITE;
/*!40000 ALTER TABLE `overture` DISABLE KEYS */;
INSERT INTO `overture` VALUES (41,0,'contactEmail@gmail.com','2018-03-11 09:30:00.000000','2021-01-11 23:00:00.000000','This is a description!',500,'€',200,'€','Overture 1'),(42,0,'contactEmail@gmail.com','2017-05-13 11:30:00.000000','2022-09-12 09:30:00.000000','This is a description!',250,'€',100,'€','Overture 2'),(43,0,'contactEmail@gmail.com','2020-01-25 08:45:00.000000','2020-06-28 05:55:00.000000','This is a description!',700,'€',250,'€','Overture 3');
/*!40000 ALTER TABLE `overture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b1gwnjqm6ggy9yuiqm0o4rlmd` (`user_account_id`),
  CONSTRAINT `FK_b1gwnjqm6ggy9yuiqm0o4rlmd` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology_record`
--

DROP TABLE IF EXISTS `technology_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `activity_sector` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `inventor` varchar(255) DEFAULT NULL,
  `open_source` bit(1) NOT NULL,
  `stars` double DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `web_site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology_record`
--

LOCK TABLES `technology_record` WRITE;
/*!40000 ALTER TABLE `technology_record` DISABLE KEYS */;
INSERT INTO `technology_record` VALUES (26,0,'Science','Sample description','mail1@example.com','Dr. Robotnik',_binary '\0',3,'Technology 1','http://example1.com'),(27,0,'Technology','Sample description','mail2@example.com','Beakman',_binary '',1,'Technology 2','http://example2.com'),(28,0,'Technology','Sample description','mail3@example.com','Dr. Willy',_binary '\0',-3,'Technology 3','http://example3.com'),(29,0,'Business','Sample description','mail4@example.com','Dr. Emmett Brown (Doc)',_binary '',5,'Technology 4','http://example4.com'),(30,0,'Health','Sample description','mail5@example.com','Morty Sánchez',_binary '\0',-5,'Technology 5','http://example5.com'),(31,0,'Science','Sample description','mail5@example.com','Rintaro Okabe',_binary '\0',-5,'Technology 6','http://steinsgate.jp/');
/*!40000 ALTER TABLE `technology_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toledo_bulletin`
--

DROP TABLE IF EXISTS `toledo_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toledo_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toledo_bulletin`
--

LOCK TABLES `toledo_bulletin` WRITE;
/*!40000 ALTER TABLE `toledo_bulletin` DISABLE KEYS */;
INSERT INTO `toledo_bulletin` VALUES (14,0,'Alberto Toledo Mayorga','email@prueba1.com','2020-07-22 15:46:00.000000','Estoy feliz, prueba 1'),(15,0,'Alberto Toledo Mayorga','email@prueba2.com','2020-07-22 15:47:00.000000','Estoy muy feliz, prueba 2'),(16,0,'Alberto Toledo Mayorga','email@prueba3.com','2020-07-22 15:48:00.000000','Estoy muy, pero que muy feliz, prueba 3');
/*!40000 ALTER TABLE `toledo_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_record`
--

DROP TABLE IF EXISTS `tool_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `activity_sector` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `inventor` varchar(255) DEFAULT NULL,
  `open_source` bit(1) NOT NULL,
  `stars` double DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `web_site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_record`
--

LOCK TABLES `tool_record` WRITE;
/*!40000 ALTER TABLE `tool_record` DISABLE KEYS */;
INSERT INTO `tool_record` VALUES (32,0,'Technology','Sample description','mail1@example.com','Dr. Pepper',_binary '\0',1,'Tool 1','http://example1.com'),(33,0,'Science','Sample description','mail2@example.com','Marcus Fenix',_binary '',-2,'Tool 2','http://example2.com'),(34,0,'Technology','Sample description','mail3@example.com','Megaman',_binary '\0',0,'Tool 3','http://example3.com'),(35,0,'Science','Sample description','mail4@example.com','Marty McFly',_binary '',-4,'Tool 4','http://example4.com'),(36,0,'Technology','Sample description','mail5@example.com','Al Pacino',_binary '\0',5,'Tool 5','http://example5.com'),(37,0,'Science','Sample description','mail5@example.com','Natasha',_binary '\0',5,'Tool 6','https://www.sekaiseifuku-zzz.com/');
/*!40000 ALTER TABLE `tool_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `identity_email` varchar(255) DEFAULT NULL,
  `identity_name` varchar(255) DEFAULT NULL,
  `identity_surname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_castjbvpeeus0r8lbpehiu0e4` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,0,_binary '\0','john.doe@acme.com','John','Doe','$2a$05$BuUfD0zkMMlUeNWjL0h8Ru0.DgBVZXB.bEMkiaHoxN3/j0HIwhFqG','anonymous'),(3,0,_binary '','hoshimiya.kate@acme.com','Kate','Hoshimiya','$2a$05$N06uk7ipYbMw4b0VeUjlXeI7XCb0bsNzQv6c.Q26QlPe2nfkndtRO','venera'),(5,0,_binary '','usada.pekora@acme.com','Pekora','Usada','$2a$05$xKT5s3M8iY7FWAttcvF1KuR2A2aaKbT/4cFe3SQkiv1B57ORioA7G','usuario'),(7,0,_binary '','administrator@acme.com','Administrator','Acme.com','$2a$05$Zl92TFXmcRxTGKaDMW5Xy.npvSeSQOl3vipCtXdZtQX6gi2jFGgk6','administrator'),(10,0,_binary '','admin@acme.com','Admin','Acme.com','$2a$05$11114JtoyJjCcYOMnKwKZeic3Dbr42XTenBWECegp4lXdSWQ/6uCq','admin');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-01  1:52:59
