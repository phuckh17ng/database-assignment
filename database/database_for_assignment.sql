-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: database_schema
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL,
  `Dep_code` int DEFAULT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `Dean_code` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-deanCode_idx` (`Dean_code`),
  CONSTRAINT `fk_dean_code` FOREIGN KEY (`Dean_code`) REFERENCES `doctor` (`D_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,1,'Da Khoa',1),(2,2,'Da lieu',4),(3,3,'Tai mui hong',6),(4,4,'Chan thuong chinh hinh',9),(5,5,'Hoi suc - Cap cuu',12);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `D_code` int NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(9) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `N_speciallity_name` varchar(30) DEFAULT NULL,
  `deg_year` char(4) DEFAULT NULL,
  `year_exp` int DEFAULT NULL,
  `dep_code` int DEFAULT NULL,
  PRIMARY KEY (`D_code`),
  KEY `fk_dep_code_idx` (`dep_code`),
  CONSTRAINT `fk_dep_code` FOREIGN KEY (`dep_code`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Le Duc Tho','1944-11-20','M','312 Cao Thang, Phuong 12, Quan 10, TPHCM','1972-11-10','Da Khoa','1972',50,1),(2,'Thai Thanh Yen','1957-10-20','F','So 33C1 Tu Xuong, Phuong 7, Quan 3, TPHCM','1985-12-05','Da Khoa','1985',37,1),(3,'Tran Thi Hoai Thuong','1961-12-18','F','So 2 Nguyen Thong, phuong 6, quan 3, TP.HCM','1989-08-05','Da Khoa','1989',33,1),(4,'Le Vu Chi Phuoc','1956-11-15','M','So 29 Nguyen Tieu La, phuong 8, quan 10, TP HCM','1978-05-10','Da lieu','1978',44,2),(5,'Vo Thi Bach Suong','1968-06-15','F','So 123, duong Hoa Hung, phuong 12, quan 10, TP.HCM','1990-11-15','Da lieu','1990',32,2),(6,'Nguyen Tuong Vi','1957-11-10','F','4A Hoang Viet, phuong 4, quan Tan Binh, TP.HCM','1979-09-01','Tai mui hong','1979',43,3),(7,'Van The Trung','1965-11-08','M','So 215 Hong Bang, phuong 11, quan 5, TP HCM','1987-11-02','Tai mui hong','1987',35,3),(8,'Nguyen Thi Dung','1971-07-11','F','So 05, Duong 17A, Quan Binh Tan, TP.HCM.','1993-12-12','Tai mui hong','1993',29,3),(9,'Le Van A','1957-02-11','F','4A Hoang Viet, phuong 4, quan Tan Binh, TP.HCM','1979-09-01','Chan thuong chinh hinh','1979',43,4),(10,'Le Van B','1965-02-08','M','So 215 Hong Bang, phuong 11, quan 5, TP HCM','1987-11-02','Chan thuong chinh hinh','1987',35,4),(11,'Le Van C','1971-02-10','F','So 05, Duong 17A, Quan Binh Tan, TP.HCM.','1993-11-10','Chan thuong chinh hinh','1993',29,4),(12,'Le Van C','1957-05-10','F','4A Hoang Viet, phuong 4, quan Tan Binh, TP.HCM','1979-09-01','Hoi suc - Cap cuu','1979',43,5),(13,'Le Van D','1965-05-08','M','So 215 Hong Bang, phuong 11, quan 5, TP HCM','1987-11-02','Hoi suc - Cap cuu','1987',35,5);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_phone_number`
--

DROP TABLE IF EXISTS `dr_phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_phone_number` (
  `id` int NOT NULL,
  `dr_code` int DEFAULT NULL,
  `phone_number` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dr_id_idx` (`dr_code`),
  CONSTRAINT `fk_dr_id` FOREIGN KEY (`dr_code`) REFERENCES `doctor` (`D_code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_phone_number`
--

LOCK TABLES `dr_phone_number` WRITE;
/*!40000 ALTER TABLE `dr_phone_number` DISABLE KEYS */;
INSERT INTO `dr_phone_number` VALUES (1,1,'0324567980'),(2,2,'0354267598'),(3,3,'0361567849'),(4,4,'0341254897'),(5,5,'0392654857'),(6,6,'0345621256'),(7,7,'0325697598'),(8,8,'0354125698'),(9,1,'0375623895'),(10,2,'0351269623');
/*!40000 ALTER TABLE `dr_phone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inpatient`
--

DROP TABLE IF EXISTS `inpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inpatient` (
  `id` int NOT NULL,
  `inpatient_code` char(11) DEFAULT NULL,
  `date_of_admission` date DEFAULT NULL,
  `date_of_discharge` date DEFAULT NULL,
  `treatment_NO` int DEFAULT NULL,
  `date_start_treatment` date DEFAULT NULL,
  `date_end_treatment` date DEFAULT NULL,
  `sickroom` char(3) DEFAULT NULL,
  `diagnosis` char(255) DEFAULT NULL,
  `fee` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `treatment_NO_idx` (`treatment_NO`),
  KEY `fk_patient_id_idx` (`inpatient_code`),
  CONSTRAINT `fk_patient_id` FOREIGN KEY (`inpatient_code`) REFERENCES `patient` (`P_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient`
--

LOCK TABLES `inpatient` WRITE;
/*!40000 ALTER TABLE `inpatient` DISABLE KEYS */;
INSERT INTO `inpatient` VALUES (1,'IP000000002','2017-12-14','2022-12-23',1,'2017-12-17','2017-12-21','1','an nhieu rau tot cho suc khoe',20000),(2,'IP000000002','2017-12-14','2022-12-23',2,'2017-12-21','2017-12-23','2','an nhieu rau tot cho suc khoe',20000),(3,'IP000000003','2018-10-21','2018-10-25',1,'2018-10-21','2018-10-25','5','an nhieu rau tot cho suc khoe',60000),(4,'IP000000004','2020-12-15','2020-12-30',1,'2020-12-15','2020-12-20','3','an nhieu rau tot cho suc khoe',44000),(5,'IP000000004','2020-12-15','2020-12-30',2,'2020-12-22','2020-12-25','3','an nhieu rau tot cho suc khoe',55000),(6,'IP000000004','2020-12-15','2020-12-30',3,'2020-12-26','2020-12-30','3','an nhieu rau tot cho suc khoe',66000),(7,'IP000000006','2022-11-11','2022-11-15',1,'2022-11-11','2022-11-14','5','an nhieu rau tot cho suc khoe',11000),(8,'IP000000007','2022-12-12','2022-12-16',1,'2022-12-12','2022-12-16','4','uong nuoc nhieu vao nha',77000),(9,'IP000000007','2022-12-12','2022-12-22',2,'2022-12-17','2022-12-22','4','uong nuoc nhieu vao nha',77000),(10,'IP000000007','2022-12-12','2022-12-27',3,'2022-12-23','2022-12-25','4','uong nuoc nhieu vao nha',77000),(11,'IP000000007','2022-12-12','2022-12-27',4,'2022-12-26','2022-12-27','4','uong nuoc nhieu vao nha',77000);
/*!40000 ALTER TABLE `inpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inpatient_caring_nurse`
--

DROP TABLE IF EXISTS `inpatient_caring_nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inpatient_caring_nurse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inpatient_id` int DEFAULT NULL,
  `caring_nurse_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_CR_inpatient_id_idx` (`inpatient_id`),
  KEY `fk_nurse_id_idx` (`caring_nurse_id`),
  CONSTRAINT `fk_CR_inpatient_id` FOREIGN KEY (`inpatient_id`) REFERENCES `inpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_nurse_id` FOREIGN KEY (`caring_nurse_id`) REFERENCES `nurse` (`nur_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient_caring_nurse`
--

LOCK TABLES `inpatient_caring_nurse` WRITE;
/*!40000 ALTER TABLE `inpatient_caring_nurse` DISABLE KEYS */;
INSERT INTO `inpatient_caring_nurse` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,3),(6,6,3),(7,7,3),(8,8,2),(9,9,2),(10,10,2),(11,11,2);
/*!40000 ALTER TABLE `inpatient_caring_nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inpatient_medication`
--

DROP TABLE IF EXISTS `inpatient_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inpatient_medication` (
  `id` int NOT NULL,
  `inpatient_id` int DEFAULT NULL,
  `medication_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inpatient_id_idx` (`inpatient_id`),
  KEY `fk_medicationId_idx` (`medication_id`),
  CONSTRAINT `fk_inpatient_id` FOREIGN KEY (`inpatient_id`) REFERENCES `inpatient` (`id`),
  CONSTRAINT `fk_medicationId` FOREIGN KEY (`medication_id`) REFERENCES `medication` (`M_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient_medication`
--

LOCK TABLES `inpatient_medication` WRITE;
/*!40000 ALTER TABLE `inpatient_medication` DISABLE KEYS */;
INSERT INTO `inpatient_medication` VALUES (1,1,1,3),(2,1,2,3),(3,1,3,3),(4,2,5,5),(5,3,5,6),(6,3,6,6),(7,3,7,6),(8,3,8,6),(9,3,9,6),(10,4,1,2),(11,4,3,3),(12,4,4,4),(13,4,5,5),(14,4,6,6),(15,5,10,1),(16,6,11,1),(17,6,12,3),(18,7,8,4),(19,7,9,4),(20,7,10,4),(21,8,1,6),(22,9,2,6),(23,10,3,6),(24,11,4,6);
/*!40000 ALTER TABLE `inpatient_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inpatient_treatment_doctor`
--

DROP TABLE IF EXISTS `inpatient_treatment_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inpatient_treatment_doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inpatient_id` int DEFAULT NULL,
  `treatment_doctor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inpatient_TD_id_idx` (`inpatient_id`),
  KEY `fk_TD_id_idx` (`treatment_doctor_id`),
  CONSTRAINT `fk_inpatient_TD_id` FOREIGN KEY (`inpatient_id`) REFERENCES `inpatient` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_TD_id` FOREIGN KEY (`treatment_doctor_id`) REFERENCES `doctor` (`D_code`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient_treatment_doctor`
--

LOCK TABLES `inpatient_treatment_doctor` WRITE;
/*!40000 ALTER TABLE `inpatient_treatment_doctor` DISABLE KEYS */;
INSERT INTO `inpatient_treatment_doctor` VALUES (1,1,1),(2,1,2),(3,2,1),(4,3,5),(5,3,6),(6,3,7),(7,4,5),(8,4,6),(9,5,10),(10,6,13),(11,7,13),(12,8,13),(13,9,13),(14,10,5),(15,10,12),(16,10,13),(17,10,8),(18,10,9),(19,11,9),(20,11,13);
/*!40000 ALTER TABLE `inpatient_treatment_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `M_code` int NOT NULL AUTO_INCREMENT,
  `med_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `typ` varchar(1000) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `imported_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  PRIMARY KEY (`M_code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES (1,'Prospan Forte',200000.00,'Thuoc tri ho',100,'2022-11-09','2024-11-09'),(2,'Eugica',250000.00,'Thuoc tri ho',200,'2022-01-15','2025-01-15'),(3,'Methorphan',250000.00,'Thuoc tri ho',150,'2022-10-20','2023-10-20'),(4,'Panadol',150000.00,'Thuoc ha sot',300,'2022-03-15','2024-03-15'),(5,'Paracetamol',120000.00,'Thuoc ha sot',350,'2022-03-07','2024-03-07'),(6,'Sodermix',290000.00,'Thuoc da lieu',120,'2022-11-06','2025-11-06'),(7,'Dermovate Cream',100000.00,'Thuoc da lieu',620,'2022-05-12','2024-05-12'),(8,'Gentrisone',300000.00,'Thuoc da lieu',320,'2022-08-04','2024-08-04'),(9,'Con',100000.00,'Thuoc sat trung',100,'2022-08-03','2023-08-03'),(10,'Povidon iod',100000.00,'Thuoc sat trung',200,'2022-02-09','2023-02-09'),(11,'GHB Red ',1000000.00,'Thuoc gay me',220,'2022-09-03','2026-09-03'),(12,'Ketamin HCL',1100000.00,'Thuoc gay me',250,'2022-07-03','2026-07-03');
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nur_phone_number`
--

DROP TABLE IF EXISTS `nur_phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nur_phone_number` (
  `id` int NOT NULL,
  `nurse_code` int DEFAULT NULL,
  `phonenumber` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nurseCode` (`nurse_code`),
  CONSTRAINT `fk_nurseCode` FOREIGN KEY (`nurse_code`) REFERENCES `nurse` (`nur_code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nur_phone_number`
--

LOCK TABLES `nur_phone_number` WRITE;
/*!40000 ALTER TABLE `nur_phone_number` DISABLE KEYS */;
INSERT INTO `nur_phone_number` VALUES (1,1,'0349523579'),(2,2,'0358912658'),(3,3,'0361259863'),(4,4,'0364598521'),(5,1,'0348521456');
/*!40000 ALTER TABLE `nur_phone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `nur_code` int NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `speciality` varchar(30) DEFAULT NULL,
  `deg_year` char(4) DEFAULT NULL,
  `dep_code` int DEFAULT NULL,
  PRIMARY KEY (`nur_code`),
  KEY `fk_nurse_dep_code_idx` (`dep_code`),
  CONSTRAINT `fk_nurse_dep_code` FOREIGN KEY (`dep_code`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (1,'Le Thi ','Luan','1973-11-10','F','So 326-328 Dien Bien Phu, P.11, Q.10','1995-11-10','Y ta','1995',1),(2,'Nguyen Thuc','Quyen','1976-12-10','F','So 7 duong Nguyen Thong, P.6, Q.3','1998-11-10','Y ta','1998',1),(3,'Ngo Thanh','Van','1968-08-07','M','241 duong Hoa Binh, P. Hiep Tan, Q.Tan Phu, TP HCM','1990-12-10','Y ta','1990',1),(4,'Le Cam','Tu','1974-11-02','F','So 79 Le Dai Hanh, P.6, Q.11, TP HCM','1996-11-08','Y ta','1996',1);
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outpatient`
--

DROP TABLE IF EXISTS `outpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outpatient` (
  `id` int NOT NULL,
  `outpatient_code` char(11) DEFAULT NULL,
  `diagnosis` varchar(1000) DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `examination_date` date DEFAULT NULL,
  `next_examination_date` date DEFAULT NULL,
  `examination_no` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patient_id_idx` (`outpatient_code`),
  KEY `fk_patientId_idx` (`outpatient_code`),
  CONSTRAINT `fk_patientId` FOREIGN KEY (`outpatient_code`) REFERENCES `patient` (`P_code`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatient`
--

LOCK TABLES `outpatient` WRITE;
/*!40000 ALTER TABLE `outpatient` DISABLE KEYS */;
INSERT INTO `outpatient` VALUES (1,'OP000000001','nho uong nhieu nuoc nhe',20000,'2018-12-20','2018-12-23',1),(2,'OP000000001','nho uong nhieu nuoc nhe',300000,'2018-12-23',NULL,2),(3,'OP000000005','nho uong nhieu nuoc nhe',20000,'2021-12-29','2022-01-01',1),(4,'OP000000005','nho uong nhieu nuoc nhe',20000,'2021-01-01','2021-01-03',2),(5,'OP000000005','nho uong nhieu nuoc nhe',20000,'2021-01-03',NULL,3),(6,NULL,'nho uong nhieu nuoc nhe',20000,'2022-12-19',NULL,1);
/*!40000 ALTER TABLE `outpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outpatient_examing_doctor`
--

DROP TABLE IF EXISTS `outpatient_examing_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outpatient_examing_doctor` (
  `id` int NOT NULL,
  `outpatient_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_outpatient_ED_id_idx` (`outpatient_id`),
  KEY `fk_examing_doctor_idx` (`doctor_id`),
  CONSTRAINT `fk_examing_doctor` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`D_code`),
  CONSTRAINT `fk_outpatient_ED_id` FOREIGN KEY (`outpatient_id`) REFERENCES `outpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatient_examing_doctor`
--

LOCK TABLES `outpatient_examing_doctor` WRITE;
/*!40000 ALTER TABLE `outpatient_examing_doctor` DISABLE KEYS */;
INSERT INTO `outpatient_examing_doctor` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,3),(5,3,6),(6,3,8),(7,4,9),(8,4,10),(9,4,11),(10,5,12),(11,6,4),(12,6,5);
/*!40000 ALTER TABLE `outpatient_examing_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outpatient_medication`
--

DROP TABLE IF EXISTS `outpatient_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outpatient_medication` (
  `id` int NOT NULL,
  `outpatient_id` int DEFAULT NULL,
  `medication_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_outpatient_id_idx` (`outpatient_id`),
  KEY `fk_medication_id_idx` (`medication_id`),
  CONSTRAINT `fk_medication_id` FOREIGN KEY (`medication_id`) REFERENCES `medication` (`M_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_outpatient_id` FOREIGN KEY (`outpatient_id`) REFERENCES `outpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatient_medication`
--

LOCK TABLES `outpatient_medication` WRITE;
/*!40000 ALTER TABLE `outpatient_medication` DISABLE KEYS */;
INSERT INTO `outpatient_medication` VALUES (1,1,1,4),(2,1,2,4),(3,2,3,4),(4,3,1,5),(5,3,2,6),(6,4,6,6),(7,5,6,8),(8,5,6,2),(9,5,7,4),(10,6,8,2),(11,6,10,6),(12,6,12,8),(13,6,12,4);
/*!40000 ALTER TABLE `outpatient_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `P_code` char(11) NOT NULL,
  `first_name` varchar(155) NOT NULL,
  `last_name` varchar(155) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` char(100) DEFAULT NULL,
  `address` char(255) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `patient_type` char(50) DEFAULT NULL,
  `note` char(255) DEFAULT NULL,
  `admit_date` date DEFAULT NULL,
  PRIMARY KEY (`P_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('IP000000002','Nguyễn Văn ','B','2002-02-02','Others','KTX Khu A, Đại học quốc gia Tp Hồ Chí Minh - HCMC','1111111111','Inpatient','bi tieu chay','2017-12-14'),('IP000000003','Nguyễn Văn ','C','2002-03-03','Female','Quận 9 - HCMC','2222222222','Inpatient','bi tao bon','2018-10-21'),('IP000000004','Nguyễn Văn ','D','2002-04-04','Male','Quận Tân Phú - HCMC','3333333333','Inpatient','bi tri','2020-12-15'),('IP000000006','Nguyễn Văn ','F','2001-01-01','Male','Hồ Gươm - Hà Nội','6666666666','Inpatient','bi cam lanh','2022-11-11'),('IP000000007','Nguyễn Văn ','G','1999-09-09','Female','Sao Hỏa','7777777777','Inpatient','bi ngat khi','2022-12-12'),('OP000000001','Nguyễn Văn','A','2001-01-01','Female','Quận Bình  Tân - HCMC','4444444444','Outpatient','bi dau hong','2018-12-20'),('OP000000005','Nguyễn Văn','E','2001-05-05','Male','Quận 4 - HCMC','5555555555','Outpatient','bi so mui','2021-12-29'),('OP000000008','Nguyễn Văn ','H','2020-12-20','Male','Thôn Vĩ Dạ  - Thừa Thiên Huế','8888888888','Outpatient','bi ken an','2022-12-20');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `pr_code` int NOT NULL,
  `pr_name` varchar(50) DEFAULT NULL,
  `pr_address` varchar(50) DEFAULT NULL,
  `pr_phone` char(11) DEFAULT NULL,
  PRIMARY KEY (`pr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'EISAI VIETNAM','438 Nguyen Thi Minh Khai, quan 3, TPHCM','02838113797'),(2,'GEDEON RICHTER VIETNAM LTD','214 Nguyen Van Huong, TPHCM','02825532467'),(3,'MERCK HEALTHCARE VIETNAM LIMITED','106 Nguyen Van Troi, Quan Phu Nhuan,TPHCM','02838420100'),(4,'ALLEGENS COMPANY LIMITED','So 3, duong so 45, quan 4, TPHCM','02838266819');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provied`
--

DROP TABLE IF EXISTS `provied`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provied` (
  `id` varchar(45) NOT NULL,
  `Mcode` int DEFAULT NULL,
  `Prcode` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mcode_idx` (`Mcode`),
  KEY `fk_prCode_idx` (`Prcode`),
  CONSTRAINT `fk_mcode` FOREIGN KEY (`Mcode`) REFERENCES `medication` (`M_code`) ON DELETE CASCADE,
  CONSTRAINT `fk_prCode` FOREIGN KEY (`Prcode`) REFERENCES `provider` (`pr_code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provied`
--

LOCK TABLES `provied` WRITE;
/*!40000 ALTER TABLE `provied` DISABLE KEYS */;
INSERT INTO `provied` VALUES ('1',1,1),('10',6,3),('11',7,3),('12',8,3),('13',9,1),('14',9,4),('15',10,1),('16',10,3),('17',11,2),('18',11,3),('19',12,2),('2',1,2),('3',1,3),('4',2,4),('5',3,1),('6',3,2),('7',4,4),('8',4,3),('9',5,4);
/*!40000 ALTER TABLE `provied` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` char(50) NOT NULL,
  `usename` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  `role` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1','doctor@gmail.com','admin','doctor','nguyenvana@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'database_schema'
--
/*!50003 DROP PROCEDURE IF EXISTS `sortTreatmentDoctor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sortTreatmentDoctor`(in start_date date,in end_date date)
begin
	select e.D_code, e.doctor_name, sum(number_of_patient) as number_of_patient from 
((select  c.D_code, c.doctor_name, count(a.inpatient_code) as number_of_patient from inpatient a 
join inpatient_treatment_doctor b ON a.id = b.inpatient_id
join doctor c ON c.D_code = b.treatment_doctor_id
where a.date_end_treatment >= start_date AND a.date_start_treatment <= end_date
group by c.D_code) 
union
(select  c.D_code, c.doctor_name, count(a.outpatient_code) as number_of_patient from outpatient a 
join outpatient_examing_doctor b ON a.id = b.outpatient_id
join doctor c ON c.D_code = b.doctor_id
where a.examination_date >= start_date AND a.examination_date <= end_date
group by c.D_code)) e

group by e.D_code
order by number_of_patient ASC;
end ;;
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

-- Dump completed on 2022-12-05 21:57:43
