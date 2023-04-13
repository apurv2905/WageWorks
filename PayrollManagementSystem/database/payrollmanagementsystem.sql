-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: payrollmanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin_pass`
--

DROP TABLE IF EXISTS `admin_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_pass` (
  `Admin_ID` double DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_pass`
--

LOCK TABLES `admin_pass` WRITE;
/*!40000 ALTER TABLE `admin_pass` DISABLE KEYS */;
INSERT INTO `admin_pass` VALUES (2019124,'2019124'),(20120763,'2020763'),(20120763,'2020763'),(20205752,'20205752');
/*!40000 ALTER TABLE `admin_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `Name` varchar(25) DEFAULT NULL,
  `Designation` varchar(8) DEFAULT NULL,
  `Administrator_ID` double NOT NULL,
  PRIMARY KEY (`Administrator_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('Dev kumar','D.K.',2019124),('NITIN MITTAL','A.M.',2020763),('SEDHESH THAPA','A.M.',20201276);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `Branch_Name` varchar(40) NOT NULL,
  `Branch_Number` double DEFAULT NULL,
  PRIMARY KEY (`Branch_Name`),
  KEY `Branch_Number` (`Branch_Number`),
  CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`Branch_Number`) REFERENCES `company_has_branch` (`Branch_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('JAGDIVSR BRANCH',1),('MOTIHALL BRANCH',2),('JAIPURA BRANCH',3);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `Company_Name` varchar(25) NOT NULL,
  `Company_Address` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Company_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('NOTVINE','AMPR OFFICE SITE NO.7 , GM RAOD, GANDHINAGAR, GUJARAT, INDIA');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_has_branch`
--

DROP TABLE IF EXISTS `company_has_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_has_branch` (
  `Company_Name` varchar(25) NOT NULL,
  `Branch_Number` double NOT NULL,
  PRIMARY KEY (`Branch_Number`,`Company_Name`),
  KEY `Company_Name` (`Company_Name`),
  CONSTRAINT `company_has_branch_ibfk_1` FOREIGN KEY (`Company_Name`) REFERENCES `company` (`Company_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_has_branch`
--

LOCK TABLES `company_has_branch` WRITE;
/*!40000 ALTER TABLE `company_has_branch` DISABLE KEYS */;
INSERT INTO `company_has_branch` VALUES ('NOTVINE',1),('NOTVINE',2),('NOTVINE',3);
/*!40000 ALTER TABLE `company_has_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deduction`
--

DROP TABLE IF EXISTS `deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deduction` (
  `Tax` double DEFAULT NULL,
  `Loan` double DEFAULT NULL,
  `Employee_ID` double DEFAULT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `deduction_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deduction`
--

LOCK TABLES `deduction` WRITE;
/*!40000 ALTER TABLE `deduction` DISABLE KEYS */;
INSERT INTO `deduction` VALUES (2000,0,2020573845),(2000,0,202051257),(2000,0,202051226),(2000,0,202051216),(2000,0,202051215),(2000,0,202051214),(2000,0,202051213),(2000,0,202051212),(2000,2300,202051189),(3000,0,202051135),(3000,1000,202051128),(6,6,202051021);
/*!40000 ALTER TABLE `deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `Name` varchar(25) DEFAULT NULL,
  `Department_ID` double NOT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('SOFTWARE',12),('ADMINISTRATION',13),('HARDWARE',21),('SOFTWARE',22),('HARDWARE',31),('SOFTWARE',32);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_email`
--

DROP TABLE IF EXISTS `emp_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_email` (
  `Employee_ID` double DEFAULT NULL,
  `Email_ID` varchar(20) DEFAULT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `emp_email_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_email`
--

LOCK TABLES `emp_email` WRITE;
/*!40000 ALTER TABLE `emp_email` DISABLE KEYS */;
INSERT INTO `emp_email` VALUES (202051226,'HASD@GMAIL.COM'),(202051257,'KALI@GMAIL.COM'),(2020573845,'LAI@GMAIL.COM'),(202051189,'JAUR@GMAIL.COM'),(202051135,'DEV@GMAIL.COM'),(202051128,'DASV@GMAIL.COM'),(202051226,'lal@gmai.com'),(202051128,'pop&gmail.com'),(20205752,'pop&gmail.com'),(202051012,'b'),(202051013,'z'),(202051014,'x'),(202051015,'g'),(202051021,'P');
/*!40000 ALTER TABLE `emp_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_pass`
--

DROP TABLE IF EXISTS `emp_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_pass` (
  `Emp_pass` mediumtext,
  `Password` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_pass`
--

LOCK TABLES `emp_pass` WRITE;
/*!40000 ALTER TABLE `emp_pass` DISABLE KEYS */;
INSERT INTO `emp_pass` VALUES ('20205752','20205752'),('202051128','202051128'),('202051135','202051135'),('202051189','202051189'),('202051212','202051212'),('202051213','202051213'),('202051214','202051214'),('202051215','202051215'),('202051216','202051216'),('202051226','202051226'),('202051257','202051257'),('2020573845','2020573845');
/*!40000 ALTER TABLE `emp_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_phonen`
--

DROP TABLE IF EXISTS `emp_phonen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_phonen` (
  `Employee_ID` double NOT NULL,
  `Phone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Phone_number`),
  CONSTRAINT `emp_phonen_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_phonen`
--

LOCK TABLES `emp_phonen` WRITE;
/*!40000 ALTER TABLE `emp_phonen` DISABLE KEYS */;
INSERT INTO `emp_phonen` VALUES (20205752,'6735248743'),(202051012,'8907654321'),(202051013,'9876543210'),(202051014,'9437275043'),(202051015,'9785432160'),(202051021,'9275027584'),(202051128,'1893248743'),(202051135,'18917382743'),(202051189,'251382743'),(202051226,'2562182743'),(202051257,'6735248718'),(2020573845,'9284761235');
/*!40000 ALTER TABLE `emp_phonen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` double NOT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `Address` varchar(70) DEFAULT NULL,
  `Designation` varchar(8) DEFAULT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (20205752,'LAL BHADUR','DKJFAJDWUAN973N  3','EMP1','MALE',NULL),(202051012,'b','b','b','Male','12092000'),(202051013,'z','z','z','Male','13122002'),(202051014,'x','x','x','Male','23092002'),(202051015,'g','g','g','Male','23041999'),(202051021,'P','L','P','Female','23092000'),(202051128,'NAIM  HANT','DKJ 5883 AN973N  3','EMP2','female',NULL),(202051135,'RISHI JAY','784 588FGD3 ANSS973N  4','EMP3','MALE',NULL),(202051189,'GANESH RAM','7HSDFS SEFES8ED3 55EE973N  2','EMP4','MALE',NULL),(202051212,'KAVESH SHA','SDFJ9 ADH9 SD','EMP8','MALE',NULL),(202051213,'RAM JAY KISHAN','42 ADW9 S4','EMP9','MALE',NULL),(202051214,'MADAN LAL','42 ARQ2W9 S7','EMP10','MALE',NULL),(202051215,'LOKENDRA KUMAR','67Q2W9 47','EMP11','MALE',NULL),(202051216,'ASHUTOUSH MISHRA','A39 13F 44','EMP2','MALE',NULL),(202051226,'LAK SHAAM',' S34SS8ED3 55EE973N  1','EMP5','female',NULL),(202051257,'HARI YAAR',' 55EE973N  9','EMP6','MALE',NULL),(2020573845,'SHAN AHUJA',' 5FSF73N  9','EMP7','female',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `have`
--

DROP TABLE IF EXISTS `have`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `have` (
  `Branch_Number` double DEFAULT NULL,
  `Department_ID` double NOT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `have`
--

LOCK TABLES `have` WRITE;
/*!40000 ALTER TABLE `have` DISABLE KEYS */;
INSERT INTO `have` VALUES (1,12),(1,13),(2,21),(2,22),(3,31),(3,32);
/*!40000 ALTER TABLE `have` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headed_by`
--

DROP TABLE IF EXISTS `headed_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `headed_by` (
  `Department_ID` double NOT NULL,
  `Employee_ID` double DEFAULT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headed_by`
--

LOCK TABLES `headed_by` WRITE;
/*!40000 ALTER TABLE `headed_by` DISABLE KEYS */;
INSERT INTO `headed_by` VALUES (12,202051128),(13,202051135),(21,202051126),(32,202051189);
/*!40000 ALTER TABLE `headed_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headed_by_admin`
--

DROP TABLE IF EXISTS `headed_by_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `headed_by_admin` (
  `Adminisrator_ID` double NOT NULL,
  `Branch_Number` double DEFAULT NULL,
  PRIMARY KEY (`Adminisrator_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headed_by_admin`
--

LOCK TABLES `headed_by_admin` WRITE;
/*!40000 ALTER TABLE `headed_by_admin` DISABLE KEYS */;
INSERT INTO `headed_by_admin` VALUES (2019124,1),(2020763,2),(20201276,3);
/*!40000 ALTER TABLE `headed_by_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hires`
--

DROP TABLE IF EXISTS `hires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hires` (
  `Employee_ID` double DEFAULT NULL,
  `Department_Head_ID` double DEFAULT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `hires_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hires`
--

LOCK TABLES `hires` WRITE;
/*!40000 ALTER TABLE `hires` DISABLE KEYS */;
INSERT INTO `hires` VALUES (202051257,202051128),(2020573845,202051189),(202051212,202051135),(202051213,202051128),(202051214,202051128),(202051215,202051189),(202051216,202051126);
/*!40000 ALTER TABLE `hires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Employee_ID` double DEFAULT NULL,
  `Final_Payment` double DEFAULT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (202051128,45000),(202051135,46000),(202051189,39000),(202051212,49000),(202051213,42000),(202051214,42030),(202051215,41030),(202051216,31030),(202051226,36030),(2020573845,48030),(2020573845,48030);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pays`
--

DROP TABLE IF EXISTS `pays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pays` (
  `Administrator_ID` double DEFAULT NULL,
  `Employee_ID` double NOT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pays`
--

LOCK TABLES `pays` WRITE;
/*!40000 ALTER TABLE `pays` DISABLE KEYS */;
INSERT INTO `pays` VALUES (2019124,20205752),(2019124,202051128),(2020763,202051135),(2020763,202051189),(20201276,202051226),(2020763,202051257),(2019124,2020573845);
/*!40000 ALTER TABLE `pays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `Basic_Salary_Amount` double DEFAULT NULL,
  `Total_Allowance` double DEFAULT NULL,
  `Incentive` double DEFAULT NULL,
  `Employee_ID` double DEFAULT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (40000,5000,4500,202051128),(41000,5000,4500,202051135),(41000,5000,4500,202051189),(41000,5000,4500,202051212),(41000,5000,5500,202051213),(41000,5000,5500,202051214),(41000,5000,5500,202051215),(41000,5000,5500,202051216),(51000,5000,5500,202051226),(51000,5000,5500,202051257),(51000,5000,5500,2020573845),(4,12,4,202051015),(6,18,6,202051021);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-13 19:50:07
