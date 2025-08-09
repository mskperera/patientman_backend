-- MariaDB dump 10.19-11.3.2-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: ichangepatient
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aces`
--

DROP TABLE IF EXISTS `aces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aces` (
  `acesId` int(11) NOT NULL AUTO_INCREMENT,
  `acesName` varchar(200) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`acesId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aces`
--

LOCK TABLES `aces` WRITE;
/*!40000 ALTER TABLE `aces` DISABLE KEYS */;
INSERT INTO `aces` VALUES
(7,'Physical','2025-08-01 14:22:59','2025-08-01 14:22:59'),
(8,'Verbal abused','2025-08-01 14:22:59','2025-08-01 14:22:59'),
(9,'Sexual','2025-08-01 14:22:59','2025-08-01 14:22:59'),
(10,'Physical negligence','2025-08-01 14:22:59','2025-08-01 14:22:59'),
(11,'Emotional negligence','2025-08-01 14:22:59','2025-08-01 14:22:59'),
(12,'Mental Illness (Household)','2025-08-01 14:22:59','2025-08-01 14:22:59'),
(13,'Incarcerated Relative (Household)','2025-08-01 14:22:59','2025-08-01 14:22:59'),
(14,'Mother treated violently (Household)','2025-08-01 14:22:59','2025-08-01 14:22:59'),
(15,'Substance Abuse (Household)','2025-08-01 14:22:59','2025-08-01 14:22:59'),
(16,'Divorce (Household)','2025-08-01 14:22:59','2025-08-01 14:22:59');
/*!40000 ALTER TABLE `aces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `al_stream`
--

DROP TABLE IF EXISTS `al_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `al_stream` (
  `alStreamId` int(11) NOT NULL AUTO_INCREMENT,
  `streamName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`alStreamId`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `al_stream`
--

LOCK TABLES `al_stream` WRITE;
/*!40000 ALTER TABLE `al_stream` DISABLE KEYS */;
INSERT INTO `al_stream` VALUES
(40,'Matchs','2025-07-16 13:49:45','2025-07-16 13:49:45'),
(41,'ooo','2025-07-22 17:41:27','2025-07-22 17:41:27'),
(50,'Technology','2025-07-26 15:28:10','2025-07-26 15:28:10'),
(51,'Mathematics','2025-07-28 17:48:27','2025-07-28 17:48:27'),
(52,'Commerce','2025-07-28 17:48:57','2025-07-28 17:48:57'),
(53,'Science','2025-07-28 18:06:12','2025-07-28 18:06:12'),
(54,'Business Studies','2025-07-28 18:06:23','2025-07-28 18:06:23'),
(56,NULL,'2025-08-07 04:53:38','2025-08-07 04:53:38'),
(58,NULL,'2025-08-07 04:57:26','2025-08-07 04:57:26'),
(60,NULL,'2025-08-07 11:38:47','2025-08-07 11:38:47'),
(61,NULL,'2025-08-07 12:10:31','2025-08-07 12:10:31'),
(62,NULL,'2025-08-07 12:11:47','2025-08-07 12:11:47'),
(64,'Maths','2025-08-07 12:16:38','2025-08-07 12:16:38'),
(65,'','2025-08-09 16:20:12','2025-08-09 16:20:12');
/*!40000 ALTER TABLE `al_stream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `al_subjects`
--

DROP TABLE IF EXISTS `al_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `al_subjects` (
  `subjectId` int(11) NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `al_subjects`
--

LOCK TABLES `al_subjects` WRITE;
/*!40000 ALTER TABLE `al_subjects` DISABLE KEYS */;
INSERT INTO `al_subjects` VALUES
(1,'Combined Mathematics','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(2,'Physics','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(3,'Chemistry','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(6,'Accounting','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(7,'Geography','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(8,'Political Science','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(9,'History','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(10,'Engineering Technology','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(11,'Science for Technology','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(12,'Information Technology','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(17,'Biology','2025-07-16 13:49:45','2025-07-16 13:49:45'),
(20,'English','2025-07-26 15:28:10','2025-07-26 15:28:10');
/*!40000 ALTER TABLE `al_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_status`
--

DROP TABLE IF EXISTS `appointment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `status_name` (`status_name`),
  KEY `idx_status_name` (`status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_status`
--

LOCK TABLES `appointment_status` WRITE;
/*!40000 ALTER TABLE `appointment_status` DISABLE KEYS */;
INSERT INTO `appointment_status` VALUES
(1,'Scheduled','2025-06-27 16:53:57','2025-06-27 16:53:57'),
(2,'Completed','2025-06-27 16:53:57','2025-06-27 16:53:57'),
(3,'Cancelled','2025-06-27 16:53:57','2025-06-27 16:53:57');
/*!40000 ALTER TABLE `appointment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) NOT NULL,
  `appoinmentNo` varchar(50) DEFAULT NULL,
  `appointment_date` datetime NOT NULL,
  `status_id` int(11) NOT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`appointment_id`),
  KEY `patientId` (`patientId`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `appointment_status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES
(1,1,'A92349801','2025-07-01 09:00:00',1,'2025-06-27 16:54:24','2025-06-27 23:02:00'),
(2,1,'AP987802','2025-07-10 11:30:00',2,'2025-06-27 16:54:24','2025-06-27 23:02:00'),
(3,2,'AP987803','2025-06-27 10:00:00',1,'2025-06-27 16:54:29','2025-06-27 23:18:39'),
(4,2,'A987804','2025-07-12 14:15:00',3,'2025-06-27 16:54:29','2025-06-27 23:02:00'),
(5,3,'A987805','2025-07-03 08:45:00',1,'2025-06-27 16:54:36','2025-06-27 23:02:00'),
(6,4,'A987806','2025-07-05 15:00:00',2,'2025-06-27 16:54:39','2025-06-27 23:02:00'),
(7,4,'A987807','2025-07-18 10:30:00',1,'2025-06-27 16:54:39','2025-06-27 23:02:00'),
(8,5,'A987808','2025-07-07 13:00:00',1,'2025-06-27 16:54:43','2025-06-27 23:02:00'),
(9,5,'A987809','2025-07-20 16:45:00',3,'2025-06-27 16:54:43','2025-06-27 23:02:00'),
(10,3,'A987810','2025-07-02 13:00:00',1,'2025-06-27 23:03:59','2025-06-27 23:03:59'),
(12,1,'A280012','2025-06-28 14:30:00',1,'2025-06-28 11:22:55','2025-06-28 11:22:55'),
(13,1,'A280013','2025-06-28 14:30:00',1,'2025-06-28 11:23:43','2025-06-28 11:23:43'),
(14,1,'A280014','2025-06-28 17:30:00',1,'2025-06-28 11:28:55','2025-06-28 11:28:55'),
(15,1,'A280015','2025-06-28 18:30:00',1,'2025-06-28 11:29:40','2025-06-28 11:29:40'),
(16,2,'A280016','2025-06-28 02:55:00',1,'2025-06-28 11:51:22','2025-06-28 11:51:22'),
(17,1,'A280017','2025-06-28 02:56:00',1,'2025-06-28 11:53:26','2025-06-28 11:53:26'),
(18,1,'A180018','2025-07-18 17:00:00',1,'2025-06-28 11:54:33','2025-06-28 11:54:33');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bad_points`
--

DROP TABLE IF EXISTS `bad_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bad_points` (
  `badPointId` int(11) NOT NULL AUTO_INCREMENT,
  `badPointName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`badPointId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bad_points`
--

LOCK TABLES `bad_points` WRITE;
/*!40000 ALTER TABLE `bad_points` DISABLE KEYS */;
INSERT INTO `bad_points` VALUES
(1,'Procrastination','2025-07-24 19:31:29','2025-07-24 19:31:29'),
(2,'Shyness','2025-07-24 19:31:29','2025-07-24 19:31:29'),
(3,'Impatience','2025-07-24 19:31:29','2025-07-24 19:31:29'),
(4,'Perfectionism','2025-07-24 19:31:29','2025-07-24 19:31:29');
/*!40000 ALTER TABLE `bad_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_al`
--

DROP TABLE IF EXISTS `education_al`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_al` (
  `alId` int(11) NOT NULL AUTO_INCREMENT,
  `educationInfoId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `marks` varchar(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`alId`),
  KEY `educationInfoId` (`educationInfoId`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `education_al_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information` (`educationInfoId`),
  CONSTRAINT `education_al_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `al_subjects` (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_al`
--

LOCK TABLES `education_al` WRITE;
/*!40000 ALTER TABLE `education_al` DISABLE KEYS */;
INSERT INTO `education_al` VALUES
(25,1,9,'90',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(26,1,10,'80',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(27,1,11,'90',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(28,3,12,'90',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(29,3,11,'80',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(30,3,12,'90',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(31,4,1,'90',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(32,4,7,'90',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(33,4,6,'80',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(34,5,1,'80',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(35,5,8,'70',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(36,5,9,'80',NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(46,38,2,'80',2022,'2025-07-16 13:49:45','2025-07-16 13:49:45'),
(47,38,3,'85',2022,'2025-07-16 13:49:45','2025-07-16 13:49:45'),
(48,38,17,'90',2022,'2025-07-16 13:49:45','2025-07-16 13:49:45'),
(49,39,2,'80',2022,'2025-07-16 14:06:06','2025-07-16 14:06:06'),
(50,39,3,'85',2022,'2025-07-16 14:06:06','2025-07-16 14:06:06'),
(51,39,17,'90',2022,'2025-07-16 14:06:06','2025-07-16 14:06:06'),
(63,45,2,'A',2025,'2025-07-23 16:48:15','2025-07-23 16:48:15'),
(66,50,3,'80',2025,'2025-07-25 14:52:17','2025-07-25 14:52:17'),
(67,50,7,'A',2025,'2025-07-25 14:52:17','2025-07-25 14:52:17'),
(69,53,2,'A',2020,'2025-07-26 15:28:10','2025-07-26 15:28:10'),
(70,53,12,'C',2020,'2025-07-26 15:28:10','2025-07-26 15:52:36'),
(71,53,1,'B',2020,'2025-07-26 15:28:10','2025-07-26 15:52:55'),
(72,53,20,'A',2020,'2025-07-26 15:28:10','2025-07-26 15:28:10'),
(77,54,3,'B',2025,'2025-07-26 19:43:21','2025-07-26 22:23:02'),
(78,54,7,'85',2025,'2025-07-26 19:43:21','2025-07-26 19:43:21'),
(80,55,7,'A',2025,'2025-07-28 00:23:04','2025-07-28 00:23:04'),
(81,56,2,'80',2022,'2025-08-03 17:30:51','2025-08-03 17:30:51'),
(82,56,3,'85',2022,'2025-08-03 17:30:51','2025-08-03 17:30:51'),
(83,56,17,'90',2022,'2025-08-03 17:30:51','2025-08-03 17:30:51'),
(84,57,3,'A',2025,'2025-08-03 18:55:53','2025-08-03 18:55:53'),
(85,57,7,'B',2025,'2025-08-03 18:55:53','2025-08-03 18:55:53'),
(87,58,6,'A',2025,'2025-08-05 23:06:20','2025-08-05 23:06:20'),
(88,58,3,'B',2025,'2025-08-05 23:07:34','2025-08-05 23:07:34'),
(92,59,3,'A',2025,'2025-08-07 01:21:35','2025-08-07 01:21:35'),
(93,59,6,'B',2025,'2025-08-07 01:21:35','2025-08-07 01:21:35'),
(96,68,3,'A',2025,'2025-08-09 19:25:50','2025-08-09 19:25:50'),
(97,70,3,'A',2025,'2025-08-09 20:59:12','2025-08-09 20:59:12');
/*!40000 ALTER TABLE `education_al` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_information`
--

DROP TABLE IF EXISTS `education_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_information` (
  `educationInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) NOT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`educationInfoId`),
  KEY `patientId` (`patientId`),
  CONSTRAINT `education_information_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_information`
--

LOCK TABLES `education_information` WRITE;
/*!40000 ALTER TABLE `education_information` DISABLE KEYS */;
INSERT INTO `education_information` VALUES
(1,1,'2025-06-15 17:03:37','2025-07-28 16:49:34'),
(2,2,'2025-06-15 17:03:37','2025-07-28 16:49:34'),
(3,3,'2025-06-15 17:03:37','2025-07-28 16:49:34'),
(4,4,'2025-06-15 17:03:37','2025-07-28 16:49:34'),
(5,5,'2025-06-15 17:03:37','2025-07-28 16:49:34'),
(38,1,'2025-07-16 13:49:45','2025-07-28 16:49:34'),
(39,15,'2025-07-16 14:06:06','2025-07-28 16:49:34'),
(45,14,'2025-07-21 20:46:41','2025-07-28 16:49:34'),
(50,6,'2025-07-25 14:51:49','2025-07-28 16:49:34'),
(52,19,'2025-07-26 14:06:00','2025-07-28 16:49:34'),
(53,24,'2025-07-26 15:28:10','2025-07-28 16:52:40'),
(54,25,'2025-07-26 19:42:06','2025-07-28 18:39:54'),
(55,26,'2025-07-27 23:50:47','2025-07-28 16:49:34'),
(56,33,'2025-08-03 17:30:45','2025-08-07 04:53:38'),
(57,40,'2025-08-03 18:30:07','2025-08-07 00:23:50'),
(58,41,'2025-08-05 23:06:20','2025-08-05 23:07:34'),
(59,42,'2025-08-07 00:30:31','2025-08-09 18:37:30'),
(60,31,'2025-08-07 04:57:26','2025-08-07 11:38:47'),
(61,43,'2025-08-07 12:10:31','2025-08-09 18:01:54'),
(68,44,'2025-08-09 19:08:18','2025-08-09 19:28:55'),
(69,45,'2025-08-09 19:36:24','2025-08-09 19:36:30'),
(70,46,'2025-08-09 20:59:12','2025-08-09 20:59:26');
/*!40000 ALTER TABLE `education_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_information_family`
--

DROP TABLE IF EXISTS `education_information_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_information_family` (
  `educationInfoId` int(11) NOT NULL,
  `educationYearsHusband` int(11) NOT NULL,
  `isScholarshipHusband` bit(1) DEFAULT b'0',
  `isOLHusband` bit(1) DEFAULT b'0',
  `isOLPassedHusband` bit(1) DEFAULT b'0',
  `isALHusband` bit(1) DEFAULT b'0',
  `isUniversityHusband` bit(1) DEFAULT b'0',
  `remarkOLHusband` varchar(500) DEFAULT NULL,
  `remarkALHusband` varchar(500) DEFAULT NULL,
  `alStreamIdHusband` int(11) DEFAULT NULL,
  `remarkUniversityHusband` varchar(500) DEFAULT NULL,
  `isEdexcelHusband` bit(1) DEFAULT b'0',
  `isCambridgeHusband` bit(1) DEFAULT b'0',
  `educationYearsWife` int(11) NOT NULL,
  `isScholarshipWife` bit(1) DEFAULT b'0',
  `isOLWife` bit(1) DEFAULT b'0',
  `isOLPassedWife` bit(1) DEFAULT b'0',
  `isALWife` bit(1) DEFAULT b'0',
  `isUniversityWife` bit(1) DEFAULT b'0',
  `remarkOLWife` varchar(500) DEFAULT NULL,
  `remarkALWife` varchar(500) DEFAULT NULL,
  `alStreamIdWife` int(11) DEFAULT NULL,
  `remarkUniversityWife` varchar(500) DEFAULT NULL,
  `isEdexcelWife` bit(1) DEFAULT b'0',
  `isCambridgeWife` bit(1) DEFAULT b'0',
  PRIMARY KEY (`educationInfoId`),
  CONSTRAINT `education_information_family_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information` (`educationInfoId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_information_family`
--

LOCK TABLES `education_information_family` WRITE;
/*!40000 ALTER TABLE `education_information_family` DISABLE KEYS */;
INSERT INTO `education_information_family` VALUES
(3,13,'','','\0','','',NULL,NULL,40,NULL,'\0','\0',0,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(4,15,'','','\0','','',NULL,NULL,40,NULL,'\0','\0',0,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(5,11,'\0','','\0','','\0',NULL,NULL,40,NULL,'\0','\0',0,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(50,12,'\0','\0','\0','','',NULL,'',40,'dssfcz\\','\0','\0',0,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(52,3,'\0','','\0','\0','\0','',NULL,NULL,NULL,'\0','\0',0,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(53,5,'','','\0','','','jljjlkjjl','lljkjl',50,'jjljkjk','\0','\0',0,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(54,15,'','','\0','','','','',41,'mklmlkml','\0','\0',0,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(56,12,'','\0',NULL,'','\0',NULL,'Qualified for university entrance',53,NULL,'','\0',0,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(58,3,'','','\0','','','ooo','ljk',51,'','','',0,'\0','\0','\0','\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(60,12,'\0','\0',NULL,'','\0',NULL,'Qualified for university entrance',53,NULL,'','\0',0,NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,NULL,'\0','\0'),
(61,16,'\0','','','','','jlj','jljkljikj',50,'Advanced Level Qualifications Mathematics and English Literature, demonstrating strong analytical thinking and communication skills.','','',12,NULL,'','','','','oooo','joooooooooooooooooo',51,'Bachelor of Information Technology – University of Colombo, School of Computing, Sri Lanka\n','',''),
(69,13,'\0','','','','','kj','jl',51,'jlkj','','',13,NULL,'','\0','','','','jlkjl',51,'kj','',NULL);
/*!40000 ALTER TABLE `education_information_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_information_single`
--

DROP TABLE IF EXISTS `education_information_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_information_single` (
  `educationInfoId` int(11) NOT NULL,
  `educationYears` int(11) NOT NULL,
  `isScholarship` bit(1) DEFAULT b'0',
  `isOL` bit(1) DEFAULT b'0',
  `isAL` bit(1) DEFAULT b'0',
  `isUniversity` bit(1) DEFAULT b'0',
  `remarkOL` varchar(500) DEFAULT NULL,
  `remarkAL` varchar(500) DEFAULT NULL,
  `alStreamId` int(11) DEFAULT NULL,
  `remarkUniversity` varchar(500) DEFAULT NULL,
  `isEdexcel` bit(1) DEFAULT b'0',
  `isCambridge` bit(1) DEFAULT b'0',
  PRIMARY KEY (`educationInfoId`),
  CONSTRAINT `education_information_single_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information` (`educationInfoId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_information_single`
--

LOCK TABLES `education_information_single` WRITE;
/*!40000 ALTER TABLE `education_information_single` DISABLE KEYS */;
INSERT INTO `education_information_single` VALUES
(1,12,'','','','',NULL,NULL,40,NULL,'\0','\0'),
(2,10,'\0','','\0','',NULL,NULL,40,NULL,'\0','\0'),
(38,12,'','','','','Passed with distinction','Qualified for university entrance',40,'Pursuing BSc in Computer Science','\0','\0'),
(39,10,'','','','','Passed with distinction','Qualified for university entrance',40,'Pursuing BSc in Computer Science','\0','\0'),
(45,14,'','','','','','',41,'','\0','\0'),
(55,3,'','','','','jjkljkjjjjj\njjllllloj\njj\njkj','jjj\njlkjl',50,'jjjljlk\nljljk\njlkjlkj','\0','\0'),
(57,8,'','','','','lllllll','oooooooooooooooooooooooooooooooooooo\nooo',51,'jkljljlj','\0',''),
(59,2,'','','','','oo\njjk\nnkk\njoljlkjkj','jhgj\nkhj',50,'jljkjjjkj','','\0'),
(68,13,'','','','','jlkjljj','kjkl',50,'jkjkl','',''),
(70,9,'','','','','jlj','klj',51,'jlkjjljl4lj\nljk','','');
/*!40000 ALTER TABLE `education_information_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_ol`
--

DROP TABLE IF EXISTS `education_ol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_ol` (
  `olId` int(11) NOT NULL AUTO_INCREMENT,
  `educationInfoId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `marks` varchar(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`olId`),
  KEY `educationInfoId` (`educationInfoId`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `education_ol_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information` (`educationInfoId`),
  CONSTRAINT `education_ol_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `ol_subjects` (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_ol`
--

LOCK TABLES `education_ol` WRITE;
/*!40000 ALTER TABLE `education_ol` DISABLE KEYS */;
INSERT INTO `education_ol` VALUES
(1,1,1,'90',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(2,1,2,'90',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(3,1,3,'80',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(4,1,4,'90',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(5,2,5,'80',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(6,2,2,'70',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(7,2,3,'70',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(8,3,1,'90',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(9,3,2,'80',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(10,3,4,'80',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(12,4,1,'90',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(13,4,2,'90',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(14,4,3,'90',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(15,4,4,'80',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(17,5,5,'80',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(18,5,2,'70',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(19,5,3,'80',2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(118,38,2,'85',2020,'2025-07-16 13:49:45','2025-07-16 13:49:45'),
(119,38,4,'90',2020,'2025-07-16 13:49:45','2025-07-16 13:49:45'),
(120,38,3,'88',2020,'2025-07-16 13:49:45','2025-07-16 13:49:45'),
(122,39,4,'90',2020,'2025-07-16 14:06:06','2025-07-16 14:06:06'),
(123,39,3,'88',2020,'2025-07-16 14:06:06','2025-07-16 14:06:06'),
(139,45,2,'A',2025,'2025-07-23 16:44:53','2025-07-23 16:44:53'),
(149,53,4,'A',2018,'2025-07-26 15:28:10','2025-07-26 15:48:38'),
(150,53,3,'B',2018,'2025-07-26 15:28:10','2025-07-26 15:28:10'),
(151,53,5,'A',2018,'2025-07-26 15:28:10','2025-07-26 15:48:17'),
(156,53,2,'B',2025,'2025-07-26 15:48:00','2025-07-26 15:48:00'),
(157,54,3,'S',2025,'2025-07-26 19:42:39','2025-07-28 18:27:27'),
(158,55,3,'A',2025,'2025-07-27 23:50:47','2025-07-27 23:50:47'),
(159,55,23,'88',2025,'2025-07-28 13:41:40','2025-07-28 13:41:40'),
(160,57,3,'A',2025,'2025-08-03 19:35:33','2025-08-03 19:35:33'),
(161,58,3,'A',2025,'2025-08-05 23:06:20','2025-08-05 23:06:20'),
(162,58,2,'B',2025,'2025-08-05 23:06:20','2025-08-05 23:06:20'),
(164,57,5,'B',2025,'2025-08-06 00:14:25','2025-08-06 00:14:25'),
(168,59,2,'A',2025,'2025-08-07 01:20:26','2025-08-07 01:20:26'),
(169,59,3,'B',2025,'2025-08-07 01:20:26','2025-08-07 01:20:26'),
(172,68,3,'A',2025,'2025-08-09 19:28:36','2025-08-09 19:28:36'),
(173,70,2,'A',2025,'2025-08-09 20:59:12','2025-08-09 20:59:12'),
(174,70,4,'B',2025,'2025-08-09 20:59:26','2025-08-09 20:59:26');
/*!40000 ALTER TABLE `education_ol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_scholarship`
--

DROP TABLE IF EXISTS `education_scholarship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_scholarship` (
  `scholarshipId` int(11) NOT NULL AUTO_INCREMENT,
  `educationInfoId` int(11) NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `schoolAdmitted` varchar(50) DEFAULT NULL,
  `isPass` bit(1) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`scholarshipId`),
  KEY `educationInfoId` (`educationInfoId`),
  CONSTRAINT `education_scholarship_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information` (`educationInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_scholarship`
--

LOCK TABLES `education_scholarship` WRITE;
/*!40000 ALTER TABLE `education_scholarship` DISABLE KEYS */;
INSERT INTO `education_scholarship` VALUES
(1,1,185,'Royal College, Colombo','','Received scholarship for academic excellence','2025-06-15 17:07:13','2025-06-15 17:07:13'),
(2,3,170,'Ananda College, Colombo','','Admitted to prestigious school','2025-06-15 17:07:13','2025-06-15 17:07:13'),
(3,4,190,'Visakha Vidyalaya, Colombo','','Top performer in scholarship exam','2025-06-15 17:07:13','2025-06-15 17:07:13'),
(36,38,85,'Central College','','Received scholarship for academic excellence','2025-07-16 13:49:45','2025-07-16 13:49:45'),
(37,39,120,'Central College oo','','Received scholarship for academic excellence','2025-07-16 14:06:06','2025-07-20 02:25:03'),
(43,45,120,'Central College oo',NULL,'Received scholarship for academic excellence','2025-07-21 20:46:41','2025-07-23 16:48:36'),
(46,53,185,'Royal College, Colombo',NULL,'jjjj','2025-07-26 15:28:10','2025-07-28 16:52:40'),
(47,54,187,'Ananda College, Colombo',NULL,'v','2025-07-26 19:42:17','2025-07-28 18:39:54'),
(48,55,185,'Royal College, Colombo',NULL,'hhkhjhklkjk\njljljjoooooooooooooooooooooooooooo\nljljkj','2025-07-27 23:50:47','2025-07-28 13:41:40'),
(49,56,120,'Central College oo','','Received scholarship for academic excellence','2025-08-03 17:30:45','2025-08-03 17:30:51'),
(50,57,185,'Royal College, Colombo',NULL,'k;lk;l','2025-08-03 18:30:21','2025-08-07 00:23:50'),
(51,58,185,'Royal College, Colombo',NULL,'','2025-08-05 23:06:20','2025-08-05 23:07:34'),
(54,59,85,'Royal College, Colombo','','hh','2025-08-07 01:14:24','2025-08-09 18:37:30'),
(61,68,185,'Ananda College, Colombo','','oj\njk\nt','2025-08-09 19:08:18','2025-08-09 19:28:55'),
(62,70,85,'Ananda College, Colombo','\0','jlkjk\nlkj','2025-08-09 20:59:12','2025-08-09 20:59:26');
/*!40000 ALTER TABLE `education_scholarship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_university`
--

DROP TABLE IF EXISTS `education_university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_university` (
  `highschoolId` int(11) NOT NULL AUTO_INCREMENT,
  `educationInfoId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `marks` varchar(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `institutionId` int(11) DEFAULT NULL,
  PRIMARY KEY (`highschoolId`),
  KEY `educationInfoId` (`educationInfoId`),
  KEY `subjectId` (`subjectId`),
  KEY `education_university_institutions_FK` (`institutionId`),
  CONSTRAINT `education_university_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information` (`educationInfoId`),
  CONSTRAINT `education_university_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `university_subjects` (`subjectId`),
  CONSTRAINT `education_university_institutions_FK` FOREIGN KEY (`institutionId`) REFERENCES `institutions` (`institutionId`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_university`
--

LOCK TABLES `education_university` WRITE;
/*!40000 ALTER TABLE `education_university` DISABLE KEYS */;
INSERT INTO `education_university` VALUES
(1,1,1,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21',NULL),
(2,2,1,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21',NULL),
(3,3,2,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21',NULL),
(4,4,3,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21',NULL),
(5,4,4,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21',NULL),
(6,38,5,'75',2024,'2025-07-16 13:49:45','2025-07-16 13:49:45',1),
(7,38,6,'80',2024,'2025-07-16 13:49:45','2025-07-16 13:49:45',2),
(17,39,7,'80',2024,'2025-07-20 02:24:50','2025-07-20 02:24:50',6),
(18,39,5,'75',2024,'2025-07-20 02:25:03','2025-07-20 02:25:03',7),
(35,45,3,'B+',2025,'2025-07-23 16:48:36','2025-07-23 16:48:36',1),
(40,50,4,'A',2025,'2025-07-25 14:51:49','2025-07-25 14:51:49',1),
(41,53,5,'3.0',2025,'2025-07-26 15:28:10','2025-07-26 15:54:29',1),
(42,53,3,'3.5',2025,'2025-07-26 15:28:10','2025-07-26 15:54:05',2),
(43,53,10,'4',2025,'2025-07-26 15:28:10','2025-07-26 15:55:09',1),
(44,53,2,'3.6',2025,'2025-07-26 15:55:09','2025-07-26 15:55:09',2),
(45,53,3,'771',2025,'2025-07-26 16:11:16','2025-07-26 16:11:16',1),
(46,54,5,'100',2025,'2025-07-26 19:43:34','2025-07-26 22:23:12',1),
(47,55,5,'A',2025,'2025-07-28 00:34:13','2025-07-28 00:34:13',2),
(48,56,5,'75',2024,'2025-08-03 17:30:51','2025-08-03 17:30:51',7),
(49,56,7,'80',2024,'2025-08-03 17:30:51','2025-08-03 17:30:51',6),
(51,57,4,'A',2025,'2025-08-03 19:34:06','2025-08-03 19:34:06',2),
(52,57,4,'B-',2025,'2025-08-03 19:34:06','2025-08-03 19:34:13',1),
(54,58,4,'A',2025,'2025-08-05 23:07:18','2025-08-05 23:07:18',1),
(57,59,1,'A',2025,'2025-08-07 02:23:20','2025-08-07 02:23:20',2),
(58,59,4,'C',2025,'2025-08-07 03:21:45','2025-08-07 03:21:53',1),
(60,68,5,'A',2025,'2025-08-09 19:20:41','2025-08-09 19:20:41',2),
(61,70,4,'A',2025,'2025-08-09 20:59:12','2025-08-09 20:59:12',5);
/*!40000 ALTER TABLE `education_university` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_university_husband`
--

DROP TABLE IF EXISTS `education_university_husband`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_university_husband` (
  `universityHusbandId` int(11) NOT NULL AUTO_INCREMENT,
  `educationInfoId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `marks` varchar(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `institutionId` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`universityHusbandId`),
  KEY `educationInfoId` (`educationInfoId`),
  KEY `subjectId` (`subjectId`),
  KEY `institutionId` (`institutionId`),
  CONSTRAINT `education_university_husband_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information_family` (`educationInfoId`) ON DELETE CASCADE,
  CONSTRAINT `education_university_husband_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `university_subjects` (`subjectId`),
  CONSTRAINT `education_university_husband_institutions_fk` FOREIGN KEY (`institutionId`) REFERENCES `institutions` (`institutionId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_university_husband`
--

LOCK TABLES `education_university_husband` WRITE;
/*!40000 ALTER TABLE `education_university_husband` DISABLE KEYS */;
INSERT INTO `education_university_husband` VALUES
(19,61,6,'1',2025,21,'2025-08-08 18:40:43','2025-08-08 18:40:43'),
(22,61,4,'1',2025,21,'2025-08-09 17:42:58','2025-08-09 17:42:58'),
(23,69,7,'1',2025,21,'2025-08-09 19:36:24','2025-08-09 19:36:24'),
(24,69,5,'1',2025,21,'2025-08-09 19:36:24','2025-08-09 19:36:24');
/*!40000 ALTER TABLE `education_university_husband` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_university_wife`
--

DROP TABLE IF EXISTS `education_university_wife`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_university_wife` (
  `universityWifeId` int(11) NOT NULL AUTO_INCREMENT,
  `educationInfoId` int(11) NOT NULL,
  `subjectId` int(11) DEFAULT NULL,
  `marks` varchar(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `institutionId` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`universityWifeId`),
  KEY `educationInfoId` (`educationInfoId`),
  KEY `subjectId` (`subjectId`),
  KEY `institutionId` (`institutionId`),
  CONSTRAINT `education_university_wife_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information_family` (`educationInfoId`) ON DELETE CASCADE,
  CONSTRAINT `education_university_wife_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `university_subjects` (`subjectId`) ON DELETE SET NULL,
  CONSTRAINT `education_university_wife_institutions_fk` FOREIGN KEY (`institutionId`) REFERENCES `institutions` (`institutionId`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_university_wife`
--

LOCK TABLES `education_university_wife` WRITE;
/*!40000 ALTER TABLE `education_university_wife` DISABLE KEYS */;
INSERT INTO `education_university_wife` VALUES
(12,61,2,'1',2025,21,'2025-08-09 16:48:12','2025-08-09 16:48:12'),
(13,61,5,'1',2025,21,'2025-08-09 17:27:30','2025-08-09 17:27:30'),
(14,69,4,'1',2025,21,'2025-08-09 19:36:24','2025-08-09 19:36:24');
/*!40000 ALTER TABLE `education_university_wife` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_information`
--

DROP TABLE IF EXISTS `family_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family_information` (
  `familyInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) NOT NULL,
  `spouseOccupation` varchar(100) DEFAULT NULL,
  `spouseOccupationFullTime` varchar(20) DEFAULT NULL,
  `motherAge` int(11) DEFAULT NULL,
  `ageWhenMotherDied` int(11) DEFAULT NULL,
  `fatherAge` int(11) DEFAULT NULL,
  `ageWhenFatherDied` int(11) DEFAULT NULL,
  `motherOccupation` varchar(100) DEFAULT NULL,
  `fatherOccupation` varchar(100) DEFAULT NULL,
  `motherReligion` varchar(50) DEFAULT NULL,
  `fatherReligion` varchar(50) DEFAULT NULL,
  `raisedBy` varchar(100) DEFAULT NULL,
  `motherDescription` text DEFAULT NULL,
  `fatherDescription` text DEFAULT NULL,
  `parentalSeparationAge` int(11) DEFAULT NULL,
  `parentalDivorceAge` int(11) DEFAULT NULL,
  `motherDivorceCount` int(11) DEFAULT NULL,
  `fatherDivorceCount` int(11) DEFAULT NULL,
  `livingBrothers` int(11) DEFAULT NULL,
  `livingSisters` int(11) DEFAULT NULL,
  `brothersAges` varchar(50) DEFAULT NULL,
  `sistersAges` varchar(50) DEFAULT NULL,
  `childNumber` int(11) DEFAULT NULL,
  `familyChildren` int(11) DEFAULT NULL,
  `adopted` varchar(10) DEFAULT NULL,
  `brotherDisturbances` text DEFAULT NULL,
  `sisterDisturbances` text DEFAULT NULL,
  `maleRelativesDisturbed` int(11) DEFAULT NULL,
  `maleRelativesHospitalized` int(11) DEFAULT NULL,
  `femaleRelativesDisturbed` int(11) DEFAULT NULL,
  `femaleRelativesHospitalized` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`familyInfoId`),
  KEY `patientId` (`patientId`),
  CONSTRAINT `family_information_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_information`
--

LOCK TABLES `family_information` WRITE;
/*!40000 ALTER TABLE `family_information` DISABLE KEYS */;
INSERT INTO `family_information` VALUES
(1,1,'Teacher','full-time',55,NULL,58,NULL,'Doctor','Engineer','Christianity','Christianity','Parents','Supportive,Caring,Loving','Strict,Disciplined,Encouraging',NULL,NULL,0,0,1,1,'30','28',1,2,'No','Occasional conflicts over responsibilities','',0,0,1,0,'2025-07-14 15:00:55','2025-07-14 15:00:55'),
(2,2,'','',60,NULL,NULL,10,'Teacher','Other','Hinduism','Hinduism','Single Mother','Warm,Overprotective','Distant',8,9,1,1,0,2,'','25, 22',3,3,'No','','Competitive relationship with younger sister',1,0,0,0,'2025-07-14 15:00:55','2025-07-14 15:00:55'),
(3,3,'Engineer','part-time',NULL,15,62,NULL,'Other','Doctor','Buddhism','Buddhism','Single Father,Grandparents','Caring','Supportive,Warm',NULL,NULL,0,0,2,0,'35, 32','',2,3,'Yes','','',0,0,0,0,'2025-07-14 15:00:55','2025-07-14 15:00:55'),
(4,4,'','',50,NULL,52,NULL,'Engineer','Teacher','Islam','Islam','Parents','Strict,Traditional','Loving,Encouraging',NULL,NULL,0,0,0,0,'','',1,1,'No','','',0,0,0,0,'2025-07-14 15:00:55','2025-07-14 15:00:55'),
(5,5,'Doctor','full-time',NULL,5,NULL,5,'Other','Other','Other','Other','Grandparents,Aunt','Distant','Distant',NULL,NULL,0,0,1,1,'27','29',2,3,'Yes','Strained relationship due to distance','',2,1,1,0,'2025-07-14 15:00:55','2025-07-14 15:00:55'),
(6,6,'Teacher','Yes',60,NULL,65,NULL,'Nurse','Engineer','Buddhist','Buddhist','Uncle','Kind and caring','Strict but supportive',2,1,0,0,2,1,'30, 25','28',2,4,'Yes','kjkjljj oo','Minor conflict',1,2,1,3,'2025-07-14 15:00:55','2025-07-25 14:00:12'),
(7,15,'Chef','part-time',60,55,65,55,'Nurse','Engineer','Buddhist','Buddhist','Parents;;Sisters;;Adoptive Parents','Kind and caring;;Kind and caring 444','Strict but supportive;;Strict but supportiveooooo4',4,4,2,1,2,1,'30, 25','28',2,4,'No','None','Minor conflict',2,7,1,2,'2025-07-15 12:55:41','2025-07-24 17:50:48'),
(10,19,'Nurse','full-time',40,21,50,1,'Graphic Designer','Graphic Designer','Hinduism','Hinduism','Uncle','Caring','Caring;;Critical',NULL,NULL,0,0,2,0,'30, 25','12,17,20',2,5,'Yes','hkhjhkhh','ljjjljlj',2,1,1,1,'2025-07-26 10:48:36','2025-07-26 10:51:49'),
(11,24,'Marketing Manager','full-time',40,NULL,50,NULL,'Researcher','Doctor','Islam','Islam','Uncle','Loving','Caring;;Loving',NULL,NULL,0,0,3,2,'30,25,20,44','25,20',2,4,'Yes','hkhj','jljlkj',2,2,1,5,'2025-07-26 15:07:41','2025-07-27 17:32:19'),
(12,25,'Construction Worker','full-time',40,NULL,50,NULL,'Graphic Designer','Construction Worker','Judaism','Judaism','Aunt;;Uncle;;Custom person','Distant;;custom1','Distant;;custom person frather 1',NULL,NULL,0,0,2,2,'30, 25','25,20',0,4,'Yes','Testing within voice to text box','ljkljjljkj hello hello ',0,4,1,2,'2025-07-26 19:36:51','2025-07-26 22:17:00'),
(13,26,'Pharmacist','full-time',40,NULL,50,NULL,'Pharmacist','Driver','Hinduism','Buddhism','Aunt','Caring','Caring;;Distant',NULL,NULL,0,0,0,0,'1','1',1,1,'Yes','mn,nm,\n\njllk','ljkjk\n\njljlkjk',2,2,1,3,'2025-07-27 23:25:06','2025-07-28 00:15:35'),
(14,39,'','',40,NULL,50,NULL,'Manager','Marketing Specialist','Sikhism','Christianity','Aunt','Distant','Caring',NULL,NULL,0,0,0,0,'4','4',4,4,'Yes','mlm','k;lk',5,6,5,5,'2025-07-31 16:48:37','2025-07-31 16:48:37'),
(15,40,'','',4,NULL,4,NULL,'Administrator','Doctor','Islam','Islam','Uncle;;Adoptive Parents','Strict','Distant',4,4,4,4,4,4,'30, 25','25,20',4,4,'Yes','jlkjk','jkjl',4,4,4,4,'2025-08-02 14:22:57','2025-08-02 14:22:57'),
(16,44,'','',40,NULL,50,NULL,'Consultant','Teacher','Hinduism','Hinduism','Uncle','Critical','Caring',0,1,0,1,1,1,'1','1',1,1,'Yes','k;l','l;kk',12,2,5,5,'2025-08-09 18:49:03','2025-08-09 18:49:13');
/*!40000 ALTER TABLE `family_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familypatients`
--

DROP TABLE IF EXISTS `familypatients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familypatients` (
  `familyPatientId` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) NOT NULL,
  `husbandFirstName` varchar(50) DEFAULT NULL,
  `husbandLastName` varchar(50) DEFAULT NULL,
  `husbandMiddleName` varchar(50) DEFAULT NULL,
  `husbandDateOfBirth` date DEFAULT NULL,
  `husbandAge` int(11) DEFAULT NULL,
  `husbandGender` varchar(10) DEFAULT NULL,
  `husbandEmail` varchar(100) DEFAULT NULL,
  `husbandHomePhone` varchar(20) DEFAULT NULL,
  `husbandMobilePhone` varchar(20) DEFAULT NULL,
  `husbandPermanentAddress` varchar(200) DEFAULT NULL,
  `wifeFirstName` varchar(50) DEFAULT NULL,
  `wifeLastName` varchar(50) DEFAULT NULL,
  `wifeMiddleName` varchar(50) DEFAULT NULL,
  `wifeDateOfBirth` date DEFAULT NULL,
  `wifeAge` int(11) DEFAULT NULL,
  `wifeGender` varchar(10) DEFAULT NULL,
  `wifeEmail` varchar(100) DEFAULT NULL,
  `wifeHomePhone` varchar(20) DEFAULT NULL,
  `wifeMobilePhone` varchar(20) DEFAULT NULL,
  `wifePermanentAddress` varchar(200) DEFAULT NULL,
  `referralSource` varchar(50) DEFAULT NULL,
  `referralSourceOther` varchar(50) DEFAULT NULL,
  `referralPartyPresent` bit(1) DEFAULT NULL,
  `formDate` date DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL,
  PRIMARY KEY (`familyPatientId`),
  KEY `familypatients_patient_FK` (`patientId`),
  CONSTRAINT `familypatients_patient_FK` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familypatients`
--

LOCK TABLES `familypatients` WRITE;
/*!40000 ALTER TABLE `familypatients` DISABLE KEYS */;
INSERT INTO `familypatients` VALUES
(1,3,'Nimal','Fernando','Kumar','1998-10-20',26,'Male','nimal.fernando@example.com','0912233445','0918765432','78 Main Street, Galle, Sri Lanka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488563',NULL,'psychologist or psychiatrist',NULL,'','2024-04-15','2024-05-28 13:30:55'),
(2,4,'Sita','Wijesinghe','Rani','1970-03-10',55,'Female','sita.wijesinghe@example.com','0312233445','','12 Temple Road, Negombo, Sri Lanka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488562',NULL,'hospital or clinic',NULL,'','2024-03-10','2024-04-01 17:20:00'),
(3,5,'Tharushi','Jayasinghe','','2000-07-25',24,'Female','tharushi.jayasinghe@example.com','0452233445','','56 Lake View, Nuwara Eliya, Sri Lanka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488562',NULL,'friend',NULL,'','2024-05-05','2024-06-01 09:10:40'),
(4,6,'Fernando ed','Nimal ooo','K.','1990-07-22',34,'Male','nimal2.fernando@example.com','+94772233445','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488562',NULL,'Hospital Event',NULL,'\0','2025-06-19','2025-07-12 14:50:54'),
(5,19,'Nimal ooo','Fernando ed','K.','1990-07-22',NULL,'Male','nimal2.fernandoooo@example.com','0447788547','0778858542','456 Kandy Road, Kurunegala, Sri Lanka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488562',NULL,'family doctor','','','2025-07-25','2025-07-26 14:40:12'),
(6,20,'jklj','jkj','jklj','2001-07-16',NULL,'Male','spmskkkkperera@gmail.com','0771147484','','kjlk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488562',NULL,'self',NULL,'','2025-07-25','2025-07-25 16:52:21'),
(7,21,'devid','Carpen','oo','1990-07-17',NULL,'Male','spmskperoooiiioera@gmail.com','0441155248','0771145852','3/64 Kurunduwatta Road,\nMirihana Kotte.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488562',NULL,'other','Facebook','\0','2025-07-26','2025-07-26 14:48:35'),
(8,22,'Perera','SUSANTHAoioi','jkjl','2025-07-08',NULL,'Male','spmskoiuoiperera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488562',NULL,'self','','','2025-07-26','2025-07-26 14:52:51'),
(9,23,'Perera','SUSANTHAiiiiiiiii','lkljk','2025-07-09',NULL,'Male','spmskkkkkperera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488562',NULL,'school or teacher','','\0','2025-07-26','2025-07-26 14:56:12'),
(10,24,'SUSANTH Edkio','Pereroa','manural','2025-07-02',NULL,'Male','spmskpereiuira@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0774488562',NULL,'hospital or clinic','','','2025-07-26','2025-07-26 18:13:41'),
(11,25,'David','LastName','MiddleName','2000-07-10',25,'Male','spmsjjkperera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.','Marina','Perera','jjjj','2002-07-10',23,'Female','iiipereooora@gmail.com','0771147484','0774488562','3/64 Kurunduwatta Road,\nMirihana Kotte.','social agency','','\0','2025-07-26','2025-07-31 10:59:04'),
(16,27,'Nimal oo','Fernando','hus midd','2000-07-22',25,'Male','nimal.fernaondo@example.com','+94772233445','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','Sriyani','Perera','wife midd.','1992-03-15',33,'Female','sriyani.perera@example.com','+94771234567','+94113456789','456 Kandy Road, Kurunegala, Sri Lanka',NULL,NULL,NULL,'2025-07-30','2025-08-02 07:19:20'),
(17,28,'jkljlj','jlkj','jlkj','2000-07-17',25,'Male','spmskpereriouia@gmail.com','0771147484','0771147484','io','gghjh','Perera','Peter','2000-07-17',25,'Female','spmskperioipiera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.',NULL,NULL,NULL,'2025-07-31','2025-07-31 13:50:07'),
(18,29,'Nimal2','Fernando','K.','1990-07-22',34,'Male','nimal.fernaondo@kjkjexample.com','+94772233445','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','Sriyani2','Perera','M.','1992-03-15',33,'Female','sriyani.perejkjra@example.com','+94771234567','+94113456789','456 Kandy Road, Kurunegala, Sri Lanka',NULL,NULL,NULL,'2025-07-31','2025-07-31 13:52:58'),
(19,30,'jkljkl','jkjl','89ujj','2000-07-02',25,'Male','spmskperjkjlkera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road, Pita Kotte','iijkj','Perera','','2000-07-09',25,'Male','spmskpkjlkerera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road, Pita Kotte',NULL,NULL,NULL,'2025-07-31','2025-07-31 13:54:52'),
(20,31,'hjkh','jhkjh','uou9','2000-07-24',25,'Male','spmuyskperera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.','Johnt','Perera','Peter','2000-07-02',25,'Female','spmskpuoierera@gmail.com','0771147484','0771147484','123 Main St',NULL,NULL,NULL,'2025-07-31','2025-07-31 14:04:12'),
(21,33,'Nimal oo','Fernando','K.','1990-07-22',34,'Male','nimal.fernaokjndo@example.com','+94772233445','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','Sriyani','Perera','M.','1992-03-15',33,'Female','sriyani.pererkjka@example.com','+94771234567','+94113456789','456 Kandy Road, Kurunegala, Sri Lanka',NULL,NULL,NULL,'2025-07-31','2025-08-02 13:33:08'),
(22,41,'kklo','perera','hus midd','1990-08-02',35,'Male','spmskperkkera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,','Sriyani','Perera','wife midd.','2000-08-01',25,'Female','spmskpeoorera@gmail.com','0771147484','0771147484','Mirihana Kotte.',NULL,NULL,NULL,'2025-08-05','2025-08-05 23:05:34'),
(23,43,'Geroge','Beggera','kj','2000-07-29',25,'Male','spmkkskperera@gmail.com','0771147484','0771147484','jlkjlk','Madena','Kouno','kj','2000-07-30',25,'Female','spmskpejjrera@gmail.com','0771147484','0771147484','jkljk',NULL,NULL,NULL,'2025-08-07','2025-08-07 12:09:27'),
(24,45,'John','Fernando','89ujj','2000-08-22',24,'Male','spmskper889era@gmail.com','0771147484','0771147484','123 Main St','iiio','Perera','jjjj','2000-08-07',25,'Female','spms89kperera@gmail.com','0771147484','0771147484','ljkj',NULL,NULL,NULL,'2025-08-09','2025-08-09 19:34:52');
/*!40000 ALTER TABLE `familypatients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good_points`
--

DROP TABLE IF EXISTS `good_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `good_points` (
  `goodPointId` int(11) NOT NULL AUTO_INCREMENT,
  `goodPointName` varchar(200) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`goodPointId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_points`
--

LOCK TABLES `good_points` WRITE;
/*!40000 ALTER TABLE `good_points` DISABLE KEYS */;
INSERT INTO `good_points` VALUES
(1,'Problem-solver : I enjoy analyzing issues and finding effective solutions.','2025-07-24 19:30:32','2025-07-24 19:30:32'),
(2,'Quick learner : I can pick up new tools and frameworks rapidly.','2025-07-24 19:30:32','2025-07-24 19:30:32'),
(3,'Strong work ethic : I am committed to meeting deadlines and taking responsibility.','2025-07-24 19:30:32','2025-07-24 19:30:32'),
(4,'Adaptable : I can adjust to new environments, teams, or technologies easily.','2025-07-24 19:30:32','2025-07-24 19:30:32'),
(5,'Team player : I communicate well and collaborate effectively with others.','2025-07-24 19:30:32','2025-07-24 19:30:32'),
(6,'Detail-oriented : I notice small issues before they grow into big problems.','2025-07-24 19:30:32','2025-07-24 19:30:32');
/*!40000 ALTER TABLE `good_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutions`
--

DROP TABLE IF EXISTS `institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutions` (
  `institutionId` int(11) NOT NULL AUTO_INCREMENT,
  `institutionName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`institutionId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutions`
--

LOCK TABLES `institutions` WRITE;
/*!40000 ALTER TABLE `institutions` DISABLE KEYS */;
INSERT INTO `institutions` VALUES
(1,'Uniersity of Colombo','2025-07-16 13:49:45','2025-07-16 13:49:45'),
(2,'Uniersity of Moratuwa','2025-07-16 13:49:45','2025-07-16 13:49:45'),
(5,'Uniersity of Moratuwa h','2025-07-20 02:20:16','2025-07-20 02:20:16'),
(6,'Uniersity of Moratuwa o','2025-07-20 02:24:50','2025-07-20 02:24:50'),
(7,'Uniersity of Colombo 2','2025-07-20 02:25:03','2025-07-20 02:25:03'),
(8,'UBA','2025-07-23 13:22:49','2025-07-23 13:22:49'),
(9,'UNI123','2025-07-23 13:22:49','2025-07-23 13:22:49'),
(10,'uuu','2025-07-23 13:34:07','2025-07-23 13:34:07'),
(11,'aa','2025-07-23 13:38:06','2025-07-23 13:38:06'),
(12,'ww','2025-07-23 13:42:00','2025-07-23 13:42:00'),
(13,'uu','2025-07-23 13:48:23','2025-07-23 13:48:23'),
(14,'Uni2','2025-07-23 15:31:17','2025-07-23 15:31:17'),
(15,'new Uni','2025-07-23 15:32:49','2025-07-23 15:32:49'),
(16,'N/A','2025-07-25 14:46:05','2025-07-25 14:46:05'),
(17,'University of Colombo','2025-08-07 12:16:38','2025-08-07 12:16:38'),
(18,'University of Moratuwa','2025-08-07 12:30:18','2025-08-07 12:30:18'),
(19,'University of Colombo2','2025-08-07 12:30:45','2025-08-07 12:30:45'),
(20,'Uni3','2025-08-07 12:31:40','2025-08-07 12:31:40'),
(21,'Other','2025-08-08 18:36:33','2025-08-08 18:38:22');
/*!40000 ALTER TABLE `institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_information`
--

DROP TABLE IF EXISTS `medical_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_information` (
  `medicalInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) NOT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`medicalInfoId`),
  KEY `patientId` (`patientId`),
  CONSTRAINT `medical_information_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_information`
--

LOCK TABLES `medical_information` WRITE;
/*!40000 ALTER TABLE `medical_information` DISABLE KEYS */;
INSERT INTO `medical_information` VALUES
(1,1,'2025-07-14 15:01:18','2025-07-14 15:01:18'),
(2,2,'2025-07-14 15:01:18','2025-07-14 15:01:18'),
(3,3,'2025-07-14 15:01:18','2025-07-14 15:01:18'),
(4,4,'2025-07-14 15:01:18','2025-07-14 15:01:18'),
(5,5,'2025-07-14 15:01:18','2025-07-14 15:01:18'),
(6,6,'2025-07-14 15:01:18','2025-07-25 14:15:33'),
(8,15,'2025-07-15 16:48:55','2025-07-15 16:49:15'),
(9,19,'2025-07-26 12:15:35','2025-07-26 12:16:29'),
(10,24,'2025-07-26 15:22:54','2025-07-26 15:23:41'),
(11,25,'2025-07-26 19:39:57','2025-07-26 19:40:30'),
(12,17,'2025-07-27 23:44:43','2025-07-27 23:44:43'),
(13,26,'2025-07-28 00:09:42','2025-07-28 12:29:59'),
(14,39,'2025-07-31 16:49:53','2025-07-31 16:49:53'),
(16,33,'2025-08-02 07:43:06','2025-08-02 14:27:21'),
(19,44,'2025-08-09 19:00:19','2025-08-09 19:00:19'),
(20,45,'2025-08-09 19:35:41','2025-08-09 19:35:41'),
(21,46,'2025-08-09 20:52:23','2025-08-09 20:52:23');
/*!40000 ALTER TABLE `medical_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_information_family`
--

DROP TABLE IF EXISTS `medical_information_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_information_family` (
  `familyMedicalInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `medicalInfoId` int(11) NOT NULL,
  `physicalAilmentsHusband` text DEFAULT NULL,
  `physicalAilmentsWife` text DEFAULT NULL,
  `mainComplaintsHusband` text DEFAULT NULL,
  `mainComplaintsWife` text DEFAULT NULL,
  `worseConditionsHusband` text DEFAULT NULL,
  `worseConditionsWife` text DEFAULT NULL,
  `improvedConditionsHusband` text DEFAULT NULL,
  `improvedConditionsWife` text DEFAULT NULL,
  `isHistoryOfPsychiatricTreatmentsHusband` bit(1) DEFAULT NULL,
  `isHistoryOfPsychiatricTreatmentsWife` bit(1) DEFAULT NULL,
  `isPsychiatricHospitalizationHusband` bit(1) DEFAULT NULL,
  `isPsychiatricHospitalizationWife` bit(1) DEFAULT NULL,
  `historyOfMentalIllnessHusband` text DEFAULT NULL,
  `historyOfMentalIllnessWife` text DEFAULT NULL,
  `historyOfSubstanceAbuseHusband` text DEFAULT NULL,
  `historyOfSubstanceAbuseWife` text DEFAULT NULL,
  `historyOfACESHusband` text DEFAULT NULL,
  `historyOfACESWife` text DEFAULT NULL,
  `additionalInfoHusband` text DEFAULT NULL,
  `additionalInfoWife` text DEFAULT NULL,
  PRIMARY KEY (`familyMedicalInfoId`),
  KEY `medicalInfoId` (`medicalInfoId`),
  CONSTRAINT `medical_information_family_ibfk_1` FOREIGN KEY (`medicalInfoId`) REFERENCES `medical_information` (`medicalInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_information_family`
--

LOCK TABLES `medical_information_family` WRITE;
/*!40000 ALTER TABLE `medical_information_family` DISABLE KEYS */;
INSERT INTO `medical_information_family` VALUES
(8,16,'Chronic back pain, hypertension ooouuu\nhkjhjk','Migraines, asthma','Persistent lower back pain, occasional headaches','Frequent migraines, shortness of breath','Symptoms worsen with prolonged sitting or stress','Symptoms worsen with cold weather or stress','Symptoms improve with physical therapy and rest','Symptoms improve with medication and relaxation techniques','','\0','\0','','Depression diagnosed in 2018 ooo','None','None','Alcohol dependency in 2015, recovered','Sometimesoooooooooo;;Sexual;;Emotional negligence','Sometimes -  impatient;;Physical negligence','Family history of hypertension','Allergic to pollen'),
(9,20,'jlkj','jklj','jkj','j','jlkj','jkj','jkj','jkl','','\0','\0','','jklj','jkj','jkj','jkl','Sexual','Emotional negligence;;Incarcerated Relative (Household)','jklj','jl');
/*!40000 ALTER TABLE `medical_information_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_information_single`
--

DROP TABLE IF EXISTS `medical_information_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_information_single` (
  `singleMedicalInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `medicalInfoId` int(11) NOT NULL,
  `physicalAilments` text DEFAULT NULL,
  `mainComplaints` text DEFAULT NULL,
  `pastComplaints` text DEFAULT NULL,
  `worseConditions` text DEFAULT NULL,
  `improvedConditions` text DEFAULT NULL,
  `individualTherapyHours` int(11) DEFAULT NULL,
  `individualTherapyYears` int(11) DEFAULT NULL,
  `individualTherapyEndYears` int(11) DEFAULT NULL,
  `groupTherapyHours` int(11) DEFAULT NULL,
  `psychiatricHospitalizationMonths` int(11) DEFAULT NULL,
  `currentTreatment` varchar(10) DEFAULT NULL,
  `antidepressantsCount` int(11) DEFAULT NULL,
  `psychotherapyType` varchar(100) DEFAULT NULL,
  `additionalInfo` text DEFAULT NULL,
  PRIMARY KEY (`singleMedicalInfoId`),
  KEY `medicalInfoId` (`medicalInfoId`),
  CONSTRAINT `medical_information_single_ibfk_1` FOREIGN KEY (`medicalInfoId`) REFERENCES `medical_information` (`medicalInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_information_single`
--

LOCK TABLES `medical_information_single` WRITE;
/*!40000 ALTER TABLE `medical_information_single` DISABLE KEYS */;
INSERT INTO `medical_information_single` VALUES
(15,1,'Chronic back pain, hypertension','Persistent lower back pain, occasional headaches','Sprained ankle (2020), seasonal allergies','Symptoms worsen with prolonged sitting or stress','Symptoms improve with physical therapy and rest',50,2,1,20,0,'Yes',2,'Cognitive Behavioral Therapy (CBT)','Family history of hypertension'),
(16,2,'Type 2 diabetes','Fatigue, difficulty managing blood sugar levels','Migraines (2018-2020)','Symptoms worsen with poor diet or lack of sleep','Symptoms improve with regular exercise and medication',30,1,0,10,0,'No',0,'None','Recently started a new exercise regimen'),
(17,8,'edited','jklj','lkjk','jkljkl','jlkj',2,20,21,1,1,'Yes',2,'2','2'),
(18,12,'jlkjklj','jklj','jklj','jklj','jklj',4,4,4,4,4,'Yes',4,'hjkhkoooooooooooooooooooooo','lkjlkjk'),
(19,13,'kljlkj\njljk','jlkjlk\njlkjk','jkljlk\njlkj','jlkjlk\njlkj','jljklj\njlkj',4,NULL,NULL,NULL,1,'Yes',NULL,'kljll\njlkjlk','jlkjlkj\njlkjl'),
(20,14,'jllk ooo','jlkjl','jlkj ljkj kljlklj','jklj','jlkjk',4,NULL,NULL,NULL,5,'Yes',NULL,NULL,'4njknhjkh'),
(22,19,'joijlkl\nlkj\n\n00000000000u','-jlkjl\nljkjljj','ljkljj','jljj','jkjlk',2,NULL,NULL,NULL,2,'Yes',NULL,NULL,'ooooooooooooooo'),
(23,21,'jlkjlkl\n\nlkj','jkljk\njlkj','jkljlljlj\nljkj','jkljl','ljjj;l\nljl',4,NULL,NULL,NULL,4,'No',NULL,NULL,'lkjll');
/*!40000 ALTER TABLE `medical_information_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupations`
--

DROP TABLE IF EXISTS `occupations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupations` (
  `occupationId` int(11) NOT NULL AUTO_INCREMENT,
  `occupationName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`occupationId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupations`
--

LOCK TABLES `occupations` WRITE;
/*!40000 ALTER TABLE `occupations` DISABLE KEYS */;
INSERT INTO `occupations` VALUES
(1,'Engineer','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(2,'Teacher','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(3,'Doctor','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(4,'Nurse','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(5,'Software Developer','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(6,'Accountant','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(7,'Lawyer','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(8,'Entrepreneur','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(9,'Technician','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(10,'Marketing Specialist','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(11,'Designer','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(12,'Pharmacist','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(13,'Salesperson','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(14,'Manager','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(15,'Administrator','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(16,'Consultant','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(17,'Researcher','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(18,'Driver','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(19,'Student','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(20,'Freelancer','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(21,'Other','2025-07-24 19:45:42','2025-07-24 19:45:42'),
(22,'Entrepreneurooo','2025-07-25 23:28:53','2025-07-25 23:39:17'),
(23,'iiiiii','2025-07-25 23:41:16','2025-07-25 23:41:16'),
(24,'new occupation cu','2025-07-25 23:49:51','2025-07-25 23:49:51'),
(25,'new occupation cu o','2025-07-25 23:50:36','2025-07-26 00:02:42'),
(26,'iooi1','2025-07-26 00:03:21','2025-07-26 00:03:21'),
(27,'iooi1 oo','2025-07-26 00:03:35','2025-07-26 00:04:00'),
(28,'iooi1','2025-07-26 00:06:22','2025-07-26 00:06:22');
/*!40000 ALTER TABLE `occupations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ol_subjects`
--

DROP TABLE IF EXISTS `ol_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ol_subjects` (
  `subjectId` int(11) NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ol_subjects`
--

LOCK TABLES `ol_subjects` WRITE;
/*!40000 ALTER TABLE `ol_subjects` DISABLE KEYS */;
INSERT INTO `ol_subjects` VALUES
(1,'Sinhala /Tamil','2025-06-15 12:33:52','2025-07-28 13:35:34'),
(2,'Mathematics','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(3,'English','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(4,'Science','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(5,'History','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(23,'( Budhhism / Christianity/Hinduism/Catholic/others)','2025-07-28 13:41:03','2025-07-28 13:41:03');
/*!40000 ALTER TABLE `ol_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_registration`
--

DROP TABLE IF EXISTS `patient_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_registration` (
  `patientId` int(11) NOT NULL AUTO_INCREMENT,
  `patientNo` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `homePhone` varchar(20) DEFAULT NULL,
  `businessPhone` varchar(20) DEFAULT NULL,
  `permanentAddress` varchar(200) DEFAULT NULL,
  `referralSource` varchar(50) DEFAULT NULL,
  `referralSourceOther` varchar(50) DEFAULT NULL,
  `referralPartyPresent` bit(1) DEFAULT NULL,
  `formDate` date DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL,
  `patientTypeId` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`patientId`),
  KEY `patient_registration_patient_type_FK` (`patientTypeId`),
  CONSTRAINT `patient_registration_patient_type_FK` FOREIGN KEY (`patientTypeId`) REFERENCES `patient_type` (`patientTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_registration`
--

LOCK TABLES `patient_registration` WRITE;
/*!40000 ALTER TABLE `patient_registration` DISABLE KEYS */;
INSERT INTO `patient_registration` VALUES
(1,'PT-0001','John (individual)','Perera','Peter','1990-01-15',35,'Male','john.perera@example.com','0114547854','0119876543','123 Galle Road, Colombo 03, Sri Lanka','self',NULL,'','2024-06-01','2024-06-02 10:15:30',1,'2025-07-14 15:00:22','2025-07-25 15:40:47'),
(2,'PT-0002','Ama (child)','Silva','','1985-05-15',40,'Female','ama.silva@example.com','0812233445','','45 Kandy Road, Kandy, Sri Lanka','family doctor',NULL,'','2024-05-20','2024-06-01 08:45:10',2,'2025-07-14 15:00:22','2025-07-25 15:40:47'),
(3,'PT-0003','Nimal','Fernando','Kumar','1998-10-20',26,'Male','nimal.fernando@example.com','0912233445','0918765432','78 Main Street, Galle, Sri Lanka','psychologist or psychiatrist',NULL,'','2024-04-15','2024-05-28 13:30:55',3,'2025-07-14 15:00:22','2025-07-25 15:40:47'),
(4,'PT-0004','Sita','Wijesinghe','Rani','1970-03-10',55,'Female','sita.wijesinghe@example.com','0312233445','','12 Temple Road, Negombo, Sri Lanka','hospital or clinic',NULL,'','2024-03-10','2024-04-01 17:20:00',3,'2025-07-14 15:00:22','2025-07-25 15:40:47'),
(5,'PT-0005','Tharushi','Jayasinghe','','2000-07-25',24,'Female','tharushi.jayasinghe@example.com','0452233445','','56 Lake View, Nuwara Eliya, Sri Lanka','friend',NULL,'','2024-05-05','2024-06-01 09:10:40',3,'2025-07-14 15:00:22','2025-07-25 15:40:47'),
(6,'P0006','Fernando ed','Nimal ooo','K.','1990-07-22',34,'Male','nimal2.fernando@example.com','+94772233445','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','Hospital Event',NULL,'\0','2025-06-19','2025-07-12 14:50:54',3,'2025-07-14 15:00:22','2025-07-14 15:00:22'),
(7,'P0007','Fernando','Nimal','K.','1990-07-22',34,'Male','nimal4.fernando@example.com','+94772233445','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','Hospital Event',NULL,'\0','2025-07-10','2025-07-10 23:47:41',2,'2025-07-14 15:00:22','2025-07-14 15:00:22'),
(8,'P0008','Perera','SUSANTHA','mm','2025-07-02',0,'Male','spmskperera@gmail.com','0771147484','','3/64 Kurunduwatta Road,\nMirihana Kotte.','self',NULL,'\0','2025-07-11','2025-07-11 00:09:16',2,'2025-07-14 15:00:22','2025-07-14 15:00:22'),
(9,'P0009','Perera','SUSANTHA','mmmm','2025-07-01',0,'Male','spmskperera2@gmail.com','0771147484','','3/64 Kurunduwatta Road,\nMirihana Kotte.','self',NULL,'\0','2025-07-11','2025-07-11 00:22:14',2,'2025-07-14 15:00:22','2025-07-14 15:00:22'),
(10,'P0010','Fernando','Nimal','K.','1990-07-22',34,'Male','nimal5.fernando@example.com','+94772233445','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','Hospital Event',NULL,'\0','2025-07-11','2025-07-11 14:43:25',2,'2025-07-14 15:00:22','2025-07-14 15:00:22'),
(11,'P0011','nimal','Perera','middle name','2021-12-07',0,'Male','spmskperera4@gmail.com','0714584577','','3/64 Kurunduwatta Road,\nMirihana Kotte.','self',NULL,'\0','2025-07-11','2025-07-12 15:07:24',2,'2025-07-14 15:00:22','2025-07-14 15:00:22'),
(12,'P0012','Kapilage','John','Peter','2025-07-01',NULL,'Male','spmskpererai@gmail.com','0771147484','','123 Main St','self',NULL,'\0','2025-07-15','2025-07-15 01:42:29',2,'2025-07-15 01:42:29','2025-07-15 01:42:29'),
(13,'P0013','Reamo','John','Peter','2025-07-03',NULL,'Male','spmskperera7@gmail.com','0771147484','','123 Main St','school or teacher',NULL,'\0','2025-07-15','2025-07-15 01:44:25',2,'2025-07-15 01:44:25','2025-07-15 01:44:25'),
(14,'P0014','uuuuii','test firstname','mm','2025-07-01',NULL,'Male','spmskperkkera@gmail.com','0771147484','','jjkjlkj','self',NULL,'\0','2025-07-15','2025-07-15 11:34:16',2,'2025-07-15 11:34:16','2025-07-15 11:34:16'),
(15,'P0015','Hammer','David','Joy','1987-07-02',NULL,'Male','spmskpererakk@gmail.com','0771147484','','jlljk','hospital or clinic',NULL,'\0','2025-07-15','2025-07-24 18:06:31',2,'2025-07-15 11:35:26','2025-07-24 18:06:31'),
(16,'P0016','Family Patient','Familiy P1','Family Middle','2000-10-08',NULL,'Male','spmskperera104@gmail.com','0774488547','','oo','self',NULL,'\0','2025-07-25','2025-07-25 14:56:47',2,'2025-07-25 14:56:17','2025-07-25 15:40:47'),
(17,'P0017','iiii','oo','iiii','2000-07-23',NULL,'Male','spmskpereooora@gmail.com','0771147484','','oooo','self',NULL,'\0','2025-07-25','2025-07-25 15:03:09',2,'2025-07-25 14:59:55','2025-07-25 15:03:09'),
(18,'P0018','ii','ii','ui','2000-07-09',NULL,'Male','spmskpererioia@gmail.com','0771147484','','jkjl','self',NULL,'\0','2025-07-25','2025-07-25 15:07:41',2,'2025-07-25 15:07:41','2025-07-25 15:07:41'),
(19,'P0019','Fernando ed','Nimal ooo','K.','1990-07-22',NULL,'Male','nimal2.fernandoooo@example.com','+94772233445','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','other','other pp','\0','2025-07-25','2025-07-31 14:55:27',3,'2025-07-25 15:32:44','2025-07-31 14:55:27'),
(20,'P0020','jklj','jkj','jklj','2001-07-16',NULL,'Male','spmskkkkperera@gmail.com','0771147484','','kjlk','self',NULL,'','2025-07-25','2025-07-25 16:52:21',3,'2025-07-25 15:47:45','2025-07-25 16:52:21'),
(21,'P0021','devid','Carpen','oo','1990-07-17',NULL,'Male','spmskperoooiiioera@gmail.com','0441155248','0771145852','3/64 Kurunduwatta Road,\nMirihana Kotte.','other','Facebook','\0','2025-07-26','2025-07-26 14:48:35',3,'2025-07-26 14:48:11','2025-07-26 14:48:35'),
(22,'P0022','Perera','SUSANTHAoioi','jkjl','2025-07-08',NULL,'Male','spmskoiuoiperera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.','self','','','2025-07-26','2025-07-26 14:52:51',3,'2025-07-26 14:52:51','2025-07-26 14:52:51'),
(23,'P0023','Perera','SUSANTHAiiiiiiiii','lkljk','2025-07-09',NULL,'Male','spmskkkkkperera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.','school or teacher','','\0','2025-07-26','2025-07-26 14:56:12',3,'2025-07-26 14:56:12','2025-07-26 14:56:12'),
(24,'P0024','SUSANTH Edkio','Pereroa','manural','2025-07-02',NULL,'Male','spmskpereiuira@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.','hospital or clinic','','','2025-07-26','2025-07-26 18:13:41',3,'2025-07-26 15:05:25','2025-07-26 18:13:41'),
(25,'P0025','Firstname','LastName','MiddleName','2000-07-10',NULL,'Male','spmsjjkperera@gmail.com','0771147484','0771147484','3/64 Kurunduwatta Road,\nMirihana Kotte.','social agency','','\0','2025-07-26','2025-07-31 10:59:04',3,'2025-07-26 19:25:41','2025-07-31 10:59:04'),
(26,'P0026','Pereraoo','SUSANTHAoo','Peter','2000-07-24',NULL,'Male','spmsookpoooerera@gmail.com','0771147484','-','3/64 Kurunduwatta Road,\nMirihana Kotte.','self','','\0','2025-07-26','2025-07-26 21:48:55',2,'2025-07-26 21:37:39','2025-07-26 21:48:55'),
(27,'P0027',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hospital or clinic','','\0','2025-07-30','2025-08-02 07:19:20',3,'2025-07-30 23:30:49','2025-08-02 07:19:20'),
(28,'P0028',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','\0','2025-07-31','2025-07-31 13:50:07',3,'2025-07-31 13:50:07','2025-07-31 13:50:07'),
(29,'P0029',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'other','other pp','\0','2025-07-31','2025-07-31 13:52:58',3,'2025-07-31 13:52:58','2025-07-31 13:52:58'),
(30,'P0030',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','\0','2025-07-31','2025-07-31 13:54:52',3,'2025-07-31 13:54:52','2025-07-31 13:54:52'),
(31,'P0031',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','\0','2025-07-31','2025-07-31 14:04:12',3,'2025-07-31 14:04:12','2025-07-31 14:04:12'),
(33,'P0033',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'other','other pp','\0','2025-07-31','2025-08-02 13:33:08',3,'2025-07-31 14:54:27','2025-08-02 13:33:08'),
(38,'P0038',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'social agency','','','2025-07-31','2025-07-31 15:15:57',2,'2025-07-31 15:15:41','2025-07-31 15:15:57'),
(39,'P0039',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'social agency','','','2025-07-31','2025-07-31 16:01:39',2,'2025-07-31 16:01:39','2025-07-31 16:01:39'),
(40,'P0040',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'self','','','2025-07-31','2025-08-02 13:58:19',2,'2025-07-31 16:50:48','2025-08-02 13:58:19'),
(41,'P0041',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','\0','2025-08-05','2025-08-05 23:05:34',3,'2025-08-05 23:05:34','2025-08-05 23:05:34'),
(42,'P0042',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'self','','','2025-08-07','2025-08-07 00:25:32',2,'2025-08-07 00:25:32','2025-08-07 00:25:32'),
(43,'P0043',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','\0','2025-08-07','2025-08-07 12:09:27',3,'2025-08-07 12:09:27','2025-08-07 12:09:27'),
(44,'P0044',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'self','','','2025-08-09','2025-08-09 18:47:34',2,'2025-08-09 18:47:24','2025-08-09 18:47:34'),
(45,'P0045',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','\0','2025-08-09','2025-08-09 19:34:52',3,'2025-08-09 19:34:52','2025-08-09 19:34:52'),
(46,'P0046',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'self','','','2025-08-09','2025-08-09 19:40:31',1,'2025-08-09 19:40:31','2025-08-09 19:40:31');
/*!40000 ALTER TABLE `patient_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_type`
--

DROP TABLE IF EXISTS `patient_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_type` (
  `patientTypeId` int(11) NOT NULL,
  `patientTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`patientTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_type`
--

LOCK TABLES `patient_type` WRITE;
/*!40000 ALTER TABLE `patient_type` DISABLE KEYS */;
INSERT INTO `patient_type` VALUES
(1,'Individual'),
(2,'Child'),
(3,'Family');
/*!40000 ALTER TABLE `patient_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_information`
--

DROP TABLE IF EXISTS `personal_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_information` (
  `personalInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) NOT NULL,
  `maleChildrenAges` varchar(50) DEFAULT NULL,
  `femaleChildrenAges` varchar(50) DEFAULT NULL,
  `religiosity` int(11) DEFAULT NULL,
  `thingsLiked` text DEFAULT NULL,
  `assets` text DEFAULT NULL,
  `badPoints` text DEFAULT NULL,
  `socialDifficulties` text DEFAULT NULL,
  `loveSexDifficulties` text DEFAULT NULL,
  `schoolWorkDifficulties` text DEFAULT NULL,
  `lifeGoals` text DEFAULT NULL,
  `thingsToChange` text DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`personalInfoId`),
  KEY `patientId` (`patientId`),
  CONSTRAINT `personal_information_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_information`
--

LOCK TABLES `personal_information` WRITE;
/*!40000 ALTER TABLE `personal_information` DISABLE KEYS */;
INSERT INTO `personal_information` VALUES
(1,1,'5, 8','',5,'Reading books, hiking, spending time with family','Problem-solver – I enjoy analyzing issues and finding effective solutions.;;Team player – I communicate well and collaborate effectively with others.','Procrastination;;Perfectionism','Sometimes struggle with initiating conversations','Difficulty expressing emotions openly','Managing work-life balance','Achieve career growth, maintain a healthy family life','Improve time management, be more assertive','2025-07-14 14:59:52','2025-07-14 14:59:52'),
(2,2,'','12',7,'Teaching, gardening, community volunteering','Quick learner – I can pick up new tools and frameworks rapidly.;;Detail-oriented – I notice small issues before they grow into big problems.','Shyness','Feeling shy in large groups','Trust issues after divorce','Handling administrative tasks','Inspire students, create a community garden','Overcome shyness, improve public speaking','2025-07-14 14:59:52','2025-07-14 14:59:52'),
(3,3,'','',9,'Playing sports, coding, traveling','Adaptable – I can adjust to new environments, teams, or technologies easily.;;Strong work ethic – I am committed to meeting deadlines and taking responsibility.','Impatience','Can be overly competitive in social settings','Difficulty committing to long-term relationships','Staying focused during long projects','Start a tech company, travel the world','Be more patient, improve focus','2025-07-14 14:59:52','2025-07-14 14:59:52'),
(4,4,'25','22',3,'Painting, attending cultural events, reading','Detail-oriented – I notice small issues before they grow into big problems.;;Team player – I communicate well and collaborate effectively with others.','Perfectionism','Difficulty connecting with younger people','Not seeking new relationships currently','Keeping up with new medical technologies','Contribute to community health, mentor young doctors','Reduce perfectionist tendencies','2025-07-14 14:59:52','2025-07-14 14:59:52'),
(5,5,'','',6,'Photography, yoga, socializing with friends','Adaptable – I can adjust to new environments, teams, or technologies easily.;;Other: Creative thinker','Other: Overthinking','Overthinking social interactions','Hesitant to start new relationships','Managing stress during exams','Become a professional photographer, achieve inner peace','Reduce overthinking, build confidence','2025-07-14 14:59:52','2025-07-14 14:59:52'),
(6,6,'5,8','3',3,'Reading, gardening, spending time with family','House;;Car;;Savings ooo','Sometimes impatient;;forgetful;;Savings ooo','Feels shy in large groups','Communication issues with partner','Had trouble focusing during school years','Start own business, support children\'s education','Improve work-life balance, exercise more','2025-07-14 14:59:52','2025-07-27 23:22:40'),
(8,11,NULL,NULL,NULL,'jkljkl oooo','Problem-solver : I enjoy analyzing issues and finding effective solutions.;;Quick learner : I can pick up new tools and frameworks rapidly.;;Adaptable : I can adjust to new environments, teams, or technologies easily.','Shyness;;Perfectionism','kljkl',NULL,'jklj','jklj','jklj','2025-07-14 23:49:31','2025-07-15 01:00:01'),
(9,10,NULL,NULL,NULL,'jkljklj','Strong work ethic : I am committed to meeting deadlines and taking responsibility.;;Adaptable : I can adjust to new environments, teams, or technologies easily.','Shyness;;Impatience','jklj',NULL,'jkljk','jklj','jkjj','2025-07-15 01:08:40','2025-07-15 01:08:40'),
(10,15,NULL,NULL,NULL,'jjjljl','Quick learner : I can pick up new tools and frameworks rapidly.;;Strong work ethic : I am committed to meeting deadlines and taking responsibility.;;Team player : I communicate well and collaborate effectively with others.;;Detail-oriented : I notice small issues before they grow into big problems.','Procrastination;;Shyness;;Impatience;;Perfectionism','jlkjlkjl',NULL,'kjjjklj','jjj','kjkjl','2025-07-15 11:36:20','2025-07-15 11:37:36'),
(11,20,'2,10,20','2,6',7,'jkljjkjn oooooooooooooooooooooooooooooii','Adaptable : I can adjust to new environments, teams, or technologies easily.;;Team player : I communicate well and collaborate effectively with others.','Shyness;;Perfectionism','kjklj','jklj','llll','jjjnnn','llnnkljoooooo','2025-07-25 16:58:47','2025-07-26 09:19:34'),
(12,19,'2,10,20','2,6,20',5,'hjkh','Quick learner : I can pick up new tools and frameworks rapidly.','Shyness','jlkjl','jklj','jklj','jlk','jklj','2025-07-26 09:35:29','2025-07-26 14:43:39'),
(13,21,'2,10,20','2,6,20',4,'jlkj','Strong work ethic : I am committed to meeting deadlines and taking responsibility.','Impatience','ljll','ljlkj','jkljkl','kljkljklj','kjljjkj','2025-07-26 14:54:59','2025-07-26 14:54:59'),
(14,24,'2,10,20','2,6',4,'jlkjk','Strong work ethic : I am committed to meeting deadlines and taking responsibility.;;Adaptable : I can adjust to new environments, teams, or technologies easily.','Shyness;;Impatience','klj;;Telephoning someone (especially people they do not know well).;;Returning goods to a store.','jj','ljlkl','jlkjk','jkj','2025-07-26 15:06:03','2025-07-28 01:56:25'),
(15,25,'2,10,20','2,6,20',5,'jkjljljkj\nljkl','Strong work ethic : I am committed to meeting deadlines and taking responsibility.;;Adaptable : I can adjust to new environments, teams, or technologies easily.;;customer good point','Procrastination;;Perfectionism;;Shyness;;Custom BadPoint','Procrastination;;Perfectionism;;Shyness;;Custom 1;;Behaving assertively (e.g. expressing disagreement or rejecting a request).','jlkjkl','jkj','jkj','jlkjk','2025-07-26 19:27:12','2025-07-28 01:46:03'),
(16,26,'','',3,'kj\njlkjkl\njkljl','Adaptable : I can adjust to new environments, teams, or technologies easily.','Impatience','kjll\nljlj','jkljl','jklj\njlkj','jkj\n0000','jklj\nhhhhh','2025-07-26 22:09:40','2025-07-28 00:18:51'),
(17,27,'','',6,'jljkjlkl','Strong work ethic : I am committed to meeting deadlines and taking responsibility.;;Adaptable : I can adjust to new environments, teams, or technologies easily.','Shyness','Telephoning someone (especially people they do not know well).;;Talking with authority figures.','kjkljl','jkjklj','jkjkl','jkjjlj','2025-07-31 00:56:58','2025-07-31 00:56:58'),
(18,31,'5,8','3',3,'Reading, gardening, spending time with family','Problem : solverI enjoy - analyzing issues and finding - effective solutions.;;-Car- ;;-Savingsooo','Sometimes -  impatient;;forgetful;;Savings ooo','Somet;;jkjkj;;jjjlk ooo','Communication issues with partner','Had trouble focusing during school years','Start own business, support children\'s education','Improve work-life balance, exercise more','2025-07-31 14:43:20','2025-07-31 14:43:20'),
(20,38,NULL,NULL,NULL,'Reading, gardening, spending time with family','Problem : solverI enjoy - analyzing issues and finding - effective solutions.;;-Car- ;;-Savingsooo','Sometimes -  impatient;;forgetful;;Savings ooo','Somet;;jkjkj;;jjjlk ooo',NULL,'Had trouble focusing during school years','Start own business, support children\'s education','Improve work-life balance, exercise more','2025-07-31 15:51:41','2025-07-31 15:51:41'),
(21,39,NULL,NULL,NULL,'Reading, gardening, spending time with family','Problem : solverI enjoy - analyzing issues and finding - effective solutions.;;-Car- ;;-Savingsooo','Sometimes -  impatient;;forgetful;;Savings ooo','Somet;;jkjkj;;jjjlk ooo;;Telephoning someone (especially people they do not know well).',NULL,'Had trouble focusing during school years','Start own business, support children\'s education','Improve work-life balance, exercise more','2025-07-31 16:32:54','2025-07-31 16:45:44'),
(22,40,NULL,NULL,NULL,'jkjl','Adaptable : I can adjust to new environments, teams, or technologies easily.;;Team player : I communicate well and collaborate effectively with others.','Shyness','Behaving assertively (e.g. expressing disagreement or rejecting a request).',NULL,'jkjljk','jklj','jklj','2025-07-31 16:51:06','2025-07-31 16:51:06'),
(23,33,'5,8','3',NULL,NULL,'','','','Communication issues with partner',NULL,'Start own business, support children\'s education','Improve work-life balance, exercise more','2025-07-31 17:12:58','2025-08-02 13:16:37'),
(24,29,'4,5,6','4,7',NULL,NULL,'','','','kjk',NULL,'jkj\n oooooooooooooooo','jkljlklj','2025-07-31 17:59:26','2025-07-31 18:01:59'),
(25,44,NULL,NULL,NULL,'ooui\nkoooo','Quick learner : I can pick up new tools and frameworks rapidly.;;Adaptable : I can adjust to new environments, teams, or technologies easily.','Shyness;;Perfectionism','Telephoning someone (especially people they do not know well).',NULL,'ljoiuio\njoi','kj\njlkjkllljljk\nlj','joiuion\nljklj;ioujijijiji\njljkji','2025-08-09 18:48:02','2025-08-09 18:48:12'),
(26,45,'2,10,20','2,6,20',NULL,NULL,'','','','jkljl',NULL,'jklj','jlkj','2025-08-09 19:35:14','2025-08-09 19:35:14'),
(27,46,'2,10,20','2,6,20',8,'jklj','Quick learner : I can pick up new tools and frameworks rapidly.;;Adaptable : I can adjust to new environments, teams, or technologies easily.','Procrastination','Going to a party.;;Talking with authority figures.;;Returning goods to a store.','jkjlj','jkjkjk\njlkj','jklj','jkj','2025-08-09 20:47:53','2025-08-09 20:50:16');
/*!40000 ALTER TABLE `personal_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_information_family`
--

DROP TABLE IF EXISTS `personal_information_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_information_family` (
  `personalInfoFamilyId` int(11) NOT NULL AUTO_INCREMENT,
  `personalInfoId` int(11) NOT NULL,
  `maritalStatusHusband` varchar(50) DEFAULT NULL,
  `yearsMarriedHusband` decimal(4,1) DEFAULT NULL,
  `occupationFullTimeHusband` varchar(20) DEFAULT NULL,
  `occupationIdHusband` int(11) DEFAULT NULL,
  `occupationTrainedIdHusband` int(11) DEFAULT NULL,
  `maritalStatusWife` varchar(50) DEFAULT NULL,
  `yearsMarriedWife` decimal(4,1) DEFAULT NULL,
  `occupationFullTimeWife` varchar(20) DEFAULT NULL,
  `occupationIdWife` int(11) DEFAULT NULL,
  `occupationTrainedIdWife` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`personalInfoFamilyId`),
  KEY `personalInfoId` (`personalInfoId`),
  KEY `personal_information_family_occupations_FK_husband` (`occupationIdHusband`),
  KEY `personal_information_family_occupations_FK_1_husband` (`occupationTrainedIdHusband`),
  KEY `personal_information_family_occupations_FK_wife` (`occupationIdWife`),
  KEY `personal_information_family_occupations_FK_1_wife` (`occupationTrainedIdWife`),
  CONSTRAINT `personal_information_family_ibfk_1` FOREIGN KEY (`personalInfoId`) REFERENCES `personal_information` (`personalInfoId`),
  CONSTRAINT `personal_information_family_occupations_FK_1_husband` FOREIGN KEY (`occupationTrainedIdHusband`) REFERENCES `occupations` (`occupationId`),
  CONSTRAINT `personal_information_family_occupations_FK_1_wife` FOREIGN KEY (`occupationTrainedIdWife`) REFERENCES `occupations` (`occupationId`),
  CONSTRAINT `personal_information_family_occupations_FK_husband` FOREIGN KEY (`occupationIdHusband`) REFERENCES `occupations` (`occupationId`),
  CONSTRAINT `personal_information_family_occupations_FK_wife` FOREIGN KEY (`occupationIdWife`) REFERENCES `occupations` (`occupationId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_information_family`
--

LOCK TABLES `personal_information_family` WRITE;
/*!40000 ALTER TABLE `personal_information_family` DISABLE KEYS */;
INSERT INTO `personal_information_family` VALUES
(1,3,'never_married',NULL,'part-time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(2,4,'widowed_not_remarried',NULL,'full-time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(3,5,'never_married',NULL,'part-time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(4,6,'Married',10.0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(5,12,'married_first_time',2.0,'part-time',14,8,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(6,11,'married_first_time',7.0,'part-time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(7,13,'separated',NULL,'full-time',14,12,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(8,14,'never_married',NULL,'full-time',17,15,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(9,15,'divorced_not_remarried',NULL,'full-time',16,14,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(10,17,'never_married',NULL,'full-time',15,12,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:34','2025-07-31 13:09:34'),
(16,18,'Married',10.0,'Yes',5,5,'Married',8.0,'Yes',12,12,'2025-07-31 14:43:20','2025-07-31 14:43:20'),
(17,23,'married',10.0,'full-time',15,11,'married',8.0,'part-time',14,14,'2025-07-31 17:12:58','2025-08-02 13:23:27'),
(18,24,'married',4.0,'full-time',13,16,'married',5.0,'part-time',16,18,'2025-07-31 17:59:26','2025-07-31 18:02:03'),
(19,26,'divorced',NULL,'full-time',17,14,'divorced',NULL,'part-time',17,13,'2025-08-09 19:35:14','2025-08-09 19:35:14');
/*!40000 ALTER TABLE `personal_information_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_information_single`
--

DROP TABLE IF EXISTS `personal_information_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_information_single` (
  `personalInfoSingleId` int(11) NOT NULL AUTO_INCREMENT,
  `personalInfoId` int(11) NOT NULL,
  `maritalStatus` varchar(50) DEFAULT NULL,
  `yearsMarried` decimal(4,1) DEFAULT NULL,
  `occupationFullTime` varchar(20) DEFAULT NULL,
  `occupationId` int(11) DEFAULT NULL,
  `occupationTrainedId` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`personalInfoSingleId`),
  KEY `personalInfoId` (`personalInfoId`),
  KEY `personal_information_single_occupations_FK` (`occupationId`),
  KEY `personal_information_single_occupations_FK_1` (`occupationTrainedId`),
  CONSTRAINT `personal_information_single_ibfk_1` FOREIGN KEY (`personalInfoId`) REFERENCES `personal_information` (`personalInfoId`),
  CONSTRAINT `personal_information_single_occupations_FK` FOREIGN KEY (`occupationId`) REFERENCES `occupations` (`occupationId`),
  CONSTRAINT `personal_information_single_occupations_FK_1` FOREIGN KEY (`occupationTrainedId`) REFERENCES `occupations` (`occupationId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_information_single`
--

LOCK TABLES `personal_information_single` WRITE;
/*!40000 ALTER TABLE `personal_information_single` DISABLE KEYS */;
INSERT INTO `personal_information_single` VALUES
(1,1,'married_first_time',10.0,'full-time',NULL,NULL,'2025-07-31 13:09:23','2025-07-31 13:09:23'),
(2,2,'divorced_not_remarried',NULL,'full-time',NULL,NULL,'2025-07-31 13:09:23','2025-07-31 13:09:23'),
(3,8,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:23','2025-07-31 13:09:23'),
(4,9,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:23','2025-07-31 13:09:23'),
(5,10,NULL,NULL,NULL,NULL,NULL,'2025-07-31 13:09:23','2025-07-31 13:09:23'),
(6,16,'never_married',NULL,'full-time',16,10,'2025-07-31 13:09:23','2025-07-31 13:09:23'),
(8,20,NULL,NULL,NULL,NULL,NULL,'2025-07-31 15:51:41','2025-07-31 15:54:57'),
(9,21,NULL,NULL,NULL,NULL,NULL,'2025-07-31 16:32:54','2025-07-31 16:47:17'),
(10,22,NULL,NULL,NULL,NULL,NULL,'2025-07-31 16:51:06','2025-07-31 16:51:11'),
(11,25,NULL,NULL,NULL,NULL,NULL,'2025-08-09 18:48:02','2025-08-09 18:48:12'),
(12,27,'never_married',NULL,'full-time',17,15,'2025-08-09 20:47:53','2025-08-09 20:50:16');
/*!40000 ALTER TABLE `personal_information_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raised_by`
--

DROP TABLE IF EXISTS `raised_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raised_by` (
  `raisedById` int(11) NOT NULL AUTO_INCREMENT,
  `raisedByName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`raisedById`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raised_by`
--

LOCK TABLES `raised_by` WRITE;
/*!40000 ALTER TABLE `raised_by` DISABLE KEYS */;
INSERT INTO `raised_by` VALUES
(1,'Parents','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(2,'Grandparents','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(3,'Aunt','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(4,'Uncle','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(5,'Older Sibling','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(6,'Foster Parents','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(7,'Adoptive Parents','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(8,'Guardian','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(9,'Single Mother','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(10,'Single Father','2025-07-27 17:45:57','2025-07-27 17:45:57'),
(11,'Other','2025-07-27 17:45:57','2025-07-27 17:45:57');
/*!40000 ALTER TABLE `raised_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `religions`
--

DROP TABLE IF EXISTS `religions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `religions` (
  `religionId` int(11) NOT NULL AUTO_INCREMENT,
  `religionName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`religionId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religions`
--

LOCK TABLES `religions` WRITE;
/*!40000 ALTER TABLE `religions` DISABLE KEYS */;
INSERT INTO `religions` VALUES
(1,'Buddhism','2025-07-27 17:47:04','2025-07-27 17:47:04'),
(2,'Christianity','2025-07-27 17:47:04','2025-07-27 17:47:04'),
(3,'Hinduism','2025-07-27 17:47:04','2025-07-27 17:47:04'),
(4,'Islam','2025-07-27 17:47:04','2025-07-27 17:47:04'),
(5,'Sikhism','2025-07-27 17:47:04','2025-07-27 17:47:04'),
(6,'Judaism','2025-07-27 17:47:04','2025-07-27 17:47:04'),
(7,'Atheism','2025-07-27 17:47:04','2025-07-27 17:47:04'),
(8,'Agnosticism','2025-07-27 17:47:04','2025-07-27 17:47:04'),
(9,'Other','2025-07-27 17:47:04','2025-07-27 17:47:04');
/*!40000 ALTER TABLE `religions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singlepatients`
--

DROP TABLE IF EXISTS `singlepatients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `singlepatients` (
  `singlePatientId` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `homePhone` varchar(20) DEFAULT NULL,
  `businessPhone` varchar(20) DEFAULT NULL,
  `mobilePhone` varchar(20) DEFAULT NULL,
  `permanentAddress` varchar(200) DEFAULT NULL,
  `referralSource` varchar(50) DEFAULT NULL,
  `referralSourceOther` varchar(50) DEFAULT NULL,
  `referralPartyPresent` bit(1) DEFAULT NULL,
  `formDate` date DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL,
  PRIMARY KEY (`singlePatientId`),
  KEY `singlePatients_patient_FK` (`patientId`),
  CONSTRAINT `singlePatients_patient_FK` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singlepatients`
--

LOCK TABLES `singlepatients` WRITE;
/*!40000 ALTER TABLE `singlepatients` DISABLE KEYS */;
INSERT INTO `singlepatients` VALUES
(32,1,'John (individual)','Perera','Peter','1990-01-15',35,'Male','john.perera@example.com','0114547854','0119876543','0119876543','123 Galle Road, Colombo 03, Sri Lanka','self',NULL,'','2024-06-01','2024-06-02 10:15:30'),
(33,2,'Ama (child)','Silva','','1985-05-15',40,'Female','ama.silva@example.com','0812233445','','','45 Kandy Road, Kandy, Sri Lanka','family doctor',NULL,'','2024-05-20','2024-06-01 08:45:10'),
(34,7,'Fernando','Nimal','K.','1990-07-22',34,'Male','nimal4.fernando@example.com','+94772233445','+94112349876','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','Hospital Event',NULL,'\0','2025-07-10','2025-07-10 23:47:41'),
(35,8,'Perera','SUSANTHA','mm','2025-07-02',0,'Male','spmskperera@gmail.com','0771147484','','','3/64 Kurunduwatta Road,\nMirihana Kotte.','self',NULL,'\0','2025-07-11','2025-07-11 00:09:16'),
(36,9,'Perera','SUSANTHA','mmmm','2025-07-01',0,'Male','spmskperera2@gmail.com','0771147484','','','3/64 Kurunduwatta Road,\nMirihana Kotte.','self',NULL,'\0','2025-07-11','2025-07-11 00:22:14'),
(37,10,'Fernando','Nimal','K.','1990-07-22',34,'Male','nimal5.fernando@example.com','+94772233445','+94112349876','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','Hospital Event',NULL,'\0','2025-07-11','2025-07-11 14:43:25'),
(38,11,'nimal','Perera','middle name','2021-12-07',0,'Male','spmskperera4@gmail.com','0714584577','','','3/64 Kurunduwatta Road,\nMirihana Kotte.','self',NULL,'\0','2025-07-11','2025-07-12 15:07:24'),
(39,12,'Kapilage','John','Peter','2025-07-01',NULL,'Male','spmskpererai@gmail.com','0771147484','','','123 Main St','self',NULL,'\0','2025-07-15','2025-07-15 01:42:29'),
(40,13,'Reamo','John','Peter','2025-07-03',NULL,'Male','spmskperera7@gmail.com','0771147484','','','123 Main St','school or teacher',NULL,'\0','2025-07-15','2025-07-15 01:44:25'),
(41,14,'uuuuii','test firstname','mm','2025-07-01',NULL,'Male','spmskperkkera@gmail.com','0771147484','','','jjkjlkj','self',NULL,'\0','2025-07-15','2025-07-15 11:34:16'),
(42,15,'Hammer','David','Joy','1987-07-02',NULL,'Male','spmskpererakk@gmail.com','0771147484','','','jlljk','hospital or clinic',NULL,'\0','2025-07-15','2025-07-24 18:06:31'),
(43,16,'Family Patient','Familiy P1','Family Middle','2000-10-08',NULL,'Male','spmskperera104@gmail.com','0774488547','','','oo','self',NULL,'\0','2025-07-25','2025-07-25 14:56:47'),
(44,17,'iiii','oo','iiii','2000-07-23',NULL,'Male','spmskpereooora@gmail.com','0771147484','','','oooo','self',NULL,'\0','2025-07-25','2025-07-25 15:03:09'),
(45,18,'ii','ii','ui','2000-07-09',NULL,'Male','spmskpererioia@gmail.com','0771147484','','','jkjl','self',NULL,'\0','2025-07-25','2025-07-25 15:07:41'),
(46,26,'Pereraoo','SUSANTHAoo','Peter','2000-07-24',NULL,'Male','spmsookpoooerera@gmail.com','0771147484','-','-','3/64 Kurunduwatta Road,\nMirihana Kotte.','self','','\0','2025-07-26','2025-07-26 21:48:55'),
(47,38,'SUSANTHA','Perera','mii','2000-07-17',NULL,'Male','spmskpkjkjkerera@gmail.com','0771147484','0771147484',NULL,'3/64 Kurunduwatta Road,\nMirihana Kotte.',NULL,NULL,NULL,NULL,NULL),
(48,39,'jk','jjjjjjjjjjjjjj','oooooooo','2000-07-03',NULL,'Male','spmskkkperera@gmail.com','0771147484','0771147484',NULL,'3/64 Kurunduwatta Road, Pita Kotte',NULL,NULL,NULL,NULL,NULL),
(49,40,'John','Perera','Peter','2025-07-16',NULL,'Male','spmjjjskperera@gmail.com','0771147484','0771147484',NULL,'123 Main St',NULL,NULL,NULL,NULL,NULL),
(50,42,'llllllll','ffffff','mmmmmm','2000-08-01',NULL,'Male','spmhhhhskperera@gmail.com','0771147484','0771147484',NULL,'3/64 Kurunduwatta Road,\nMirihana Kotte.',NULL,NULL,NULL,NULL,NULL),
(51,44,'child1','child last n','child name','2010-08-06',NULL,'Male','spmsooiukperera@gmail.comii','0771147484','0771147484',NULL,'3/64 Kurunduwatta Road,\nMirihana Kotte.lkjk',NULL,NULL,NULL,NULL,NULL),
(52,46,'Perera','SUSANTHA','individual','2000-08-19',NULL,'Male','spmskphhhjkerera@gmail.com','0771147484','0771147484',NULL,'3/64 Kurunduwatta Road,\nMirihana Kotte.',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `singlepatients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_difficulties`
--

DROP TABLE IF EXISTS `social_difficulties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_difficulties` (
  `socialDifficultyId` int(11) NOT NULL AUTO_INCREMENT,
  `socialDifficultyName` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`socialDifficultyId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_difficulties`
--

LOCK TABLES `social_difficulties` WRITE;
/*!40000 ALTER TABLE `social_difficulties` DISABLE KEYS */;
INSERT INTO `social_difficulties` VALUES
(20,'Meeting (having a date) with someone','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(21,'Going to a party.','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(22,'Behaving assertively (e.g. expressing disagreement or rejecting a request).','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(23,'Telephoning someone (especially people they do not know well).','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(24,'Talking with authority figures.','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(25,'Returning goods to a store.','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(26,'Making eye contact with unfamiliar people.','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(27,'Giving and receiving compliments.','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(28,'Attending meetings, social gatherings.','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(29,'Speaking in public (e.g., large or small groups).','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(30,'Performing in public.','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(31,'Being the centre of attention (e.g. going into a room when everyone else is already seated).','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(32,'Eating/drinking in public.','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(33,'Writing/working when others are observing.','2025-07-28 01:27:39','2025-07-28 01:27:39'),
(34,'Using public bathrooms.','2025-07-28 01:27:39','2025-07-28 01:27:39');
/*!40000 ALTER TABLE `social_difficulties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_of_person`
--

DROP TABLE IF EXISTS `types_of_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_of_person` (
  `typesOfPersonId` int(11) NOT NULL AUTO_INCREMENT,
  `typesOfPersonName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`typesOfPersonId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_of_person`
--

LOCK TABLES `types_of_person` WRITE;
/*!40000 ALTER TABLE `types_of_person` DISABLE KEYS */;
INSERT INTO `types_of_person` VALUES
(1,'Supportive','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(2,'Strict','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(3,'Caring','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(4,'Distant','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(5,'Encouraging','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(6,'Critical','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(7,'Loving','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(8,'Overprotective','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(9,'Traditional','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(10,'Warm','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(11,'Disciplined','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(12,'Anxious','2025-07-27 17:48:53','2025-07-27 17:48:53'),
(13,'Other','2025-07-27 17:48:53','2025-07-27 17:48:53');
/*!40000 ALTER TABLE `types_of_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university_subjects`
--

DROP TABLE IF EXISTS `university_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `university_subjects` (
  `subjectId` int(11) NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university_subjects`
--

LOCK TABLES `university_subjects` WRITE;
/*!40000 ALTER TABLE `university_subjects` DISABLE KEYS */;
INSERT INTO `university_subjects` VALUES
(1,'BSc Computer Science','2025-06-15 12:37:35','2025-06-15 12:37:35'),
(2,'BCom','2025-06-15 12:37:35','2025-06-15 12:37:35'),
(3,'BA English','2025-06-15 12:37:35','2025-06-15 12:37:35'),
(4,'MA English Literature','2025-06-15 12:37:35','2025-06-15 12:37:35'),
(5,'Computer Science','2025-07-16 13:49:45','2025-07-16 13:49:45'),
(6,'Mathematics','2025-07-16 13:49:45','2025-07-16 13:49:45'),
(7,'Mathematics o','2025-07-20 02:22:00','2025-07-20 02:22:00'),
(10,'MSc. Software Engineering','2025-07-26 15:28:10','2025-07-26 15:28:10'),
(11,'mato 2','2025-08-07 12:41:02','2025-08-07 12:41:02'),
(14,'mato 3','2025-08-07 13:30:36','2025-08-07 13:30:36');
/*!40000 ALTER TABLE `university_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ichangepatient'
--

--
-- Dumping routines for database 'ichangepatient'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Appointments_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Appointments_Insert`(
    IN p_patientId INT,
    IN p_appointmentDate VARCHAR(50), 
    IN p_statusId INT,
    IN p_userLogId INT,
    IN p_UTC_Offset VARCHAR(50),
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_appointmentNo VARCHAR(50) 
)
sp: BEGIN
    
    DECLARE v_appointmentNo VARCHAR(50);
    DECLARE v_appointmentId INT;
    DECLARE v_convertedDate DATETIME;
    DECLARE v_err_message VARCHAR(255);

    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 v_err_message = MESSAGE_TEXT;
        SET p_responseStatus = 'failed';
        SET p_outputMessage = v_err_message;
    END;

    
    IF p_patientId < 1 OR NOT EXISTS (SELECT 1 FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Invalid or unregistered patientId';
        LEAVE sp;
    END IF;
    
    
     IF EXISTS (SELECT 1 FROM appointments WHERE patientId = p_patientId and appointment_date=p_appointmentDate) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'appoinment is already exists';
        LEAVE sp;
    END IF;
     

    
    SET v_convertedDate = STR_TO_DATE(p_appointmentDate, '%Y-%m-%dT%H:%i:%sZ');
    IF v_convertedDate IS NULL THEN
        
        SET v_convertedDate = STR_TO_DATE(p_appointmentDate, '%Y-%m-%d %H:%i:%s');
    END IF;

    
    IF v_convertedDate IS NULL THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Invalid appointment date format. Use YYYY-MM-DD HH:MM:SS or YYYY-MM-DDThh:mm:ssZ';
        LEAVE sp;
    END IF;
  
    
   
    
  

    
    IF p_statusId IS NULL OR NOT EXISTS (SELECT 1 FROM appointment_status WHERE status_id = p_statusId) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Invalid or unregistered statusId';
        LEAVE sp;
    END IF;

    
    START TRANSACTION;

    
    INSERT INTO appointments (
        patientId,
        appoinmentNo,
        appointment_date,
        status_id,
        createdDate,
        modifiedDate
    ) VALUES (
        p_patientId,
        'TEMP', 
        v_convertedDate,
        p_statusId,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

    
    SET v_appointmentId = LAST_INSERT_ID();

    
    SET v_appointmentNo = CONCAT(
        'A',
        DATE_FORMAT(v_convertedDate, '%d'),
        '00',
        v_appointmentId
    );

    
    UPDATE appointments
    SET appoinmentNo = v_appointmentNo
    WHERE appointment_id = v_appointmentId;

    
    SET p_appointmentNo = v_appointmentNo;
    SET p_responseStatus = 'success';
    SET p_outputMessage = 'Appointment added and appointment created successfully';

    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Appointments_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Appointments_Search`(
    IN p_appointmentNo VARCHAR(50),
    IN p_appointmentDateStart DATETIME,
    IN p_appointmentDateEnd DATETIME,
    IN p_patientId INT,
    IN p_statusId INT,
    IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_TotalRows INT
)
sp: BEGIN
    DECLARE _filter VARCHAR(1000);
    DECLARE _PagingQuery VARCHAR(1000);

    
    SET _filter = ' WHERE 1 = 1 ';

    
    IF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The p_Limit parameter is not passed or set p_Skip parameter to null for unlimited data.';
        LEAVE sp;
    ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The p_Skip parameter is not passed or set p_Limit parameter to null for unlimited data.';
        LEAVE sp;
    END IF;

    
    IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
        SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    ELSE
        SET _PagingQuery = '';
    END IF;

    
    IF p_appointmentNo IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND a.appoinmentNo = ''', p_appointmentNo, '''');
    END IF;

    IF p_appointmentDateStart IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND a.appointment_date >= ''', p_appointmentDateStart, '''');
    END IF;

    IF p_appointmentDateEnd IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND a.appointment_date <= ''', p_appointmentDateEnd, '''');
    END IF;

    IF p_patientId IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND a.patientId = ', p_patientId);
    END IF;

    IF p_statusId IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND a.status_id = ', p_statusId);
    END IF;

    
    SET @_query = CONCAT('
        SELECT 
            a.appointment_id as appointmentId,
            a.appoinmentNo,
            a.patientId,
            a.appointment_date as appointmentDate,
            a.status_id,
            s.status_name as status,
            a.createdDate,
            a.modifiedDate,
            pr.patientNo,
            pr.firstName,
            pr.lastName,
            pr.homePhone AS mobileNo
        FROM 
            appointments a
            INNER JOIN appointment_status s ON a.status_id = s.status_id
            INNER JOIN patient_registration pr ON a.patientId = pr.patientId
        ', _filter, '
        ORDER BY a.appointment_date DESC
        ', _PagingQuery
    );

    
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    
    SET @queryTotal = CONCAT('
        SELECT COUNT(a.appointment_id) INTO @totalRows 
        FROM appointments a
        INNER JOIN appointment_status s ON a.status_id = s.status_id
        INNER JOIN patient_registration pr ON a.patientId = pr.patientId
        ', _filter
    );
    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET p_TotalRows = @totalRows;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Appointment data retrieved successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_aces_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_aces_select`(
    IN p_UserLogID int
    )
BEGIN
  SELECT 
    acesId AS value, 
    acesName AS name 
  FROM aces;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_al_stream_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_al_stream_select`(
    IN p_UserLogID INT
)
sp: BEGIN

SELECT alStreamId as value ,streamName as name FROM al_stream;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_al_subjects_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_al_subjects_select`(
    IN p_UserLogID INT
)
sp: BEGIN

SELECT subjectId as value ,subjectName as name FROM al_subjects;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_bad_points_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_bad_points_select`(
    IN p_UserLogID INT
)
sp: BEGIN

SELECT badPointId as value ,badPointName as name FROM bad_points;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_cambridge_al_streams_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_cambridge_al_streams_select`(
    IN p_UserLogID INT
)
BEGIN
    SELECT alStreamId AS value, streamName AS name FROM cambridge_al_stream;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_cambridge_al_subjects_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_cambridge_al_subjects_select`(
    IN p_UserLogID INT
)
BEGIN
    SELECT subjectId AS value, subjectName AS name FROM cambridge_al_subjects;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_cambridge_igcse_subjects_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_cambridge_igcse_subjects_select`(
    IN p_UserLogID INT
)
BEGIN
    SELECT subjectId AS value, subjectName AS name FROM cambridge_igcse_subjects;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_edexcel_al_streams_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_edexcel_al_streams_select`(
    IN p_UserLogID INT
)
BEGIN
    SELECT alStreamId AS value, streamName AS name FROM edexcel_al_stream;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_edexcel_al_subjects_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_edexcel_al_subjects_select`(
    IN p_UserLogID INT
)
BEGIN
    SELECT subjectId AS value, subjectName AS name FROM edexcel_al_subjects;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_edexcel_igcse_subjects_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_edexcel_igcse_subjects_select`(
    IN p_UserLogID INT
)
BEGIN
    SELECT subjectId AS value, subjectName AS name FROM edexcel_igcse_subjects;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_good_points_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_good_points_select`(
    IN p_UserLogID INT
)
sp: BEGIN

SELECT goodPointId as value ,goodPointName as name FROM good_points;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_institution_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_institution_select`(
    IN p_UserLogID INT
)
sp: BEGIN

SELECT institutionId as value ,institutionName as name FROM institutions;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_occupations_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_occupations_delete`(
    IN p_occupationId INT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    START TRANSACTION;

    -- Check if occupation exists
    IF NOT EXISTS (SELECT * FROM occupations WHERE occupationId = p_occupationId) THEN
        SET p_outputMessage = 'The occupation does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;

    -- Delete occupation
    DELETE FROM occupations WHERE occupationId = p_occupationId;

    SET p_responseStatus = 'success';
    SET p_outputMessage = 'The occupation was deleted successfully.';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_occupations_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_occupations_insert`(
    IN p_occupationName VARCHAR(50),
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputOccupationId INT
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    DECLARE v_occupationId INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    START TRANSACTION;

    -- Check if occupation already exists
    IF EXISTS (SELECT * FROM occupations WHERE occupationName = p_occupationName) THEN
        SET p_outputMessage = CONCAT('The occupation ', p_occupationName, ' already exists.');
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;

    -- Insert new occupation
    INSERT INTO occupations (occupationName) VALUES (p_occupationName);

    SET v_occupationId = LAST_INSERT_ID();
    SET p_outputOccupationId = v_occupationId;
    SET p_responseStatus = 'success';
    SET p_outputMessage = CONCAT('The occupation ', p_occupationName, ' was created successfully.');

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_occupations_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_occupations_select`(
    IN p_UserLogID INT
)
sp: BEGIN

SELECT occupationId as value ,occupationName as name FROM occupations;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_ol_subjects_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_ol_subjects_select`(
    IN p_UserLogID INT
)
sp: BEGIN

SELECT subjectId as value ,subjectName as name FROM ol_subjects;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_raised_by_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_raised_by_select`(
    IN p_UserLogID int
    )
BEGIN
  SELECT 
    raisedById AS value, 
    raisedByName AS name 
  FROM raised_by;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_religions_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_religions_select`(
    IN p_UserLogID INT
)
BEGIN
  SELECT 
    religionId AS value, 
    religionName AS name 
  FROM religions;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_social_difficulties_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_social_difficulties_select`(
  IN p_UserLogID int
  )
BEGIN
    SELECT 
        socialDifficultyId AS value, 
        socialDifficultyName AS name 
    FROM social_difficulties;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_types_of_person_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_types_of_person_select`(
    IN p_UserLogID INT
)
BEGIN
  SELECT 
    typesOfPersonId AS value, 
    typesOfPersonName AS name 
  FROM types_of_person;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_university_subjects_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_university_subjects_select`(
    IN p_UserLogID INT
)
sp: BEGIN

SELECT subjectId as value ,subjectName as name FROM university_subjects;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `education_delete_by_patient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `education_delete_by_patient`(
    IN p_patientId INT,
    IN p_userLogId INT,
    IN p_UTC_Offset VARCHAR(50),
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE v_educationInfoId INT;
    DECLARE v_err_message VARCHAR(255);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 v_err_message = MESSAGE_TEXT;
        SET p_responseStatus = 'failed';
        SET p_outputMessage = CONCAT('Error occurred: ', v_err_message);
    END;

    -- Validation: Check if patientId exists and has education information
    IF p_patientId < 1 OR NOT EXISTS (
        SELECT 1 FROM patient_registration WHERE patientId = p_patientId
    ) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Invalid or unregistered patientId';
        LEAVE sp;
    END IF;

    -- Check if education information exists for the patient
    SELECT educationInfoId INTO v_educationInfoId 
    FROM education_information 
    WHERE patientId = p_patientId 
    LIMIT 1;

    IF v_educationInfoId IS NULL THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'No education information found for the provided patientId';
        LEAVE sp;
    END IF;

    START TRANSACTION;

    -- Delete from dependent tables first to avoid foreign key constraint violations
    DELETE FROM education_scholarship WHERE educationInfoId = v_educationInfoId;
    DELETE FROM education_ol WHERE educationInfoId = v_educationInfoId;
    DELETE FROM education_al WHERE educationInfoId = v_educationInfoId;
    DELETE FROM education_university WHERE educationInfoId = v_educationInfoId;

    -- Delete from education_information
    DELETE FROM education_information WHERE educationInfoId = v_educationInfoId;

    -- Clean up unused ol_subjects
    DELETE FROM ol_subjects
    WHERE subjectId NOT IN (
        SELECT DISTINCT subjectId FROM education_ol
    );

    -- Clean up unused al_subjects
    DELETE FROM al_subjects
    WHERE subjectId NOT IN (
        SELECT DISTINCT subjectId FROM education_al
    );

    -- Clean up unused university_subjects
    DELETE FROM university_subjects
    WHERE subjectId NOT IN (
        SELECT DISTINCT subjectId FROM education_university
    );

    -- Clean up unused al_stream
    DELETE FROM al_stream
    WHERE alStreamId NOT IN (
        SELECT DISTINCT alStreamId FROM education_information WHERE alStreamId IS NOT NULL
    );

    -- Clean up unused institutions
    DELETE FROM institutions
    WHERE institutionId NOT IN (
        SELECT DISTINCT institutionId FROM education_university
    );

    -- Log the deletion (assuming a logging table exists, adjust as needed)
    -- INSERT INTO user_log (userLogId, action, timestamp, utc_offset)
    -- VALUES (p_userLogId, CONCAT('Deleted education data for patientId: ', p_patientId), CURRENT_TIMESTAMP, p_UTC_Offset);

    SET p_responseStatus = 'success';
    SET p_outputMessage = 'Education data deleted successfully for patientId';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `education_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `education_insert_update`(
    IN p_patientId INT,
    IN p_educationYears INT,
    IN p_isScholarship BIT,
    IN p_scholarshipMarks INT,
    IN p_schoolAdmitted VARCHAR(50),
    IN p_isScholarshipPassed BIT,
    IN p_scholarshipRemark VARCHAR(500),
    IN p_isOL BIT,
    IN p_olSubjects_json JSON,
    IN p_olRemark VARCHAR(500),
    IN p_isAL BIT,
    IN p_alStreamName VARCHAR(50),
    IN p_alSubjects_json JSON,
    IN p_alRemark VARCHAR(500),
    IN p_isUniversity BIT,
    IN p_universitySubjects_json JSON,
    IN p_universityRemark VARCHAR(500),
    IN p_isInternationalCurriculum BIT,
    IN p_isEdexcel BIT,
    IN p_isCambridge BIT,
    IN p_userLogId INT,
    IN p_saveType VARCHAR(1),
    IN p_UTC_Offset VARCHAR(50),
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_educationInfoId INT
)
sp: BEGIN
    DECLARE v_educationInfoId INT;
    DECLARE v_noOfOLSubjects, v_noOfALSubjects, v_noOfUniversitySubjects INT DEFAULT 0;
    DECLARE v_i_ol, v_i_al, v_i_university INT DEFAULT 0;
    DECLARE v_subjectId, v_year, v_alStreamId, v_institutionId INT;
    DECLARE v_universityMarks VARCHAR(11);
    DECLARE v_subjectName, v_institutionName VARCHAR(100);
    DECLARE v_err_message VARCHAR(255);
    DECLARE v_marks VARCHAR(11);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 v_err_message = MESSAGE_TEXT;
        SET p_responseStatus = 'failed';
        SET p_outputMessage = v_err_message;
    END;

    -- Validations
    IF p_patientId < 1 OR NOT EXISTS (SELECT 1 FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Invalid or unregistered patientId';
        LEAVE sp;
    END IF;

    IF p_educationYears IS NULL OR p_educationYears < 0 THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Years of formal education must be a valid non-negative number';
        LEAVE sp;
    END IF;



    START TRANSACTION;

    -- O/L Handling
    IF p_isOL = 1 THEN
        SET v_noOfOLSubjects = JSON_LENGTH(p_olSubjects_json);
        IF v_noOfOLSubjects = 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'O/L subjects JSON is required when O/L is enabled';
            ROLLBACK;
            LEAVE sp;
        END IF;

        DROP TEMPORARY TABLE IF EXISTS tblOLSubjects;
        CREATE TEMPORARY TABLE tblOLSubjects (subjectId INT, marks VARCHAR(11), year INT);

        WHILE v_i_ol < v_noOfOLSubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].name')));
            SET v_marks = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].year')));
            SET v_subjectId = NULL;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_marks IS NULL OR v_marks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_year IS NULL OR v_year = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' year is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            SELECT subjectId INTO v_subjectId FROM ol_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO ol_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;

            IF EXISTS (SELECT 1 FROM tblOLSubjects WHERE subjectId = v_subjectId AND year = v_year) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate O/L subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            INSERT INTO tblOLSubjects (subjectId, marks, year) VALUES (v_subjectId, v_marks, v_year);
            SET v_i_ol = v_i_ol + 1;
        END WHILE;
    END IF;

    -- A/L Handling
    IF p_isAL = 1 THEN
        IF p_alStreamName IS NULL THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'A/L stream is required';
            ROLLBACK;
            LEAVE sp;
        END IF;

        SELECT alStreamId INTO v_alStreamId FROM al_stream WHERE streamName = p_alStreamName LIMIT 1;
        IF v_alStreamId IS NULL THEN
            INSERT INTO al_stream(streamName) VALUES (p_alStreamName);
            SET v_alStreamId = LAST_INSERT_ID();
        END IF;

        SET v_noOfALSubjects = JSON_LENGTH(p_alSubjects_json);
        IF v_noOfALSubjects = 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'A/L subjects JSON is required when A/L is enabled';
            ROLLBACK;
            LEAVE sp;
        END IF;

        DROP TEMPORARY TABLE IF EXISTS tblALSubjects;
        CREATE TEMPORARY TABLE tblALSubjects (subjectId INT, marks VARCHAR(11), year INT);

        WHILE v_i_al < v_noOfALSubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].name')));
            SET v_marks = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].year')));
            SET v_subjectId = NULL;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_marks IS NULL OR v_marks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_year IS NULL OR NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025 THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;

            SELECT subjectId INTO v_subjectId FROM al_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO al_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;

            IF EXISTS (SELECT 1 FROM tblALSubjects WHERE subjectId = v_subjectId AND year = v_year) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate A/L subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            INSERT INTO tblALSubjects (subjectId, marks, year) VALUES (v_subjectId, v_marks, v_year);
            SET v_i_al = v_i_al + 1;
        END WHILE;
    END IF;

    -- University Handling
    IF p_isUniversity = 1 THEN
        SET v_noOfUniversitySubjects = JSON_LENGTH(p_universitySubjects_json);
        IF v_noOfUniversitySubjects = 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'University subjects JSON is required when university is enabled';
            ROLLBACK;
            LEAVE sp;
        END IF;

        DROP TEMPORARY TABLE IF EXISTS tblUniversitySubjects;
        CREATE TEMPORARY TABLE tblUniversitySubjects (
            subjectId INT,
            institutionId INT,
            marks VARCHAR(11),
            year INT
        );

        WHILE v_i_university < v_noOfUniversitySubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].name')));
            SET v_institutionName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].institution')));
            SET v_universityMarks = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].year')));
            SET v_institutionId = NULL;
            SET v_subjectId = NULL;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' degree is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_institutionName IS NULL OR v_institutionName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' institution is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_universityMarks IS NULL OR v_universityMarks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' marks/grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_year IS NOT NULL AND (NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;
            
            
       

            SELECT institutionId INTO v_institutionId FROM institutions WHERE institutionName = v_institutionName LIMIT 1;
            IF v_institutionId IS NULL THEN
                INSERT INTO institutions (institutionName) VALUES (v_institutionName);
                SET v_institutionId = LAST_INSERT_ID();
            END IF;

            SELECT subjectId INTO v_subjectId FROM university_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO university_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;
            
            
                        IF EXISTS (SELECT 1 FROM tblUniversitySubjects WHERE subjectId = v_subjectId and institutionId=v_institutionId AND year = v_year) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate University subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            INSERT INTO tblUniversitySubjects (subjectId, institutionId, marks, year)
            VALUES (v_subjectId, v_institutionId, v_universityMarks, v_year);
            
       

            SET v_i_university = v_i_university + 1;
        END WHILE;
    END IF;

    -- Insert or Update main education_information
    IF p_saveType = 'I' THEN
        IF EXISTS (SELECT 1 FROM education_information WHERE patientId = p_patientId) THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Education information already exists.';
            ROLLBACK;
            LEAVE sp;
        END IF;

       
        
          INSERT INTO education_information (patientId) VALUES (p_patientId);
        SET v_educationInfoId = LAST_INSERT_ID();
        SET p_educationInfoId = v_educationInfoId;

        -- Insert into education_information_single
        INSERT INTO education_information_single (
            educationInfoId, educationYears, isScholarship, isOL, isAL, isUniversity,
            remarkOL, remarkAL, alStreamId, remarkUniversity, isEdexcel, isCambridge
        ) VALUES (
            v_educationInfoId, p_educationYears, p_isScholarship, p_isOL, p_isAL, p_isUniversity,
            p_olRemark, p_alRemark, v_alStreamId, p_universityRemark, p_isEdexcel, p_isCambridge
        );
        
        

                
    ELSEIF p_saveType = 'U' THEN
        SELECT educationInfoId INTO v_educationInfoId FROM education_information WHERE patientId = p_patientId;
        IF v_educationInfoId IS NULL THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Education information does not exist for update.';
            ROLLBACK;
            LEAVE sp;
        END IF;

      -- Update education_information (only modifiedDate as patientId is immutable)
        UPDATE education_information
        SET modifiedDate = CURRENT_TIMESTAMP WHERE educationInfoId = v_educationInfoId;

      
            UPDATE education_information_single
            SET educationYears = p_educationYears, isScholarship = p_isScholarship,isOL = p_isOL, isAL = p_isAL,
                isUniversity = p_isUniversity, remarkOL = p_olRemark, remarkAL = p_alRemark,
                alStreamId = v_alStreamId,
                remarkUniversity = p_universityRemark,
                isEdexcel = p_isEdexcel, isCambridge = p_isCambridge
            WHERE educationInfoId = v_educationInfoId;



        SET p_educationInfoId = v_educationInfoId;
    END IF;

    -- Scholarship logic
    IF p_isScholarship = 1 THEN
        IF p_scholarshipMarks IS NULL OR p_scholarshipMarks < 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Scholarship marks must be a valid non-negative number';
            ROLLBACK;
            LEAVE sp;
        END IF;

        IF p_schoolAdmitted IS NULL OR p_schoolAdmitted = '' THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'School admitted is required for scholarship';
            ROLLBACK;
            LEAVE sp;
        END IF;


          
        IF EXISTS (SELECT 1 FROM education_scholarship WHERE educationInfoId = v_educationInfoId) THEN
            UPDATE education_scholarship
            SET marks = p_scholarshipMarks,
                schoolAdmitted = p_schoolAdmitted,
                isPass = p_isScholarshipPassed,
                remark = p_scholarshipRemark,
                modifiedDate = CURRENT_TIMESTAMP
            WHERE educationInfoId = v_educationInfoId;
        ELSE
            INSERT INTO education_scholarship (educationInfoId, marks, schoolAdmitted, isPass, remark)
            VALUES (v_educationInfoId, p_scholarshipMarks, p_schoolAdmitted, p_isScholarshipPassed, p_scholarshipRemark);
        END IF;
    ELSE
        DELETE FROM education_scholarship WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- O/L subjects sync
    IF p_isOL = 1 THEN
        DELETE eol FROM education_ol eol
        LEFT JOIN tblOLSubjects tmp ON eol.subjectId = tmp.subjectId AND eol.year = tmp.year
        WHERE tmp.subjectId IS NULL AND eol.educationInfoId = v_educationInfoId;

        INSERT INTO education_ol (educationInfoId, subjectId, marks, year)
        SELECT v_educationInfoId, tmp.subjectId, tmp.marks, tmp.year
        FROM tblOLSubjects tmp
        LEFT JOIN education_ol eol ON eol.subjectId = tmp.subjectId AND eol.year = tmp.year AND eol.educationInfoId = v_educationInfoId
        WHERE eol.subjectId IS NULL;

        UPDATE education_ol AS eol
        INNER JOIN tblOLSubjects AS tmp ON eol.subjectId = tmp.subjectId AND eol.year = tmp.year
        SET eol.marks = tmp.marks
        WHERE eol.educationInfoId = v_educationInfoId;
    ELSE
        DELETE FROM education_ol WHERE educationInfoId = v_educationInfoId;
        UPDATE education_information_single SET remarkOL = NULL WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- A/L subjects sync
    IF p_isAL = 1 THEN
        DELETE eal FROM education_al eal
        LEFT JOIN tblALSubjects tmp ON eal.subjectId = tmp.subjectId AND eal.year = tmp.year
        WHERE tmp.subjectId IS NULL AND eal.educationInfoId = v_educationInfoId;

        INSERT INTO education_al (educationInfoId, subjectId, marks, year)
        SELECT v_educationInfoId, tmp.subjectId, tmp.marks, tmp.year
        FROM tblALSubjects tmp
        LEFT JOIN education_al eal ON eal.subjectId = tmp.subjectId AND eal.year = tmp.year AND eal.educationInfoId = v_educationInfoId
        WHERE eal.subjectId IS NULL;

        UPDATE education_al AS eal
        INNER JOIN tblALSubjects AS tmp ON eal.subjectId = tmp.subjectId AND eal.year = tmp.year
        SET eal.marks = tmp.marks
        WHERE eal.educationInfoId = v_educationInfoId;
    ELSE
        DELETE FROM education_al WHERE educationInfoId = v_educationInfoId;
        UPDATE education_information_single SET remarkAL = NULL WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- University subjects sync
    IF p_isUniversity = 1 THEN
        DELETE eun FROM education_university eun
        LEFT JOIN tblUniversitySubjects tmp ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year
        WHERE tmp.subjectId IS NULL AND eun.educationInfoId = v_educationInfoId;

        INSERT INTO education_university (educationInfoId, subjectId, institutionId, marks, year)
        SELECT v_educationInfoId, tmp.subjectId, tmp.institutionId, tmp.marks, tmp.year
        FROM tblUniversitySubjects tmp
        LEFT JOIN education_university eun ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year AND eun.educationInfoId = v_educationInfoId
        WHERE eun.subjectId IS NULL;

        UPDATE education_university AS eun
        INNER JOIN tblUniversitySubjects AS tmp ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year
        SET eun.marks = tmp.marks
        WHERE eun.educationInfoId = v_educationInfoId;
    ELSE
        DELETE FROM education_university WHERE educationInfoId = v_educationInfoId;
        UPDATE education_information_single SET remarkUniversity = NULL WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- Final success
    SET p_responseStatus = 'success';
    SET p_outputMessage = 'Education data saved successfully';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `education_insert_update_family` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `education_insert_update_family`(
    IN p_patientId INT,
    IN p_educationYearsHusband INT,
    IN p_isOLHusband BIT,
    IN p_isOLPassedHusband BIT,
    IN p_olRemarkHusband VARCHAR(500),
    IN p_isALHusband BIT,
    IN p_alStreamNameHusband VARCHAR(50),
    IN p_alRemarkHusband VARCHAR(500),
    IN p_isUniversityHusband BIT,
    IN p_universitySubjectsHusband_json JSON,
    IN p_universityRemarkHusband VARCHAR(500),
    IN p_isEdexcelHusband BIT,
    IN p_isCambridgeHusband BIT,
    IN p_educationYearsWife INT,
    IN p_isScholarshipWife BIT,
    IN p_isOLWife BIT,
    IN p_isOLPassedWife BIT,
    IN p_olRemarkWife VARCHAR(500),
    IN p_isALWife BIT,
    IN p_alStreamNameWife VARCHAR(50),
    IN p_alRemarkWife VARCHAR(500),
    IN p_isUniversityWife BIT,
    IN p_universitySubjectsWife_json JSON,
    IN p_universityRemarkWife VARCHAR(500),
    IN p_isEdexcelWife BIT,
    IN p_isCambridgeWife BIT,
    IN p_userLogId INT,
    IN p_saveType VARCHAR(1),
    IN p_UTC_Offset VARCHAR(50),
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_educationInfoId INT
)
sp: BEGIN
    DECLARE v_educationInfoId INT;
    DECLARE v_noOfUniversitySubjectsHusband INT DEFAULT 0;
    DECLARE v_noOfUniversitySubjectsWife INT DEFAULT 0;
    DECLARE v_i_university_husband INT DEFAULT 0;
    DECLARE v_i_university_wife INT DEFAULT 0;
    DECLARE v_subjectId, v_year, v_alStreamIdHusband, v_alStreamIdWife, v_institutionId INT;
    DECLARE v_universityMarks VARCHAR(11);
    DECLARE v_subjectName, v_institutionName VARCHAR(100);
    DECLARE v_err_message VARCHAR(255);
    DECLARE v_marks VARCHAR(11);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 v_err_message = MESSAGE_TEXT;
        SET p_responseStatus = 'failed';
        SET p_outputMessage = v_err_message;
    END;

    -- Validations
    IF p_patientId < 1 OR NOT EXISTS (SELECT 1 FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Invalid or unregistered patientId';
        LEAVE sp;
    END IF;

    IF p_educationYearsHusband IS NULL OR p_educationYearsHusband < 0 THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Husband''s years of formal education must be a valid non-negative number';
        LEAVE sp;
    END IF;

    IF p_educationYearsWife IS NULL OR p_educationYearsWife < 0 THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Wife''s years of formal education must be a valid non-negative number';
        LEAVE sp;
    END IF;

    START TRANSACTION;

    -- A/L Handling for Husband
    IF p_isALHusband = 1 THEN
        IF p_alStreamNameHusband IS NULL THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Husband''s A/L stream is required';
            ROLLBACK;
            LEAVE sp;
        END IF;

        SELECT alStreamId INTO v_alStreamIdHusband FROM al_stream WHERE streamName = p_alStreamNameHusband LIMIT 1;
        SELECT alStreamId INTO v_alStreamIdWife FROM al_stream WHERE streamName = p_alStreamNameWife LIMIT 1;
        
        IF p_alStreamNameHusband = p_alStreamNameWife THEN 
            IF v_alStreamIdHusband IS NULL THEN
                INSERT INTO al_stream(streamName) VALUES (p_alStreamNameHusband);
                SET v_alStreamIdHusband = LAST_INSERT_ID();
                SET v_alStreamIdWife = v_alStreamIdHusband;
            END IF;
        ELSE
            IF v_alStreamIdHusband IS NULL THEN
                INSERT INTO al_stream(streamName) VALUES (p_alStreamNameHusband);
                SET v_alStreamIdHusband = LAST_INSERT_ID();
            END IF;
            IF v_alStreamIdWife IS NULL THEN
                INSERT INTO al_stream(streamName) VALUES (p_alStreamNameWife);
                SET v_alStreamIdWife = LAST_INSERT_ID();
            END IF;
        END IF;
    END IF;

    -- University Handling for Husband
    IF p_isUniversityHusband = 1 THEN
        SET v_noOfUniversitySubjectsHusband = JSON_LENGTH(p_universitySubjectsHusband_json);
        IF v_noOfUniversitySubjectsHusband = 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Husband''s university subjects JSON is required when university is enabled';
            ROLLBACK;
            LEAVE sp;
        END IF;

        DROP TEMPORARY TABLE IF EXISTS tblUniversitySubjectsHusband;
        CREATE TEMPORARY TABLE tblUniversitySubjectsHusband (
            subjectId INT,
            institutionId INT,
            marks VARCHAR(11),
            year INT
        );

        WHILE v_i_university_husband < v_noOfUniversitySubjectsHusband DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjectsHusband_json, CONCAT('$[', v_i_university_husband, '].name')));
            SET v_institutionName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjectsHusband_json, CONCAT('$[', v_i_university_husband, '].institution')));
            SET v_universityMarks = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjectsHusband_json, CONCAT('$[', v_i_university_husband, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjectsHusband_json, CONCAT('$[', v_i_university_husband, '].year')));
            SET v_institutionId = NULL;
            SET v_subjectId = NULL;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Husband''s university qualification ', v_i_university_husband + 1, ' degree is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_institutionName IS NULL OR v_institutionName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Husband''s university qualification ', v_i_university_husband + 1, ' institution is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_universityMarks IS NULL OR v_universityMarks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Husband''s university qualification ', v_i_university_husband + 1, ' marks/grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_year IS NOT NULL AND (NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Husband''s university qualification ', v_i_university_husband + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;

            
      
                   
            
            SELECT institutionId INTO v_institutionId FROM institutions WHERE institutionName = v_institutionName LIMIT 1;
            IF v_institutionId IS NULL THEN
                INSERT INTO institutions (institutionName) VALUES (v_institutionName);
                SET v_institutionId = LAST_INSERT_ID();
            END IF;

            SELECT subjectId INTO v_subjectId FROM university_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO university_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;
            
            
                   
             IF EXISTS (SELECT 1 FROM tblUniversitySubjectsHusband WHERE subjectId = v_subjectId and institutionId=v_institutionId AND year = v_year) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate University Husband subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            INSERT INTO tblUniversitySubjectsHusband (subjectId, institutionId, marks, year)
            VALUES (v_subjectId, v_institutionId, v_universityMarks, v_year);

       
            
            SET v_i_university_husband = v_i_university_husband + 1;
        END WHILE;
    END IF;

         
    -- University Handling for Wife
    IF p_isUniversityWife = 1 THEN
        SET v_noOfUniversitySubjectsWife = JSON_LENGTH(p_universitySubjectsWife_json);
        IF v_noOfUniversitySubjectsWife = 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Wife''s university subjects JSON is required when university is enabled';
            ROLLBACK;
            LEAVE sp;
        END IF;

        DROP TEMPORARY TABLE IF EXISTS tblUniversitySubjectsWife;
        CREATE TEMPORARY TABLE tblUniversitySubjectsWife (
            subjectId INT,
            institutionId INT,
            marks VARCHAR(11),
            year INT
        );

        WHILE v_i_university_wife < v_noOfUniversitySubjectsWife DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjectsWife_json, CONCAT('$[', v_i_university_wife, '].name')));
            SET v_institutionName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjectsWife_json, CONCAT('$[', v_i_university_wife, '].institution')));
            SET v_universityMarks = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjectsWife_json, CONCAT('$[', v_i_university_wife, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjectsWife_json, CONCAT('$[', v_i_university_wife, '].year')));
            SET v_institutionId = NULL;
            SET v_subjectId = NULL;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Wife''s university qualification ', v_i_university_wife + 1, ' degree is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_institutionName IS NULL OR v_institutionName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Wife''s university qualification ', v_i_university_wife + 1, ' institution is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_universityMarks IS NULL OR v_universityMarks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Wife''s university qualification ', v_i_university_wife + 1, ' marks/grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_year IS NOT NULL AND (NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Wife''s university qualification ', v_i_university_wife + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;

            SELECT institutionId INTO v_institutionId FROM institutions WHERE institutionName = v_institutionName LIMIT 1;
            IF v_institutionId IS NULL THEN
                INSERT INTO institutions (institutionName) VALUES (v_institutionName);
                SET v_institutionId = LAST_INSERT_ID();
            END IF;

            SELECT subjectId INTO v_subjectId FROM university_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO university_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;

            IF EXISTS (SELECT 1 FROM tblUniversitySubjectsWife WHERE subjectId = v_subjectId 
             and institutionId=v_institutionId AND year = v_year) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate University Wife subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;
                
            INSERT INTO tblUniversitySubjectsWife (subjectId, institutionId, marks, year)
            VALUES (v_subjectId, v_institutionId, v_universityMarks, v_year);
       
         
             
            SET v_i_university_wife = v_i_university_wife + 1;
        END WHILE;
    END IF;

    -- Insert or Update education_information
    IF p_saveType = 'I' THEN
        IF EXISTS (SELECT 1 FROM education_information WHERE patientId = p_patientId) THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Education information already exists.';
            ROLLBACK;
            LEAVE sp;
        END IF;

        INSERT INTO education_information (patientId) VALUES (p_patientId);
        SET v_educationInfoId = LAST_INSERT_ID();
        SET p_educationInfoId = v_educationInfoId;

        -- Insert into education_information_family
        INSERT INTO education_information_family (
            educationInfoId, educationYearsHusband, isOLHusband, isOLPassedHusband,
            isALHusband, remarkOLHusband, remarkALHusband, alStreamIdHusband, isUniversityHusband,
            remarkUniversityHusband, isEdexcelHusband, isCambridgeHusband,
            educationYearsWife, isScholarshipWife, isOLWife, isOLPassedWife, isALWife,
            remarkOLWife, remarkALWife, alStreamIdWife, isUniversityWife, remarkUniversityWife,
            isEdexcelWife, isCambridgeWife
        ) VALUES (
            v_educationInfoId, p_educationYearsHusband, p_isOLHusband, p_isOLPassedHusband,
            p_isALHusband, p_olRemarkHusband, p_alRemarkHusband, v_alStreamIdHusband, p_isUniversityHusband,
            p_universityRemarkHusband, p_isEdexcelHusband, p_isCambridgeHusband,
            p_educationYearsWife, p_isScholarshipWife, p_isOLWife, p_isOLPassedWife, p_isALWife,
            p_olRemarkWife, p_alRemarkWife, v_alStreamIdWife, p_isUniversityWife, p_universityRemarkWife,
            p_isEdexcelWife, p_isCambridgeWife
        );
    ELSEIF p_saveType = 'U' THEN
        SELECT educationInfoId INTO v_educationInfoId FROM education_information WHERE patientId = p_patientId;
        IF v_educationInfoId IS NULL THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Education information does not exist for update.';
            ROLLBACK;
            LEAVE sp;
        END IF;

        -- Update education_information
        UPDATE education_information
        SET modifiedDate = CURRENT_TIMESTAMP
        WHERE educationInfoId = v_educationInfoId;

        UPDATE education_information_family
        SET educationYearsHusband = p_educationYearsHusband,
            isOLHusband = p_isOLHusband,
            isOLPassedHusband = p_isOLPassedHusband,
            isALHusband = p_isALHusband,
            remarkOLHusband = p_olRemarkHusband,
            remarkALHusband = p_alRemarkHusband,
            alStreamIdHusband = v_alStreamIdHusband,
            isUniversityHusband = p_isUniversityHusband,
            remarkUniversityHusband = p_universityRemarkHusband,
            isEdexcelHusband = p_isEdexcelHusband,
            isCambridgeHusband = p_isCambridgeHusband,
            educationYearsWife = p_educationYearsWife,
            isScholarshipWife = p_isScholarshipWife,
            isOLWife = p_isOLWife,
            isOLPassedWife = p_isOLPassedWife,
            isALWife = p_isALWife,
            remarkOLWife = p_olRemarkWife,
            remarkALWife = p_alRemarkWife,
            alStreamIdWife = v_alStreamIdWife,
            isUniversityWife = p_isUniversityWife,
            remarkUniversityWife = p_universityRemarkWife,
            isEdexcelWife = p_isEdexcelWife,
            isCambridgeWife = p_isCambridgeWife
        WHERE educationInfoId = v_educationInfoId;

        SET p_educationInfoId = v_educationInfoId;
    END IF;

    -- O/L Subjects Sync for Husband
    IF p_isOLHusband = 1 THEN
        UPDATE education_information_family 
        SET remarkOLHusband = p_olRemarkHusband,
            isOLPassedHusband = p_isOLPassedHusband 
        WHERE educationInfoId = v_educationInfoId;
    ELSE
        UPDATE education_information_family 
        SET remarkOLHusband = NULL,
            isOLPassedHusband = NULL 
        WHERE educationInfoId = v_educationInfoId;
    END IF;

    

     
    -- O/L Subjects Sync for Wife
    IF p_isOLWife = 1 then
      
        UPDATE education_information_family 
        SET remarkOLWife = p_olRemarkWife, isOLPassedWife = p_isOLPassedWife 
        WHERE educationInfoId = v_educationInfoId;
    else
    
        UPDATE education_information_family SET remarkOLWife = NULL, isOLPassedWife = NULL 
        WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- A/L Subjects Sync for Husband
    IF p_isALHusband = 1 THEN
        UPDATE education_information_family 
        SET alStreamIdHusband = v_alStreamIdHusband, 
            remarkALHusband = p_alRemarkHusband 
        WHERE educationInfoId = v_educationInfoId;
    ELSE
        UPDATE education_information_family 
        SET alStreamIdHusband = NULL, 
            remarkALHusband = NULL 
        WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- A/L Subjects Sync for Wife
    IF p_isALWife = 1 THEN
        UPDATE education_information_family 
        SET alStreamIdWife = v_alStreamIdWife, 
            remarkALWife = p_alRemarkWife 
        WHERE educationInfoId = v_educationInfoId;
    ELSE
        UPDATE education_information_family 
        SET alStreamIdWife = NULL, 
            remarkALWife = NULL 
        WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- University Subjects Sync for Husband
    IF p_isUniversityHusband = 1 THEN
        DELETE eun FROM education_university_husband eun
        LEFT JOIN tblUniversitySubjectsHusband tmp ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year
        WHERE tmp.subjectId IS NULL AND eun.educationInfoId = v_educationInfoId;

        INSERT INTO education_university_husband (educationInfoId, subjectId, institutionId, marks, year)
        SELECT v_educationInfoId, tmp.subjectId, tmp.institutionId, tmp.marks, tmp.year
        FROM tblUniversitySubjectsHusband tmp
        LEFT JOIN education_university_husband eun ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year AND eun.educationInfoId = v_educationInfoId
        WHERE eun.subjectId IS NULL;

        UPDATE education_university_husband AS eun
        INNER JOIN tblUniversitySubjectsHusband AS tmp ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year
        SET eun.marks = tmp.marks
        WHERE eun.educationInfoId = v_educationInfoId;
    ELSE
        DELETE FROM education_university_husband WHERE educationInfoId = v_educationInfoId;
        UPDATE education_information_family SET remarkUniversityHusband = NULL WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- University Subjects Sync for Wife
    IF p_isUniversityWife = 1 THEN
        DELETE eun FROM education_university_wife eun
        LEFT JOIN tblUniversitySubjectsWife tmp ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year
        WHERE tmp.subjectId IS NULL AND eun.educationInfoId = v_educationInfoId;

        INSERT INTO education_university_wife (educationInfoId, subjectId, institutionId, marks, year)
        SELECT v_educationInfoId, tmp.subjectId, tmp.institutionId, tmp.marks, tmp.year
        FROM tblUniversitySubjectsWife tmp
        LEFT JOIN education_university_wife eun ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year AND eun.educationInfoId = v_educationInfoId
        WHERE eun.subjectId IS NULL;

        UPDATE education_university_wife AS eun
        INNER JOIN tblUniversitySubjectsWife AS tmp ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year
        SET eun.marks = tmp.marks
        WHERE eun.educationInfoId = v_educationInfoId;
    ELSE
        DELETE FROM education_university_wife WHERE educationInfoId = v_educationInfoId;
        UPDATE education_information_family SET remarkUniversityWife = NULL WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- Final success
    SET p_responseStatus = 'success';
    SET p_outputMessage = 'Family education data saved successfully';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `education_insert_update_notinuse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `education_insert_update_notinuse`(
    IN p_patientId INT,
    IN p_educationYears INT,
    IN p_isScholarship BIT,
    IN p_scholarshipMarks INT,
    IN p_schoolAdmitted VARCHAR(50),
    IN p_isScholarshipPassed bit,
    IN p_scholarshipRemark VARCHAR(500),
    IN p_isOL BIT,
    IN p_olSubjects_json JSON,
    IN p_olRemark VARCHAR(100),
    IN p_isAL BIT,
    IN p_alStreamName VARCHAR(50),
    IN p_alSubjects_json JSON,
    IN p_alRemark VARCHAR(100),
    IN p_isUniversity BIT,
    IN p_universitySubjects_json JSON,
    IN p_universityRemark VARCHAR(100),
    IN p_userLogId INT,
    IN p_saveType VARCHAR(1),
    IN p_UTC_Offset VARCHAR(50),
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_educationInfoId INT
)
sp: BEGIN
    DECLARE v_educationInfoId INT;
    DECLARE v_noOfOLSubjects, v_noOfALSubjects, v_noOfUniversitySubjects INT DEFAULT 0;
    DECLARE v_i_ol, v_i_al, v_i_university INT DEFAULT 0;
    DECLARE v_subjectId, v_year, v_alStreamId, v_institutionId INT;
    DECLARE v_universityMarks VARCHAR(11);
    DECLARE v_subjectName, v_institutionName VARCHAR(100);
    DECLARE v_err_message VARCHAR(255);
	declare v_marks varchar(11);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 v_err_message = MESSAGE_TEXT;
        SET p_responseStatus = 'failed';
        SET p_outputMessage = v_err_message;
    END;

    -- Validations
    IF p_patientId < 1 OR NOT EXISTS (SELECT 1 FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Invalid or unregistered patientId';
        LEAVE sp;
    END IF;

    IF p_educationYears IS NULL OR p_educationYears < 0 THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Years of formal education must be a valid non-negative number';
        LEAVE sp;
    END IF;

    START TRANSACTION;


    
    -- O/L Handling
    IF p_isOL = 1 then
       SET v_noOfOLSubjects = JSON_LENGTH(p_olSubjects_json);
        IF v_noOfOLSubjects=0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'O/L subjects JSON is required when O/L is enabled';
            LEAVE sp;
        END IF;

     
        DROP TEMPORARY TABLE IF EXISTS tblOLSubjects;
        CREATE TEMPORARY TABLE tblOLSubjects (subjectId INT, marks varchar(11), year INT);

        WHILE v_i_ol < v_noOfOLSubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].name')));
            SET v_marks = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].year')));
set v_subjectId=null;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_marks IS NULL OR v_marks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_year IS NULL OR v_year = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' year is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            SELECT subjectId INTO v_subjectId FROM ol_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO ol_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;

            IF EXISTS (SELECT 1 FROM tblOLSubjects WHERE subjectId = v_subjectId AND year = v_year) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate O/L subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            INSERT INTO tblOLSubjects (subjectId, marks, year) VALUES (v_subjectId, v_marks, v_year);
            SET v_i_ol = v_i_ol + 1;
        END WHILE;
    END IF;

    -- A/L Handling
    IF p_isAL = 1 THEN
        IF p_alStreamName IS NULL THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'A/L stream is required';
            LEAVE sp;
        END IF;

        SELECT alStreamId INTO v_alStreamId FROM al_stream WHERE streamName = p_alStreamName LIMIT 1;
        IF v_alStreamId IS NULL THEN
            INSERT INTO al_stream(streamName) VALUES (p_alStreamName);
            SET v_alStreamId = LAST_INSERT_ID();
        END IF;

        
        SET v_noOfALSubjects = JSON_LENGTH(p_alSubjects_json);
        IF v_noOfALSubjects=0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'A/L subjects JSON is required when A/L is enabled';
            LEAVE sp;
        END IF;


        DROP TEMPORARY TABLE IF EXISTS tblALSubjects;
        CREATE TEMPORARY TABLE tblALSubjects (subjectId INT, marks varchar(11), year INT);

        WHILE v_i_al < v_noOfALSubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].name')));
            SET v_marks = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].year')));
set v_subjectId=null;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_marks IS NULL OR v_marks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_year IS NULL OR NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025 THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;

            SELECT subjectId INTO v_subjectId FROM al_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO al_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;

            IF EXISTS (SELECT 1 FROM tblALSubjects WHERE subjectId = v_subjectId AND year = v_year) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate A/L subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            INSERT INTO tblALSubjects (subjectId, marks, year) VALUES (v_subjectId, v_marks, v_year);
            SET v_i_al = v_i_al + 1;
        END WHILE;
    END IF;

    -- University Handling
    IF p_isUniversity = 1 then
    
        SET v_noOfUniversitySubjects = JSON_LENGTH(p_universitySubjects_json);
        IF v_noOfUniversitySubjects=0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'University subjects JSON is required when university is enabled';
            LEAVE sp;
        END IF;


        DROP TEMPORARY TABLE IF EXISTS tblUniversitySubjects;
        CREATE TEMPORARY TABLE tblUniversitySubjects (
            subjectId INT,
            institutionId INT,
            marks VARCHAR(11),
            year INT
        );

        WHILE v_i_university < v_noOfUniversitySubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].name')));
            SET v_institutionName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].institution')));
            SET v_universityMarks = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].year')));
			set v_institutionId=null;
        	set v_subjectId=null;
        
            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' degree is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_institutionName IS NULL OR v_institutionName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' institution is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_universityMarks IS NULL OR v_universityMarks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' marks/grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_year IS NOT NULL AND (NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;

            SELECT institutionId INTO v_institutionId FROM institutions WHERE institutionName = v_institutionName LIMIT 1;
            IF v_institutionId IS NULL THEN
                INSERT INTO institutions (institutionName) VALUES (v_institutionName);
                SET v_institutionId = LAST_INSERT_ID();
            END IF;

            SELECT subjectId INTO v_subjectId FROM university_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO university_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;

            INSERT INTO tblUniversitySubjects (subjectId, institutionId, marks, year)
            VALUES (v_subjectId, v_institutionId, v_universityMarks, v_year);

            SET v_i_university = v_i_university + 1;
        END WHILE;
    END IF;

              --  select * from tblOLSubjects;
    
     -- select * from tblALSubjects;
  
                
                
                
                
    
                
                
                
                
                
                
                
     -- Insert or Update main education_information
IF p_saveType = 'I' THEN
    IF EXISTS (SELECT 1 FROM education_information WHERE patientId = p_patientId) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Education information already exists.';
        ROLLBACK;
        LEAVE sp;
    END IF;

    INSERT INTO education_information (
        patientId, educationYears, isScholarship, isOL, isAL, isUniversity,
        remarkOL, remarkAL, alStreamId, remarkUniversity, createdDate, modifiedDate
    ) VALUES (
        p_patientId, p_educationYears, p_isScholarship, p_isOL, p_isAL, p_isUniversity,
        p_olRemark, p_alRemark, v_alStreamId, p_universityRemark, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    );

    SET v_educationInfoId = LAST_INSERT_ID();
    SET p_educationInfoId = v_educationInfoId;

ELSEIF p_saveType = 'U' THEN
    SELECT educationInfoId INTO v_educationInfoId FROM education_information WHERE patientId = p_patientId;
    IF v_educationInfoId IS NULL THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Education information does not exist for update.';
        ROLLBACK;
        LEAVE sp;
    END IF;

    UPDATE education_information
    SET educationYears = p_educationYears,
        isScholarship = p_isScholarship,
        isOL = p_isOL,
        isAL = p_isAL,
        isUniversity = p_isUniversity,
        remarkOL = p_olRemark,
        remarkAL = p_alRemark,
        alStreamId = v_alStreamId,
        remarkUniversity = p_universityRemark,
        modifiedDate = CURRENT_TIMESTAMP
    WHERE educationInfoId = v_educationInfoId;

    SET p_educationInfoId = v_educationInfoId;
END IF;

-- Scholarship logic
IF p_isScholarship = 1 THEN
    IF p_scholarshipMarks IS NULL OR p_scholarshipMarks < 0 THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Scholarship marks must be a valid non-negative number';
        ROLLBACK;
        LEAVE sp;
    END IF;

    IF p_schoolAdmitted IS NULL OR p_schoolAdmitted = '' THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'School admitted is required for scholarship';
        ROLLBACK;
        LEAVE sp;
    END IF;

    IF EXISTS (SELECT 1 FROM education_scholarship WHERE educationInfoId = v_educationInfoId) THEN
        UPDATE education_scholarship
        SET marks = p_scholarshipMarks,
            schoolAdmitted = p_schoolAdmitted,
            isPass = p_isScholarshipPassed,
            remark = p_scholarshipRemark,
            modifiedDate = CURRENT_TIMESTAMP
        WHERE educationInfoId = v_educationInfoId;
    ELSE
        INSERT INTO education_scholarship (educationInfoId, marks, schoolAdmitted, isPass, remark)
        VALUES (v_educationInfoId, p_scholarshipMarks, p_schoolAdmitted, p_isScholarshipPassed, p_scholarshipRemark);
    END IF;
ELSE
    DELETE FROM education_scholarship WHERE educationInfoId = v_educationInfoId;
END IF;

-- O/L subjects sync
IF p_isOL = 1 THEN
    DELETE eol FROM education_ol eol
    LEFT JOIN tblOLSubjects tmp ON eol.subjectId = tmp.subjectId AND eol.year = tmp.year
    WHERE tmp.subjectId IS NULL AND eol.educationInfoId = v_educationInfoId;

    INSERT INTO education_ol (educationInfoId, subjectId, marks, year)
    SELECT v_educationInfoId, tmp.subjectId, tmp.marks, tmp.year
    FROM tblOLSubjects tmp
    LEFT JOIN education_ol eol ON eol.subjectId = tmp.subjectId AND eol.year = tmp.year AND eol.educationInfoId = v_educationInfoId
    WHERE eol.subjectId IS NULL;
    
    UPDATE education_ol AS eol
INNER JOIN tblOLSubjects AS tmp  ON eol.subjectId = tmp.subjectId  AND eol.year = tmp.year
SET  eol.marks = tmp.marks WHERE eol.educationInfoId = v_educationInfoId;
    
    ELSE
    DELETE FROM education_ol WHERE educationInfoId = v_educationInfoId;
    update education_information set remarkOL=null where educationInfoId = v_educationInfoId;
END IF;

-- A/L subjects sync
IF p_isAL = 1 THEN
    DELETE eal FROM education_al eal
    LEFT JOIN tblALSubjects tmp ON eal.subjectId = tmp.subjectId AND eal.year = tmp.year
    WHERE tmp.subjectId IS NULL AND eal.educationInfoId = v_educationInfoId;

    INSERT INTO education_al (educationInfoId, subjectId, marks, year)
    SELECT v_educationInfoId, tmp.subjectId, tmp.marks, tmp.year
    FROM tblALSubjects tmp
    LEFT JOIN education_al eal ON eal.subjectId = tmp.subjectId AND eal.year = tmp.year AND eal.educationInfoId = v_educationInfoId
    WHERE eal.subjectId IS NULL;
    
        UPDATE education_al AS eol
INNER JOIN tblALSubjects AS tmp  ON eol.subjectId = tmp.subjectId  AND eol.year = tmp.year
SET  eol.marks = tmp.marks WHERE eol.educationInfoId = v_educationInfoId;
    
     ELSE
    DELETE FROM education_al WHERE educationInfoId = v_educationInfoId;
    update education_information set remarkAL=null where educationInfoId = v_educationInfoId;
END IF;

-- University subjects sync
IF p_isUniversity = 1 THEN
    DELETE eun FROM education_university eun
    LEFT JOIN tblUniversitySubjects tmp ON eun.subjectId = tmp.subjectId and eun.institutionid=tmp.institutionid AND eun.year = tmp.year
    WHERE tmp.subjectId IS NULL AND eun.educationInfoId = v_educationInfoId;

    INSERT INTO education_university (educationInfoId, subjectId,institutionid, marks, year)
    SELECT v_educationInfoId, tmp.subjectId,tmp.institutionid, tmp.marks, tmp.year
    FROM tblUniversitySubjects tmp
    LEFT JOIN education_university eun ON eun.subjectId = tmp.subjectId and eun.institutionid=tmp.institutionid AND eun.year = tmp.year AND eun.educationInfoId = v_educationInfoId
    WHERE eun.subjectId IS NULL;
    
            UPDATE education_university AS eol
INNER JOIN tblUniversitySubjects AS tmp  ON eol.subjectId = tmp.subjectId and eol.institutionid=tmp.institutionid  AND eol.year = tmp.year
SET  eol.marks = tmp.marks WHERE eol.educationInfoId = v_educationInfoId;
    
       ELSE
    DELETE FROM education_university WHERE educationInfoId = v_educationInfoId;
    update education_information set remarkUniversity=null where educationInfoId = v_educationInfoId;
END IF;

-- Final success
SET p_responseStatus = 'success';
SET p_outputMessage = 'Education data saved successfully';


    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `education_insert_update_notinuse2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `education_insert_update_notinuse2`(
    IN p_patientId INT,
    IN p_educationYears INT,
    IN p_isScholarship BIT,
    IN p_scholarshipMarks INT,
    IN p_schoolAdmitted VARCHAR(50),
    IN p_isScholarshipPassed BIT,
    IN p_scholarshipRemark VARCHAR(500),
    IN p_isOL BIT,
    IN p_olSubjects_json JSON,
    IN p_olRemark VARCHAR(100),
    IN p_isAL BIT,
    IN p_alStreamName VARCHAR(50),
    IN p_alSubjects_json JSON,
    IN p_alRemark VARCHAR(100),
    IN p_isUniversity BIT,
    IN p_universitySubjects_json JSON,
    IN p_universityRemark VARCHAR(100),
    IN p_isInternationalCurriculum BIT,
    IN p_isEdexcel BIT,
    IN p_isCambridge BIT,
    IN p_userLogId INT,
    IN p_saveType VARCHAR(1),
    IN p_UTC_Offset VARCHAR(50),
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_educationInfoId INT
)
sp: BEGIN
    DECLARE v_educationInfoId INT;
    DECLARE v_noOfOLSubjects, v_noOfALSubjects, v_noOfUniversitySubjects INT DEFAULT 0;
    DECLARE v_i_ol, v_i_al, v_i_university INT DEFAULT 0;
    DECLARE v_subjectId, v_year, v_alStreamId, v_institutionId INT;
    DECLARE v_universityMarks VARCHAR(11);
    DECLARE v_subjectName, v_institutionName VARCHAR(100);
    DECLARE v_err_message VARCHAR(255);
    DECLARE v_marks VARCHAR(11);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 v_err_message = MESSAGE_TEXT;
        SET p_responseStatus = 'failed';
        SET p_outputMessage = v_err_message;
    END;

    -- Validations
    IF p_patientId < 1 OR NOT EXISTS (SELECT 1 FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Invalid or unregistered patientId';
        LEAVE sp;
    END IF;

    IF p_educationYears IS NULL OR p_educationYears < 0 THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Years of formal education must be a valid non-negative number';
        LEAVE sp;
    END IF;



    START TRANSACTION;

    -- O/L Handling
    IF p_isOL = 1 THEN
        SET v_noOfOLSubjects = JSON_LENGTH(p_olSubjects_json);
        IF v_noOfOLSubjects = 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'O/L subjects JSON is required when O/L is enabled';
            ROLLBACK;
            LEAVE sp;
        END IF;

        DROP TEMPORARY TABLE IF EXISTS tblOLSubjects;
        CREATE TEMPORARY TABLE tblOLSubjects (subjectId INT, marks VARCHAR(11), year INT);

        WHILE v_i_ol < v_noOfOLSubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].name')));
            SET v_marks = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].year')));
            SET v_subjectId = NULL;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_marks IS NULL OR v_marks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_year IS NULL OR v_year = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' year is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            SELECT subjectId INTO v_subjectId FROM ol_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO ol_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;

            IF EXISTS (SELECT 1 FROM tblOLSubjects WHERE subjectId = v_subjectId AND year = v_year) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate O/L subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            INSERT INTO tblOLSubjects (subjectId, marks, year) VALUES (v_subjectId, v_marks, v_year);
            SET v_i_ol = v_i_ol + 1;
        END WHILE;
    END IF;

    -- A/L Handling
    IF p_isAL = 1 THEN
        IF p_alStreamName IS NULL THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'A/L stream is required';
            ROLLBACK;
            LEAVE sp;
        END IF;

        SELECT alStreamId INTO v_alStreamId FROM al_stream WHERE streamName = p_alStreamName LIMIT 1;
        IF v_alStreamId IS NULL THEN
            INSERT INTO al_stream(streamName) VALUES (p_alStreamName);
            SET v_alStreamId = LAST_INSERT_ID();
        END IF;

        SET v_noOfALSubjects = JSON_LENGTH(p_alSubjects_json);
        IF v_noOfALSubjects = 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'A/L subjects JSON is required when A/L is enabled';
            ROLLBACK;
            LEAVE sp;
        END IF;

        DROP TEMPORARY TABLE IF EXISTS tblALSubjects;
        CREATE TEMPORARY TABLE tblALSubjects (subjectId INT, marks VARCHAR(11), year INT);

        WHILE v_i_al < v_noOfALSubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].name')));
            SET v_marks = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].year')));
            SET v_subjectId = NULL;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_marks IS NULL OR v_marks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_year IS NULL OR NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025 THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;

            SELECT subjectId INTO v_subjectId FROM al_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO al_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;

            IF EXISTS (SELECT 1 FROM tblALSubjects WHERE subjectId = v_subjectId AND year = v_year) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate A/L subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            INSERT INTO tblALSubjects (subjectId, marks, year) VALUES (v_subjectId, v_marks, v_year);
            SET v_i_al = v_i_al + 1;
        END WHILE;
    END IF;

    -- University Handling
    IF p_isUniversity = 1 THEN
        SET v_noOfUniversitySubjects = JSON_LENGTH(p_universitySubjects_json);
        IF v_noOfUniversitySubjects = 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'University subjects JSON is required when university is enabled';
            ROLLBACK;
            LEAVE sp;
        END IF;

        DROP TEMPORARY TABLE IF EXISTS tblUniversitySubjects;
        CREATE TEMPORARY TABLE tblUniversitySubjects (
            subjectId INT,
            institutionId INT,
            marks VARCHAR(11),
            year INT
        );

        WHILE v_i_university < v_noOfUniversitySubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].name')));
            SET v_institutionName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].institution')));
            SET v_universityMarks = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].year')));
            SET v_institutionId = NULL;
            SET v_subjectId = NULL;

            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' degree is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_institutionName IS NULL OR v_institutionName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' institution is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_universityMarks IS NULL OR v_universityMarks = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' marks/grade is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            IF v_year IS NOT NULL AND (NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;

            SELECT institutionId INTO v_institutionId FROM institutions WHERE institutionName = v_institutionName LIMIT 1;
            IF v_institutionId IS NULL THEN
                INSERT INTO institutions (institutionName) VALUES (v_institutionName);
                SET v_institutionId = LAST_INSERT_ID();
            END IF;

            SELECT subjectId INTO v_subjectId FROM university_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                INSERT INTO university_subjects (subjectName) VALUES (v_subjectName);
                SET v_subjectId = LAST_INSERT_ID();
            END IF;

            INSERT INTO tblUniversitySubjects (subjectId, institutionId, marks, year)
            VALUES (v_subjectId, v_institutionId, v_universityMarks, v_year);

            SET v_i_university = v_i_university + 1;
        END WHILE;
    END IF;

    -- Insert or Update main education_information
    IF p_saveType = 'I' THEN
        IF EXISTS (SELECT 1 FROM education_information WHERE patientId = p_patientId) THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Education information already exists.';
            ROLLBACK;
            LEAVE sp;
        END IF;

        INSERT INTO education_information (
            patientId, educationYears, isScholarship, isOL, isAL, isUniversity,
            remarkOL, remarkAL, alStreamId, remarkUniversity,isEdexcel, isCambridge
        ) VALUES (
            p_patientId, p_educationYears, p_isScholarship, p_isOL, p_isAL, p_isUniversity,
            p_olRemark, p_alRemark, v_alStreamId, p_universityRemark,p_isEdexcel, p_isCambridge
        );

        SET v_educationInfoId = LAST_INSERT_ID();
        SET p_educationInfoId = v_educationInfoId;

                
    ELSEIF p_saveType = 'U' THEN
        SELECT educationInfoId INTO v_educationInfoId FROM education_information WHERE patientId = p_patientId;
        IF v_educationInfoId IS NULL THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Education information does not exist for update.';
            ROLLBACK;
            LEAVE sp;
        END IF;

        UPDATE education_information
        SET educationYears = p_educationYears,
            isScholarship = p_isScholarship,
            isOL = p_isOL,
            isAL = p_isAL,
            isUniversity = p_isUniversity,
            remarkOL = p_olRemark,
            remarkAL = p_alRemark,
            alStreamId = v_alStreamId,
            remarkUniversity = p_universityRemark,
            isEdexcel = p_isEdexcel,
             isCambridge = p_isCambridge,
            modifiedDate = CURRENT_TIMESTAMP
        WHERE educationInfoId = v_educationInfoId;


        SET p_educationInfoId = v_educationInfoId;
    END IF;

    -- Scholarship logic
    IF p_isScholarship = 1 THEN
        IF p_scholarshipMarks IS NULL OR p_scholarshipMarks < 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Scholarship marks must be a valid non-negative number';
            ROLLBACK;
            LEAVE sp;
        END IF;

        IF p_schoolAdmitted IS NULL OR p_schoolAdmitted = '' THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'School admitted is required for scholarship';
            ROLLBACK;
            LEAVE sp;
        END IF;

        IF EXISTS (SELECT 1 FROM education_scholarship WHERE educationInfoId = v_educationInfoId) THEN
            UPDATE education_scholarship
            SET marks = p_scholarshipMarks,
                schoolAdmitted = p_schoolAdmitted,
                isPass = p_isScholarshipPassed,
                remark = p_scholarshipRemark,
                modifiedDate = CURRENT_TIMESTAMP
            WHERE educationInfoId = v_educationInfoId;
        ELSE
            INSERT INTO education_scholarship (educationInfoId, marks, schoolAdmitted, isPass, remark)
            VALUES (v_educationInfoId, p_scholarshipMarks, p_schoolAdmitted, p_isScholarshipPassed, p_scholarshipRemark);
        END IF;
    ELSE
        DELETE FROM education_scholarship WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- O/L subjects sync
    IF p_isOL = 1 THEN
        DELETE eol FROM education_ol eol
        LEFT JOIN tblOLSubjects tmp ON eol.subjectId = tmp.subjectId AND eol.year = tmp.year
        WHERE tmp.subjectId IS NULL AND eol.educationInfoId = v_educationInfoId;

        INSERT INTO education_ol (educationInfoId, subjectId, marks, year)
        SELECT v_educationInfoId, tmp.subjectId, tmp.marks, tmp.year
        FROM tblOLSubjects tmp
        LEFT JOIN education_ol eol ON eol.subjectId = tmp.subjectId AND eol.year = tmp.year AND eol.educationInfoId = v_educationInfoId
        WHERE eol.subjectId IS NULL;

        UPDATE education_ol AS eol
        INNER JOIN tblOLSubjects AS tmp ON eol.subjectId = tmp.subjectId AND eol.year = tmp.year
        SET eol.marks = tmp.marks
        WHERE eol.educationInfoId = v_educationInfoId;
    ELSE
        DELETE FROM education_ol WHERE educationInfoId = v_educationInfoId;
        UPDATE education_information SET remarkOL = NULL WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- A/L subjects sync
    IF p_isAL = 1 THEN
        DELETE eal FROM education_al eal
        LEFT JOIN tblALSubjects tmp ON eal.subjectId = tmp.subjectId AND eal.year = tmp.year
        WHERE tmp.subjectId IS NULL AND eal.educationInfoId = v_educationInfoId;

        INSERT INTO education_al (educationInfoId, subjectId, marks, year)
        SELECT v_educationInfoId, tmp.subjectId, tmp.marks, tmp.year
        FROM tblALSubjects tmp
        LEFT JOIN education_al eal ON eal.subjectId = tmp.subjectId AND eal.year = tmp.year AND eal.educationInfoId = v_educationInfoId
        WHERE eal.subjectId IS NULL;

        UPDATE education_al AS eal
        INNER JOIN tblALSubjects AS tmp ON eal.subjectId = tmp.subjectId AND eal.year = tmp.year
        SET eal.marks = tmp.marks
        WHERE eal.educationInfoId = v_educationInfoId;
    ELSE
        DELETE FROM education_al WHERE educationInfoId = v_educationInfoId;
        UPDATE education_information SET remarkAL = NULL WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- University subjects sync
    IF p_isUniversity = 1 THEN
        DELETE eun FROM education_university eun
        LEFT JOIN tblUniversitySubjects tmp ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year
        WHERE tmp.subjectId IS NULL AND eun.educationInfoId = v_educationInfoId;

        INSERT INTO education_university (educationInfoId, subjectId, institutionId, marks, year)
        SELECT v_educationInfoId, tmp.subjectId, tmp.institutionId, tmp.marks, tmp.year
        FROM tblUniversitySubjects tmp
        LEFT JOIN education_university eun ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year AND eun.educationInfoId = v_educationInfoId
        WHERE eun.subjectId IS NULL;

        UPDATE education_university AS eun
        INNER JOIN tblUniversitySubjects AS tmp ON eun.subjectId = tmp.subjectId AND eun.institutionId = tmp.institutionId AND eun.year = tmp.year
        SET eun.marks = tmp.marks
        WHERE eun.educationInfoId = v_educationInfoId;
    ELSE
        DELETE FROM education_university WHERE educationInfoId = v_educationInfoId;
        UPDATE education_information SET remarkUniversity = NULL WHERE educationInfoId = v_educationInfoId;
    END IF;

    -- Final success
    SET p_responseStatus = 'success';
    SET p_outputMessage = 'Education data saved successfully';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `family_information_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `family_information_insert_update`(
    IN p_patientId INT,
    IN p_spouseOccupation VARCHAR(100),
    IN p_spouseOccupationFullTime VARCHAR(20),
    IN p_motherAge INT,
    IN p_ageWhenMotherDied INT,
    IN p_fatherAge INT,
    IN p_ageWhenFatherDied INT,
    IN p_motherOccupation VARCHAR(100),
    IN p_fatherOccupation VARCHAR(100),
    IN p_motherReligion VARCHAR(50),
    IN p_fatherReligion VARCHAR(50),
    IN p_raisedBy TEXT, -- Changed to TEXT to handle JSON
    IN p_motherDescription TEXT, -- Already TEXT, suitable for JSON
    IN p_fatherDescription TEXT, -- Already TEXT, suitable for JSON
    IN p_parentalSeparationAge INT,
    IN p_parentalDivorceAge INT,
    IN p_motherDivorceCount INT,
    IN p_fatherDivorceCount INT,
    IN p_livingBrothers INT,
    IN p_livingSisters INT,
    IN p_brothersAges VARCHAR(50),
    IN p_sistersAges VARCHAR(50),
    IN p_childNumber INT,
    IN p_familyChildren INT,
    IN p_adopted VARCHAR(10),
    IN p_brotherDisturbances TEXT,
    IN p_sisterDisturbances TEXT,
    IN p_maleRelativesDisturbed INT,
    IN p_maleRelativesHospitalized INT,
    IN p_femaleRelativesDisturbed INT,
    IN p_femaleRelativesHospitalized INT,
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputPatientId INT,
    OUT p_patientNo VARCHAR(50)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    DECLARE v_raisedByCount INT;
    DECLARE v_motherDescCount INT;
    DECLARE v_fatherDescCount INT;
    DECLARE v_i_raisedBy INT DEFAULT 0;
    DECLARE v_i_motherDesc INT DEFAULT 0;
    DECLARE v_i_fatherDesc INT DEFAULT 0;
    DECLARE v_raisedByName VARCHAR(100);
    DECLARE v_motherDescName TEXT;
    DECLARE v_fatherDescName TEXT;
    DECLARE v_raisedByConcat TEXT DEFAULT '';
    DECLARE v_motherDescConcat TEXT DEFAULT '';
    DECLARE v_fatherDescConcat TEXT DEFAULT '';

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
    
    START TRANSACTION;
    
    -- Validate saveType
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate patientId
    IF p_patientId IS NULL OR p_patientId < 1 THEN
        SET p_outputMessage = 'Invalid patientId.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Process raisedBy JSON
    SET v_raisedByCount = JSON_LENGTH(p_raisedBy);
    IF v_raisedByCount > 0 THEN
        WHILE v_i_raisedBy < v_raisedByCount DO
            SET v_raisedByName = JSON_UNQUOTE(JSON_EXTRACT(p_raisedBy, CONCAT('$[', v_i_raisedBy, '].name')));
            
            IF v_raisedByName IS NULL OR TRIM(v_raisedByName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Raised By entry ', v_i_raisedBy + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            
            -- Check for duplicates in raisedBy
            IF FIND_IN_SET(v_raisedByName, REPLACE(v_raisedByConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate raised by entry "', v_raisedByName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            
            -- Concatenate raisedByName
            IF v_i_raisedBy = 0 THEN
                SET v_raisedByConcat = v_raisedByName;
            ELSE
                SET v_raisedByConcat = CONCAT(v_raisedByConcat, ';;', v_raisedByName);
            END IF;
            
            SET v_i_raisedBy = v_i_raisedBy + 1;
        END WHILE;
    ELSE
        SET p_outputMessage = 'Raised By is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Process motherDescription JSON
    SET v_motherDescCount = JSON_LENGTH(p_motherDescription);
    IF v_motherDescCount > 0 THEN
        WHILE v_i_motherDesc < v_motherDescCount DO
            SET v_motherDescName = JSON_UNQUOTE(JSON_EXTRACT(p_motherDescription, CONCAT('$[', v_i_motherDesc, '].name')));
            
            IF v_motherDescName IS NULL OR TRIM(v_motherDescName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Mother Description entry ', v_i_motherDesc + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            
            -- Check for duplicates in motherDescription
            IF FIND_IN_SET(v_motherDescName, REPLACE(v_motherDescConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate mother description entry "', v_motherDescName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            
            -- Concatenate motherDescName
            IF v_i_motherDesc = 0 THEN
                SET v_motherDescConcat = v_motherDescName;
            ELSE
                SET v_motherDescConcat = CONCAT(v_motherDescConcat, ';;', v_motherDescName);
            END IF;
            
            SET v_i_motherDesc = v_i_motherDesc + 1;
        END WHILE;
    ELSE
        SET p_outputMessage = 'Mother Description is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Process fatherDescription JSON
    SET v_fatherDescCount = JSON_LENGTH(p_fatherDescription);
    IF v_fatherDescCount > 0 THEN
        WHILE v_i_fatherDesc < v_fatherDescCount DO
            SET v_fatherDescName = JSON_UNQUOTE(JSON_EXTRACT(p_fatherDescription, CONCAT('$[', v_i_fatherDesc, '].name')));
            
            IF v_fatherDescName IS NULL OR TRIM(v_fatherDescName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Father Description entry ', v_i_fatherDesc + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            
            -- Check for duplicates in fatherDescription
            IF FIND_IN_SET(v_fatherDescName, REPLACE(v_fatherDescConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate father description entry "', v_fatherDescName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            
            -- Concatenate fatherDescName
            IF v_i_fatherDesc = 0 THEN
                SET v_fatherDescConcat = v_fatherDescName;
            ELSE
                SET v_fatherDescConcat = CONCAT(v_fatherDescConcat, ';;', v_fatherDescName);
            END IF;
            
            SET v_i_fatherDesc = v_i_fatherDesc + 1;
        END WHILE;
    ELSE
        SET p_outputMessage = 'Father Description is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Existing validations for other parameters
    IF p_motherAge IS NULL THEN
        SET p_outputMessage = 'Mother Age is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_fatherAge IS NULL THEN
        SET p_outputMessage = 'Father Age is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_motherOccupation IS NULL OR TRIM(p_motherOccupation) = '' THEN
        SET p_outputMessage = 'Mother Occupation is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_fatherOccupation IS NULL OR TRIM(p_fatherOccupation) = '' THEN
        SET p_outputMessage = 'Father Occupation is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_motherReligion IS NULL OR TRIM(p_motherReligion) = '' THEN
        SET p_outputMessage = 'Mother Religion is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_fatherReligion IS NULL OR TRIM(p_fatherReligion) = '' THEN
        SET p_outputMessage = 'Father Religion is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_motherDivorceCount IS NULL THEN
        SET p_outputMessage = 'Mother Divorce Count is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_fatherDivorceCount IS NULL THEN
        SET p_outputMessage = 'Father Divorce Count is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_livingBrothers IS NULL THEN
        SET p_outputMessage = 'Living Brothers is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_livingSisters IS NULL THEN
        SET p_outputMessage = 'Living Sisters is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_brothersAges IS NULL OR TRIM(p_brothersAges) = '' THEN
        SET p_outputMessage = 'Brothers Ages is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_sistersAges IS NULL OR TRIM(p_sistersAges) = '' THEN
        SET p_outputMessage = 'Sisters Ages is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_childNumber IS NULL THEN
        SET p_outputMessage = 'Child Number is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_familyChildren IS NULL THEN
        SET p_outputMessage = 'Family Children is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_adopted IS NULL OR TRIM(p_adopted) = '' THEN
        SET p_outputMessage = 'Adopted is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_brotherDisturbances IS NULL OR TRIM(p_brotherDisturbances) = '' THEN
        SET p_outputMessage = 'Brother Disturbances is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_sisterDisturbances IS NULL OR TRIM(p_sisterDisturbances) = '' THEN
        SET p_outputMessage = 'Sister Disturbances is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_maleRelativesDisturbed IS NULL THEN
        SET p_outputMessage = 'Male Relatives Disturbed is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_maleRelativesHospitalized IS NULL THEN
        SET p_outputMessage = 'Male Relatives Hospitalized is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_femaleRelativesDisturbed IS NULL THEN
        SET p_outputMessage = 'Female Relatives Disturbed is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_femaleRelativesHospitalized IS NULL THEN
        SET p_outputMessage = 'Female Relatives Hospitalized is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Numeric validations
    IF p_motherAge IS NOT NULL AND p_motherAge < 0 THEN
        SET p_outputMessage = 'Mother Age must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_ageWhenMotherDied IS NOT NULL AND p_ageWhenMotherDied < 0 THEN
        SET p_outputMessage = 'Age When Mother Died must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_fatherAge IS NOT NULL AND p_fatherAge < 0 THEN
        SET p_outputMessage = 'Father Age must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_ageWhenFatherDied IS NOT NULL AND p_ageWhenFatherDied < 0 THEN
        SET p_outputMessage = 'Age When Father Died must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_parentalSeparationAge IS NOT NULL AND p_parentalSeparationAge < 0 THEN
        SET p_outputMessage = 'Parental Separation Age must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_parentalDivorceAge IS NOT NULL AND p_parentalDivorceAge < 0 THEN
        SET p_outputMessage = 'Parental Divorce Age must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_motherDivorceCount < 0 THEN
        SET p_outputMessage = 'Mother Divorce Count must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_fatherDivorceCount < 0 THEN
        SET p_outputMessage = 'Father Divorce Count must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_livingBrothers < 0 THEN
        SET p_outputMessage = 'Living Brothers must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_livingSisters < 0 THEN
        SET p_outputMessage = 'Living Sisters must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_childNumber < 0 THEN
        SET p_outputMessage = 'Child Number must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_familyChildren < 0 THEN
        SET p_outputMessage = 'Family Children must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_maleRelativesDisturbed < 0 THEN
        SET p_outputMessage = 'Male Relatives Disturbed must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_maleRelativesHospitalized < 0 THEN
        SET p_outputMessage = 'Male Relatives Hospitalized must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_femaleRelativesDisturbed < 0 THEN
        SET p_outputMessage = 'Female Relatives Disturbed must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_femaleRelativesHospitalized < 0 THEN
        SET p_outputMessage = 'Female Relatives Hospitalized must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_spouseOccupation IS NOT NULL AND TRIM(p_spouseOccupation) != '' 
       AND (p_spouseOccupationFullTime IS NULL OR TRIM(p_spouseOccupationFullTime) = '') THEN
        SET p_outputMessage = 'Spouse Occupation Full Time is required when Spouse Occupation is provided.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    SET p_patientNo = (SELECT patientNo FROM patient_registration WHERE patientId = p_patientId);
    
    IF p_saveType = 'I' THEN
        IF EXISTS (SELECT * FROM family_information WHERE patientId = p_patientId) THEN 
            SET p_outputMessage = 'Family information already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        INSERT INTO family_information (
            patientId, spouseOccupation, spouseOccupationFullTime,
            motherAge, ageWhenMotherDied, fatherAge, ageWhenFatherDied,
            motherOccupation, fatherOccupation, motherReligion, fatherReligion,
            raisedBy, motherDescription, fatherDescription, parentalSeparationAge,
            parentalDivorceAge, motherDivorceCount, fatherDivorceCount,
            livingBrothers, livingSisters, brothersAges, sistersAges,
            childNumber, familyChildren, adopted, brotherDisturbances,
            sisterDisturbances, maleRelativesDisturbed, maleRelativesHospitalized,
            femaleRelativesDisturbed, femaleRelativesHospitalized
        ) VALUES (
            p_patientId, p_spouseOccupation, p_spouseOccupationFullTime,
            p_motherAge, p_ageWhenMotherDied, p_fatherAge, p_ageWhenFatherDied,
            p_motherOccupation, p_fatherOccupation, p_motherReligion, p_fatherReligion,
            v_raisedByConcat, v_motherDescConcat, v_fatherDescConcat, p_parentalSeparationAge,p_parentalDivorceAge,
            p_motherDivorceCount, p_fatherDivorceCount,
            p_livingBrothers, p_livingSisters, p_brothersAges, p_sistersAges,
            p_childNumber, p_familyChildren, p_adopted, p_brotherDisturbances,
            p_sisterDisturbances, p_maleRelativesDisturbed, p_maleRelativesHospitalized,
            p_femaleRelativesDisturbed, p_femaleRelativesHospitalized
        );
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Family information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        IF NOT EXISTS (SELECT * FROM family_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Family information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        UPDATE family_information
        SET
            spouseOccupation = p_spouseOccupation,
            spouseOccupationFullTime = p_spouseOccupationFullTime,
            motherAge = p_motherAge,
            ageWhenMotherDied = p_ageWhenMotherDied,
            fatherAge = p_fatherAge,
            ageWhenFatherDied = p_ageWhenFatherDied,
            motherOccupation = p_motherOccupation,
            fatherOccupation = p_fatherOccupation,
            motherReligion = p_motherReligion,
            fatherReligion = p_fatherReligion,
            raisedBy = v_raisedByConcat,
            motherDescription = v_motherDescConcat,
            fatherDescription = v_fatherDescConcat,
            parentalSeparationAge = p_parentalSeparationAge,
            parentalDivorceAge = p_parentalDivorceAge,
            motherDivorceCount = p_motherDivorceCount,
            fatherDivorceCount = p_fatherDivorceCount,
            livingBrothers = p_livingBrothers,
            livingSisters = p_livingSisters,
            brothersAges = p_brothersAges,
            sistersAges = p_sistersAges,
            childNumber = p_childNumber,
            familyChildren = p_familyChildren,
            adopted = p_adopted,
            brotherDisturbances = p_brotherDisturbances,
            sisterDisturbances = p_sisterDisturbances,
            maleRelativesDisturbed = p_maleRelativesDisturbed,
            maleRelativesHospitalized = p_maleRelativesHospitalized,
            femaleRelativesDisturbed = p_femaleRelativesDisturbed,
            femaleRelativesHospitalized = p_femaleRelativesHospitalized
        WHERE patientId = p_patientId;
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Family information updated successfully.';
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `family_patient_registration_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `family_patient_registration_insert_update`(
    IN p_patientId INT,
    IN p_husbandFirstName VARCHAR(50),
    IN p_husbandLastName VARCHAR(50),
    IN p_husbandMiddleName VARCHAR(50),
    IN p_husbandDateOfBirth DATE,
    IN p_husbandAge INT,
    IN p_husbandGender VARCHAR(10),
    IN p_husbandEmail VARCHAR(100),
    IN p_husbandHomePhone VARCHAR(20),
    IN p_husbandMobilePhone VARCHAR(20),
    IN p_husbandPermanentAddress VARCHAR(200),
    IN p_wifeFirstName VARCHAR(50),
    IN p_wifeLastName VARCHAR(50),
    IN p_wifeMiddleName VARCHAR(50),
    IN p_wifeDateOfBirth DATE,
    IN p_wifeAge INT,
    IN p_wifeGender VARCHAR(10),
    IN p_wifeEmail VARCHAR(100),
    IN p_wifeHomePhone VARCHAR(20),
    IN p_wifeMobilePhone VARCHAR(20),
    IN p_wifePermanentAddress VARCHAR(200),
    IN p_referralSource VARCHAR(50),
    IN p_referralSourceOther VARCHAR(50),
    IN p_referralPartyPresent BOOLEAN,
    IN p_patientTypeId INT,
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_patientNo VARCHAR(50),
    OUT p_outputPatientId INT
)
sp: BEGIN
    DECLARE v_patientId INT;
    DECLARE err_message VARCHAR(255);
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SET p_responseStatus = 'failed';
        SET p_outputMessage = err_message;
    END;
    
    START TRANSACTION;
    
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_patientTypeId != 3 THEN
        SET p_outputMessage = 'Invalid patientTypeId for family patient. Must be 3.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_saveType = 'I' THEN
        -- Validate husband details
        IF p_husbandEmail IS NOT NULL AND p_husbandEmail != '' AND EXISTS (
            SELECT 1 FROM familypatients WHERE husbandEmail = p_husbandEmail
        ) THEN
            SET p_outputMessage = 'Husband email already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_wifeEmail IS NOT NULL AND p_wifeEmail != '' AND EXISTS (
            SELECT 1 FROM familypatients WHERE wifeEmail = p_wifeEmail
        ) THEN
            SET p_outputMessage = 'Wife email already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandDateOfBirth IS NULL THEN
            SET p_outputMessage = 'Husband date of birth is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandFirstName IS NULL OR p_husbandFirstName = '' THEN
            SET p_outputMessage = 'Husband first name is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandLastName IS NULL OR p_husbandLastName = '' THEN
            SET p_outputMessage = 'Husband last name is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandGender IS NULL OR p_husbandGender = '' THEN
            SET p_outputMessage = 'Husband gender is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandPermanentAddress IS NULL OR p_husbandPermanentAddress = '' THEN
            SET p_outputMessage = 'Husband permanent address is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandHomePhone IS NULL OR p_husbandHomePhone = '' THEN
            SET p_outputMessage = 'Husband home phone is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Insert into patient_registration using husband's details as primary
        INSERT INTO patient_registration (
            referralSource, referralSourceOther, referralPartyPresent,
            formDate, lastModified, patientTypeId
        ) VALUES (
            p_referralSource, CASE WHEN p_referralSource != 'other' THEN '' ELSE p_referralSourceOther END,
            p_referralPartyPresent, CURDATE(), NOW(), p_patientTypeId
        );
        
        SET v_patientId = LAST_INSERT_ID();
        
        -- Insert into familypatients
        INSERT INTO familypatients (
            patientId, husbandFirstName, husbandLastName, husbandMiddleName, husbandDateOfBirth,
            husbandAge, husbandGender, husbandEmail, husbandHomePhone, husbandMobilePhone,
            husbandPermanentAddress, wifeFirstName, wifeLastName, wifeMiddleName,
            wifeDateOfBirth, wifeAge, wifeGender, wifeEmail, wifeHomePhone,
            wifeMobilePhone, wifePermanentAddress, formDate, lastModified
        ) VALUES (
            v_patientId, p_husbandFirstName, p_husbandLastName, p_husbandMiddleName, p_husbandDateOfBirth,
            p_husbandAge, p_husbandGender, p_husbandEmail, p_husbandHomePhone, p_husbandMobilePhone,
            p_husbandPermanentAddress, p_wifeFirstName, p_wifeLastName, p_wifeMiddleName,
            p_wifeDateOfBirth, p_wifeAge, p_wifeGender, p_wifeEmail, p_wifeHomePhone,
            p_wifeMobilePhone, p_wifePermanentAddress, CURDATE(), NOW()
        );
        
        -- Generate patientNo
        SET p_patientNo = CONCAT('P', LPAD(v_patientId, 4, '0'));
        UPDATE patient_registration SET patientNo = p_patientNo WHERE patientId = v_patientId;
        
        SET p_outputPatientId = v_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Family patient registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        -- Validate patientId
        IF p_patientId IS NULL OR p_patientId < 1 THEN
            SET p_outputMessage = 'Invalid patientId.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF NOT EXISTS (SELECT 1 FROM familypatients WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Family patient does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Validate husband details
        IF p_husbandDateOfBirth IS NULL THEN
            SET p_outputMessage = 'Husband date of birth is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandFirstName IS NULL OR p_husbandFirstName = '' THEN
            SET p_outputMessage = 'Husband first name is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandLastName IS NULL OR p_husbandLastName = '' THEN
            SET p_outputMessage = 'Husband last name is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandGender IS NULL OR p_husbandGender = '' THEN
            SET p_outputMessage = 'Husband gender is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandPermanentAddress IS NULL OR p_husbandPermanentAddress = '' THEN
            SET p_outputMessage = 'Husband permanent address is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandHomePhone IS NULL OR p_husbandHomePhone = '' THEN
            SET p_outputMessage = 'Husband home phone is required.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_husbandEmail IS NOT NULL AND p_husbandEmail != '' AND EXISTS (
            SELECT 1 FROM familypatients WHERE husbandEmail = p_husbandEmail AND patientId != p_patientId
        ) THEN
            SET p_outputMessage = 'Husband email already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_wifeEmail IS NOT NULL AND p_wifeEmail != '' AND EXISTS (
            SELECT 1 FROM familypatients WHERE wifeEmail = p_wifeEmail AND patientId != p_patientId
        ) THEN
            SET p_outputMessage = 'Wife email already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Update patient_registration
        UPDATE patient_registration
        SET
            referralSource = p_referralSource,
            referralSourceOther = CASE WHEN p_referralSource != 'other' THEN '' ELSE p_referralSourceOther END,
            referralPartyPresent = p_referralPartyPresent,
            lastModified = NOW()
        WHERE patientId = p_patientId;
        
        -- Update familypatients
        UPDATE familypatients
        SET
            husbandFirstName = p_husbandFirstName,
            husbandLastName = p_husbandLastName,
            husbandMiddleName = p_husbandMiddleName,
            husbandDateOfBirth = p_husbandDateOfBirth,
            husbandAge = p_husbandAge,
            husbandGender = p_husbandGender,
            husbandEmail = p_husbandEmail,
            husbandHomePhone = p_husbandHomePhone,
            husbandMobilePhone = p_husbandMobilePhone,
            husbandPermanentAddress = p_husbandPermanentAddress,
            wifeFirstName = p_wifeFirstName,
            wifeLastName = p_wifeLastName,
            wifeMiddleName = p_wifeMiddleName,
            wifeDateOfBirth = p_wifeDateOfBirth,
            wifeAge = p_wifeAge,
            wifeGender = p_wifeGender,
            wifeEmail = p_wifeEmail,
            wifeHomePhone = p_wifeHomePhone,
            wifeMobilePhone = p_wifeMobilePhone,
            wifePermanentAddress = p_wifePermanentAddress,
            lastModified = NOW()
        WHERE patientId = p_patientId;
        
        SET p_patientNo = (SELECT patientNo FROM patient_registration WHERE patientId = p_patientId);
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Family patient updated successfully.';
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPatientBasicInfoByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPatientBasicInfoByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    DECLARE _query VARCHAR(2000);
    DECLARE _patientTypeId INT;

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO _patientTypeId
    FROM patient_registration 
    WHERE patientId = p_patientId;

    IF _patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('No patient found with patientId: ', p_patientId);
        LEAVE sp;
    END IF;

    -- Construct query based on patientTypeId
    IF _patientTypeId = 3 THEN
        -- Query for familypatients
        SET @_query = CONCAT('
            SELECT 
                pr.patientId,
                pr.patientNo,
                fp.husbandFirstName,
                fp.husbandLastName,
                fp.husbandMiddleName,
                fp.husbandDateOfBirth,
                fp.husbandAge,
                fp.husbandGender,
                fp.husbandEmail,
                fp.husbandHomePhone,
                fp.husbandMobilePhone,
                fp.husbandPermanentAddress,
                fp.wifeFirstName,
                fp.wifeLastName,
                fp.wifeMiddleName,
                fp.wifeDateOfBirth,
                fp.wifeAge,
                fp.wifeGender,
                fp.wifeEmail,
                fp.wifeHomePhone,
                fp.wifeMobilePhone,
                fp.wifePermanentAddress,
                pr.referralSource,
                pr.referralSourceOther,
                CASE WHEN pr.referralPartyPresent = 1 THEN TRUE ELSE FALSE END AS referralPartyPresent,
                pr.formDate,
                pr.lastModified
            FROM 
                patient_registration pr
                LEFT JOIN familypatients fp ON pr.patientId = fp.patientId
            WHERE 
                pr.patientId = ', p_patientId
        );
    ELSE
        -- Query for singlepatients
        SET @_query = CONCAT('
            SELECT 
                pr.patientId,
                pr.patientNo,
                sp.firstName,
                sp.lastName,
                sp.middleName,
                sp.dateOfBirth,
                TIMESTAMPDIFF(YEAR, sp.dateOfBirth, CURDATE()) AS age,
                sp.gender,
                sp.email,
                sp.homePhone,
                sp.businessPhone,
                sp.mobilePhone,
                sp.permanentAddress,
                pr.referralSource,
                pr.referralSourceOther,
                CASE WHEN pr.referralPartyPresent = 1 THEN TRUE ELSE FALSE END AS referralPartyPresent,
                pr.formDate,
                pr.lastModified
            FROM 
                patient_registration pr
                LEFT JOIN singlepatients sp ON pr.patientId = sp.patientId
            WHERE 
                pr.patientId = ', p_patientId
        );
    END IF;

    -- Execute dynamic query
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Set success response
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Patient data retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPatientBasicInfoByPatientId_notinuse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPatientBasicInfoByPatientId_notinuse`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    DECLARE _query VARCHAR(1000);

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists
    IF NOT EXISTS (SELECT 1 FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('No patient found with patientId: ', p_patientId);
        LEAVE sp;
    END IF;

    -- Construct query with age calculation
    SET @_query = CONCAT('
        SELECT 
            patientId,
            patientNo,
            firstName,
            lastName,
            middleName,
            dateOfBirth,
            TIMESTAMPDIFF(YEAR, dateOfBirth, CURDATE()) AS age,
            gender,
            email,
            homePhone,
            businessPhone,
            permanentAddress,
            referralSource,
referralSourceOther,
 CASE WHEN referralPartyPresent = 1 THEN TRUE ELSE FALSE END AS referralPartyPresent,
            formDate,
            lastModified
        FROM 
            patient_registration
        WHERE 
            patientId = ', p_patientId
    );

    -- Execute dynamic query
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Set success response
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Patient data retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProfileTabDetailsByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProfileTabDetailsByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_IsBasicInfo bit,
    OUT p_IsPersonalInfo bit,
    OUT p_IsFamilyInfo bit,
      OUT p_IsMedicalInfo bit,
        OUT p_IsEducationInfo bit,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    DECLARE _query VARCHAR(1000);

    set p_IsBasicInfo=0;
 	set p_IsPersonalInfo=0;
    set p_IsFamilyInfo=0;
    set p_IsMedicalInfo=0;
    set p_IsEducationInfo=0;
    

       if exists( SELECT  * FROM  patient_registration  WHERE  patientId = p_patientId) then	
	     set p_IsBasicInfo=1;   
         end if;
       
   if exists( SELECT  * FROM  personal_information  WHERE  patientId = p_patientId) then	
	     set p_IsPersonalInfo=1;   
             end if;
       
         if exists( SELECT  * FROM  family_information  WHERE  patientId = p_patientId) then	
	     set p_IsFamilyInfo=1;   
             end if;
       
         if exists( SELECT  * FROM  medical_information  WHERE  patientId = p_patientId) then 	
	     set p_IsMedicalInfo=1;   
              end if;
       
        if exists( SELECT  * FROM  education_information  WHERE  patientId = p_patientId) then
	     set p_IsEducationInfo=1;   
       end if;

       
    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Patient data retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_subject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_subject`(
    IN p_subjectName VARCHAR(50),
    IN p_subjectType VARCHAR(50),
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputSubjectId INT
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    DECLARE v_subjectId INT;


     DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    START TRANSACTION;

    -- Validate saveType
    IF p_subjectType NOT IN ('ol', 'al','university') THEN
        SET p_outputMessage = 'Invalid subject type';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;



    -- Get or create educationInfoId
    IF p_subjectType = 'ol' THEN
        IF EXISTS (SELECT * FROM ol_subjects WHERE subjectName = p_subjectName) THEN
            SET p_outputMessage = concat('The subject',p_subjectName,' for O/L already exists.');
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;

        INSERT INTO ol_subjects (subjectName) VALUES (p_subjectName);

        SET v_subjectId = LAST_INSERT_ID();
        SET p_outputSubjectId = v_subjectId;
    
         SET p_responseStatus = 'success';
         SET p_outputMessage = CONCAT('The subject for the O/L created successfully.');
        
    END IF;
    
      IF p_subjectType = 'al' THEN
      IF EXISTS (SELECT * FROM al_subjects WHERE subjectName = p_subjectName) THEN
            SET p_outputMessage = concat('The subject',p_subjectName,' for A/L already exists.');
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;

        INSERT INTO al_subjects (subjectName) VALUES (p_subjectName);

        SET v_subjectId = LAST_INSERT_ID();
        SET p_outputSubjectId = v_subjectId;
    
         SET p_responseStatus = 'success';
         SET p_outputMessage = CONCAT('The subject for the A/L created successfully.');
        
    END IF;
    
          IF p_subjectType = 'university' THEN
      IF EXISTS (SELECT * FROM university_subjects WHERE subjectName = p_subjectName) THEN
            SET p_outputMessage = concat('The subject',p_subjectName,' for university_subjects already exists.');
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;

        INSERT INTO university_subjects (subjectName) VALUES (p_subjectName);

        SET v_subjectId = LAST_INSERT_ID();
        SET p_outputSubjectId = v_subjectId;
    
         SET p_responseStatus = 'success';
         SET p_outputMessage = CONCAT('The subject for the university_subjects created successfully.');
        
    END IF;

   
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `medical_information_family_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `medical_information_family_insert_update`(
    IN p_patientId INT,
    IN p_physicalAilmentsHusband TEXT,
    IN p_physicalAilmentsWife TEXT,
    IN p_mainComplaintsHusband TEXT,
    IN p_mainComplaintsWife TEXT,
    IN p_worseConditionsHusband TEXT,
    IN p_worseConditionsWife TEXT,
    IN p_improvedConditionsHusband TEXT,
    IN p_improvedConditionsWife TEXT,
    IN p_isHistoryOfPsychiatricTreatmentsHusband BIT,
    IN p_isHistoryOfPsychiatricTreatmentsWife BIT,
    IN p_isPsychiatricHospitalizationHusband BIT,
    IN p_isPsychiatricHospitalizationWife BIT,
    IN p_historyOfMentalIllnessHusband TEXT,
    IN p_historyOfMentalIllnessWife TEXT,
    IN p_historyOfSubstanceAbuseHusband TEXT,
    IN p_historyOfSubstanceAbuseWife TEXT,
    IN p_historyOfACESHusband TEXT,
    IN p_historyOfACESWife TEXT,
    IN p_additionalInfoHusband TEXT,
    IN p_additionalInfoWife TEXT,
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputPatientId INT,
    OUT p_patientNo VARCHAR(50)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    
    
    
    DECLARE v_i_historyOfACESHusband INT DEFAULT 0;
    DECLARE v_noOfHistoryOfACESHusband INT;
    DECLARE v_historyOfACESNameHusband VARCHAR(255);
    DECLARE v_historyOfACESConcatHusband TEXT DEFAULT '';
    
    DECLARE v_i_historyOfACESWife INT DEFAULT 0;
    DECLARE v_noOfHistoryOfACESWife INT;
    DECLARE v_historyOfACESNameWife VARCHAR(255);
    DECLARE v_historyOfACESConcatWife TEXT DEFAULT '';

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
    
    START TRANSACTION;
    
    -- Validate save type
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate patientId
    IF p_patientId IS NULL OR p_patientId < 1 THEN
        SET p_outputMessage = 'Invalid patientId.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate patient existence
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate patient type
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId AND patientTypeId = 3) THEN
        SET p_outputMessage = 'Patient is not a family patient (patientTypeId must be 3).';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate required fields for Husband
    IF p_physicalAilmentsHusband IS NULL OR TRIM(p_physicalAilmentsHusband) = '' THEN
        SET p_outputMessage = 'Physical Ailments for Husband is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_mainComplaintsHusband IS NULL OR TRIM(p_mainComplaintsHusband) = '' THEN
        SET p_outputMessage = 'Main Complaints for Husband is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_isHistoryOfPsychiatricTreatmentsHusband IS NULL THEN
        SET p_outputMessage = 'History of Psychiatric Treatments for Husband is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_isPsychiatricHospitalizationHusband IS NULL THEN
        SET p_outputMessage = 'Psychiatric Hospitalization for Husband is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate required fields for Wife
    IF p_physicalAilmentsWife IS NULL OR TRIM(p_physicalAilmentsWife) = '' THEN
        SET p_outputMessage = 'Physical Ailments for Wife is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_mainComplaintsWife IS NULL OR TRIM(p_mainComplaintsWife) = '' THEN
        SET p_outputMessage = 'Main Complaints for Wife is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_isHistoryOfPsychiatricTreatmentsWife IS NULL THEN
        SET p_outputMessage = 'History of Psychiatric Treatments for Wife is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_isPsychiatricHospitalizationWife IS NULL THEN
        SET p_outputMessage = 'Psychiatric Hospitalization for Wife is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    


    -- Process historyOfACESHusband JSON
    SET v_noOfHistoryOfACESHusband = JSON_LENGTH(p_historyOfACESHusband);
    IF v_noOfHistoryOfACESHusband > 0 THEN
        WHILE v_i_historyOfACESHusband < v_noOfHistoryOfACESHusband DO
            SET v_historyOfACESNameHusband = JSON_UNQUOTE(JSON_EXTRACT(p_historyOfACESHusband, CONCAT('$[', v_i_historyOfACESHusband, '].name')));
            IF v_historyOfACESNameHusband IS NULL OR TRIM(v_historyOfACESNameHusband) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('ACES for Husband ', v_i_historyOfACESHusband + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_historyOfACESNameHusband, REPLACE(v_historyOfACESConcatHusband, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate ACES entry for Husband "', v_historyOfACESNameHusband, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_historyOfACESHusband = 0 THEN
                SET v_historyOfACESConcatHusband = v_historyOfACESNameHusband;
            ELSE
                SET v_historyOfACESConcatHusband = CONCAT(v_historyOfACESConcatHusband, ';;', v_historyOfACESNameHusband);
            END IF;
            SET v_i_historyOfACESHusband = v_i_historyOfACESHusband + 1;
        END WHILE;
    ELSE
        SET v_historyOfACESConcatHusband = p_historyOfACESHusband;
    END IF;
    
    -- Process historyOfACESWife JSON
    SET v_noOfHistoryOfACESWife = JSON_LENGTH(p_historyOfACESWife);
    IF v_noOfHistoryOfACESWife > 0 THEN
        WHILE v_i_historyOfACESWife < v_noOfHistoryOfACESWife DO
            SET v_historyOfACESNameWife = JSON_UNQUOTE(JSON_EXTRACT(p_historyOfACESWife, CONCAT('$[', v_i_historyOfACESWife, '].name')));
            IF v_historyOfACESNameWife IS NULL OR TRIM(v_historyOfACESNameWife) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('ACES for Wife ', v_i_historyOfACESWife + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_historyOfACESNameWife, REPLACE(v_historyOfACESConcatWife, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate ACES entry for Wife "', v_historyOfACESNameWife, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_historyOfACESWife = 0 THEN
                SET v_historyOfACESConcatWife = v_historyOfACESNameWife;
            ELSE
                SET v_historyOfACESConcatWife = CONCAT(v_historyOfACESConcatWife, ';;', v_historyOfACESNameWife);
            END IF;
            SET v_i_historyOfACESWife = v_i_historyOfACESWife + 1;
        END WHILE;
    ELSE
        SET v_historyOfACESConcatWife = p_historyOfACESWife;
    END IF;
    
    -- Get patientNo
    SET p_patientNo = (SELECT patientNo FROM patient_registration WHERE patientId = p_patientId);
    
    IF p_saveType = 'I' THEN
        IF EXISTS (SELECT * FROM medical_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Medical information already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        INSERT INTO medical_information (patientId)
        VALUES (p_patientId);
        
        SET @_medicalInfoId = LAST_INSERT_ID();
        
        INSERT INTO medical_information_family (
            medicalInfoId,
            physicalAilmentsHusband,
            physicalAilmentsWife,
            mainComplaintsHusband,
            mainComplaintsWife,
            worseConditionsHusband,
            worseConditionsWife,
            improvedConditionsHusband,
            improvedConditionsWife,
            isHistoryOfPsychiatricTreatmentsHusband,
            isHistoryOfPsychiatricTreatmentsWife,
            isPsychiatricHospitalizationHusband,
            isPsychiatricHospitalizationWife,
            historyOfMentalIllnessHusband,
            historyOfMentalIllnessWife,
            historyOfSubstanceAbuseHusband,
            historyOfSubstanceAbuseWife,
            historyOfACESHusband,
            historyOfACESWife,
            additionalInfoHusband,
            additionalInfoWife
        ) VALUES (
            @_medicalInfoId,
            p_physicalAilmentsHusband,  
            p_physicalAilmentsWife,   
            p_mainComplaintsHusband,p_mainComplaintsWife,
            p_worseConditionsHusband,
            p_worseConditionsWife,
            p_improvedConditionsHusband,
            p_improvedConditionsWife,
            p_isHistoryOfPsychiatricTreatmentsHusband,
            p_isHistoryOfPsychiatricTreatmentsWife,
            p_isPsychiatricHospitalizationHusband,
            p_isPsychiatricHospitalizationWife,
            p_historyOfMentalIllnessHusband,
            p_historyOfMentalIllnessWife,
            p_historyOfSubstanceAbuseHusband,p_historyOfSubstanceAbuseWife,
            v_historyOfACESConcatHusband,
            v_historyOfACESConcatWife,
            p_additionalInfoHusband,
            p_additionalInfoWife
        );
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Medical information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        IF NOT EXISTS (SELECT * FROM medical_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Medical information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        UPDATE medical_information
        SET modifiedDate = CURRENT_TIMESTAMP()
        WHERE patientId = p_patientId;
        
            
        
        UPDATE medical_information_family
        SET
            physicalAilmentsHusband = p_physicalAilmentsHusband,
            physicalAilmentsWife = p_physicalAilmentsWife,
            mainComplaintsHusband = p_mainComplaintsHusband,
            mainComplaintsWife = p_mainComplaintsWife,
            worseConditionsHusband = p_worseConditionsHusband,
            worseConditionsWife = p_worseConditionsWife,
            improvedConditionsHusband = p_improvedConditionsHusband,
            improvedConditionsWife = p_improvedConditionsWife,
            isHistoryOfPsychiatricTreatmentsHusband = p_isHistoryOfPsychiatricTreatmentsHusband,
            isHistoryOfPsychiatricTreatmentsWife = p_isHistoryOfPsychiatricTreatmentsWife,
            isPsychiatricHospitalizationHusband = p_isPsychiatricHospitalizationHusband,
            isPsychiatricHospitalizationWife = p_isPsychiatricHospitalizationWife,
            historyOfMentalIllnessHusband = p_historyOfMentalIllnessHusband,
            historyOfMentalIllnessWife = p_historyOfMentalIllnessWife,
            historyOfSubstanceAbuseHusband = p_historyOfSubstanceAbuseHusband,
            historyOfSubstanceAbuseWife = p_historyOfSubstanceAbuseWife,
            historyOfACESHusband = v_historyOfACESConcatHusband,
            historyOfACESWife = v_historyOfACESConcatWife,
            additionalInfoHusband = p_additionalInfoHusband,
            additionalInfoWife = p_additionalInfoWife
        WHERE medicalInfoId = (SELECT medicalInfoId FROM medical_information WHERE patientId = p_patientId);
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Medical information updated successfully.';
        
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `medical_information_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `medical_information_insert_update`(
    IN p_patientId INT,
    IN p_physicalAilments TEXT,
    IN p_mainComplaints TEXT,
    IN p_pastComplaints TEXT,
    IN p_worseConditions TEXT,
    IN p_improvedConditions TEXT,
    IN p_individualTherapyHours INT,
    IN p_individualTherapyYears INT,
    IN p_individualTherapyEndYears INT,
    IN p_groupTherapyHours INT,
    IN p_psychiatricHospitalizationMonths INT,
    IN p_currentTreatment VARCHAR(10),
    IN p_antidepressantsCount INT,
    IN p_psychotherapyType VARCHAR(100),
    IN p_additionalInfo TEXT,
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputPatientId INT,
    OUT p_patientNo VARCHAR(50)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
    
    START TRANSACTION;
    
    
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_patientId IS NULL OR p_patientId < 1 THEN
        SET p_outputMessage = 'Invalid patientId.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_physicalAilments IS NULL OR TRIM(p_physicalAilments) = '' THEN
        SET p_outputMessage = 'Physical Ailments is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_mainComplaints IS NULL OR TRIM(p_mainComplaints) = '' THEN
        SET p_outputMessage = 'Main Complaints is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_currentTreatment IS NULL OR TRIM(p_currentTreatment) = '' THEN
        SET p_outputMessage = 'Current Treatment is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_currentTreatment NOT IN ('Yes', 'No') THEN
        SET p_outputMessage = 'Current Treatment must be either "Yes" or "No".';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_individualTherapyHours IS NOT NULL AND p_individualTherapyHours < 0 THEN
        SET p_outputMessage = 'Individual Therapy Hours must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_individualTherapyYears IS NOT NULL AND p_individualTherapyYears < 0 THEN
        SET p_outputMessage = 'Individual Therapy Years must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_individualTherapyEndYears IS NOT NULL AND p_individualTherapyEndYears < 0 THEN
        SET p_outputMessage = 'Individual Therapy End Years must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_groupTherapyHours IS NOT NULL AND p_groupTherapyHours < 0 THEN
        SET p_outputMessage = 'Group Therapy Hours must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_psychiatricHospitalizationMonths IS NOT NULL AND p_psychiatricHospitalizationMonths < 0 THEN
        SET p_outputMessage = 'Psychiatric Hospitalization Months must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_antidepressantsCount IS NOT NULL AND p_antidepressantsCount < 0 THEN
        SET p_outputMessage = 'Antidepressants Count must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    SET p_patientNo = (SELECT patientNo FROM patient_registration WHERE patientId = p_patientId);
    
    IF p_saveType = 'I' then
    
    
       if exists (select * from medical_information where patientId=p_patientId) THEN
        SET p_outputMessage = 'Medical Information is already exists.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
       
       
        
        INSERT INTO medical_information (patientId) VALUES (p_patientId);
        
        set @_medicalInfoId=LAST_INSERT_ID();
        
           INSERT INTO medical_information_single (
            medicalInfoId, physicalAilments, mainComplaints, pastComplaints,
            worseConditions, improvedConditions, individualTherapyHours,
            individualTherapyYears, individualTherapyEndYears, groupTherapyHours,
            psychiatricHospitalizationMonths, currentTreatment, antidepressantsCount,
            psychotherapyType, additionalInfo
        ) VALUES (
            @_medicalInfoId, p_physicalAilments, p_mainComplaints, p_pastComplaints,
            p_worseConditions, p_improvedConditions, p_individualTherapyHours,
            p_individualTherapyYears, p_individualTherapyEndYears, p_groupTherapyHours,
            p_psychiatricHospitalizationMonths, p_currentTreatment, p_antidepressantsCount,
            p_psychotherapyType, p_additionalInfo
        );
           

        SET p_outputPatientId = p_patientId;
        
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Medical information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN

        
        
        IF NOT EXISTS (SELECT * FROM medical_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Medical information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        
        UPDATE medical_information_single
        SET
            physicalAilments = p_physicalAilments,
            mainComplaints = p_mainComplaints,
            pastComplaints = p_pastComplaints,
            worseConditions = p_worseConditions,
            improvedConditions = p_improvedConditions,
            individualTherapyHours = p_individualTherapyHours,
            individualTherapyYears = p_individualTherapyYears,
            individualTherapyEndYears = p_individualTherapyEndYears,
            groupTherapyHours = p_groupTherapyHours,
            psychiatricHospitalizationMonths = p_psychiatricHospitalizationMonths,
            currentTreatment = p_currentTreatment,
            antidepressantsCount = p_antidepressantsCount,
            psychotherapyType = p_psychotherapyType,
            additionalInfo = p_additionalInfo
        WHERE medicalInfoId =(select medicalInfoId from medical_information where patientId=p_patientId);
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Medical information updated successfully.';
        
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `medical_information_insert_update_notinuse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `medical_information_insert_update_notinuse`(
    IN p_patientId INT,
    IN p_physicalAilments TEXT,
    IN p_mainComplaints TEXT,
    IN p_pastComplaints TEXT,
    IN p_worseConditions TEXT,
    IN p_improvedConditions TEXT,
    IN p_individualTherapyHours INT,
    IN p_individualTherapyYears INT,
    IN p_individualTherapyEndYears INT,
    IN p_groupTherapyHours INT,
    IN p_psychiatricHospitalizationMonths INT,
    IN p_currentTreatment VARCHAR(10),
    IN p_antidepressantsCount INT,
    IN p_psychotherapyType VARCHAR(100),
    IN p_additionalInfo TEXT,
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputPatientId INT,
    OUT p_patientNo VARCHAR(50)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
    
    START TRANSACTION;
    
    
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_patientId IS NULL OR p_patientId < 1 THEN
        SET p_outputMessage = 'Invalid patientId.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_physicalAilments IS NULL OR TRIM(p_physicalAilments) = '' THEN
        SET p_outputMessage = 'Physical Ailments is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_mainComplaints IS NULL OR TRIM(p_mainComplaints) = '' THEN
        SET p_outputMessage = 'Main Complaints is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_currentTreatment IS NULL OR TRIM(p_currentTreatment) = '' THEN
        SET p_outputMessage = 'Current Treatment is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_currentTreatment NOT IN ('Yes', 'No') THEN
        SET p_outputMessage = 'Current Treatment must be either "Yes" or "No".';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_individualTherapyHours IS NOT NULL AND p_individualTherapyHours < 0 THEN
        SET p_outputMessage = 'Individual Therapy Hours must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_individualTherapyYears IS NOT NULL AND p_individualTherapyYears < 0 THEN
        SET p_outputMessage = 'Individual Therapy Years must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_individualTherapyEndYears IS NOT NULL AND p_individualTherapyEndYears < 0 THEN
        SET p_outputMessage = 'Individual Therapy End Years must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_groupTherapyHours IS NOT NULL AND p_groupTherapyHours < 0 THEN
        SET p_outputMessage = 'Group Therapy Hours must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_psychiatricHospitalizationMonths IS NOT NULL AND p_psychiatricHospitalizationMonths < 0 THEN
        SET p_outputMessage = 'Psychiatric Hospitalization Months must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_antidepressantsCount IS NOT NULL AND p_antidepressantsCount < 0 THEN
        SET p_outputMessage = 'Antidepressants Count must be a non-negative number.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    SET p_patientNo = (SELECT patientNo FROM patient_registration WHERE patientId = p_patientId);
    
    IF p_saveType = 'I' then
    
    
       if exists (select * from medical_information where patientId=p_patientId) THEN
        SET p_outputMessage = 'Medical Information is already exists.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
       
       
        
        INSERT INTO medical_information (
            patientId, physicalAilments, mainComplaints, pastComplaints,
            worseConditions, improvedConditions, individualTherapyHours,
            individualTherapyYears, individualTherapyEndYears, groupTherapyHours,
            psychiatricHospitalizationMonths, currentTreatment, antidepressantsCount,
            psychotherapyType, additionalInfo
        ) VALUES (
            p_patientId, p_physicalAilments, p_mainComplaints, p_pastComplaints,
            p_worseConditions, p_improvedConditions, p_individualTherapyHours,
            p_individualTherapyYears, p_individualTherapyEndYears, p_groupTherapyHours,
            p_psychiatricHospitalizationMonths, p_currentTreatment, p_antidepressantsCount,
            p_psychotherapyType, p_additionalInfo
        );
        

        SET p_outputPatientId = p_patientId;
        
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Medical information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN

        
        
        IF NOT EXISTS (SELECT * FROM medical_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Medical information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        
        UPDATE medical_information
        SET
            physicalAilments = p_physicalAilments,
            mainComplaints = p_mainComplaints,
            pastComplaints = p_pastComplaints,
            worseConditions = p_worseConditions,
            improvedConditions = p_improvedConditions,
            individualTherapyHours = p_individualTherapyHours,
            individualTherapyYears = p_individualTherapyYears,
            individualTherapyEndYears = p_individualTherapyEndYears,
            groupTherapyHours = p_groupTherapyHours,
            psychiatricHospitalizationMonths = p_psychiatricHospitalizationMonths,
            currentTreatment = p_currentTreatment,
            antidepressantsCount = p_antidepressantsCount,
            psychotherapyType = p_psychotherapyType,
            additionalInfo = p_additionalInfo
        WHERE patientId = p_patientId;
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Medical information updated successfully.';
        
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientALByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientALByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
     out p_patientTypeId int
)
sp: BEGIN

    
     DECLARE v_patientTypeId INT;

    -- Check if patientId is provided
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO v_patientTypeId FROM patient_registration WHERE patientId = p_patientId;

    IF v_patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'Patient not found.';
        LEAVE sp;
    END IF;

    if(v_patientTypeId!=3) then

    
    
SELECT 
    CAST(eis.isAL AS UNSIGNED) AS enabled,
    CASE 
        WHEN eis.isAL = 0 THEN JSON_ARRAY()
        ELSE JSON_ARRAYAGG(
            JSON_OBJECT(
                'name', COALESCE(als.subjectName, 'N/A'),
                'value', COALESCE(als.subjectId, 'N/A'),
                'marks', COALESCE(al.marks, 'N/A'),
                'year', COALESCE(al.year, 'N/A')
            )
        )
    END AS subjects,
    alst.streamName as alStreamName,
    alst.alStreamId,
    COALESCE(eis.remarkAL, '') AS remark
FROM 
    education_information ei inner join education_information_single eis on ei.educationInfoId=eis.educationInfoId
   LEFT JOIN  al_stream alst on eis.alStreamId=alst.alStreamId
LEFT JOIN 
    education_al al ON eis.educationInfoId = al.educationInfoId
LEFT JOIN 
    al_subjects als ON al.subjectId = als.subjectId
WHERE 
    ei.patientId = p_patientId
GROUP BY 
    ei.educationInfoId, ei.patientId, eis.isAL;
         
   else
   
SELECT 
    cast(eif.isALHusband AS UNSIGNED) AS enabledHusband,
    COALESCE(alstHus.streamName, '') AS alStreamNameHusband,
    eif.alStreamIdHusband,
    COALESCE(eif.remarkALHusband, '') AS remarkHusband,
    cast(eif.isALWife AS UNSIGNED) AS enabledWife,
    COALESCE(alstWif.streamName, '') AS alStreamNameWife,
    eif.alStreamIdWife,
    COALESCE(eif.remarkALWife, '') AS remarkWife
FROM 
    education_information ei 
    INNER JOIN education_information_family eif 
        ON ei.educationInfoId = eif.educationInfoId
    LEFT JOIN al_stream alstHus 
        ON eif.alStreamIdHusband = alstHus.alStreamId
    LEFT JOIN al_stream alstWif 
        ON eif.alStreamIdWife = alstWif.alStreamId
WHERE 
    ei.patientId = p_patientId;
   

end if;
   
   set p_patientTypeId= v_patientTypeId;
    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'A/L data retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientEducationInfoByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientEducationInfoByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE _patientTypeId INT;

    -- Check if patientId is provided
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO _patientTypeId
    FROM patient_registration 
    WHERE patientId = p_patientId;

    IF _patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'Patient not found.';
        LEAVE sp;
    END IF;

    -- Query for single patient (patientTypeId != 3)
    IF _patientTypeId != 3 THEN
      
SELECT 
    ei.patientId,
    ei.educationYears,
    COALESCE(ei.isScholarship, 0) AS scholarship_enabled,
    COALESCE(es.marks, '') AS scholarship_marks,
    COALESCE(es.schoolAdmitted, '') AS scholarship_schoolAdmitted,
    CASE WHEN es.isPass = 1 THEN 'Pass' ELSE '' END AS scholarship_result,
    COALESCE(es.remark, '') AS scholarship_remark,
    COALESCE(ei.isOL, 0) AS ol_enabled,
    JSON_ARRAYAGG(
        CASE WHEN ol.subjectId IS NOT NULL THEN
            JSON_OBJECT(
                'name', os.subjectName,
                'marks', ol.marks,
                'year', ol.year
            )
        END
    ) AS ol_subjects,
    COALESCE(eis.remarkOL, '') AS ol_remark,
    COALESCE(ei.isAL, 0) AS al_enabled,
    JSON_ARRAYAGG(
        CASE WHEN al.subjectId IS NOT NULL THEN
            JSON_OBJECT(
                'name', als.subjectName,
                'marks', al.marks,
                'year', al.year
            )
        END
    ) AS al_subjects,
    COALESCE(eis.alStreamId, '') AS al_stream,
    COALESCE(eis.remarkAL, '') AS al_remark,
    CASE WHEN EXISTS (SELECT 1 FROM education_university u WHERE u.educationInfoId = ei.educationInfoId) 
         THEN 1 ELSE 0 END AS university_enabled,
    JSON_ARRAYAGG(
        CASE WHEN u.subjectId IS NOT NULL THEN
            JSON_OBJECT(
                'name', us.subjectName,
                'institution', ins.institutionName,
                'marks', u.marks
            )
        END
    ) AS university_subjects,
    COALESCE(eis.remarkUniversity, '') AS university_remark
FROM 
    education_information ei
    inner JOIN 
        education_information_single eis ON ei.educationInfoId = eis.educationInfoId
    LEFT JOIN 
        education_scholarship es ON ei.educationInfoId = es.educationInfoId
    LEFT JOIN 
        education_ol ol ON ei.educationInfoId = ol.educationInfoId
    LEFT JOIN 
        ol_subjects os ON ol.subjectId = os.subjectId
    LEFT JOIN 
        education_al al ON ei.educationInfoId = al.educationInfoId
    LEFT JOIN 
        al_subjects als ON al.subjectId = als.subjectId
    LEFT JOIN 
        education_university u ON ei.educationInfoId = u.educationInfoId
    LEFT JOIN 
        institutions ins ON u.institutionId = ins.institutionId
    LEFT JOIN 
        university_subjects us ON u.subjectId = us.subjectId
WHERE 
    ei.patientId = p_patientId
GROUP BY 
    ei.educationInfoId, ei.patientId, ei.educationYears, ei.isScholarship, es.marks, 
    es.schoolAdmitted, es.isPass, es.remark, ei.isOL, ei.isAL;


    -- Query for family patient (patientTypeId = 3)
    ELSE
      SELECT 
    ei.patientId,
    eif.educationYearsHusband,

    
    COALESCE(eif.isOLHusband, 0) AS ol_enabledHusband,
    COALESCE(eif.isOLPassedHusband, 0) AS ol_passedHusband,
    COALESCE(eif.remarkOLHusband, '') AS ol_remarkHusband,
    
    COALESCE(eif.isALHusband, 0) AS al_enabledHusband,
    COALESCE(alstHus.streamName, '') AS al_streamHusband, 

    COALESCE(eif.remarkALHusband, '') AS al_remarkHusband,
    
    COALESCE(eif.isUniversityHusband, 0) AS university_enabledHusband,
    CASE 
        WHEN COUNT(CASE WHEN euh.subjectId IS NOT NULL THEN 1 END) > 0 
        THEN JSON_ARRAYAGG(
            CASE WHEN euh.subjectId IS NOT NULL THEN
                JSON_OBJECT(
                    'name', ush.subjectName,
                    'institution', COALESCE(ih.institutionName, ''),
                    'marks', COALESCE(euh.marks, '')
                )
            END
        )
        ELSE NULL
    END AS university_subjectsHusband,
    COALESCE(eif.remarkUniversityHusband, '') AS university_remarkHusband,
    
    COALESCE(eif.isEdexcelHusband, 0) AS is_edexcelHusband,
    COALESCE(eif.isCambridgeHusband, 0) AS is_cambridgeHusband,
    
    -- Wife fields
    eif.educationYearsWife,

    COALESCE(eif.isOLWife, 0) AS ol_enabledWife,
    COALESCE(eif.isOLPassedWife, 0) AS ol_passedWife,
    COALESCE(eif.remarkOLWife, '') AS ol_remarkWife,
    
    COALESCE(eif.isALWife, 0) AS al_enabledWife,

    COALESCE(alstWif.streamName, '') AS al_streamWife,
    COALESCE(eif.remarkALWife, '') AS al_remarkWife,
    
    COALESCE(eif.isUniversityWife, 0) AS university_enabledWife,
 CASE 
        WHEN COUNT(CASE WHEN euw.subjectId IS NOT NULL THEN 1 END) > 0 
        THEN JSON_ARRAYAGG(
            CASE WHEN euw.subjectId IS NOT NULL THEN
                JSON_OBJECT(
                    'name', usw.subjectName,
                    'institution', COALESCE(iw.institutionName, ''),
                    'marks', COALESCE(euw.marks, '')
                )
            END
        )
        ELSE NULL
    END AS university_subjectsWife,
    COALESCE(eif.remarkUniversityWife, '') AS university_remarkWife,
    
    COALESCE(eif.isEdexcelWife, 0) AS is_edexcelWife,
    COALESCE(eif.isCambridgeWife, 0) AS is_cambridgeWife
FROM 
    education_information ei
    INNER JOIN 
        education_information_family eif ON ei.educationInfoId = eif.educationInfoId
    LEFT JOIN 
        education_scholarship es ON eif.educationInfoId = es.educationInfoId
    LEFT JOIN 
        education_ol ol ON eif.educationInfoId = ol.educationInfoId
    LEFT JOIN 
        ol_subjects os ON ol.subjectId = os.subjectId
    LEFT JOIN 
        education_al al ON eif.educationInfoId = al.educationInfoId
    LEFT JOIN 
        al_subjects als ON al.subjectId = als.subjectId
    LEFT JOIN 
        education_university_husband euh ON eif.educationInfoId = euh.educationInfoId
    LEFT JOIN 
        university_subjects ush ON euh.subjectId = ush.subjectId
    LEFT JOIN 
        institutions ih ON euh.institutionId = ih.institutionId
    LEFT JOIN 
        education_scholarship esw ON eif.educationInfoId = esw.educationInfoId
    LEFT JOIN 
        education_ol olw ON eif.educationInfoId = olw.educationInfoId
    LEFT JOIN 
        ol_subjects osw ON olw.subjectId = osw.subjectId
    LEFT JOIN 
        education_al alw ON eif.educationInfoId = alw.educationInfoId
    LEFT JOIN 
        al_subjects alsw ON alw.subjectId = alsw.subjectId
    LEFT JOIN 
        education_university_wife euw ON eif.educationInfoId = euw.educationInfoId
    LEFT JOIN 
        university_subjects usw ON euw.subjectId = usw.subjectId
    LEFT JOIN 
        institutions iw ON euw.institutionId = iw.institutionId
    left join al_stream alstHus on eif.alStreamIdHusband=alstHus.alStreamId
        left join al_stream alstWif on eif.alStreamIdWife=alstHus.alStreamId
WHERE 
    ei.patientId = p_patientId
GROUP BY 
    ei.educationInfoId, ei.patientId, 
    eif.educationYearsHusband, eif.isScholarshipHusband, es.marks, es.schoolAdmitted, 
    es.isPass, es.remark, eif.isOLHusband, eif.isOLPassedHusband, 
    eif.isALHusband, eif.remarkOLHusband, eif.remarkALHusband, 
    eif.alStreamIdHusband, eif.isUniversityHusband, eif.remarkUniversityHusband, 
    eif.isEdexcelHusband, eif.isCambridgeHusband,
    eif.educationYearsWife, eif.isScholarshipWife, esw.marks, esw.schoolAdmitted, 
    esw.isPass, esw.remark, eif.isOLWife, eif.isOLPassedWife, 
    eif.isALWife, eif.remarkOLWife, eif.remarkALWife, 
    eif.alStreamIdWife, eif.isUniversityWife, eif.remarkUniversityWife, 
    eif.isEdexcelWife, eif.isCambridgeWife;
    
    END IF;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Education information retrieved successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientEducationInfoByPatientId_notinuse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientEducationInfoByPatientId_notinuse`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;



    
    SELECT 
        ei.patientId,
        ei.educationYears,
        COALESCE(ei.isScholarship, 0) AS scholarship_enabled,
        COALESCE(es.marks, '') AS scholarship_marks,
        COALESCE(es.schoolAdmitted, '') AS scholarship_schoolAdmitted,
        CASE WHEN es.isPass = 1 THEN 'Pass' ELSE '' END AS scholarship_result,
        COALESCE(es.remark, '') AS scholarship_remark,
        COALESCE(ei.isOL, 0) AS ol_enabled,
        GROUP_CONCAT(
            CASE WHEN ol.subjectId IS NOT NULL THEN
                CONCAT(
                    '{"name":"', os.subjectName, '","marks":"', 
                    SUBSTRING_INDEX(SUBSTRING_INDEX(ol.remark, 'Grade: ', -1), ', Year:', 1), 
                    '","year":', SUBSTRING_INDEX(ol.remark, 'Year: ', -1), '}'
                )
            END
            SEPARATOR ', '
        ) AS ol_subjects,
        COALESCE(
            (SELECT SUBSTRING_INDEX(ol.remark, ', Year:', 1) 
             FROM education_ol ol 
             WHERE ol.educationInfoId = ei.educationInfoId 
             ORDER BY ol.olId DESC LIMIT 1),
            ''
        ) AS ol_remark,
        COALESCE(ei.isAL, 0) AS al_enabled,
        GROUP_CONCAT(
            CASE WHEN al.subjectId IS NOT NULL THEN
                CONCAT(
                    '{"name":"', als.subjectName, '","marks":"', 
                    SUBSTRING_INDEX(SUBSTRING_INDEX(al.remark, 'Grade: ', -1), ', Year:', 1), 
                    '","year":', SUBSTRING_INDEX(al.remark, 'Year: ', -1), '}'
                )
            END
            SEPARATOR ', '
        ) AS al_subjects,
        COALESCE(
            (SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(al.remark, 'Stream: ', -1), ', ', 1) 
             FROM education_al al 
             WHERE al.educationInfoId = ei.educationInfoId 
             AND al.remark LIKE '%Stream:%' 
             LIMIT 1),
            ''
        ) AS al_stream,
        COALESCE(
            (SELECT SUBSTRING_INDEX(al.remark, ', Stream:', 1) 
             FROM education_al al 
             WHERE al.educationInfoId = ei.educationInfoId 
             ORDER BY al.alId DESC LIMIT 1),
            ''
        ) AS al_remark,
        CASE WHEN EXISTS (SELECT 1 FROM education_university u WHERE u.educationInfoId = ei.educationInfoId) 
             THEN 1 ELSE 0 END AS university_enabled,
        GROUP_CONCAT(
            CASE WHEN u.subjectId IS NOT NULL THEN
                CONCAT(
                    '{"name":"', us.subjectName, 
                    '","institution":"', SUBSTRING_INDEX(SUBSTRING_INDEX(u.remark, 'Institution: ', -1), ', ', 1), 
                    '","marks":"', u.marks, '"}'
                )
            END
            SEPARATOR ', '
        ) AS university_subjects,
        COALESCE(
            (SELECT SUBSTRING_INDEX(u.remark, ', Institution:', 1) 
             FROM education_university u 
             WHERE u.educationInfoId = ei.educationInfoId 
             LIMIT 1),
            ''
        ) AS university_remark
    FROM 
        education_information ei
    LEFT JOIN 
        education_scholarship es ON ei.educationInfoId = es.educationInfoId
    LEFT JOIN 
        education_ol ol ON ei.educationInfoId = ol.educationInfoId
    LEFT JOIN 
        ol_subjects os ON ol.subjectId = os.subjectId
    LEFT JOIN 
        education_al al ON ei.educationInfoId = al.educationInfoId
    LEFT JOIN 
        al_subjects als ON al.subjectId = als.subjectId
    LEFT JOIN 
        education_university u ON ei.educationInfoId = u.educationInfoId
    LEFT JOIN 
        university_subjects us ON u.subjectId = us.subjectId
    WHERE 
        ei.patientId = p_patientId
    GROUP BY 
        ei.educationInfoId, ei.patientId, ei.educationYears, ei.isScholarship, es.marks, 
        es.schoolAdmitted, es.isPass, es.remark, ei.isOL, ei.isAL;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Education information retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientEducationYearsByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientEducationYearsByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    
    DECLARE v_patientTypeId INT;

    -- Check if patientId is provided
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO v_patientTypeId FROM patient_registration WHERE patientId = p_patientId;

    IF v_patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'Patient not found.';
        LEAVE sp;
    END IF;

    if(v_patientTypeId!=3) then
    SELECT 
        eis.educationYears
    FROM 
        education_information ei inner join education_information_single eis on ei.educationInfoId=eis.educationInfoId
    WHERE 
        ei.patientId = p_patientId;
    
    
    else
    
        SELECT 
        eif.educationYearsHusband,eif.educationYearsWife
    FROM 
        education_information ei inner join education_information_family eif on ei.educationInfoId=eif.educationInfoId
    WHERE 
        ei.patientId = p_patientId;
        
    end if;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Education years retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientFamilyInfoByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientFamilyInfoByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    DECLARE _query VARCHAR(1000);

    
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    
   
     
    
     
    

    
    SET @_query = CONCAT('
        SELECT 
            familyInfoId,
            patientId,
            spouseOccupation,
            spouseOccupationFullTime,
            motherAge,
            ageWhenMotherDied,
            fatherAge,
            ageWhenFatherDied,
            motherOccupation,
            fatherOccupation,
            motherReligion,
            fatherReligion,
            raisedBy,
            motherDescription,
            fatherDescription,
            parentalSeparationAge,
            parentalDivorceAge,
            motherDivorceCount,
            fatherDivorceCount,
            livingBrothers,
            livingSisters,
            brothersAges,
            sistersAges,
            childNumber,
            familyChildren,
            adopted,
            brotherDisturbances,
            sisterDisturbances,
            maleRelativesDisturbed,
            maleRelativesHospitalized,
            femaleRelativesDisturbed,
            femaleRelativesHospitalized
        FROM 
            family_information
        WHERE 
            patientId = ', p_patientId
    );

    
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Family information retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientInternationalCurriculumByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientInternationalCurriculumByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp:begin

    
    DECLARE v_patientTypeId INT;

    -- Check if patientId is provided
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO v_patientTypeId FROM patient_registration WHERE patientId = p_patientId;

    IF v_patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'Patient not found.';
        LEAVE sp;
    END IF;

    if(v_patientTypeId!=3) then


    SELECT 
        CAST(eis.isEdexcel AS UNSIGNED) AS isEdexcel,
            CAST(eis.isCambridge AS UNSIGNED) AS isCambridge 
    FROM  education_information ei inner join education_information_single eis on ei.educationInfoId=eis.educationInfoId
    
    WHERE  ei.patientId = p_patientId;
    
    else
      SELECT 
        CAST(eif.isEdexcelHusband AS UNSIGNED) AS isEdexcelHusband,
            CAST(eif.isCambridgeHusband AS UNSIGNED) AS isCambridgeHusband,
                 CAST(eif.isEdexcelWife AS UNSIGNED) AS isEdexcelWife,
            CAST(eif.isCambridgeWife AS UNSIGNED) AS isCambridgeWife
    FROM  education_information ei inner join education_information_family eif on ei.educationInfoId=eif.educationInfoId
    
    WHERE  ei.patientId = p_patientId;

end if;
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Edexcel IGCSE data retrieved successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientMedicalInfoByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientMedicalInfoByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE _query VARCHAR(2000);
    DECLARE _patientTypeId INT;

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO _patientTypeId
    FROM patient_registration 
    WHERE patientId = p_patientId;

    IF _patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('No patient found with patientId: ', p_patientId);
        LEAVE sp;
    END IF;

    -- Construct query based on patientTypeId
    IF _patientTypeId = 3 THEN
        -- Query for family patients
 -- Query for family patients
SET @_query = CONCAT('
    SELECT 
        m.medicalInfoId,
        m.patientId,
        mf.physicalAilmentsHusband,
        mf.physicalAilmentsWife,
        mf.mainComplaintsHusband,
        mf.mainComplaintsWife,
        mf.worseConditionsHusband,
        mf.worseConditionsWife,
        mf.improvedConditionsHusband,
        mf.improvedConditionsWife,
        case when mf.isHistoryOfPsychiatricTreatmentsHusband=1 then true else false end as isHistoryOfPsychiatricTreatmentsHusband,
        case when mf.isHistoryOfPsychiatricTreatmentsWife=1 then true else false end as isHistoryOfPsychiatricTreatmentsWife,

 case when mf.isPsychiatricHospitalizationHusband=1 then true else false end as isPsychiatricHospitalizationHusband,
 case when mf.isPsychiatricHospitalizationWife=1 then true else false end as isPsychiatricHospitalizationWife,

        mf.historyOfMentalIllnessHusband,
        mf.historyOfMentalIllnessWife,
        mf.historyOfSubstanceAbuseHusband,
        mf.historyOfSubstanceAbuseWife,
        mf.historyOfACESHusband,
        mf.historyOfACESWife,
        mf.additionalInfoHusband,
        mf.additionalInfoWife
    FROM 
        medical_information m
        LEFT JOIN medical_information_family mf ON m.medicalInfoId = mf.medicalInfoId
    WHERE 
        m.patientId = ', p_patientId
);
    ELSE
        -- Query for single patients
        SET @_query = CONCAT('
            SELECT 
                m.medicalInfoId,
                m.patientId,
                ms.physicalAilments,
                ms.mainComplaints,
                ms.pastComplaints,
                ms.worseConditions,
                ms.improvedConditions,
                ms.individualTherapyHours,
                ms.individualTherapyYears,
                ms.individualTherapyEndYears,
                ms.groupTherapyHours,
                ms.psychiatricHospitalizationMonths,
                ms.currentTreatment,
                ms.antidepressantsCount,
                ms.psychotherapyType,
                ms.additionalInfo
            FROM 
                medical_information m
                LEFT JOIN medical_information_single ms ON m.medicalInfoId = ms.medicalInfoId
            WHERE 
                m.patientId = ', p_patientId
        );
    END IF;

    -- Execute dynamic query
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Set success response
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Medical information retrieved successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientOLByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientOLByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
     out p_patientTypeId int
)
sp: BEGIN

    
    
    DECLARE v_patientTypeId INT;

    -- Check if patientId is provided
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO v_patientTypeId FROM patient_registration WHERE patientId = p_patientId;

    IF v_patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'Patient not found.';
        LEAVE sp;
    END IF;

    if(v_patientTypeId!=3) then

    
SELECT 
    CAST(eis.isOL AS UNSIGNED) AS enabled,
    CASE 
        WHEN eis.isOL = 0 THEN JSON_ARRAY()
        ELSE JSON_ARRAYAGG(
            JSON_OBJECT(
                'name', COALESCE(os.subjectName, 'N/A'),
                'value', COALESCE(os.subjectId, 'N/A'),
                'marks', COALESCE(ol.marks, 'N/A'),
                'year', COALESCE(ol.year, 'N/A')
            )
        )
    END AS subjects,
    COALESCE(eis.remarkOL, '') AS remark
FROM 
    education_information ei inner join education_information_single eis on ei.educationInfoId=eis.educationInfoId
LEFT JOIN 
    education_ol ol ON ei.educationInfoId = ol.educationInfoId
LEFT JOIN 
    ol_subjects os ON ol.subjectId = os.subjectId
WHERE 
    ei.patientId = p_patientId
GROUP BY 
    ei.educationInfoId, ei.patientId, eis.isOL;

    
else 

SELECT 
    CAST(eif.isOLHusband AS UNSIGNED) AS enabledHusband,
    CAST(eif.isOLPassedHusband AS UNSIGNED) AS isPassedHusband,  
    COALESCE(eif.remarkOLHusband, '') AS remarkHusband,
      CAST(eif.isOLWife AS UNSIGNED) AS enabledWife,
    CAST(eif.isOLPassedWife AS UNSIGNED) AS isPassedWife,  
    COALESCE(eif.remarkOLWife, '') AS remarkWife
FROM 
    education_information ei inner join education_information_family eif on ei.educationInfoId=eif.educationInfoId
WHERE 
    ei.patientId = p_patientId;


end if;

   set p_patientTypeId= v_patientTypeId;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'O/L data retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientPersonalInfoByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientPersonalInfoByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    DECLARE _query VARCHAR(2000);
    DECLARE _patientTypeId INT;

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO _patientTypeId
    FROM patient_registration 
    WHERE patientId = p_patientId;

    IF _patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('No patient found with patientId: ', p_patientId);
        LEAVE sp;
    END IF;

    -- Construct query based on patientTypeId
    IF _patientTypeId = 3 THEN
        -- Query for family patients
        SET @_query = CONCAT('
            SELECT 
                p.personalInfoId,
                p.patientId,
                pif.maritalStatusHusband,
                pif.yearsMarriedHusband,
                pif.maritalStatusWife,
                pif.yearsMarriedWife,
                p.maleChildrenAges,
                p.femaleChildrenAges,
                p.religiosity,
                p.thingsLiked,
                p.assets,
                p.badPoints,
                p.socialDifficulties,
                p.loveSexDifficulties,
                p.schoolWorkDifficulties,
                p.lifeGoals,
                p.thingsToChange,
                oth.occupationName AS occupationTrainedHusband,
                oh.occupationName AS occupationHusband,
                otw.occupationName AS occupationTrainedWife,
                ow.occupationName AS occupationWife,
                pif.occupationFullTimeHusband,
                pif.occupationFullTimeWife
            FROM 
                personal_information p
                LEFT JOIN personal_information_family pif ON p.personalInfoId = pif.personalInfoId
                LEFT JOIN occupations oh ON pif.occupationIdHusband = oh.occupationId
                LEFT JOIN occupations oth ON pif.occupationTrainedIdHusband = oth.occupationId
                LEFT JOIN occupations ow ON pif.occupationIdWife = ow.occupationId
                LEFT JOIN occupations otw ON pif.occupationTrainedIdWife = otw.occupationId
            WHERE 
                p.patientId = ', p_patientId
        );
    ELSE
        -- Query for single patients
        SET @_query = CONCAT('
            SELECT 
                p.personalInfoId,
                p.patientId,
                pis.maritalStatus,
                pis.yearsMarried,
                p.maleChildrenAges,
                p.femaleChildrenAges,
                p.religiosity,
                p.thingsLiked,
                p.assets,
                p.badPoints,
                p.socialDifficulties,
                p.loveSexDifficulties,
                p.schoolWorkDifficulties,
                p.lifeGoals,
                p.thingsToChange,
                ot.occupationName AS occupationTrained,
                o.occupationName AS occupation,
                pis.occupationFullTime
            FROM 
                personal_information p
                LEFT JOIN personal_information_single pis ON p.personalInfoId = pis.personalInfoId
                LEFT JOIN occupations o ON pis.occupationId = o.occupationId
                LEFT JOIN occupations ot ON pis.occupationTrainedId = ot.occupationId
            WHERE 
                p.patientId = ', p_patientId
        );
    END IF;

    -- Execute dynamic query
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Set success response
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Personal information retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientPersonalInfoByPatientId_notinuse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientPersonalInfoByPatientId_notinuse`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    DECLARE _query VARCHAR(1000);

    
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    
   
      
      
      
   

    
    SET @_query = CONCAT('
        SELECT 
            personalInfoId,
            patientId,
            maritalStatus,
            yearsMarried,
            maleChildrenAges,
            femaleChildrenAges,
            religiosity,
            thingsLiked,
            assets,
            badPoints,
            socialDifficulties,
            loveSexDifficulties,
            schoolWorkDifficulties,
            lifeGoals,
            thingsToChange,
           ot.occupationName as occupationTrained,
           o.occupationName as occupation,
            occupationFullTime
        FROM 
            personal_information p left join occupations o ON p.occupationId=o.occupationId 
left join occupations ot ON p.occupationTrainedId=ot.occupationId 
        WHERE 
            patientId = ', p_patientId
    );

    
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Personal information retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PatientRegistration_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PatientRegistration_Search`(
    IN p_patientNo VARCHAR(50),
    IN p_homePhone VARCHAR(20),
    IN p_businessPhone VARCHAR(20),
    IN p_email VARCHAR(100),
    IN p_firstName VARCHAR(50),
    IN p_lastName VARCHAR(50),
    IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_TotalRows INT
)
sp: BEGIN
    DECLARE _filter VARCHAR(1000);
    DECLARE _PagingQuery VARCHAR(1000);
    DECLARE _query VARCHAR(5000);

    SET _filter = ' WHERE 1 = 1 ';

    -- Validate pagination
    IF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The p_Limit parameter is required when p_Skip is provided.';
        LEAVE sp;
    ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The p_Skip parameter is required when p_Limit is provided.';
        LEAVE sp;
    END IF;

    -- Set pagination
    IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
        SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    ELSE
        SET _PagingQuery = '';
    END IF;

    -- Apply filters
    IF p_patientNo IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND pr.patientNo = ''', p_patientNo, '''');
    END IF;
    IF p_homePhone IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.homePhone = ''', p_homePhone, ''' OR fp.husbandHomePhone = ''', p_homePhone, ''' OR fp.wifeHomePhone = ''', p_homePhone, ''')');
    END IF;
    IF p_businessPhone IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.businessPhone = ''', p_businessPhone, ''' OR sp.mobilePhone = ''', p_businessPhone, ''')');
    END IF;
    IF p_email IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.email LIKE ''%', p_email, '%'' OR fp.husbandEmail LIKE ''%', p_email, '%'' OR fp.wifeEmail LIKE ''%', p_email, '%'')');
    END IF;
    IF p_firstName IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.firstName LIKE ''%', p_firstName, '%'' OR fp.husbandFirstName LIKE ''%', p_firstName, '%'' OR fp.wifeFirstName LIKE ''%', p_firstName, '%'')');
    END IF;
    IF p_lastName IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.lastName LIKE ''%', p_lastName, '%'' OR fp.husbandLastName LIKE ''%', p_lastName, '%'' OR fp.wifeLastName LIKE ''%', p_lastName, '%'')');
    END IF;

    -- Main query
    SET @_query = CONCAT('
        SELECT 
            pr.patientId,
            pr.patientNo,
            TRIM(BOTH '' '' FROM COALESCE(
                NULLIF(CONCAT(
                    IFNULL(sp.firstName, ''''), '' '',
                    IFNULL(sp.middleName, ''''), '' '',
                    IFNULL(sp.lastName, '''')
                ), ''  ''),
               CONCAT(
                    IFNULL(fp.husbandFirstName, ''''), '' '',
                    IFNULL(fp.husbandMiddleName, ''''), '' '',
                    IFNULL(fp.husbandLastName, '''')
                )
            )) AS fullName,
            COALESCE(
                sp.firstName,
                CONCAT(COALESCE(fp.husbandFirstName, ''''))
            ) AS firstName,
            COALESCE(
                sp.lastName,
                CONCAT(COALESCE(fp.husbandLastName, ''''), '' | '', COALESCE(fp.wifeLastName, ''''))
            ) AS lastName,
            COALESCE(
                sp.middleName,
                CONCAT(COALESCE(fp.husbandMiddleName, ''''), '' | '', COALESCE(fp.wifeMiddleName, ''''))
            ) AS middleName,
            COALESCE(
                sp.dateOfBirth,
                CONCAT(COALESCE(fp.husbandDateOfBirth, ''''))
            ) AS dateOfBirth,
            COALESCE(
                sp.age,
                CONCAT(COALESCE(fp.husbandAge, ''''), '' | '', COALESCE(fp.wifeAge, ''''))
            ) AS age,
            COALESCE(
                sp.gender,
                CONCAT(COALESCE(fp.husbandGender, ''''))
            ) AS gender,
            COALESCE(
                sp.email,
                CONCAT(COALESCE(fp.husbandEmail, ''''))
            ) AS email,
            COALESCE(
                sp.homePhone,
                CONCAT(COALESCE(fp.husbandHomePhone, ''''))
            ) AS homePhone,
            sp.businessPhone,
            COALESCE(
                sp.mobilePhone,
                CONCAT(COALESCE(fp.husbandMobilePhone, ''''))
            ) AS mobilePhone,
            COALESCE(
                sp.permanentAddress,
                CONCAT(COALESCE(fp.husbandPermanentAddress, ''''))
            ) AS permanentAddress,
            COALESCE(sp.referralSource, fp.referralSource) AS referralSource,
            COALESCE(sp.referralSourceOther, fp.referralSourceOther) AS referralSourceOther,
            COALESCE(
                CASE WHEN sp.referralPartyPresent = 1 THEN TRUE ELSE FALSE END,
                CASE WHEN fp.referralPartyPresent = 1 THEN TRUE ELSE FALSE END
            ) AS referralPartyPresent,
            COALESCE(sp.formDate, fp.formDate, pr.formDate) AS formDate,
            COALESCE(sp.lastModified, fp.lastModified, pr.lastModified) AS lastModified,
            pt.patientTypeName,
            pr.patientTypeId
        FROM 
            patient_registration pr 
            INNER JOIN patient_type pt ON pr.patientTypeId = pt.patientTypeId
            LEFT JOIN singlepatients sp ON pr.patientId = sp.patientId
            LEFT JOIN familypatients fp ON pr.patientId = fp.patientId
        ', _filter, '
        ORDER BY COALESCE(sp.lastModified, fp.lastModified, pr.lastModified) DESC
        ', _PagingQuery
    );

    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Total count
    SET @queryTotal = CONCAT('
        SELECT COUNT(pr.patientId) INTO @totalRows 
        FROM patient_registration pr
        LEFT JOIN singlepatients sp ON pr.patientId = sp.patientId
        LEFT JOIN familypatients fp ON pr.patientId = fp.patientId
        ', _filter
    );
    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET p_TotalRows = @totalRows;
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Patient data retrieved successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PatientRegistration_Search_notinuse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PatientRegistration_Search_notinuse`(
    IN p_patientNo VARCHAR(50),
    IN p_homePhone VARCHAR(20),
    IN p_businessPhone VARCHAR(20),
    IN p_email VARCHAR(100),
    IN p_firstName VARCHAR(50),
    IN p_lastName VARCHAR(50),
    IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_TotalRows INT
)
sp: BEGIN
    DECLARE _filter VARCHAR(1000);
    DECLARE _PagingQuery VARCHAR(1000);
    DECLARE _query VARCHAR(5000);

    SET _filter = ' WHERE 1 = 1 ';

    -- Validate pagination
    IF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The p_Limit parameter is required when p_Skip is provided.';
        LEAVE sp;
    ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The p_Skip parameter is required when p_Limit is provided.';
        LEAVE sp;
    END IF;

    -- Set pagination
    IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
        SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    ELSE
        SET _PagingQuery = '';
    END IF;

    -- Apply filters
    IF p_patientNo IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND pr.patientNo = ''', p_patientNo, '''');
    END IF;
    IF p_homePhone IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.homePhone = ''', p_homePhone, ''' OR fp.husbandHomePhone = ''', p_homePhone, ''' OR fp.wifeHomePhone = ''', p_homePhone, ''')');
    END IF;
    IF p_businessPhone IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.businessPhone = ''', p_businessPhone, ''' OR sp.mobilePhone = ''', p_businessPhone, ''')');
    END IF;
    IF p_email IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.email LIKE ''%', p_email, '%'' OR fp.husbandEmail LIKE ''%', p_email, '%'' OR fp.wifeEmail LIKE ''%', p_email, '%'')');
    END IF;
    IF p_firstName IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.firstName LIKE ''%', p_firstName, '%'' OR fp.husbandFirstName LIKE ''%', p_firstName, '%'' OR fp.wifeFirstName LIKE ''%', p_firstName, '%'')');
    END IF;
    IF p_lastName IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND (sp.lastName LIKE ''%', p_lastName, '%'' OR fp.husbandLastName LIKE ''%', p_lastName, '%'' OR fp.wifeLastName LIKE ''%', p_lastName, '%'')');
    END IF;

    -- Main query
    SET @_query = CONCAT('
        SELECT 
            pr.patientId,
            pr.patientNo,
            TRIM(BOTH '' '' FROM COALESCE(
                NULLIF(CONCAT(
                    IFNULL(sp.firstName, ''''), '' '',
                    IFNULL(sp.middleName, ''''), '' '',
                    IFNULL(sp.lastName, '''')
                ), ''  ''),
                NULLIF(CONCAT(
                    IFNULL(fp.husbandFirstName, ''''), '' '',
                    IFNULL(fp.husbandMiddleName, ''''), '' '',
                    IFNULL(fp.husbandLastName, ''''), '' | '',
                    IFNULL(fp.wifeFirstName, ''''), '' '',
                    IFNULL(fp.wifeMiddleName, ''''), '' '',
                    IFNULL(fp.wifeLastName, '''')
                ), '''')
            )) AS fullName,
            COALESCE(
                sp.firstName,
                CONCAT(COALESCE(fp.husbandFirstName, ''''), '' | '', COALESCE(fp.wifeFirstName, ''''))
            ) AS firstName,
            COALESCE(
                sp.lastName,
                CONCAT(COALESCE(fp.husbandLastName, ''''), '' | '', COALESCE(fp.wifeLastName, ''''))
            ) AS lastName,
            COALESCE(
                sp.middleName,
                CONCAT(COALESCE(fp.husbandMiddleName, ''''), '' | '', COALESCE(fp.wifeMiddleName, ''''))
            ) AS middleName,
            COALESCE(
                sp.dateOfBirth,
                CONCAT(COALESCE(fp.husbandDateOfBirth, ''''), '' | '', COALESCE(fp.wifeDateOfBirth, ''''))
            ) AS dateOfBirth,
            COALESCE(
                sp.age,
                CONCAT(COALESCE(fp.husbandAge, ''''), '' | '', COALESCE(fp.wifeAge, ''''))
            ) AS age,
            COALESCE(
                sp.gender,
                CONCAT(COALESCE(fp.husbandGender, ''''), '' | '', COALESCE(fp.wifeGender, ''''))
            ) AS gender,
            COALESCE(
                sp.email,
                CONCAT(COALESCE(fp.husbandEmail, ''''), '' | '', COALESCE(fp.wifeEmail, ''''))
            ) AS email,
            COALESCE(
                sp.homePhone,
                CONCAT(COALESCE(fp.husbandHomePhone, ''''), '' | '', COALESCE(fp.wifeHomePhone, ''''))
            ) AS homePhone,
            sp.businessPhone,
            COALESCE(
                sp.mobilePhone,
                CONCAT(COALESCE(fp.husbandMobilePhone, ''''), '' | '', COALESCE(fp.wifeMobilePhone, ''''))
            ) AS mobilePhone,
            COALESCE(
                sp.permanentAddress,
                CONCAT(COALESCE(fp.husbandPermanentAddress, ''''), '' | '', COALESCE(fp.wifePermanentAddress, ''''))
            ) AS permanentAddress,
            COALESCE(sp.referralSource, fp.referralSource) AS referralSource,
            COALESCE(sp.referralSourceOther, fp.referralSourceOther) AS referralSourceOther,
            COALESCE(
                CASE WHEN sp.referralPartyPresent = 1 THEN TRUE ELSE FALSE END,
                CASE WHEN fp.referralPartyPresent = 1 THEN TRUE ELSE FALSE END
            ) AS referralPartyPresent,
            COALESCE(sp.formDate, fp.formDate, pr.formDate) AS formDate,
            COALESCE(sp.lastModified, fp.lastModified, pr.lastModified) AS lastModified,
            pt.patientTypeName,
            pr.patientTypeId
        FROM 
            patient_registration pr 
            INNER JOIN patient_type pt ON pr.patientTypeId = pt.patientTypeId
            LEFT JOIN singlepatients sp ON pr.patientId = sp.patientId
            LEFT JOIN familypatients fp ON pr.patientId = fp.patientId
        ', _filter, '
        ORDER BY COALESCE(sp.lastModified, fp.lastModified, pr.lastModified) DESC
        ', _PagingQuery
    );

    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Total count
    SET @queryTotal = CONCAT('
        SELECT COUNT(pr.patientId) INTO @totalRows 
        FROM patient_registration pr
        LEFT JOIN singlepatients sp ON pr.patientId = sp.patientId
        LEFT JOIN familypatients fp ON pr.patientId = fp.patientId
        ', _filter
    );
    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET p_TotalRows = @totalRows;
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Patient data retrieved successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientScholarshipByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientScholarshipByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    

    
    DECLARE v_patientTypeId INT;

    -- Check if patientId is provided
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO v_patientTypeId FROM patient_registration WHERE patientId = p_patientId;

    IF v_patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'Patient not found.';
        LEAVE sp;
    END IF;

    if(v_patientTypeId!=3) then

    
    SELECT 
      
           CAST(eis.isScholarship AS UNSIGNED) as enabled,
                es.marks,
                es.schoolAdmitted,
                 CASE WHEN es.isPass = 1 THEN 'Pass' ELSE 'Fail' end as result,
                es.remark
            
     
    FROM 
        education_information ei inner join education_information_single eis on ei.educationInfoId=eis.educationInfoId
    LEFT JOIN 
        education_scholarship es ON ei.educationInfoId = es.educationInfoId
    WHERE 
        ei.patientId = p_patientId;
    
    else
    select null as result;
    
    end if;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Scholarship data retrieved successfully.';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patientUniversityByPatientId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patientUniversityByPatientId`(
    IN p_patientId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    out p_patientTypeId int
)
sp: BEGIN
  
   
    DECLARE v_patientTypeId INT;

    -- Check if patientId is provided
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patient exists and get patientTypeId
    SELECT patientTypeId INTO v_patientTypeId FROM patient_registration WHERE patientId = p_patientId;

    IF v_patientTypeId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'Patient not found.';
        LEAVE sp;
    END IF;

    if(v_patientTypeId!=3) then
 

    -- Query to retrieve university data
    SELECT 
        CAST(eis.isUniversity AS UNSIGNED) AS enabled,
        CASE 
            WHEN eis.isUniversity = 0 OR eis.isUniversity IS NULL THEN JSON_ARRAY()
            ELSE COALESCE(
                JSON_ARRAYAGG(
                    JSON_OBJECT(
                        'name', COALESCE(us.subjectName, 'N/A'),
                        'value', COALESCE(us.subjectId, 'N/A'),
                        'marks', COALESCE(u.marks, 'N/A'),
                        'year', COALESCE(u.year, 'N/A'),
                        'institutionName', COALESCE(i.institutionName, 'N/A'),
                        'institutionId', COALESCE(i.institutionId, 'N/A')
                    )
                ),
                JSON_ARRAY()
            )
        END AS subjects,
        eis.remarkUniversity AS remark
    FROM education_information ei  inner join education_information_single eis on ei.educationInfoId=eis.educationInfoId
    LEFT JOIN education_university u ON ei.educationInfoId = u.educationInfoId
    LEFT JOIN university_subjects us ON u.subjectId = us.subjectId
    LEFT JOIN institutions i ON u.institutionId = i.institutionId
    WHERE ei.patientId = p_patientId
    GROUP BY ei.educationInfoId, ei.patientId;

    else
    
SELECT 
    cast(eif.isUniversityHusband AS UNSIGNED) AS enabledHusband,
    (
        SELECT 
            JSON_ARRAYAGG(
                JSON_OBJECT(
                    'name', ush.subjectName,
                    'value', ush.subjectId,
                    'marks', uh.marks,
                    'year', uh.year,
                    'institutionName', ih.institutionName,
                    'institutionId', ih.institutionId
                )
            )
        FROM education_university_husband uh 
        JOIN university_subjects ush ON uh.subjectId = ush.subjectId
        LEFT JOIN institutions ih ON uh.institutionId = ih.institutionId
        WHERE uh.educationInfoId = ei.educationInfoId
        AND eif.isUniversityHusband = 1
    ) AS subjectsHusband,
    eif.remarkUniversityHusband AS remarkHusband,
    cast(eif.isUniversityWife AS UNSIGNED) AS enabledWife,
    (
        SELECT 
            JSON_ARRAYAGG(
                JSON_OBJECT(
                    'name', usw.subjectName,
                    'value', usw.subjectId,
                    'marks', uw.marks,
                    'year', uw.year,
                    'institutionName', iw.institutionName,
                    'institutionId', iw.institutionId
                )
            )
        FROM education_university_wife uw 
        JOIN university_subjects usw ON uw.subjectId = usw.subjectId
        LEFT JOIN institutions iw ON uw.institutionId = iw.institutionId
        WHERE uw.educationInfoId = ei.educationInfoId
        AND eif.isUniversityWife = 1
    ) AS subjectsWife,
    eif.remarkUniversityWife AS remarkWife
FROM 
    education_information ei 
    INNER JOIN education_information_family eif 
        ON ei.educationInfoId = eif.educationInfoId
WHERE 
    ei.patientId = p_patientId;
    
   end if; 
   
   set p_patientTypeId= v_patientTypeId;
    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'University data retrieved successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patient_registration_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patient_registration_insert_update`(
    IN p_patientId INT,
    IN p_firstName VARCHAR(50),
    IN p_lastName VARCHAR(50),
    IN p_middleName VARCHAR(50),
    IN p_dateOfBirth DATE,
    IN p_age INT,
    IN p_gender VARCHAR(10),
    IN p_email VARCHAR(100),
    IN p_homePhone VARCHAR(20),
    IN p_businessPhone VARCHAR(20),
    IN p_permanentAddress VARCHAR(200),
    IN p_referralSource VARCHAR(50),
    IN p_referralSourceOther VARCHAR(50),
    IN p_referralPartyPresent BOOLEAN,
    IN p_patientTypeId INT,
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_patientNo VARCHAR(50),
    OUT p_outputPatientId INT
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    DECLARE v_patientId INT;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
    
    START TRANSACTION;
    
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_saveType = 'I' THEN
        IF p_email IS NOT NULL AND p_email != '' AND EXISTS (
            SELECT * FROM patient_registration WHERE email = p_email
        ) THEN
            SET p_outputMessage = 'Email already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_dateOfBirth IS NULL THEN
            SET p_outputMessage = 'dateOfBirth is required';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_patientTypeId IS NOT NULL AND p_patientTypeId < 0 THEN
            SET p_outputMessage = 'patientTypeId is required';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Insert into patient_registration
        INSERT INTO patient_registration (
            referralSource, referralSourceOther, referralPartyPresent,
            formDate, lastModified, patientTypeId
        ) VALUES (
            p_referralSource, CASE WHEN p_referralSource != 'other' THEN '' ELSE p_referralSourceOther END,
            p_referralPartyPresent, CURDATE(), NOW(), p_patientTypeId
        );
        
        SET v_patientId = LAST_INSERT_ID();
        SET p_outputPatientId = v_patientId;
        
        -- Insert into singlepatients (fixed column count)
        INSERT INTO singlepatients (
            patientId, firstName, lastName, middleName, dateOfBirth, 
            gender, email, homePhone, businessPhone, permanentAddress
        ) VALUES (
            v_patientId, p_firstName, p_lastName, p_middleName, p_dateOfBirth, 
            p_gender, p_email, p_homePhone, p_businessPhone, p_permanentAddress
        );
        
        SET @patientNo = CONCAT('P', LPAD(v_patientId, 4, '0'));
        UPDATE patient_registration SET patientNo = @patientNo WHERE patientId = v_patientId;
        SET p_patientNo = @patientNo;
        
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Patient registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        IF p_patientId IS NULL OR p_patientId < 1 THEN
            SET p_outputMessage = 'Invalid patientId.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Patient does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_dateOfBirth IS NULL THEN
            SET p_outputMessage = 'dateOfBirth is required';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        IF p_email IS NOT NULL AND p_email != '' AND EXISTS (
            SELECT * FROM patient_registration WHERE email = p_email AND patientId != p_patientId
        ) THEN
            SET p_outputMessage = 'Email already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        SET p_patientNo = (SELECT patientNo FROM patient_registration WHERE patientId = p_patientId);
        SET p_outputPatientId = p_patientId;
        
        -- Update patient_registration
        UPDATE patient_registration
        SET referralSource = p_referralSource,
            referralSourceOther = CASE WHEN p_referralSource != 'other' THEN '' ELSE p_referralSourceOther END,
            referralPartyPresent = p_referralPartyPresent, 
            lastModified = NOW()
        WHERE patientId = p_patientId;
        
        -- Update singlepatients
        UPDATE singlepatients
        SET firstName = p_firstName,
            lastName = p_lastName,
            middleName = p_middleName,
            dateOfBirth = p_dateOfBirth,
            gender = p_gender,
            email = p_email,
            homePhone = p_homePhone,
            businessPhone = p_businessPhone,
            permanentAddress = p_permanentAddress
        WHERE patientId = p_patientId;
        
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Patient updated successfully.';
        
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `personal_information_child_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `personal_information_child_insert_update`(
    IN p_patientId INT,
    IN p_maritalStatus VARCHAR(50),
    IN p_yearsMarried DECIMAL(4,2),
    IN p_maleChildrenAges VARCHAR(50),
    IN p_femaleChildrenAges VARCHAR(50),
    IN p_religiosity INT,
    IN p_thingsLiked TEXT,
    IN p_assets TEXT,
    IN p_badPoints TEXT,
    IN p_socialDifficulties TEXT,
    IN p_loveSexDifficulties TEXT,
    IN p_schoolWorkDifficulties TEXT,
    IN p_lifeGoals TEXT,
    IN p_thingsToChange TEXT,
    IN p_occupationTrained VARCHAR(100),
    IN p_occupation VARCHAR(100),
    IN p_occupationFullTime VARCHAR(20),
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputPatientId INT
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    
    DECLARE v_i_assets INT DEFAULT 0;
    DECLARE v_i_badPoints INT DEFAULT 0;
    DECLARE v_noOfAssets INT;
    DECLARE v_noOfBadPoints INT;
    DECLARE v_assetName VARCHAR(255);
    DECLARE v_badPointName VARCHAR(255);
    DECLARE v_assetsConcat TEXT DEFAULT '';
    DECLARE v_badPointsConcat TEXT DEFAULT '';
    
    DECLARE v_i_socialDifficulties INT DEFAULT 0;
    DECLARE v_noOfSocialDifficulties INT;
    DECLARE v_socialDifficultyName VARCHAR(255);
    DECLARE v_socialDifficultiesConcat TEXT DEFAULT '';
    
    DECLARE v_occupationTrainedId INT;
    DECLARE v_occupationId INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
    
    START TRANSACTION;
    
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_patientId IS NULL OR p_patientId < 1 THEN
        SET p_outputMessage = 'Invalid patientId.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    

    
    -- Process assets JSON
    SET v_noOfAssets = JSON_LENGTH(p_assets);
    IF v_noOfAssets > 0 THEN
        WHILE v_i_assets < v_noOfAssets DO
            SET v_assetName = JSON_UNQUOTE(JSON_EXTRACT(p_assets, CONCAT('$[', v_i_assets, '].name')));
            IF v_assetName IS NULL OR TRIM(v_assetName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Asset ', v_i_assets + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_assetName, REPLACE(v_assetsConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate asset "', v_assetName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_assets = 0 THEN
                SET v_assetsConcat = v_assetName;
            ELSE
                SET v_assetsConcat = CONCAT(v_assetsConcat, ';;', v_assetName);
            END IF;
            SET v_i_assets = v_i_assets + 1;
        END WHILE;
    END IF;
    

     
    -- Process badPoints JSON
    SET v_noOfBadPoints = JSON_LENGTH(p_badPoints);
    IF v_noOfBadPoints > 0 THEN
        WHILE v_i_badPoints < v_noOfBadPoints DO
            SET v_badPointName = JSON_UNQUOTE(JSON_EXTRACT(p_badPoints, CONCAT('$[', v_i_badPoints, '].name')));
            IF v_badPointName IS NULL OR TRIM(v_badPointName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Bad Point ', v_i_badPoints + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_badPointName, REPLACE(v_badPointsConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate bad point "', v_badPointName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_badPoints = 0 THEN
                SET v_badPointsConcat = v_badPointName;
            ELSE
                SET v_badPointsConcat = CONCAT(v_badPointsConcat, ';;', v_badPointName);
            END IF;
            SET v_i_badPoints = v_i_badPoints + 1;
        END WHILE;
    END IF;
    
    -- Process socialDifficulties JSON
    SET v_noOfSocialDifficulties = JSON_LENGTH(p_socialDifficulties);
    IF v_noOfSocialDifficulties > 0 THEN
        WHILE v_i_socialDifficulties < v_noOfSocialDifficulties DO
            SET v_socialDifficultyName = JSON_UNQUOTE(JSON_EXTRACT(p_socialDifficulties, CONCAT('$[', v_i_socialDifficulties, '].name')));
            IF v_socialDifficultyName IS NULL OR TRIM(v_socialDifficultyName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Social difficulty ', v_i_socialDifficulties + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_socialDifficultyName, REPLACE(v_socialDifficultiesConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate social difficulty "', v_socialDifficultyName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_socialDifficulties = 0 THEN
                SET v_socialDifficultiesConcat = v_socialDifficultyName;
            ELSE
                SET v_socialDifficultiesConcat = CONCAT(v_socialDifficultiesConcat, ';;', v_socialDifficultyName);
            END IF;
            SET v_i_socialDifficulties = v_i_socialDifficulties + 1;
        END WHILE;
    END IF;
    



    IF p_thingsLiked IS NULL OR TRIM(p_thingsLiked) = '' THEN
        SET p_outputMessage = 'Things Liked is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_assets IS NULL OR TRIM(p_assets) = '' THEN
        SET p_outputMessage = 'Assets is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_badPoints IS NULL OR TRIM(p_badPoints) = '' THEN
        SET p_outputMessage = 'Bad Points is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_socialDifficulties IS NULL OR TRIM(p_socialDifficulties) = '' THEN
        SET p_outputMessage = 'Social Difficulties is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_schoolWorkDifficulties IS NULL OR TRIM(p_schoolWorkDifficulties) = '' THEN
        SET p_outputMessage = 'School/Work Difficulties is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_lifeGoals IS NULL OR TRIM(p_lifeGoals) = '' THEN
        SET p_outputMessage = 'Life Goals is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_thingsToChange IS NULL OR TRIM(p_thingsToChange) = '' THEN
        SET p_outputMessage = 'Things To Change is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_saveType = 'I' THEN
        IF EXISTS (SELECT * FROM personal_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Personal information already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        INSERT INTO personal_information (
            patientId, thingsLiked,
            assets, badPoints, socialDifficulties, schoolWorkDifficulties,
            lifeGoals, thingsToChange
        ) VALUES (
            p_patientId, p_thingsLiked,
            v_assetsConcat, v_badPointsConcat, v_socialDifficultiesConcat,
            p_schoolWorkDifficulties, p_lifeGoals, p_thingsToChange
        );
        
        SET @_personalInfoId = LAST_INSERT_ID();
        
        INSERT INTO personal_information_single (
            personalInfoId
        ) VALUES (
            @_personalInfoId
        );
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Personal information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        IF NOT EXISTS (SELECT * FROM personal_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Personal information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        UPDATE personal_information
        SET
      
      
            thingsLiked = p_thingsLiked,
            assets = v_assetsConcat,
            badPoints = v_badPointsConcat,
            socialDifficulties = v_socialDifficultiesConcat,
       
            schoolWorkDifficulties = p_schoolWorkDifficulties,
            lifeGoals = p_lifeGoals,
            thingsToChange = p_thingsToChange
        WHERE patientId = p_patientId;
        
        UPDATE personal_information_single
        SET
            modifiedDate = CURRENT_TIMESTAMP()
        WHERE personalInfoId = (SELECT personalInfoId FROM personal_information WHERE patientId = p_patientId);
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Personal information updated successfully.';
        
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `personal_information_family_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `personal_information_family_insert_update`(
    IN p_patientId INT,
    IN p_maritalStatusHusband VARCHAR(50),
    IN p_yearsMarriedHusband DECIMAL(4,2),
    IN p_maritalStatusWife VARCHAR(50),
    IN p_yearsMarriedWife DECIMAL(4,2),
    IN p_maleChildrenAges VARCHAR(50),
    IN p_femaleChildrenAges VARCHAR(50),
    IN p_religiosity INT,
    IN p_thingsLiked TEXT,
    IN p_assets TEXT,
    IN p_badPoints TEXT,
    IN p_socialDifficulties TEXT,
    IN p_loveSexDifficulties TEXT,
    IN p_schoolWorkDifficulties TEXT,
    IN p_lifeGoals TEXT,
    IN p_thingsToChange TEXT,
    IN p_occupationTrainedHusband VARCHAR(100),
    IN p_occupationHusband VARCHAR(100),
    IN p_occupationFullTimeHusband VARCHAR(20),
    IN p_occupationTrainedWife VARCHAR(100),
    IN p_occupationWife VARCHAR(100),
    IN p_occupationFullTimeWife VARCHAR(20),
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputPatientId INT
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    
    DECLARE v_i_assets INT DEFAULT 0;
    DECLARE v_i_badPoints INT DEFAULT 0;
    DECLARE v_noOfAssets INT;
    DECLARE v_noOfBadPoints INT;
    DECLARE v_assetName VARCHAR(255);
    DECLARE v_badPointName VARCHAR(255);
    DECLARE v_assetsConcat TEXT DEFAULT '';
    DECLARE v_badPointsConcat TEXT DEFAULT '';
    
    DECLARE v_i_socialDifficulties INT DEFAULT 0;
    DECLARE v_noOfSocialDifficulties INT;
    DECLARE v_socialDifficultyName VARCHAR(255);
    DECLARE v_socialDifficultiesConcat TEXT DEFAULT '';
    
    DECLARE v_occupationTrainedIdHusband INT;
    DECLARE v_occupationIdHusband INT;
    DECLARE v_occupationTrainedIdWife INT;
    DECLARE v_occupationIdWife INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
    
    START TRANSACTION;
    
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_patientId IS NULL OR p_patientId < 1 THEN
        SET p_outputMessage = 'Invalid patientId.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Map occupation IDs for husband
    SET v_occupationTrainedIdHusband = (SELECT occupationId FROM occupations WHERE occupationName = p_occupationTrainedHusband);
    SET v_occupationIdHusband = (SELECT occupationId FROM occupations WHERE occupationName = p_occupationHusband);
    
    -- Map occupation IDs for wife
    SET v_occupationTrainedIdWife = (SELECT occupationId FROM occupations WHERE occupationName = p_occupationTrainedWife);
    SET v_occupationIdWife = (SELECT occupationId FROM occupations WHERE occupationName = p_occupationWife);
    
    IF v_occupationTrainedIdHusband IS NULL THEN
        SET p_outputMessage = 'Invalid Occupation Trained for Husband.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF v_occupationIdHusband IS NULL THEN
        SET p_outputMessage = 'Invalid Occupation for Husband.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF v_occupationTrainedIdWife IS NULL THEN
        SET p_outputMessage = 'Invalid Occupation Trained for Wife.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF v_occupationIdWife IS NULL THEN
        SET p_outputMessage = 'Invalid Occupation for Wife.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
           
        
    -- Process assets JSON
    SET v_noOfAssets = JSON_LENGTH(p_assets);
    IF v_noOfAssets > 0 THEN
        WHILE v_i_assets < v_noOfAssets DO
            SET v_assetName = JSON_UNQUOTE(JSON_EXTRACT(p_assets, CONCAT('$[', v_i_assets, '].name')));
    


    
    
            IF v_assetName IS NULL OR TRIM(v_assetName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Asset ', v_i_assets + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_assetName, REPLACE(v_assetsConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate asset "', v_assetName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_assets = 0 THEN
                SET v_assetsConcat = v_assetName;
            ELSE
                SET v_assetsConcat = CONCAT(v_assetsConcat, ';;', v_assetName);
            END IF;
            SET v_i_assets = v_i_assets + 1;
        END WHILE;
    END IF;
    
    -- Process badPoints JSON
    SET v_noOfBadPoints = JSON_LENGTH(p_badPoints);
    IF v_noOfBadPoints > 0 THEN
        WHILE v_i_badPoints < v_noOfBadPoints DO
            SET v_badPointName = JSON_UNQUOTE(JSON_EXTRACT(p_badPoints, CONCAT('$[', v_i_badPoints, '].name')));
            IF v_badPointName IS NULL OR TRIM(v_badPointName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Bad Point ', v_i_badPoints + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_badPointName, REPLACE(v_badPointsConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate bad point "', v_badPointName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_badPoints = 0 THEN
                SET v_badPointsConcat = v_badPointName;
            ELSE
                SET v_badPointsConcat = CONCAT(v_badPointsConcat, ';;', v_badPointName);
            END IF;
            SET v_i_badPoints = v_i_badPoints + 1;
        END WHILE;
    END IF;
    
    -- Process socialDifficulties JSON
    SET v_noOfSocialDifficulties = JSON_LENGTH(p_socialDifficulties);
    IF v_noOfSocialDifficulties > 0 THEN
        WHILE v_i_socialDifficulties < v_noOfSocialDifficulties DO
            SET v_socialDifficultyName = JSON_UNQUOTE(JSON_EXTRACT(p_socialDifficulties, CONCAT('$[', v_i_socialDifficulties, '].name')));
            IF v_socialDifficultyName IS NULL OR TRIM(v_socialDifficultyName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Social difficulty ', v_i_socialDifficulties + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_socialDifficultyName, REPLACE(v_socialDifficultiesConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate social difficulty "', v_socialDifficultyName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_socialDifficulties = 0 THEN
                SET v_socialDifficultiesConcat = v_socialDifficultyName;
            ELSE
                SET v_socialDifficultiesConcat = CONCAT(v_socialDifficultiesConcat, ';;', v_socialDifficultyName);
            END IF;
            SET v_i_socialDifficulties = v_i_socialDifficulties + 1;
        END WHILE;
    END IF;
    
    -- Validate required fields
    IF p_maritalStatusHusband IS NULL OR TRIM(p_maritalStatusHusband) = '' THEN
        SET p_outputMessage = 'Husband Marital Status is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_maritalStatusHusband IN ('married_first_time', 'married_second_time') AND (p_yearsMarriedHusband IS NULL OR p_yearsMarriedHusband = 0) THEN
        SET p_outputMessage = 'Number of Years Married for Husband is required for current marriage.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_maritalStatusWife IS NULL OR TRIM(p_maritalStatusWife) = '' THEN
        SET p_outputMessage = 'Wife Marital Status is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_maritalStatusWife IN ('married_first_time', 'married_second_time') AND (p_yearsMarriedWife IS NULL OR p_yearsMarriedWife = 0) THEN
        SET p_outputMessage = 'Number of Years Married for Wife is required for current marriage.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;

    IF p_loveSexDifficulties IS NULL OR TRIM(p_loveSexDifficulties) = '' THEN
        SET p_outputMessage = 'Love/Sex Difficulties is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_occupationTrainedHusband IS NULL OR TRIM(p_occupationTrainedHusband) = '' THEN
        SET p_outputMessage = 'Occupation Trained for Husband is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_occupationHusband IS NULL OR TRIM(p_occupationHusband) = '' THEN
        SET p_outputMessage = 'Occupation for Husband is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_occupationFullTimeHusband IS NULL OR TRIM(p_occupationFullTimeHusband) = '' THEN
        SET p_outputMessage = 'Occupation Full Time for Husband is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_occupationTrainedWife IS NULL OR TRIM(p_occupationTrainedWife) = '' THEN
        SET p_outputMessage = 'Occupation Trained for Wife is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_occupationWife IS NULL OR TRIM(p_occupationWife) = '' THEN
        SET p_outputMessage = 'Occupation for Wife is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_occupationFullTimeWife IS NULL OR TRIM(p_occupationFullTimeWife) = '' THEN
        SET p_outputMessage = 'Occupation Full Time for Wife is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_maritalStatusHusband IN ('married_first_time', 'married_second_time') THEN
        IF p_yearsMarriedHusband IS NULL THEN
            SET p_outputMessage = 'Years Married for Husband is required for married status.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        IF p_yearsMarriedHusband < 0 THEN
            SET p_outputMessage = 'Years Married for Husband must be a non-negative number.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
    END IF;
    IF p_maritalStatusWife IN ('married_first_time', 'married_second_time') THEN
        IF p_yearsMarriedWife IS NULL THEN
            SET p_outputMessage = 'Years Married for Wife is required for married status.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        IF p_yearsMarriedWife < 0 THEN
            SET p_outputMessage = 'Years Married for Wife must be a non-negative number.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
    END IF;
 
    
  
  
    IF p_lifeGoals IS NULL OR TRIM(p_lifeGoals) = '' THEN
        SET p_outputMessage = 'Life Goals is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_thingsToChange IS NULL OR TRIM(p_thingsToChange) = '' THEN
        SET p_outputMessage = 'Things To Change is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_saveType = 'I' THEN
        IF EXISTS (SELECT * FROM personal_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Personal information already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        INSERT INTO personal_information (
            patientId, maleChildrenAges, femaleChildrenAges, religiosity, thingsLiked,
            assets, badPoints, socialDifficulties, loveSexDifficulties, schoolWorkDifficulties,
            lifeGoals, thingsToChange
        ) VALUES (
            p_patientId, p_maleChildrenAges, p_femaleChildrenAges, p_religiosity, p_thingsLiked,
            v_assetsConcat, v_badPointsConcat, v_socialDifficultiesConcat, p_loveSexDifficulties,
            p_schoolWorkDifficulties, p_lifeGoals, p_thingsToChange
        );
        
        SET @_personalInfoId = LAST_INSERT_ID();
        
        INSERT INTO personal_information_family (
            personalInfoId, maritalStatusHusband, yearsMarriedHusband, occupationFullTimeHusband,
            occupationIdHusband, occupationTrainedIdHusband, maritalStatusWife, yearsMarriedWife,
            occupationFullTimeWife, occupationIdWife, occupationTrainedIdWife, createdDate, modifiedDate
        ) VALUES (
            @_personalInfoId, p_maritalStatusHusband, p_yearsMarriedHusband, p_occupationFullTimeHusband,
            v_occupationIdHusband, v_occupationTrainedIdHusband, p_maritalStatusWife, p_yearsMarriedWife,
            p_occupationFullTimeWife, v_occupationIdWife, v_occupationTrainedIdWife,
            CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()
        );
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Personal information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        IF NOT EXISTS (SELECT * FROM personal_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Personal information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        UPDATE personal_information
        SET
            maleChildrenAges = p_maleChildrenAges,
            femaleChildrenAges = p_femaleChildrenAges,
            religiosity = p_religiosity,
            thingsLiked = p_thingsLiked,
            assets = v_assetsConcat,
            badPoints = v_badPointsConcat,
            socialDifficulties = v_socialDifficultiesConcat,
            loveSexDifficulties = p_loveSexDifficulties,
            schoolWorkDifficulties = p_schoolWorkDifficulties,
            lifeGoals = p_lifeGoals,
            thingsToChange = p_thingsToChange
        WHERE patientId = p_patientId;
        
        UPDATE personal_information_family
        SET
            maritalStatusHusband = p_maritalStatusHusband,
            yearsMarriedHusband = p_yearsMarriedHusband,
            occupationFullTimeHusband = p_occupationFullTimeHusband,
            occupationIdHusband = v_occupationIdHusband,
            occupationTrainedIdHusband = v_occupationTrainedIdHusband,
            maritalStatusWife = p_maritalStatusWife,
            yearsMarriedWife = p_yearsMarriedWife,
            occupationFullTimeWife = p_occupationFullTimeWife,
            occupationIdWife = v_occupationIdWife,
            occupationTrainedIdWife = v_occupationTrainedIdWife,
            modifiedDate = CURRENT_TIMESTAMP()
        WHERE personalInfoId = (SELECT personalInfoId FROM personal_information WHERE patientId = p_patientId);
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Personal information updated successfully.';
        
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `personal_information_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `personal_information_insert_update`(
    IN p_patientId INT,
    IN p_maritalStatus VARCHAR(50),
    IN p_yearsMarried DECIMAL(4,2),
    IN p_maleChildrenAges VARCHAR(50),
    IN p_femaleChildrenAges VARCHAR(50),
    IN p_religiosity INT,
    IN p_thingsLiked TEXT,
    IN p_assets TEXT,
    IN p_badPoints TEXT,
    IN p_socialDifficulties TEXT,
    IN p_loveSexDifficulties TEXT,
    IN p_schoolWorkDifficulties TEXT,
    IN p_lifeGoals TEXT,
    IN p_thingsToChange TEXT,
    IN p_occupationTrained VARCHAR(100),
    IN p_occupation VARCHAR(100),
    IN p_occupationFullTime VARCHAR(20),
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputPatientId INT
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    
    DECLARE v_i_assets INT DEFAULT 0;
    DECLARE v_i_badPoints INT DEFAULT 0;
    DECLARE v_noOfAssets INT;
    DECLARE v_noOfBadPoints INT;
    DECLARE v_assetName VARCHAR(255);
    DECLARE v_badPointName VARCHAR(255);
    DECLARE v_assetsConcat TEXT DEFAULT '';
    DECLARE v_badPointsConcat TEXT DEFAULT '';
    
    DECLARE v_i_socialDifficulties INT DEFAULT 0;
    DECLARE v_noOfSocialDifficulties INT;
    DECLARE v_socialDifficultyName VARCHAR(255);
    DECLARE v_socialDifficultiesConcat TEXT DEFAULT '';
    
    DECLARE v_occupationTrainedId INT;
    DECLARE v_occupationId INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
    
    START TRANSACTION;
    
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_patientId IS NULL OR p_patientId < 1 THEN
        SET p_outputMessage = 'Invalid patientId.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Map occupation IDs
    SET v_occupationTrainedId = (SELECT occupationId FROM occupations WHERE occupationName = p_occupationTrained);
    SET v_occupationId = (SELECT occupationId FROM occupations WHERE occupationName = p_occupation);
    
    IF v_occupationTrainedId IS NULL THEN
        SET p_outputMessage = 'Invalid Occupation Trained.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF v_occupationId IS NULL THEN
        SET p_outputMessage = 'Invalid Occupation.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Process assets JSON
    SET v_noOfAssets = JSON_LENGTH(p_assets);
    IF v_noOfAssets > 0 THEN
        WHILE v_i_assets < v_noOfAssets DO
            SET v_assetName = JSON_UNQUOTE(JSON_EXTRACT(p_assets, CONCAT('$[', v_i_assets, '].name')));
            IF v_assetName IS NULL OR TRIM(v_assetName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Asset ', v_i_assets + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_assetName, REPLACE(v_assetsConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate asset "', v_assetName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_assets = 0 THEN
                SET v_assetsConcat = v_assetName;
            ELSE
                SET v_assetsConcat = CONCAT(v_assetsConcat, ';;', v_assetName);
            END IF;
            SET v_i_assets = v_i_assets + 1;
        END WHILE;
    END IF;
    
    -- Process badPoints JSON
    SET v_noOfBadPoints = JSON_LENGTH(p_badPoints);
    IF v_noOfBadPoints > 0 THEN
        WHILE v_i_badPoints < v_noOfBadPoints DO
            SET v_badPointName = JSON_UNQUOTE(JSON_EXTRACT(p_badPoints, CONCAT('$[', v_i_badPoints, '].name')));
            IF v_badPointName IS NULL OR TRIM(v_badPointName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Bad Point ', v_i_badPoints + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_badPointName, REPLACE(v_badPointsConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate bad point "', v_badPointName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_badPoints = 0 THEN
                SET v_badPointsConcat = v_badPointName;
            ELSE
                SET v_badPointsConcat = CONCAT(v_badPointsConcat, ';;', v_badPointName);
            END IF;
            SET v_i_badPoints = v_i_badPoints + 1;
        END WHILE;
    END IF;
    
    -- Process socialDifficulties JSON
    SET v_noOfSocialDifficulties = JSON_LENGTH(p_socialDifficulties);
    IF v_noOfSocialDifficulties > 0 THEN
        WHILE v_i_socialDifficulties < v_noOfSocialDifficulties DO
            SET v_socialDifficultyName = JSON_UNQUOTE(JSON_EXTRACT(p_socialDifficulties, CONCAT('$[', v_i_socialDifficulties, '].name')));
            IF v_socialDifficultyName IS NULL OR TRIM(v_socialDifficultyName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Social difficulty ', v_i_socialDifficulties + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF FIND_IN_SET(v_socialDifficultyName, REPLACE(v_socialDifficultiesConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate social difficulty "', v_socialDifficultyName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_i_socialDifficulties = 0 THEN
                SET v_socialDifficultiesConcat = v_socialDifficultyName;
            ELSE
                SET v_socialDifficultiesConcat = CONCAT(v_socialDifficultiesConcat, ';;', v_socialDifficultyName);
            END IF;
            SET v_i_socialDifficulties = v_i_socialDifficulties + 1;
        END WHILE;
    END IF;
    
    -- Validate required fields
    IF p_maritalStatus IS NULL OR TRIM(p_maritalStatus) = '' THEN
        SET p_outputMessage = 'Marital Status is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_maritalStatus IN ('married_first_time', 'married_second_time') AND (p_yearsMarried IS NULL OR p_yearsMarried = 0) THEN
        SET p_outputMessage = 'Number of Years Married is required for current marriage.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_religiosity IS NULL THEN
        SET p_outputMessage = 'Religiosity is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_loveSexDifficulties IS NULL OR TRIM(p_loveSexDifficulties) = '' THEN
        SET p_outputMessage = 'Love/Sex Difficulties is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_occupationTrained IS NULL OR TRIM(p_occupationTrained) = '' THEN
        SET p_outputMessage = 'Occupation Trained is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_occupation IS NULL OR TRIM(p_occupation) = '' THEN
        SET p_outputMessage = 'Occupation is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_occupationFullTime IS NULL OR TRIM(p_occupationFullTime) = '' THEN
        SET p_outputMessage = 'Occupation Full Time is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_maritalStatus IN ('married_first_time', 'married_second_time') THEN
        IF p_yearsMarried IS NULL THEN
            SET p_outputMessage = 'Years Married is required for married status.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        IF p_yearsMarried < 0 THEN
            SET p_outputMessage = 'Years Married must be a non-negative number.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
    END IF;
    IF p_religiosity < 1 OR p_religiosity > 9 THEN
        SET p_outputMessage = 'Religiosity must be a number between 1 and 9.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_thingsLiked IS NULL OR TRIM(p_thingsLiked) = '' THEN
        SET p_outputMessage = 'Things Liked is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_assets IS NULL OR TRIM(p_assets) = '' THEN
        SET p_outputMessage = 'Assets is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_badPoints IS NULL OR TRIM(p_badPoints) = '' THEN
        SET p_outputMessage = 'Bad Points is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_socialDifficulties IS NULL OR TRIM(p_socialDifficulties) = '' THEN
        SET p_outputMessage = 'Social Difficulties is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_schoolWorkDifficulties IS NULL OR TRIM(p_schoolWorkDifficulties) = '' THEN
        SET p_outputMessage = 'School/Work Difficulties is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_lifeGoals IS NULL OR TRIM(p_lifeGoals) = '' THEN
        SET p_outputMessage = 'Life Goals is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    IF p_thingsToChange IS NULL OR TRIM(p_thingsToChange) = '' THEN
        SET p_outputMessage = 'Things To Change is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_saveType = 'I' THEN
        IF EXISTS (SELECT * FROM personal_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Personal information already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        INSERT INTO personal_information (
            patientId, maleChildrenAges, femaleChildrenAges, religiosity, thingsLiked,
            assets, badPoints, socialDifficulties, loveSexDifficulties, schoolWorkDifficulties,
            lifeGoals, thingsToChange
        ) VALUES (
            p_patientId, p_maleChildrenAges, p_femaleChildrenAges, p_religiosity, p_thingsLiked,
            v_assetsConcat, v_badPointsConcat, v_socialDifficultiesConcat, p_loveSexDifficulties,
            p_schoolWorkDifficulties, p_lifeGoals, p_thingsToChange
        );
        
        SET @_personalInfoId = LAST_INSERT_ID();
        
        INSERT INTO personal_information_single (
            personalInfoId, maritalStatus, yearsMarried, occupationFullTime,
            occupationId, occupationTrainedId, createdDate, modifiedDate
        ) VALUES (
            @_personalInfoId, p_maritalStatus, p_yearsMarried, p_occupationFullTime,
            v_occupationId, v_occupationTrainedId, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()
        );
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Personal information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        IF NOT EXISTS (SELECT * FROM personal_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Personal information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        UPDATE personal_information
        SET
            maleChildrenAges = p_maleChildrenAges,
            femaleChildrenAges = p_femaleChildrenAges,
            religiosity = p_religiosity,
            thingsLiked = p_thingsLiked,
            assets = v_assetsConcat,
            badPoints = v_badPointsConcat,
            socialDifficulties = v_socialDifficultiesConcat,
            loveSexDifficulties = p_loveSexDifficulties,
            schoolWorkDifficulties = p_schoolWorkDifficulties,
            lifeGoals = p_lifeGoals,
            thingsToChange = p_thingsToChange
        WHERE patientId = p_patientId;
        
        UPDATE personal_information_single
        SET
            maritalStatus = p_maritalStatus,
            yearsMarried = p_yearsMarried,
            occupationFullTime = p_occupationFullTime,
            occupationId = v_occupationId,
            occupationTrainedId = v_occupationTrainedId,
            modifiedDate = CURRENT_TIMESTAMP()
        WHERE personalInfoId = (SELECT personalInfoId FROM personal_information WHERE patientId = p_patientId);
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Personal information updated successfully.';
        
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `personal_information_insert_update_notinuse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `personal_information_insert_update_notinuse`(
    IN p_patientId INT,
    IN p_maritalStatus VARCHAR(50),
    IN p_yearsMarried decimal(4,2),
    IN p_maleChildrenAges VARCHAR(50),
    IN p_femaleChildrenAges VARCHAR(50),
    IN p_religiosity INT,
    IN p_thingsLiked TEXT,
    IN p_assets TEXT,
    IN p_badPoints TEXT,
    IN p_socialDifficulties TEXT,
    IN p_loveSexDifficulties TEXT,
    IN p_schoolWorkDifficulties TEXT,
    IN p_lifeGoals TEXT,
    IN p_thingsToChange TEXT,
    IN p_occupationTrained VARCHAR(100),
    IN p_occupation VARCHAR(100),
    IN p_occupationFullTime VARCHAR(20),
    IN p_saveType VARCHAR(1),
    IN p_userLogId INT,
    IN p_utcOffset VARCHAR(50),
    IN p_pageName VARCHAR(50),
    IN p_isConfirm BIT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_outputPatientId INT
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);

   DECLARE v_i_assets INT DEFAULT 0;
    DECLARE v_i_badPoints INT DEFAULT 0;
    DECLARE v_noOfAssets INT;
    DECLARE v_noOfBadPoints INT;
    DECLARE v_assetName VARCHAR(255);
    DECLARE v_badPointName VARCHAR(255);
    DECLARE v_assetsConcat TEXT DEFAULT '';
    DECLARE v_badPointsConcat TEXT DEFAULT '';
    DECLARE v_patientTypeId int;
   
   
       DECLARE v_i_socialDifficulties INT DEFAULT 0;
      DECLARE v_noOfSocialDifficulties INT;
       DECLARE v_socialDifficultyName VARCHAR(255);
    DECLARE v_socialDifficultiesConcat TEXT DEFAULT '';
   
   DECLARE v_occupationTrainedId int;
   DECLARE v_occupationId int;

    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
    
    
    
    START TRANSACTION;
    
    
    IF p_saveType NOT IN ('I', 'U') THEN
        SET p_outputMessage = 'Invalid save type. Use I for insert or U for update.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_patientId IS NULL OR p_patientId < 1 THEN
        SET p_outputMessage = 'Invalid patientId.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
  set v_patientTypeId=(select patientTypeId from patient_registration where patientId=p_patientId);
      
    if(v_patientTypeId=3 or v_patientTypeId=1) then
    
  
        IF p_maritalStatus IS NULL OR TRIM(p_maritalStatus) = '' THEN
        SET p_outputMessage = 'Marital Status is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
        
  IF p_maritalStatus IN ('married_first_time', 'married_second_time') AND (p_yearsMarried IS NULL OR p_yearsMarried = 0) THEN
    SET p_outputMessage = 'Number of Years Married is required for current marriage.';
    SET p_responseStatus = 'failed';
    ROLLBACK;
    LEAVE sp;
END IF;

        
        
        
        
        
        IF p_religiosity IS NULL THEN
        SET p_outputMessage = 'Religiosity is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
        
        
            IF p_loveSexDifficulties IS NULL OR TRIM(p_loveSexDifficulties) = '' THEN
        SET p_outputMessage = 'Love/Sex Difficulties is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
            
            
            
                
    IF p_occupationTrained IS NULL OR TRIM(p_occupationTrained) = '' THEN
        SET p_outputMessage = 'Occupation Trained is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_occupation IS NULL OR TRIM(p_occupation) = '' THEN
        SET p_outputMessage = 'Occupation is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_occupationFullTime IS NULL OR TRIM(p_occupationFullTime) = '' THEN
        SET p_outputMessage = 'Occupation Full Time is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    IF p_maritalStatus IN ('married_first_time', 'married_second_time') THEN
        IF p_yearsMarried IS NULL THEN
            SET p_outputMessage = 'Years Married is required for married status.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        IF p_yearsMarried < 0 THEN
            SET p_outputMessage = 'Years Married must be a non-negative number.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
    END IF;
    
    
    IF p_religiosity < 1 OR p_religiosity > 9 THEN
        SET p_outputMessage = 'Religiosity must be a number between 1 and 9.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    
    end if;
    

    
    IF p_thingsLiked IS NULL OR TRIM(p_thingsLiked) = '' THEN
        SET p_outputMessage = 'Things Liked is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_assets IS NULL OR TRIM(p_assets) = '' THEN
        SET p_outputMessage = 'Assets is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_badPoints IS NULL OR TRIM(p_badPoints) = '' THEN
        SET p_outputMessage = 'Bad Points is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_socialDifficulties IS NULL OR TRIM(p_socialDifficulties) = '' THEN
        SET p_outputMessage = 'Social Difficulties is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    

    
    IF p_schoolWorkDifficulties IS NULL OR TRIM(p_schoolWorkDifficulties) = '' THEN
        SET p_outputMessage = 'School/Work Difficulties is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_lifeGoals IS NULL OR TRIM(p_lifeGoals) = '' THEN
        SET p_outputMessage = 'Life Goals is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_thingsToChange IS NULL OR TRIM(p_thingsToChange) = '' THEN
        SET p_outputMessage = 'Things To Change is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;

    
  
     
             
        SET v_noOfAssets = JSON_LENGTH(p_assets);
      -- Process assets JSON
 
    IF v_noOfAssets > 0 THEN
    
        WHILE v_i_assets < v_noOfAssets DO
            SET v_assetName = JSON_UNQUOTE(JSON_EXTRACT(p_assets, CONCAT('$[', v_i_assets, '].name')));

                       
            IF v_assetName IS NULL OR TRIM(v_assetName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Asset ', v_i_assets + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Check for duplicates in concatenated string
            IF FIND_IN_SET(v_assetName, REPLACE(v_assetsConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate asset "', v_assetName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Concatenate assetName
            IF v_i_assets = 0 THEN
                SET v_assetsConcat = v_assetName;
            ELSE
                SET v_assetsConcat = CONCAT(v_assetsConcat, ';;', v_assetName);
            END IF;

            SET v_i_assets = v_i_assets + 1;
        END WHILE;
    END IF;

       
    -- Process badPoints JSON
     SET v_noOfBadPoints = JSON_LENGTH(p_badPoints);
    IF v_noOfBadPoints > 0 THEN
     
        WHILE v_i_badPoints < v_noOfBadPoints DO
            SET v_badPointName = JSON_UNQUOTE(JSON_EXTRACT(p_badPoints, CONCAT('$[', v_i_badPoints, '].name')));

            IF v_badPointName IS NULL OR TRIM(v_badPointName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Bad Point ', v_i_badPoints + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Check for duplicates in concatenated string
            IF FIND_IN_SET(v_badPointName, REPLACE(v_badPointsConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate bad point "', v_badPointName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Concatenate badPointName
            IF v_i_badPoints = 0 THEN
                SET v_badPointsConcat = v_badPointName;
            ELSE
                SET v_badPointsConcat = CONCAT(v_badPointsConcat, ';;', v_badPointName);
            END IF;

            SET v_i_badPoints = v_i_badPoints + 1;
        END WHILE;
    END IF;

            
   
       SET v_noOfSocialDifficulties = JSON_LENGTH(p_socialDifficulties);
    IF v_noOfSocialDifficulties > 0 THEN
     
        WHILE v_i_socialDifficulties < v_noOfSocialDifficulties DO
            SET v_socialDifficultyName = JSON_UNQUOTE(JSON_EXTRACT(p_socialDifficulties, CONCAT('$[', v_i_socialDifficulties, '].name')));

            IF v_socialDifficultyName IS NULL OR TRIM(v_socialDifficultyName) = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Social difficulty ', v_i_socialDifficulties + 1, ' name is required');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Check for duplicates in concatenated string
            IF FIND_IN_SET(v_socialDifficultyName, REPLACE(v_socialDifficultiesConcat, ';;', ',')) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate social difficulty "', v_socialDifficultyName, '"');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Concatenate badPointName
            IF v_i_socialDifficulties = 0 THEN
                SET v_socialDifficultiesConcat = v_socialDifficultyName;
            ELSE
                SET v_socialDifficultiesConcat = CONCAT(v_socialDifficultiesConcat, ';;', v_socialDifficultyName);
            END IF;

            SET v_i_socialDifficulties = v_i_socialDifficulties + 1;
        END WHILE;
    END IF;
 
            
            
            
  set v_occupationTrainedId=(select occupationId from occupations where occupationName=p_occupationTrained);
  
  
  set v_occupationId=(select occupationId from occupations where occupationName=p_occupation);
  

  
    
 
  
  
    IF p_saveType = 'I' THEN
        
    

    IF EXISTS (SELECT * FROM personal_information WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Personal information is already exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
       
    
        INSERT INTO personal_information (
            patientId, maritalStatus, yearsMarried, maleChildrenAges, femaleChildrenAges,
            religiosity, thingsLiked, assets, badPoints, socialDifficulties,
            loveSexDifficulties, schoolWorkDifficulties, lifeGoals, thingsToChange,
            occupationTrainedId, occupationId, occupationFullTime
        ) VALUES (
            p_patientId, p_maritalStatus, p_yearsMarried, p_maleChildrenAges, p_femaleChildrenAges,
            p_religiosity, p_thingsLiked, v_assetsConcat, v_badPointsConcat, v_socialDifficultiesConcat,
            p_loveSexDifficulties, p_schoolWorkDifficulties, p_lifeGoals, p_thingsToChange,
            v_occupationTrainedId, v_occupationId, p_occupationFullTime
        );
        

        SET p_outputPatientId = p_patientId;
        
        
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Personal information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        
        IF p_patientId IS NULL OR p_patientId < 1 THEN
            SET p_outputMessage = 'Invalid patientId.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        
        IF NOT EXISTS (SELECT * FROM personal_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Personal information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        
        UPDATE personal_information
        SET
            maritalStatus = p_maritalStatus,
            yearsMarried = p_yearsMarried,
            maleChildrenAges = p_maleChildrenAges,
            femaleChildrenAges = p_femaleChildrenAges,
            religiosity = p_religiosity,
            thingsLiked = p_thingsLiked,
            assets = v_assetsConcat,
            badPoints = v_badPointsConcat,
            socialDifficulties = v_socialDifficultiesConcat,
            loveSexDifficulties = p_loveSexDifficulties,
            schoolWorkDifficulties = p_schoolWorkDifficulties,
            lifeGoals = p_lifeGoals,
            thingsToChange = p_thingsToChange,
            
            occupationTrainedId = v_occupationTrainedId,
            occupationId = v_occupationId,
            
            occupationFullTime = p_occupationFullTime
        WHERE patientId = p_patientId;
        
        SET p_outputPatientId = p_patientId;
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Personal information updated successfully.';
        
    END IF;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-09 21:00:50
