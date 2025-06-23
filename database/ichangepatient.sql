-- MariaDB dump 10.19-11.3.0-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: ichangepatient
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `al_stream`
--

LOCK TABLES `al_stream` WRITE;
/*!40000 ALTER TABLE `al_stream` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
(4,'Economics','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(5,'Business Studies','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(6,'Accounting','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(7,'Geography','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(8,'Political Science','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(9,'History','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(10,'Engineering Technology','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(11,'Science for Technology','2025-06-15 12:34:01','2025-06-15 12:34:01'),
(12,'Information Technology','2025-06-15 12:34:01','2025-06-15 12:34:01');
/*!40000 ALTER TABLE `al_subjects` ENABLE KEYS */;
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
  `marks` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`alId`),
  KEY `educationInfoId` (`educationInfoId`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `education_al_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information` (`educationInfoId`),
  CONSTRAINT `education_al_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `al_subjects` (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_al`
--

LOCK TABLES `education_al` WRITE;
/*!40000 ALTER TABLE `education_al` DISABLE KEYS */;
INSERT INTO `education_al` VALUES
(25,1,9,90,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(26,1,10,80,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(27,1,11,90,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(28,3,12,90,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(29,3,11,80,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(30,3,12,90,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(31,4,1,90,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(32,4,7,90,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(33,4,6,80,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(34,5,1,80,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(35,5,8,70,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45'),
(36,5,9,80,NULL,'2025-06-16 19:18:45','2025-06-16 19:18:45');
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
  `educationYears` int(11) NOT NULL,
  `isScholarship` bit(1) DEFAULT NULL,
  `isOL` bit(1) DEFAULT NULL,
  `isAL` bit(1) DEFAULT NULL,
  `isUniversity` bit(1) DEFAULT NULL,
  `remarkOL` varchar(100) DEFAULT NULL,
  `remarkAL` varchar(100) DEFAULT NULL,
  `alStreamId` int(11) DEFAULT NULL,
  `remarkUniversity` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`educationInfoId`),
  KEY `patientId` (`patientId`),
  CONSTRAINT `education_information_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_information`
--

LOCK TABLES `education_information` WRITE;
/*!40000 ALTER TABLE `education_information` DISABLE KEYS */;
INSERT INTO `education_information` VALUES
(1,1,12,'','','','',NULL,NULL,NULL,NULL,'2025-06-15 17:03:37','2025-06-17 15:51:04'),
(2,2,10,'\0','','\0','',NULL,NULL,NULL,NULL,'2025-06-15 17:03:37','2025-06-17 15:50:44'),
(3,3,13,'','','','',NULL,NULL,NULL,NULL,'2025-06-15 17:03:37','2025-06-17 15:51:04'),
(4,4,15,'','','','',NULL,NULL,NULL,NULL,'2025-06-15 17:03:37','2025-06-17 15:51:04'),
(5,5,11,'\0','','','\0',NULL,NULL,NULL,NULL,'2025-06-15 17:03:37','2025-06-15 17:03:37');
/*!40000 ALTER TABLE `education_information` ENABLE KEYS */;
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
  `marks` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`olId`),
  KEY `educationInfoId` (`educationInfoId`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `education_ol_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information` (`educationInfoId`),
  CONSTRAINT `education_ol_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `ol_subjects` (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_ol`
--

LOCK TABLES `education_ol` WRITE;
/*!40000 ALTER TABLE `education_ol` DISABLE KEYS */;
INSERT INTO `education_ol` VALUES
(1,1,1,90,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(2,1,2,90,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(3,1,3,80,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(4,1,4,90,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(5,2,5,80,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(6,2,2,70,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(7,2,3,70,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(8,3,1,90,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(9,3,2,80,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(10,3,4,80,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(11,3,6,90,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(12,4,1,90,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(13,4,2,90,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(14,4,3,90,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(15,4,4,80,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(16,4,7,90,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(17,5,5,80,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(18,5,2,70,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(19,5,3,80,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41'),
(20,5,8,80,2004,'2025-06-16 19:17:02','2025-06-17 15:19:41');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_scholarship`
--

LOCK TABLES `education_scholarship` WRITE;
/*!40000 ALTER TABLE `education_scholarship` DISABLE KEYS */;
INSERT INTO `education_scholarship` VALUES
(1,1,185,'Royal College, Colombo','','Received scholarship for academic excellence','2025-06-15 17:07:13','2025-06-15 17:07:13'),
(2,3,170,'Ananda College, Colombo','','Admitted to prestigious school','2025-06-15 17:07:13','2025-06-15 17:07:13'),
(3,4,190,'Visakha Vidyalaya, Colombo','','Top performer in scholarship exam','2025-06-15 17:07:13','2025-06-15 17:07:13');
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
  PRIMARY KEY (`highschoolId`),
  KEY `educationInfoId` (`educationInfoId`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `education_university_ibfk_1` FOREIGN KEY (`educationInfoId`) REFERENCES `education_information` (`educationInfoId`),
  CONSTRAINT `education_university_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `university_subjects` (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_university`
--

LOCK TABLES `education_university` WRITE;
/*!40000 ALTER TABLE `education_university` DISABLE KEYS */;
INSERT INTO `education_university` VALUES
(1,1,1,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21'),
(2,2,1,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21'),
(3,3,2,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21'),
(4,4,3,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21'),
(5,4,4,'First Class',2025,'2025-06-15 17:05:52','2025-06-17 15:47:21');
/*!40000 ALTER TABLE `education_university` ENABLE KEYS */;
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
  PRIMARY KEY (`familyInfoId`),
  KEY `patientId` (`patientId`),
  CONSTRAINT `family_information_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_information`
--

LOCK TABLES `family_information` WRITE;
/*!40000 ALTER TABLE `family_information` DISABLE KEYS */;
INSERT INTO `family_information` VALUES
(1,1,'Teacher','full-time',55,NULL,58,NULL,'Doctor','Engineer','Christianity','Christianity','Parents','Supportive,Caring,Loving','Strict,Disciplined,Encouraging',NULL,NULL,0,0,1,1,'30','28',1,2,'No','Occasional conflicts over responsibilities','',0,0,1,0),
(2,2,'','',60,NULL,NULL,10,'Teacher','Other','Hinduism','Hinduism','Single Mother','Warm,Overprotective','Distant',8,9,1,1,0,2,'','25, 22',3,3,'No','','Competitive relationship with younger sister',1,0,0,0),
(3,3,'Engineer','part-time',NULL,15,62,NULL,'Other','Doctor','Buddhism','Buddhism','Single Father,Grandparents','Caring','Supportive,Warm',NULL,NULL,0,0,2,0,'35, 32','',2,3,'Yes','','',0,0,0,0),
(4,4,'','',50,NULL,52,NULL,'Engineer','Teacher','Islam','Islam','Parents','Strict,Traditional','Loving,Encouraging',NULL,NULL,0,0,0,0,'','',1,1,'No','','',0,0,0,0),
(5,5,'Doctor','full-time',NULL,5,NULL,5,'Other','Other','Other','Other','Grandparents,Aunt','Distant','Distant',NULL,NULL,0,0,1,1,'27','29',2,3,'Yes','Strained relationship due to distance','',2,1,1,0),
(6,6,'Teacher','Yes',60,NULL,65,NULL,'Nurse','Engineer','Buddhist','Buddhist','Parents','Kind and caring','Strict but supportive',NULL,NULL,0,0,2,1,'30, 25','28',2,4,'No','None','Minor conflict',0,0,1,0);
/*!40000 ALTER TABLE `family_information` ENABLE KEYS */;
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
  PRIMARY KEY (`medicalInfoId`),
  KEY `patientId` (`patientId`),
  CONSTRAINT `medical_information_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_information`
--

LOCK TABLES `medical_information` WRITE;
/*!40000 ALTER TABLE `medical_information` DISABLE KEYS */;
INSERT INTO `medical_information` VALUES
(1,1,'Chronic back pain, hypertension','Persistent lower back pain, occasional headaches','Sprained ankle (2020), seasonal allergies','Symptoms worsen with prolonged sitting or stress','Symptoms improve with physical therapy and rest',50,2,1,20,0,'Yes',2,'Cognitive Behavioral Therapy (CBT)','Family history of hypertension'),
(2,2,'Type 2 diabetes','Fatigue, difficulty managing blood sugar levels','Migraines (2018-2020)','Symptoms worsen with poor diet or lack of sleep','Symptoms improve with regular exercise and medication',30,1,0,10,0,'No',0,'None','Recently started a new exercise regimen'),
(3,3,'None','Anxiety and difficulty sleeping','Minor depression (2021)','Symptoms worsen during high-pressure work situations','Symptoms improve with mindfulness and relaxation techniques',100,3,2,0,0,'Yes',1,'Talk therapy, mindfulness-based','Interested in exploring meditation further'),
(4,4,'Arthritis, high cholesterol','Joint pain, fatigue','Broken wrist (2015)','Symptoms worsen in cold weather','Symptoms improve with warm compresses and medication',0,0,0,0,0,'No',0,'None','Regular checkups with rheumatologist'),
(5,5,'Asthma','Shortness of breath during physical activity','Childhood eczema','Symptoms worsen with pollen exposure','Symptoms improve with inhaler use',10,1,0,5,0,'Yes',0,'Supportive therapy','Allergy testing recommended'),
(6,6,'Chronic back pain, hypertension','Persistent lower back pain, occasional headaches ooooooo','Sprained ankle (2020), seasonal allergies','Symptoms worsen with prolonged sitting or stress','Symptoms improve with physical therapy and rest',50,2,1,20,0,'Yes',2,'Cognitive Behavioral Therapy (CBT)','Family history of hypertension');
/*!40000 ALTER TABLE `medical_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ol_subjects`
--

DROP TABLE IF EXISTS `ol_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ol_subjects` (
  `subjectId` int(11) NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `modifiedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ol_subjects`
--

LOCK TABLES `ol_subjects` WRITE;
/*!40000 ALTER TABLE `ol_subjects` DISABLE KEYS */;
INSERT INTO `ol_subjects` VALUES
(1,'First Language (Sinhala)','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(2,'Mathematics','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(3,'English','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(4,'Science','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(5,'History','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(6,'Art','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(7,'First Language (Tamil)','2025-06-15 12:33:52','2025-06-15 12:33:52'),
(8,'Commerce','2025-06-15 12:33:52','2025-06-15 12:33:52');
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
  `referralPartyPresent` varchar(3) DEFAULT NULL,
  `formDate` date DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL,
  `patientTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`patientId`),
  KEY `patient_registration_patient_type_FK` (`patientTypeId`),
  CONSTRAINT `patient_registration_patient_type_FK` FOREIGN KEY (`patientTypeId`) REFERENCES `patient_type` (`patientTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_registration`
--

LOCK TABLES `patient_registration` WRITE;
/*!40000 ALTER TABLE `patient_registration` DISABLE KEYS */;
INSERT INTO `patient_registration` VALUES
(1,'PT-0001','John (individual)','Perera','Peter','1990-01-15',35,'Male','john.perera@example.com','0114547854','0119876543','123 Galle Road, Colombo 03, Sri Lanka','self','No','2024-06-01','2024-06-02 10:15:30',1),
(2,'PT-0002','Ama (child)','Silva','','1985-05-15',40,'Female','ama.silva@example.com','0812233445','','45 Kandy Road, Kandy, Sri Lanka','family doctor','Yes','2024-05-20','2024-06-01 08:45:10',2),
(3,'PT-0003','Nimal','Fernando','Kumar','1998-10-20',26,'Male','nimal.fernando@example.com','0912233445','0918765432','78 Main Street, Galle, Sri Lanka','psychologist or psychiatrist','No','2024-04-15','2024-05-28 13:30:55',3),
(4,'PT-0004','Sita','Wijesinghe','Rani','1970-03-10',55,'Female','sita.wijesinghe@example.com','0312233445','','12 Temple Road, Negombo, Sri Lanka','hospital or clinic','Yes','2024-03-10','2024-04-01 17:20:00',3),
(5,'PT-0005','Tharushi','Jayasinghe','','2000-07-25',24,'Female','tharushi.jayasinghe@example.com','0452233445','','56 Lake View, Nuwara Eliya, Sri Lanka','friend','No','2024-05-05','2024-06-01 09:10:40',3),
(6,'P0006','Fernando ed','Nimal ooo','K.','1990-07-22',34,'Male','nimal2.fernando@example.com','+94772233445','+94112349876','456 Kandy Road, Kurunegala, Sri Lanka','Hospital Event','0','2025-06-19','2025-06-19 14:10:33',3);
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
  `maritalStatus` varchar(50) DEFAULT NULL,
  `yearsMarried` int(11) DEFAULT NULL,
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
  `occupationTrained` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `occupationFullTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`personalInfoId`),
  KEY `patientId` (`patientId`),
  CONSTRAINT `personal_information_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient_registration` (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_information`
--

LOCK TABLES `personal_information` WRITE;
/*!40000 ALTER TABLE `personal_information` DISABLE KEYS */;
INSERT INTO `personal_information` VALUES
(1,1,'married_first_time',10,'5, 8','',5,'Reading books, hiking, spending time with family','Problem-solver – I enjoy analyzing issues and finding effective solutions.;;Team player – I communicate well and collaborate effectively with others.','Procrastination;;Perfectionism','Sometimes struggle with initiating conversations','Difficulty expressing emotions openly','Managing work-life balance','Achieve career growth, maintain a healthy family life','Improve time management, be more assertive','Engineer','Engineer','full-time'),
(2,2,'divorced_not_remarried',NULL,'','12',7,'Teaching, gardening, community volunteering','Quick learner – I can pick up new tools and frameworks rapidly.;;Detail-oriented – I notice small issues before they grow into big problems.','Shyness','Feeling shy in large groups','Trust issues after divorce','Handling administrative tasks','Inspire students, create a community garden','Overcome shyness, improve public speaking','Teacher','Teacher','full-time'),
(3,3,'never_married',NULL,'','',9,'Playing sports, coding, traveling','Adaptable – I can adjust to new environments, teams, or technologies easily.;;Strong work ethic – I am committed to meeting deadlines and taking responsibility.','Impatience','Can be overly competitive in social settings','Difficulty committing to long-term relationships','Staying focused during long projects','Start a tech company, travel the world','Be more patient, improve focus','Engineer','Engineer','part-time'),
(4,4,'widowed_not_remarried',NULL,'25','22',3,'Painting, attending cultural events, reading','Detail-oriented – I notice small issues before they grow into big problems.;;Team player – I communicate well and collaborate effectively with others.','Perfectionism','Difficulty connecting with younger people','Not seeking new relationships currently','Keeping up with new medical technologies','Contribute to community health, mentor young doctors','Reduce perfectionist tendencies','Doctor','Doctor','full-time'),
(5,5,'never_married',NULL,'','',6,'Photography, yoga, socializing with friends','Adaptable – I can adjust to new environments, teams, or technologies easily.;;Other: Creative thinker','Other: Overthinking','Overthinking social interactions','Hesitant to start new relationships','Managing stress during exams','Become a professional photographer, achieve inner peace','Reduce overthinking, build confidence','Other','Other','part-time'),
(6,6,'Married',10,'5,8','3',3,'Reading, gardening, spending time with family','House, Car, Savings ooo','Sometimes impatient, forgetful','Feels shy in large groups','Communication issues with partner','Had trouble focusing during school years','Start own business, support children\'s education','Improve work-life balance, exercise more','Mechanical Engineer','Project Manager','Yes');
/*!40000 ALTER TABLE `personal_information` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
(4,'MA English Literature','2025-06-15 12:37:35','2025-06-15 12:37:35');
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
/*!50003 DROP PROCEDURE IF EXISTS `education_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `education_Insert`(
    IN p_patientId INT,
    IN p_educationYears INT,
    IN p_isScholarship BIT,
    IN p_scholarshipMarks INT,
    IN p_schoolAdmitted VARCHAR(50),
    IN p_scholarshipResult VARCHAR(10),
    IN p_scholarshipRemark VARCHAR(500),
    IN p_isOL BIT,
    IN p_olSubjects_json JSON,
    IN p_olRemark VARCHAR(100),
    IN p_isAL BIT,
    IN p_alStreamId INT,
    IN p_alSubjects_json JSON,
    IN p_alRemark VARCHAR(100),
    IN p_isUniversity BIT,
    IN p_universitySubjects_json JSON,
    IN p_universityRemark VARCHAR(100),
    IN p_userLogId INT,
    IN p_UTC_Offset VARCHAR(50),
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    OUT p_educationInfoId INT
)
sp: BEGIN
    -- Declare variables
    DECLARE v_educationInfoId INT;
    DECLARE v_noOfOLSubjects INT;
    DECLARE v_noOfALSubjects INT;
    DECLARE v_noOfUniversitySubjects INT;
    DECLARE v_i_ol INT DEFAULT 0;
    DECLARE v_i_al INT DEFAULT 0;
    DECLARE v_i_university INT DEFAULT 0;
    DECLARE v_subjectId INT;
    DECLARE v_marks INT;
    DECLARE v_year INT;
    DECLARE v_universityMarks VARCHAR(11);
    DECLARE v_subjectName VARCHAR(100);
    DECLARE v_institution VARCHAR(100);
    DECLARE v_err_message VARCHAR(255);

    -- Exit handler for SQL exceptions
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 v_err_message = MESSAGE_TEXT;
        SET p_responseStatus = 'failed';
        SET p_outputMessage = v_err_message;
    END;

    -- Validate patientId
    IF p_patientId < 1 OR NOT EXISTS (SELECT 1 FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Invalid or unregistered patientId';
        LEAVE sp;
    END IF;

    -- Validate educationYears
    IF p_educationYears IS NULL OR p_educationYears < 0 THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'Years of formal education must be a valid non-negative number';
        LEAVE sp;
    END IF;

    -- Validate scholarship if enabled
    IF p_isScholarship = 1 THEN
        IF p_scholarshipMarks IS NULL OR p_scholarshipMarks < 0 THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Scholarship marks must be a valid non-negative number';
            LEAVE sp;
        END IF;
        IF p_schoolAdmitted IS NULL OR p_schoolAdmitted = '' THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'School admitted is required for scholarship';
            LEAVE sp;
        END IF;
        IF p_scholarshipResult NOT IN ('Pass', 'Fail') THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'Scholarship result must be either "Pass" or "Fail"';
            LEAVE sp;
        END IF;
    END IF;

    -- Validate A/L stream if enabled
    IF p_isAL = 1 THEN
        IF p_alStreamId IS NULL THEN
            SET p_responseStatus = 'failed';
            SET p_outputMessage = 'A/L stream is required';
            LEAVE sp;
        END IF;
        -- Assuming alStreamId references a streams table; validate if needed
        -- IF NOT EXISTS (SELECT 1 FROM streams WHERE streamId = p_alStreamId) THEN
        --     SET p_responseStatus = 'failed';
        --     SET p_outputMessage = 'Invalid A/L stream ID';
        --     LEAVE sp;
        -- END IF;
    END IF;

    -- Validate JSON arrays
    SET v_noOfOLSubjects = JSON_LENGTH(p_olSubjects_json);
    SET v_noOfALSubjects = JSON_LENGTH(p_alSubjects_json);
    SET v_noOfUniversitySubjects = JSON_LENGTH(p_universitySubjects_json);

    IF p_isOL = 1 AND v_noOfOLSubjects > 0 AND p_olSubjects_json IS NULL THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'O/L subjects JSON is required when O/L is enabled';
        LEAVE sp;
    END IF;

    IF p_isAL = 1 AND v_noOfALSubjects > 0 AND p_alSubjects_json IS NULL THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'A/L subjects JSON is required when A/L is enabled';
        LEAVE sp;
    END IF;

    IF p_isUniversity = 1 AND v_noOfUniversitySubjects > 0 AND p_universitySubjects_json IS NULL THEN
        SET p_responseStatus = 'failed';
        SET p_outputMessage = 'University subjects JSON is required when university is enabled';
        LEAVE sp;
    END IF;

    -- Start transaction
    START TRANSACTION;

    -- Insert into education_information
    INSERT INTO education_information (
        patientId, educationYears, isScholarship, isOL, isAL, isUniversity,
        remarkOL, remarkAL, alStreamId, remarkUniversity, createdDate, modifiedDate
    ) VALUES (
        p_patientId, p_educationYears, p_isScholarship, p_isOL, p_isAL, p_isUniversity,
        p_olRemark, p_alRemark, p_alStreamId, p_universityRemark, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
    );
    SET v_educationInfoId = LAST_INSERT_ID();
    SET p_educationInfoId = v_educationInfoId;

    -- Insert scholarship if enabled
    IF p_isScholarship = 1 THEN
        INSERT INTO education_scholarship (
            educationInfoId, marks, schoolAdmitted, isPass, remark, createdDate, modifiedDate
        ) VALUES (
            v_educationInfoId, p_scholarshipMarks, p_schoolAdmitted,
            CASE p_scholarshipResult WHEN 'Pass' THEN 1 ELSE 0 END, p_scholarshipRemark,
            CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
        );
    END IF;

    -- Process O/L subjects if enabled and subjects exist
    IF p_isOL = 1 AND v_noOfOLSubjects > 0 THEN
        -- Create temporary table for O/L subjects
        DROP TEMPORARY TABLE IF EXISTS tblOLSubjects;
        CREATE TEMPORARY TABLE tblOLSubjects (
            subjectId INT,
            marks INT,
            year INT
        );

        -- Loop through O/L subjects
        WHILE v_i_ol < v_noOfOLSubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].name')));
            SET v_marks = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_olSubjects_json, CONCAT('$[', v_i_ol, '].year')));

            -- Validate O/L subject
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
            IF NOT v_marks REGEXP '^[0-9]+$' OR CAST(v_marks AS UNSIGNED) < 0 OR CAST(v_marks AS UNSIGNED) > 100 THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' marks must be a number between 0 and 100');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_year IS NULL OR NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025 THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_i_ol + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Get subjectId from ol_subjects
            SELECT subjectId INTO v_subjectId FROM ol_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('O/L subject ', v_subjectName, ' is not registered');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Check for duplicates
            IF EXISTS (SELECT 1 FROM tblOLSubjects WHERE subjectId = v_subjectId AND year = CAST(v_year AS UNSIGNED)) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate O/L subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Insert into temporary table
            INSERT INTO tblOLSubjects (subjectId, marks, year)
            VALUES (v_subjectId, CAST(v_marks AS UNSIGNED), CAST(v_year AS UNSIGNED));

            SET v_i_ol = v_i_ol + 1;
        END WHILE;

        -- Insert O/L subjects into education_ol
        INSERT INTO education_ol (educationInfoId, subjectId, marks, year, createdDate, modifiedDate)
        SELECT v_educationInfoId, subjectId, marks, year, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
        FROM tblOLSubjects;
    END IF;

    -- Process A/L subjects if enabled and subjects exist
    IF p_isAL = 1 AND v_noOfALSubjects > 0 THEN
        -- Create temporary table for A/L subjects
        DROP TEMPORARY TABLE IF EXISTS tblALSubjects;
        CREATE TEMPORARY TABLE tblALSubjects (
            subjectId INT,
            marks INT,
            year INT
        );

        -- Loop through A/L subjects
        WHILE v_i_al < v_noOfALSubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].name')));
            SET v_marks = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_alSubjects_json, CONCAT('$[', v_i_al, '].year')));

            -- Validate A/L subject
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
            IF NOT v_marks REGEXP '^[0-9]+$' OR CAST(v_marks AS UNSIGNED) < 0 OR CAST(v_marks AS UNSIGNED) > 100 THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' marks must be a number between 0 and 100');
                ROLLBACK;
                LEAVE sp;
            END IF;
            IF v_year IS NULL OR NOT v_year REGEXP '^[0-9]+$' OR CAST(v_year AS UNSIGNED) < 1900 OR CAST(v_year AS UNSIGNED) > 2025 THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_i_al + 1, ' year must be a valid year between 1900 and 2025');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Get subjectId from al_subjects
            SELECT subjectId INTO v_subjectId FROM al_subjects WHERE subjectName = v_subjectName LIMIT 1;
            IF v_subjectId IS NULL THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('A/L subject ', v_subjectName, ' is not registered');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Check for duplicates
            IF EXISTS (SELECT 1 FROM tblALSubjects WHERE subjectId = v_subjectId AND year = CAST(v_year AS UNSIGNED)) THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('Duplicate A/L subject "', v_subjectName, '" for year ', v_year);
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Insert into temporary table
            INSERT INTO tblALSubjects (subjectId, marks, year)
            VALUES (v_subjectId, CAST(v_marks AS UNSIGNED), CAST(v_year AS UNSIGNED));

            SET v_i_al = v_i_al + 1;
        END WHILE;

        -- Insert A/L subjects into education_al
        INSERT INTO education_al (educationInfoId, subjectId, marks, year, createdDate, modifiedDate)
        SELECT v_educationInfoId, subjectId, marks, year, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
        FROM tblALSubjects;
    END IF;

    -- Process university subjects if enabled and subjects exist
    IF p_isUniversity = 1 AND v_noOfUniversitySubjects > 0 THEN
        -- Create temporary table for university subjects
        DROP TEMPORARY TABLE IF EXISTS tblUniversitySubjects;
        CREATE TEMPORARY TABLE tblUniversitySubjects (
            subjectId INT,
            marks VARCHAR(11),
            year INT
        );

        -- Loop through university subjects
        WHILE v_i_university < v_noOfUniversitySubjects DO
            SET v_subjectName = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].name')));
            SET v_institution = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].institution')));
            SET v_universityMarks = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].marks')));
            SET v_year = JSON_UNQUOTE(JSON_EXTRACT(p_universitySubjects_json, CONCAT('$[', v_i_university, '].year')));

            -- Validate university subject
            IF v_subjectName IS NULL OR v_subjectName = '' THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_i_university + 1, ' degree is required');
                ROLLBACK;
                LEAVE sp;
            END IF;
            
            IF v_institution IS NULL OR v_institution = '' THEN
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

            -- Get subjectId from university_subjects
            SELECT subjectId INTO v_subjectId FROM university_subjects WHERE subjectName = v_subjectName AND institution = v_institution LIMIT 1;
            IF v_subjectId IS NULL THEN
                SET p_responseStatus = 'failed';
                SET p_outputMessage = CONCAT('University qualification ', v_subjectName, ' at ', v_institution, ' is not registered');
                ROLLBACK;
                LEAVE sp;
            END IF;

            -- Insert into temporary table
            INSERT INTO tblUniversitySubjects (subjectId, marks, year)
            VALUES (v_subjectId, v_universityMarks, IFNULL(CAST(v_year AS UNSIGNED), NULL));

            SET v_i_university = v_i_university + 1;
        END WHILE;

        -- Insert university subjects into education_university
        INSERT INTO education_university (educationInfoId, subjectId, marks, year, createdDate, modifiedDate)
        SELECT v_educationInfoId, subjectId, marks, year, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
        FROM tblUniversitySubjects;
    END IF;

    -- Set success response
    SET p_responseStatus = 'success';
    SET p_outputMessage = 'Education data added successfully';

    -- Commit transaction
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
    IN p_raisedBy VARCHAR(100),
    IN p_motherDescription TEXT,
    IN p_fatherDescription TEXT,
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
    
    -- Check if patient exists
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate required fields
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
    
    IF p_raisedBy IS NULL OR TRIM(p_raisedBy) = '' THEN
        SET p_outputMessage = 'Raised By is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_motherDescription IS NULL OR TRIM(p_motherDescription) = '' THEN
        SET p_outputMessage = 'Mother Description is required.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_fatherDescription IS NULL OR TRIM(p_fatherDescription) = '' THEN
        SET p_outputMessage = 'Father Description is required.';
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
    
    -- Validate numeric fields
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
    
    -- Validate spouseOccupationFullTime if spouseOccupation is provided
    IF p_spouseOccupation IS NOT NULL AND TRIM(p_spouseOccupation) != '' 
       AND (p_spouseOccupationFullTime IS NULL OR TRIM(p_spouseOccupationFullTime) = '') THEN
        SET p_outputMessage = 'Spouse Occupation Full Time is required when Spouse Occupation is provided.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Get patientNo from patient_registration
    SET p_patientNo = (SELECT patientNo FROM patient_registration WHERE patientId = p_patientId);
    
    IF p_saveType = 'I' then
    
        -- Insert new family information
    
    
    if exists (select * from family_information where patientId=p_patientId) then 
     SET p_outputMessage = 'family information is already exists.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    end if;
    
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
            p_raisedBy, p_motherDescription, p_fatherDescription, p_parentalSeparationAge,
            p_parentalDivorceAge, p_motherDivorceCount, p_fatherDivorceCount,
            p_livingBrothers, p_livingSisters, p_brothersAges, p_sistersAges,
            p_childNumber, p_familyChildren, p_adopted, p_brotherDisturbances,
            p_sisterDisturbances, p_maleRelativesDisturbed, p_maleRelativesHospitalized,
            p_femaleRelativesDisturbed, p_femaleRelativesHospitalized
        );
        

        SET p_outputPatientId = p_patientId;
        
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Family information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
   
        
        -- Check if family information exists
        IF NOT EXISTS (SELECT * FROM family_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Family information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Update family information record
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
            raisedBy = p_raisedBy,
            motherDescription = p_motherDescription,
            fatherDescription = p_fatherDescription,
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

    DECLARE _query VARCHAR(1000);

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patientId exists
    IF NOT EXISTS (SELECT 1 FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('No patient found with patientId: ', p_patientId);
        LEAVE sp;
    END IF;

    -- Construct the query
    SET @_query = CONCAT('
        SELECT 
            patientId,
            patientNo,
            firstName,
            lastName,
            middleName,
            dateOfBirth,
            age,
            gender,
            email,
            homePhone,
            businessPhone,
            permanentAddress,
            referralSource,
            referralPartyPresent,
            formDate,
            lastModified
        FROM 
            patient_registration
        WHERE 
            patientId = ', p_patientId
    );

    -- Execute the query
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
    
    -- Check if patient exists
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate required fields
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
    
    -- Validate currentTreatment
    IF p_currentTreatment NOT IN ('Yes', 'No') THEN
        SET p_outputMessage = 'Current Treatment must be either "Yes" or "No".';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate numeric fields
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
    
    -- Get patientNo from patient_registration
    SET p_patientNo = (SELECT patientNo FROM patient_registration WHERE patientId = p_patientId);
    
    IF p_saveType = 'I' then
    
    
       if exists (select * from medical_information where patientId=p_patientId) THEN
        SET p_outputMessage = 'Medical Information is already exists.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
       
       
        -- Insert new medical information
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

        
        -- Check if medical information exists
        IF NOT EXISTS (SELECT * FROM medical_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Medical information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Update medical information record
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
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;



    -- Retrieve A/L data
    
    
SELECT 
    CAST(ei.isAL AS UNSIGNED) AS enabled,
    CASE 
        WHEN ei.isAL = 0 THEN JSON_ARRAY()
        ELSE JSON_ARRAYAGG(
            JSON_OBJECT(
                'name', COALESCE(als.subjectName, 'N/A'),
                'marks', COALESCE(al.marks, 'N/A'),
                'year', COALESCE(al.year, 'N/A')
            )
        )
    END AS subjects,
    alst.streamName,
    COALESCE(ei.remarkAL, '') AS remark
FROM 
    education_information ei
   LEFT JOIN  al_stream alst on ei.alStreamId=alst.alStreamId
LEFT JOIN 
    education_al al ON ei.educationInfoId = al.educationInfoId
LEFT JOIN 
    al_subjects als ON al.subjectId = als.subjectId
WHERE 
    ei.patientId = p_patientId
GROUP BY 
    ei.educationInfoId, ei.patientId, ei.isAL;
         
    
   

    -- Set success response
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

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;



    -- Static query to retrieve education data
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

    -- Set success response
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

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;



    -- Retrieve education years
    SELECT 
        ei.educationYears
    FROM 
        education_information ei
    WHERE 
        ei.patientId = p_patientId;

    -- Set success response
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

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patientId exists in family_information
   -- IF NOT EXISTS (SELECT 1 FROM family_information WHERE patientId = p_patientId) THEN
     --   SET p_ResponseStatus = 'failed';
    --    SET p_OutputMessage = CONCAT('No family information found for patientId: ', p_patientId);
     --  LEAVE sp;
    -- END IF;

    -- Construct the query
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

    -- Execute the query
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Set success response
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

    DECLARE _query VARCHAR(1000);

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patientId exists in medical_information
  --  IF NOT EXISTS (SELECT 1 FROM medical_information WHERE patientId = p_patientId) THEN
   --     SET p_ResponseStatus = 'failed';
    --    SET p_OutputMessage = CONCAT('No medical information found for patientId: ', p_patientId);
    --    LEAVE sp;
   -- END IF;

    -- Construct the query
    SET @_query = CONCAT('
        SELECT 
            medicalInfoId,
            patientId,
            physicalAilments,
            mainComplaints,
            pastComplaints,
            worseConditions,
            improvedConditions,
            individualTherapyHours,
            individualTherapyYears,
            individualTherapyEndYears,
            groupTherapyHours,
            psychiatricHospitalizationMonths,
            currentTreatment,
            antidepressantsCount,
            psychotherapyType,
            additionalInfo
        FROM 
            medical_information
        WHERE 
            patientId = ', p_patientId
    );

    -- Execute the query
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
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;



    -- Retrieve O/L data
SELECT 
    CAST(ei.isOL AS UNSIGNED) AS enabled,
    CASE 
        WHEN ei.isOL = 0 THEN JSON_ARRAY()
        ELSE JSON_ARRAYAGG(
            JSON_OBJECT(
                'name', COALESCE(os.subjectName, 'N/A'),
                'marks', COALESCE(ol.marks, 'N/A'),
                'year', COALESCE(ol.year, 'N/A')
            )
        )
    END AS subjects,
    COALESCE(ei.remarkOL, '') AS remark
FROM 
    education_information ei
LEFT JOIN 
    education_ol ol ON ei.educationInfoId = ol.educationInfoId
LEFT JOIN 
    ol_subjects os ON ol.subjectId = os.subjectId
WHERE 
    ei.patientId = p_patientId
GROUP BY 
    ei.educationInfoId, ei.patientId, ei.isOL;

    -- Set success response
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

    DECLARE _query VARCHAR(1000);

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patientId exists in personal_information
   -- IF NOT EXISTS (SELECT 1 FROM personal_information WHERE patientId = p_patientId) THEN
      --  SET p_ResponseStatus = 'failed';
      --  SET p_OutputMessage = CONCAT('No personal information found for patientId: ', p_patientId);
      --  LEAVE sp;
   -- END IF;

    -- Construct the query
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
            occupationTrained,
            occupation,
            occupationFullTime
        FROM 
            personal_information
        WHERE 
            patientId = ', p_patientId
    );

    -- Execute the query
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

    -- Initialize filter
    SET _filter = ' WHERE 1 = 1 ';

    -- Validate pagination parameters
    IF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The p_Limit parameter is not passed or set p_Skip parameter to null for unlimited data.';
        LEAVE sp;
    ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The p_Skip parameter is not passed or set p_Limit parameter to null for unlimited data.';
        LEAVE sp;
    END IF;

    
    
    
    -- Set pagination query
    IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
        SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    ELSE
        SET _PagingQuery = '';
    END IF;

    -- Build filter conditions
    IF p_patientNo IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND patientNo = ''', p_patientNo, '''');
    END IF;

    IF p_homePhone IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND homePhone = ''', p_homePhone, '''');
    END IF;

    IF p_businessPhone IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND businessPhone = ''', p_businessPhone, '''');
    END IF;

    IF p_email IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND email LIKE ''%', p_email, '%''');
    END IF;

    IF p_firstName IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND firstName LIKE ''%', p_firstName, '%''');
    END IF;

    IF p_lastName IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND lastName LIKE ''%', p_lastName, '%''');
    END IF;

    -- Construct the main query
    SET @_query = CONCAT('
        SELECT 
            patientId,
            patientNo,
            firstName,
            lastName,
            middleName,
            dateOfBirth,
            age,
            gender,
            email,
            homePhone,
            businessPhone,
            permanentAddress,
            referralSource,
            referralPartyPresent,
            formDate,
            lastModified,
			pt.patientTypeName,
			pr.patientTypeId
        FROM 
            patient_registration pr inner join patient_type as pt ON pr.patientTypeId=pt.patientTypeId
        ', _filter, '
        ORDER BY lastModified DESC
        ', _PagingQuery
    );


    
       
    -- Execute the main query
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Calculate total rows
    SET @queryTotal = CONCAT('SELECT COUNT(patientId) INTO @totalRows FROM patient_registration ', _filter);
    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET p_TotalRows = @totalRows;

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

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patientId exists in education_information
  --  IF NOT EXISTS (SELECT 1 FROM education_information WHERE patientId = p_patientId) THEN
    --    SET p_ResponseStatus = 'failed';
    --    SET p_OutputMessage = CONCAT('No education information found for patientId: ', p_patientId);
    --    LEAVE sp;
--    END IF;

    -- Retrieve scholarship data
    SELECT 
      
           CAST(ei.isScholarship AS UNSIGNED) as enabled,
                es.marks,
                es.schoolAdmitted,
                 CASE WHEN es.isPass = 1 THEN 'Pass' ELSE 'Fail' end as result,
                es.remark
            
     
    FROM 
        education_information ei
    LEFT JOIN 
        education_scholarship es ON ei.educationInfoId = es.educationInfoId
    WHERE 
        ei.patientId = p_patientId;

    -- Set success response
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
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    -- Validate patientId
    IF p_patientId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The patientId parameter is required.';
        LEAVE sp;
    END IF;

    -- Check if patientId exists in education_information
  --  IF NOT EXISTS (SELECT 1 FROM education_information WHERE patientId = p_patientId) THEN
    --    SET p_ResponseStatus = 'failed';
    --    SET p_OutputMessage = CONCAT('No education information found for patientId: ', p_patientId);
    --    LEAVE sp;
  --  END IF;

    -- Retrieve university data
  SELECT 
    CAST(ei.isUniversity AS UNSIGNED) AS enabled,
    CASE 
        WHEN ei.isUniversity = 0 THEN JSON_ARRAY()
        ELSE JSON_ARRAYAGG(
            JSON_OBJECT(
                'name', COALESCE(us.subjectName, 'N/A'),
                'marks', COALESCE(u.marks, 'N/A'),
                'year', COALESCE(u.year, 'N/A')
            )
        )
    END AS subjects,
    COALESCE(ei.remarkUniversity, '') AS remark
    FROM 
        education_information ei
    LEFT JOIN 
        education_university u ON ei.educationInfoId = u.educationInfoId
    LEFT JOIN 
        university_subjects us ON u.subjectId = us.subjectId
    WHERE 
        ei.patientId = p_patientId
    GROUP BY 
        ei.educationInfoId, ei.patientId;

    -- Set success response
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
    IN p_referralPartyPresent VARCHAR(3),
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
    
    IF p_saveType = 'I' THEN
        -- Validate email uniqueness (if provided)
        IF p_email IS NOT NULL AND p_email != '' AND EXISTS (
            SELECT * FROM patient_registration WHERE email = p_email
        ) THEN
            SET p_outputMessage = 'Email already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Validate age (if provided)
        IF p_age IS NOT NULL AND p_age < 0 THEN
            SET p_outputMessage = 'Invalid age.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Insert new patient
        INSERT INTO patient_registration (
            firstName, lastName, middleName, dateOfBirth, age, gender, email,
            homePhone, businessPhone, permanentAddress, referralSource,
            referralPartyPresent, formDate, lastModified
        ) VALUES (
            p_firstName, p_lastName, p_middleName, p_dateOfBirth, p_age, p_gender, p_email,
            p_homePhone, p_businessPhone, p_permanentAddress, p_referralSource,
            p_referralPartyPresent, CURDATE(), NOW()
        );
        
        -- Get last inserted ID
        SET @_patientId = LAST_INSERT_ID();
        SET p_outputPatientId = @_patientId;
        
        -- Generate patientNo (e.g., P0001)
        SET @patientNo = CONCAT('P', LPAD(@_patientId, 4, '0'));
        UPDATE patient_registration SET patientNo = @patientNo WHERE patientId = @_patientId;
        SET p_patientNo = @patientNo;
        
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Patient registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        -- Validate patientId
        IF p_patientId IS NULL OR p_patientId < 1 THEN
            SET p_outputMessage = 'Invalid patientId.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Check if patient exists
        IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Patient does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Validate email uniqueness (if provided)
        IF p_email IS NOT NULL AND p_email != '' AND EXISTS (
            SELECT * FROM patient_registration WHERE email = p_email AND patientId != p_patientId
        ) THEN
            SET p_outputMessage = 'Email already exists.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Validate age (if provided)
        IF p_age IS NOT NULL AND p_age < 0 THEN
            SET p_outputMessage = 'Invalid age.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Get existing patientNo
        SET p_patientNo = (SELECT patientNo FROM patient_registration WHERE patientId = p_patientId);
        SET p_outputPatientId = p_patientId;
        
        -- Update patient record with all provided values
        UPDATE patient_registration
        SET
            firstName = p_firstName,
            lastName = p_lastName,
            middleName = p_middleName,
            dateOfBirth = p_dateOfBirth,
            age = p_age,
            gender = p_gender,
            email = p_email,
            homePhone = p_homePhone,
            businessPhone = p_businessPhone,
            permanentAddress = p_permanentAddress,
            referralSource = p_referralSource,
            referralPartyPresent = p_referralPartyPresent,
            lastModified = NOW()
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
    IN p_yearsMarried INT,
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
    
    -- Check if patient exists
    IF NOT EXISTS (SELECT * FROM patient_registration WHERE patientId = p_patientId) THEN
        SET p_outputMessage = 'Patient does not exist.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    -- Validate required fields
    IF p_maritalStatus IS NULL OR TRIM(p_maritalStatus) = '' THEN
        SET p_outputMessage = 'Marital Status is required.';
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
    
    IF p_loveSexDifficulties IS NULL OR TRIM(p_loveSexDifficulties) = '' THEN
        SET p_outputMessage = 'Love/Sex Difficulties is required.';
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
    
    -- Validate yearsMarried if maritalStatus is married
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
    
    -- Validate religiosity
    IF p_religiosity < 1 OR p_religiosity > 9 THEN
        SET p_outputMessage = 'Religiosity must be a number between 1 and 9.';
        SET p_responseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;
    
    IF p_saveType = 'I' THEN
        -- Insert new personal information
    

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
            occupationTrained, occupation, occupationFullTime
        ) VALUES (
            p_patientId, p_maritalStatus, p_yearsMarried, p_maleChildrenAges, p_femaleChildrenAges,
            p_religiosity, p_thingsLiked, p_assets, p_badPoints, p_socialDifficulties,
            p_loveSexDifficulties, p_schoolWorkDifficulties, p_lifeGoals, p_thingsToChange,
            p_occupationTrained, p_occupation, p_occupationFullTime
        );
        

        SET p_outputPatientId = p_patientId;
        
        
        SET p_responseStatus = 'success';
        SET p_outputMessage = 'Personal information registered successfully.';
        
    ELSEIF p_saveType = 'U' THEN
        -- Validate personalInfoId
        IF p_patientId IS NULL OR p_patientId < 1 THEN
            SET p_outputMessage = 'Invalid patientId.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Check if personal information exists
        IF NOT EXISTS (SELECT * FROM personal_information WHERE patientId = p_patientId) THEN
            SET p_outputMessage = 'Personal information does not exist.';
            SET p_responseStatus = 'failed';
            ROLLBACK;
            LEAVE sp;
        END IF;
        
        -- Update personal information record
        UPDATE personal_information
        SET
            maritalStatus = p_maritalStatus,
            yearsMarried = p_yearsMarried,
            maleChildrenAges = p_maleChildrenAges,
            femaleChildrenAges = p_femaleChildrenAges,
            religiosity = p_religiosity,
            thingsLiked = p_thingsLiked,
            assets = p_assets,
            badPoints = p_badPoints,
            socialDifficulties = p_socialDifficulties,
            loveSexDifficulties = p_loveSexDifficulties,
            schoolWorkDifficulties = p_schoolWorkDifficulties,
            lifeGoals = p_lifeGoals,
            thingsToChange = p_thingsToChange,
            occupationTrained = p_occupationTrained,
            occupation = p_occupation,
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

-- Dump completed on 2025-06-23 18:39:42
