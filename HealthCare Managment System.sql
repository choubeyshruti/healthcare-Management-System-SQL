-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: healthcaredbm
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `hospitalmetrics`
--

DROP TABLE IF EXISTS `hospitalmetrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitalmetrics` (
  `HosID` int NOT NULL AUTO_INCREMENT,
  `HosName` varchar(50) DEFAULT NULL,
  `TotalPatients` int DEFAULT NULL,
  `SuccessRate` decimal(5,2) DEFAULT NULL,
  `AvgTreatmentTime` int DEFAULT NULL,
  PRIMARY KEY (`HosID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitalmetrics`
--

LOCK TABLES `hospitalmetrics` WRITE;
/*!40000 ALTER TABLE `hospitalmetrics` DISABLE KEYS */;
INSERT INTO `hospitalmetrics` VALUES (1,'City Hospital',500,95.50,7),(2,'General Hospital',800,92.30,10),(3,'Sunrise Medical',650,94.10,8),(4,'Green Valley Hospital',700,96.00,6),(5,'Wellness Clinic',400,90.50,12),(6,'MetroCare Center',550,93.70,9),(7,'Evercare Hospital',600,91.80,11),(8,'Rapid Recovery Hospital',480,97.20,5),(9,'Central Health Institute',750,89.90,13),(10,'Starlight Medical Center',900,98.10,4);
/*!40000 ALTER TABLE `hospitalmetrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicalrecords`
--

DROP TABLE IF EXISTS `medicalrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicalrecords` (
  `RecordID` int NOT NULL AUTO_INCREMENT,
  `PID` int DEFAULT NULL,
  `Diagonsis` text,
  `Treatment` text,
  `TreatmentDate` date DEFAULT NULL,
  `DrName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RecordID`),
  KEY `PID` (`PID`),
  CONSTRAINT `medicalrecords_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patients` (`PatientID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalrecords`
--

LOCK TABLES `medicalrecords` WRITE;
/*!40000 ALTER TABLE `medicalrecords` DISABLE KEYS */;
INSERT INTO `medicalrecords` VALUES (1,1,'Diabetes','Insulin Therapy','2024-02-10','Dr. Smith'),(2,2,'Hypertension','Medication & Lifestyle Change','2024-01-15','Dr. Johnson'),(3,3,'Asthma','Inhaler & Medication','2024-02-25','Dr. Williams'),(4,4,'Migraine','Pain Relievers','2024-01-30','Dr. Lee'),(5,5,'Arthritis','Physical Therapy & Medication','2024-02-05','Dr. Brown'),(6,6,'Obesity','Diet & Exercise Plan','2024-03-01','Dr. Clark'),(7,7,'Pneumonia','Antibiotics','2024-02-20','Dr. Thompson'),(8,8,'Heart Disease','Surgery & Medication','2024-01-28','Dr. Garcia'),(9,9,'COVID-19','Quarantine & Medication','2024-02-15','Dr. Martinez'),(10,10,'Kidney Stones','Hydration & Pain Relief','2024-03-02','Dr. Davis');
/*!40000 ALTER TABLE `medicalrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `PatientID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `Contacts` varchar(64) DEFAULT NULL,
  `Address` text,
  PRIMARY KEY (`PatientID`),
  KEY `idx_patient` (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'John','Doe','1990-05-12','Male','7619ee8cea49187f309616e30ecf54be072259b43760f1f550a644945d5572f2','123 Street, NY'),(2,'Emma','Watson','1985-11-22','Female','e26019ce48adebef79a322206fc633fcf1c6230a84812e0e528414c009abd98d','456 Avenue, CA'),(3,'Michael','Brown','1995-07-15','Male','8a8023e9f7760676fbb9a422a81c035753930bc3678c9b4fb26d4e91b5524545','789 Road, TX'),(4,'Sophia','Miller','1992-03-18','Female','a353fb4092c96d33a85c3679ba0b711d3b8575f559adb77620fdaf284e27b640','321 Blvd, FL'),(5,'Liam','Johnson','1988-09-25','Male','ef5fb01e7fd16deeb7bce3ae682b95d800c7315e460170167bb454ca737b2bee','654 Lane, IL'),(6,'Olivia','Davis','1993-12-30','Female','d38a9a689c50b16e0a527b1fa2383839347b18d40835f3060b2c30387f4ffbd5','987 Highway, WA'),(7,'William','Moore','1987-06-10','Male','7b74611f26dc07cd8ae6d3fd5505b827ecb708dd0edf32e644368104912f37af','111 Route, NV'),(8,'Isabella','Wilson','1998-04-05','Female','2a59d8f05c75bfff78b3fa5b68836490bde10c8595754c88e320008a38894e3e','222 Path, CO'),(9,'James','Taylor','1991-08-20','Male','0956415e5e702293b52643c0631319fb20fc6d9ffa2a7da7a41b7dfe17b05bc5','333 Circle, AZ'),(10,'Charlotte','Anderson','1996-11-08','Female','fd2a30de84c092aa2a600c1a5e4fef108c39bd6eaead21bb10c6a811dce5c38f','444 Drive, MI');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-24 13:47:12
