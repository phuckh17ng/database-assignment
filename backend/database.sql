-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: database_assignment
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
  `Dep_code` char(9) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Dean_code` char(9) DEFAULT NULL,
  PRIMARY KEY (`Dep_code`),
  KEY `fk-deanCode_idx` (`Dean_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
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
  `N_speciallity_name` varchar(30) DEFAULT NULL,
  `deg_year` char(4) DEFAULT NULL,
  `year_exp` int DEFAULT NULL,
  `doctor_name` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(9) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `doctorcol` varchar(45) DEFAULT NULL,
  `dep_code` int DEFAULT NULL,
  PRIMARY KEY (`D_code`),
  KEY `fk-depCode_idx` (`dep_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'concac','5',5,'le mau phuc khang',NULL,NULL,NULL,NULL,NULL,NULL),(2,'qweqwe','4',4,'nguyen quoc trong',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `effect`
--

DROP TABLE IF EXISTS `effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `effect` (
  `Mcode` char(50) DEFAULT NULL,
  `effect` char(50) DEFAULT NULL,
  UNIQUE KEY `Mcode` (`Mcode`),
  UNIQUE KEY `effect` (`effect`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `effect`
--

LOCK TABLES `effect` WRITE;
/*!40000 ALTER TABLE `effect` DISABLE KEYS */;
/*!40000 ALTER TABLE `effect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `E_code` char(9) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `Dep_code` char(9) DEFAULT NULL,
  PRIMARY KEY (`E_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examine`
--

DROP TABLE IF EXISTS `examine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examine` (
  `P_code` char(50) DEFAULT NULL,
  `M_code` char(50) DEFAULT NULL,
  `Dr_code` char(50) DEFAULT NULL,
  `Diagnosis` char(50) DEFAULT NULL,
  `Fee` int DEFAULT NULL,
  `examination_date` date DEFAULT NULL,
  `text_examination_date` date DEFAULT NULL,
  UNIQUE KEY `P_code` (`P_code`),
  UNIQUE KEY `M_code` (`M_code`),
  UNIQUE KEY `Dr_code` (`Dr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examine`
--

LOCK TABLES `examine` WRITE;
/*!40000 ALTER TABLE `examine` DISABLE KEYS */;
/*!40000 ALTER TABLE `examine` ENABLE KEYS */;
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
  `treating_doctor` int DEFAULT NULL,
  `caring_nurse` int DEFAULT NULL,
  `diagnosis` char(255) DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_id_idx` (`patient_id`),
  KEY `treatment_NO_idx` (`treatment_NO`),
  CONSTRAINT `patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`P_code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient`
--

LOCK TABLES `inpatient` WRITE;
/*!40000 ALTER TABLE `inpatient` DISABLE KEYS */;
INSERT INTO `inpatient` VALUES (1,'IP000000001','2022-11-17','2022-12-30',1,'2022-11-17','2022-11-19','1',1,1,'adfdfsdf',20000,87),(2,'IP000000001','2022-11-17','2022-12-30',2,'2022-11-21','2022-11-23','2',2,2,'sfgdfghdgh',20000,87),(3,'IP000000002','2022-11-20','2022-11-25',1,'2022-11-20','2022-11-25','5',3,3,'dasasd',50000,88),(4,'IP000000003','2022-12-02','2022-12-10',1,'2022-12-02','2022-12-10','3',4,4,'asdasd',40000,89);
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
  `inpatient_caring_nurse` int DEFAULT NULL,
  `caring_nurse_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient_caring_nurse`
--

LOCK TABLES `inpatient_caring_nurse` WRITE;
/*!40000 ALTER TABLE `inpatient_caring_nurse` DISABLE KEYS */;
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
  CONSTRAINT `fk_inpatient_id` FOREIGN KEY (`inpatient_id`) REFERENCES `inpatient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient_medication`
--

LOCK TABLES `inpatient_medication` WRITE;
/*!40000 ALTER TABLE `inpatient_medication` DISABLE KEYS */;
INSERT INTO `inpatient_medication` VALUES (1,1,1,2),(2,1,2,4),(3,1,3,6),(4,2,1,3),(5,2,3,3);
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
  `inpatient_treatment_doctor` int DEFAULT NULL,
  `treatment_doctor_id` char(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient_treatment_doctor`
--

LOCK TABLES `inpatient_treatment_doctor` WRITE;
/*!40000 ALTER TABLE `inpatient_treatment_doctor` DISABLE KEYS */;
INSERT INTO `inpatient_treatment_doctor` VALUES (1,1,'1'),(2,1,'2'),(3,1,'3');
/*!40000 ALTER TABLE `inpatient_treatment_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `M_code` char(9) NOT NULL,
  `med_name` char(15) NOT NULL,
  `expiration_date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `imported_date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `typ` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`M_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES ('1','thuoc hoi trinh',NULL,50000.00,NULL,230,NULL),('2','thuoc dau hong',NULL,25000.00,NULL,1234,NULL),('3','thuoc cam',NULL,10000.00,NULL,123,NULL);
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `nur_code` char(11) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `speciality` varchar(30) DEFAULT NULL,
  `deg_year` char(4) DEFAULT NULL,
  `dep_code` char(9) DEFAULT NULL,
  PRIMARY KEY (`nur_code`),
  KEY `fk_depCode` (`dep_code`),
  CONSTRAINT `fk_depCode` FOREIGN KEY (`dep_code`) REFERENCES `department` (`Dep_code`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
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
  `examing_doctor` int DEFAULT NULL,
  `medication` int DEFAULT NULL,
  `diagnosis` varchar(1000) DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `examination_date` date DEFAULT NULL,
  `next_examination_date` date DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-patientId_idx` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatient`
--

LOCK TABLES `outpatient` WRITE;
/*!40000 ALTER TABLE `outpatient` DISABLE KEYS */;
INSERT INTO `outpatient` VALUES (1,'OP000000001',1,1,'dasdasd',20000,'2022-11-11','2022-11-20',86),(2,'OP000000001',2,2,'asd',300000,'2022-12-20','2022-12-25',86);
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
  `outpatient_examing_doctor` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatient_examing_doctor`
--

LOCK TABLES `outpatient_examing_doctor` WRITE;
/*!40000 ALTER TABLE `outpatient_examing_doctor` DISABLE KEYS */;
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
  CONSTRAINT `fk_outpatient_id` FOREIGN KEY (`outpatient_id`) REFERENCES `outpatient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatient_medication`
--

LOCK TABLES `outpatient_medication` WRITE;
/*!40000 ALTER TABLE `outpatient_medication` DISABLE KEYS */;
INSERT INTO `outpatient_medication` VALUES (1,1,1,2),(2,1,2,4),(3,2,3,4),(4,2,2,6);
/*!40000 ALTER TABLE `outpatient_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `P_code` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(155) NOT NULL,
  `last_name` varchar(155) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` char(100) DEFAULT NULL,
  `address` char(255) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `patient_type` char(50) DEFAULT NULL,
  `note` char(255) DEFAULT NULL,
  `admit_date` date DEFAULT NULL,
  `prescriber_id` int DEFAULT NULL,
  PRIMARY KEY (`P_code`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (86,'Lê Mậu Phúc','Khang','2022-12-14','Female','Quận 9 - HCMC','0983690399','Outpatient','ádasd','2022-12-20',NULL),(87,'Lê Mậu Phúc','Thịnh','2022-12-15','Others','Quận 9 - HCMC','1234567890','Inpatient','ádasdasd','2022-12-14',NULL),(88,'Lê Mậu Phúc','Khang','2022-11-29','Female','Quận 9 - HCMC','0983690399','Inpatient','','2022-12-21',NULL),(89,'Lê Mậu Phúc','Khang','2022-12-09','Male','Quận 9 - HCMC','0983690399','Inpatient','','2022-12-22',NULL),(90,'Lê Mậu Phúc','Khang','2022-12-06','Male','Quận 9 - HCMC','0983690399','Inpatient','','2022-12-29',NULL);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_number`
--

DROP TABLE IF EXISTS `phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_number` (
  `Ecode` char(50) DEFAULT NULL,
  `phonenumber` char(50) DEFAULT NULL,
  UNIQUE KEY `Ecode` (`Ecode`),
  UNIQUE KEY `phonenumber` (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_number`
--

LOCK TABLES `phone_number` WRITE;
/*!40000 ALTER TABLE `phone_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provied`
--

DROP TABLE IF EXISTS `provied`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provied` (
  `Mcode` char(50) DEFAULT NULL,
  `Prcode` char(50) DEFAULT NULL,
  UNIQUE KEY `Mcode` (`Mcode`),
  UNIQUE KEY `Prcode` (`Prcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provied`
--

LOCK TABLES `provied` WRITE;
/*!40000 ALTER TABLE `provied` DISABLE KEYS */;
/*!40000 ALTER TABLE `provied` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treat`
--

DROP TABLE IF EXISTS `treat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treat` (
  `P_code` char(50) DEFAULT NULL,
  `Dr_code` char(50) DEFAULT NULL,
  `M_code` char(50) DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  `Result` char(50) NOT NULL,
  UNIQUE KEY `P_code` (`P_code`),
  UNIQUE KEY `Dr_code` (`Dr_code`),
  UNIQUE KEY `M_code` (`M_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treat`
--

LOCK TABLES `treat` WRITE;
/*!40000 ALTER TABLE `treat` DISABLE KEYS */;
/*!40000 ALTER TABLE `treat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treating_doctor`
--

DROP TABLE IF EXISTS `treating_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treating_doctor` (
  `Pcode` char(50) DEFAULT NULL,
  `Treating_doctor_code` char(50) DEFAULT NULL,
  UNIQUE KEY `Pcode` (`Pcode`),
  UNIQUE KEY `Treating_doctor_code` (`Treating_doctor_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treating_doctor`
--

LOCK TABLES `treating_doctor` WRITE;
/*!40000 ALTER TABLE `treating_doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `treating_doctor` ENABLE KEYS */;
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
INSERT INTO `user` VALUES ('1','khang@gmail.com','admin','doctor','concac');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'database_assignment'
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
	select doctor_name, (doctor_count_inpatient + doctor_count_outpatient) as patient_count_number from 
	(SELECT b.doctor_code as c, count(a.P_code) as doctor_count_inpatient FROM patient a 
	left join inpatient b on b.patient_id = a.P_code
	WHERE a.admit_date >= start_date AND a.admit_date <= end_date
    group by b.doctor_code) e
	left join (	SELECT c.doctor_code as c, count(a.P_code) as doctor_count_outpatient FROM patient a 
	left join outpatient c on c.patient_id = a.P_code
	WHERE a.admit_date >= start_date AND a.admit_date <= end_date
    group by c.doctor_code) f on e.c = f.c
    join doctor on D_code = e.c 
    
	order by patient_count_number ASC;
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

-- Dump completed on 2022-12-04 21:39:01
