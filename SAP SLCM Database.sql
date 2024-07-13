CREATE DATABASE  IF NOT EXISTS `slcm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `slcm`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: slcm
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `admission_result`
--

DROP TABLE IF EXISTS `admission_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission_result` (
  `student_id` int NOT NULL,
  `total_marks` int DEFAULT NULL,
  `marks_obtain` int DEFAULT NULL,
  `ranks` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_result`
--

LOCK TABLES `admission_result` WRITE;
/*!40000 ALTER TABLE `admission_result` DISABLE KEYS */;
INSERT INTO `admission_result` VALUES (2101,480,380,7345),(2104,480,374,8764),(2105,480,420,3410),(2106,480,444,999),(2107,480,388,6988),(2108,480,448,890),(2109,480,380,7360),(2110,480,400,1504),(2111,480,404,1329),(2113,480,340,9873),(2114,480,344,9599),(2117,480,320,10231);
/*!40000 ALTER TABLE `admission_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admission_test`
--

DROP TABLE IF EXISTS `admission_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission_test` (
  `student_id` int NOT NULL,
  `exam_name` varchar(45) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `exam_slot` int DEFAULT NULL,
  `exam_time` time DEFAULT NULL,
  `exam_vanue` varchar(45) DEFAULT NULL,
  `program` varchar(45) DEFAULT NULL,
  `branch_1` varchar(70) DEFAULT NULL,
  `branch_2` varchar(70) DEFAULT NULL,
  `branch_3` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_test`
--

LOCK TABLES `admission_test` WRITE;
/*!40000 ALTER TABLE `admission_test` DISABLE KEYS */;
INSERT INTO `admission_test` VALUES (2101,'KIITEE','2021-05-20',1,'09:00:00','Kolkata','B.Tech','Computer Science and Engineering','Electrical and Computer Engineering','Aerospace Engineering'),(2104,'KIITEE','2021-05-20',1,'09:00:00','Patna','B.Tech','Computer Science and Engineering','Electrical Engineering',NULL),(2105,'KIITEE','2021-05-20',2,'13:00:00','Bokaro','B.Tech','Computer Science and Engineering',NULL,NULL),(2106,'KIITEE','2021-05-20',1,'09:00:00','Lucknow','B.Tech','Computer Science and Engineering','Aerospace Engineering',NULL),(2107,'KIITEE','2021-05-20',2,'13:00:00','Dhanbad','B.Tech','Computer Science and Engineering','Electrical and Computer Engineering',NULL),(2108,'KIITEE','2021-05-20',2,'13:00:00','Bhubaneswar','B.Tech','Computer Science and Engineering','Electrical and Computer Engineering','Electrical Engineering'),(2109,'KIITEE','2021-05-20',1,'09:00:00','Kolkata','B.Tech','Computer Science and Engineering','Informaton Technology','Computer Science and System Engineering'),(2110,'KIITEE','2021-05-20',1,'09:00:00','Raipur','B.Tech','Computer Science and Engineering','Informaton Technology','Computer Science and System Engineering'),(2111,'KIITEE','2021-05-20',2,'13:00:00','Bhubaneswar','B.Tech','Computer Science and Engineering','Electrical and Computer Engineering','Aerospace Engineering'),(2113,'KIITEE','2021-05-20',1,'09:00:00','Lucknow','B.Tech','Computer Science and Engineering','Informaton Technology',NULL),(2114,'KIITEE','2021-05-20',2,'13:00:00','Lucknow','B.Tech','Computer Science and Engineering','Informaton Technology','Electrical and Computer Engineering'),(2117,'KIITEE','2021-05-20',2,'13:00:00','Lucknow','B.Tech','Computer Science and Engineering','Informaton Technology','Electrical Engineering');
/*!40000 ALTER TABLE `admission_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `roll_no` int NOT NULL,
  `subject_name` varchar(45) DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `total_attendance` int DEFAULT NULL,
  `total_present` int DEFAULT NULL,
  `total_absent` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (21051300,'Cloud Computing',6,34,30,4),(21051300,'Compiler Design',6,34,28,6),(21051300,'Software Project Management',6,34,25,9),(21051300,'Internet of Things',6,34,29,5),(21051300,'Data Analytics',6,34,30,4),(21051619,'Cloud Computing',6,34,32,2),(21051619,'Compiler Design',6,34,24,10),(21051619,'Software Project Management',6,34,20,12),(21051619,'Internet of Things',6,34,27,7),(21051619,'Data Analytics',6,34,34,0),(21051628,'Cloud Computing',6,34,31,3),(21051628,'Compiler Design',6,34,28,6),(21051628,'Software Project Management',6,34,33,1),(21051628,'Natural Language Processing',6,34,32,2),(21051628,'Machine Learning',6,34,26,8),(21051666,'Cloud Computing',6,34,30,4),(21051666,'Compiler Design',6,34,18,16),(21051666,'Software Project Management',6,34,27,7),(21051666,'Natural Language Processing',6,34,30,4),(21051666,'Machine Learning',6,34,32,2),(21051668,'Cloud Computing',6,34,28,6),(21051668,'Compiler Design',6,34,29,5),(21051668,'Software Project Management',6,34,30,4),(21051668,'Internet of Things',6,34,26,8),(21051668,'Data Analytics',6,34,30,4),(21051670,'Cloud Computing',6,34,30,4),(21051670,'Compiler Design',6,34,27,7),(21051670,'Software Project Management',6,34,33,1),(21051670,'Data Analytics',6,34,32,2),(21051670,'Machine Learning',6,34,29,5),(21052436,'Cloud Computing',6,34,33,1),(21052436,'Compiler Design',6,34,29,5),(21052436,'Software Project Management',6,34,32,2),(21052436,'Data Analytics',6,34,31,3),(21052436,'Machine Learning',6,34,28,6);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branch_id` int NOT NULL,
  `branch_name` varchar(70) DEFAULT NULL,
  `seat_number` int DEFAULT NULL,
  `faculty_number` int DEFAULT NULL,
  `program_id` int NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Civil Engineering',250,20,3,103),(2,'Construction Technology',200,12,3,103),(3,'Electrical Engineering',300,25,2,102),(4,'Electrical and Computer Engineering',100,5,2,102),(5,'Computer Science and Engineering',250,27,1,101),(6,'Informaton Technology',150,14,1,101),(7,'Computer Science and Communication Engineering',100,6,1,101),(8,'Computer Science and System Engineering',100,4,1,101),(9,'Mechanical Engineering',100,12,4,104),(10,'Aerospace Engineering',60,3,4,104),(11,'Mechatronics Engineering',60,2,4,104);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_semester_examiantion`
--

DROP TABLE IF EXISTS `end_semester_examiantion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `end_semester_examiantion` (
  `subject_name` varchar(60) DEFAULT NULL,
  `marks_obtain` int DEFAULT NULL,
  `exam_id` int NOT NULL,
  `roll_no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_semester_examiantion`
--

LOCK TABLES `end_semester_examiantion` WRITE;
/*!40000 ALTER TABLE `end_semester_examiantion` DISABLE KEYS */;
INSERT INTO `end_semester_examiantion` VALUES ('Cloud Computing',38,6,21051300),('Cloud Computing',30,6,21051619),('Cloud Computing',35,6,21051628),('Cloud Computing',37,6,21051666),('Cloud Computing',32,6,21051668),('Cloud Computing',33,6,21051670),('Cloud Computing',38,6,21052436),('Compiler Design',37,6,21051300),('Compiler Design',40,6,21051619),('Compiler Design',38,6,21051628),('Compiler Design',36,6,21051666),('Compiler Design',30,6,21051668),('Compiler Design',37,6,21051670),('Compiler Design',34,6,21052436),('Software Project Management',41,6,21051300),('Software Project Management',34,6,21051619),('Software Project Management',29,6,21051628),('Software Project Management',32,6,21051666),('Software Project Management',40,6,21051668),('Software Project Management',38,6,21051670),('Software Project Management',36,6,21052436),('Internet of Things',35,6,21051300),('Internet of Things',30,6,21051619),('Internet of Things',33,6,21051668),('Data Analytics',35,6,21051300),('Data Analytics',32,6,21051619),('Data Analytics',36,6,21051668),('Data Analytics',38,6,21051670),('Data Analytics',40,6,21052436),('Machine Learning',30,6,21051628),('Machine Learning',32,6,21051666),('Machine Learning',28,6,21051670),('Machine Learning',34,6,21052436),('Natural Language Processing',34,6,21051628),('Natural Language Processing',30,6,21051666);
/*!40000 ALTER TABLE `end_semester_examiantion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examination` (
  `exam_id` int NOT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `number_of_subject` int DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (1,'1st',8),(2,'2nd',7),(3,'3rd',6),(4,'4th',6),(5,'5th',6),(6,'6th',5),(7,'7th',3),(8,'8th',2);
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `professor_id` int NOT NULL,
  `subject_name` varchar(70) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `semester` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (100034,'Data Structures and Algorithms','CSE23',3),(100564,'Data Analytics','DA_CS34',6),(101123,'Compiler Design','CSE18',6),(102345,'Compiler Design','CSE38',6),(103421,'Compiler Design','CSE7',6),(103788,'Machine Learning','ML_CS20',6),(105677,'Software Project Management','CSE8',6),(108765,'Cloud Computing','CSE12',6),(122344,'Internet of Things','IOT_CS5',6),(125479,'Cloud Computing','CSE39',6),(132014,'Cloud Computing','CSE10',6),(133425,'Data Analytics','DA_CS10',6),(145673,'Software Project Management','CSE24',6),(156785,'Software Project Management','CSE19',6),(167777,'Compiler Design','CSE1',6),(177654,'Natural Language Processing','NLP_CS4',6),(178865,'Internet of Things','IOT_CS6',6),(187654,'Natural Language Processing','NLP_CS3',6),(195678,'Machine Learning','ML_CS1',6);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees` (
  `fees_id` int NOT NULL,
  `amount_paid` int DEFAULT NULL,
  `last_transaction_date` date DEFAULT NULL,
  `due_amount` int DEFAULT NULL,
  `payment_method` varchar(45) DEFAULT NULL,
  `roll_no` int NOT NULL,
  PRIMARY KEY (`fees_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (1000,850000,'2024-05-24',50000,'UPI',21051300),(1001,845000,'2024-03-09',55000,'Bank Transfer',21051619),(1002,900000,'2024-06-14',0,'UPI',21051628),(1003,800000,'2024-01-20',100000,'Online Banking',21051666),(1004,850000,'2024-06-19',50000,'UPI',21051668),(1005,800000,'2024-01-11',100000,'UPI',21051670),(1006,875000,'2024-04-14',25000,'UPI',21052436);
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel` (
  `hostel_id` int NOT NULL,
  `hostel_name` varchar(45) DEFAULT NULL,
  `student_number` int DEFAULT NULL,
  `catagory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
INSERT INTO `hostel` VALUES (1,'Kings Palace 1',200,'Boys'),(2,'Kings Palace 2',150,'Boys'),(3,'Kings Palace 3',400,'Boys'),(4,'Kings Palace 4',350,'Boys'),(5,'Queens Castle 1',150,'Girls'),(6,'Queens Castle 2',200,'Girls'),(7,'Queens Castle 3',100,'Girls');
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor` (
  `roll_no` int NOT NULL,
  `professor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (2105108,145673),(2105319,145673),(2105876,145673),(2105920,145673),(2105987,145673),(21041543,145673),(21051090,145673),(21051111,187654),(21051172,187654),(21051213,187654),(21051300,103421),(21051535,187654),(21051553,187654),(21051619,156785),(21051628,103421),(21051643,156785),(21051666,156785),(21051668,156785),(21051670,156785),(21051791,156785),(21051828,156785),(21052345,103421),(21052436,100564),(21052636,100564),(21052666,100564);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mid_semester_examination`
--

DROP TABLE IF EXISTS `mid_semester_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mid_semester_examination` (
  `subject_name` varchar(60) DEFAULT NULL,
  `marks_obtain` int DEFAULT NULL,
  `exam_id` int NOT NULL,
  `roll_no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mid_semester_examination`
--

LOCK TABLES `mid_semester_examination` WRITE;
/*!40000 ALTER TABLE `mid_semester_examination` DISABLE KEYS */;
INSERT INTO `mid_semester_examination` VALUES ('Cloud Computing',16,6,21051300),('Cloud Computing',14,6,21051619),('Cloud Computing',17,6,21051628),('Cloud Computing',18,6,21051666),('Cloud Computing',15,6,21051668),('Cloud Computing',18,6,21051670),('Cloud Computing',19,6,21052436),('Compiler Design',14,6,21051300),('Compiler Design',15,6,21051619),('Compiler Design',13,6,21051628),('Compiler Design',15,6,21051666),('Compiler Design',11,6,21051668),('Compiler Design',16,6,21051670),('Compiler Design',15,6,21052436),('Software Project Management',18,6,21051300),('Software Project Management',18,6,21051619),('Software Project Management',17,6,21051628),('Software Project Management',18,6,21051666),('Software Project Management',17,6,21051668),('Software Project Management',19,6,21051670),('Software Project Management',16,6,21052436),('Internet of Things',14,6,21051300),('Internet of Things',8,6,21051619),('Internet of Things',10,6,21051668),('Data Analytics',12,6,21051300),('Data Analytics',10,6,21051619),('Data Analytics',9,6,21051668),('Data Analytics',13,6,21051670),('Data Analytics',14,6,21052436),('Machine Learning',11,6,21051628),('Machine Learning',12,6,21051666),('Machine Learning',10,6,21051670),('Machine Learning',12,6,21052436),('Natural Language Processing',15,6,21051628),('Natural Language Processing',16,6,21051666);
/*!40000 ALTER TABLE `mid_semester_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `professor_id` int NOT NULL,
  `professor_name` varchar(70) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `phone_no` double DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `branch_id` int NOT NULL,
  PRIMARY KEY (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (100034,'Dr. Amulya Ratna Swain','Professor & Dean',6698564598,'amulyafcs@kiit.ac.in',5),(100564,'Dr. Santwana Sagnika','Assistant Professor',7765421459,'santwana.sagnikafcs@kiit.ac.in',5),(101123,'Dr. Abhishek Ray','Professor & Dean T&P',9843567231,'arayfcs@kiit.ac.in',5),(102345,'Prabhu Prasad Dev','Assistant Professor',6783457231,'prabhu.devfcs@kiit.ac.in',5),(103421,'Dr. Bindu Agarwalla','Assistant Professor',8755446984,'bindu.agarwalfcs@kiit.ac.in',5),(103788,'Dr. Partha Pratim Sarangi','Assistant Professor',6656432178,'pp.sarangifcs@kiit.ac.in',5),(105677,'Dr. Saurabh Jha','Assistant Professor',6543215465,'saurabh.jhafcs@kiit.ac.in',5),(108765,'Santosh Kumar Swain','Associate Professor',8667854332,'sswainfcs@kiit.ac.in',5),(122344,'Dr. Hitesh Mohapatra','Associate Professor',8878453211,'hiteshmahapatra.fcs@kiit.ac.in',5),(125479,'Shilpa Das','Assistant Professor',9659476214,'shilpa.dasfcs@kiit.ac.in',5),(132014,'Dr. Suneeta Mohanty','Associate Professor',9476235124,'smohantyfcs@kiit.ac.in',5),(133425,'Dr. Santos Kumar Baliarsingh','Assistant Professor',8961325670,'santos.baliarsinghfcs@kiit.ac.in',5),(145673,'Kumar Devadutta','Associate Dean T&P',7456342134,'kdevduttafcs@kiit.ac.in',5),(156785,'Dr. Saurabh Bilgaiyan','Assistant Professor',7654378799,'saurabh.bilgaiyanfcs@kiit.ac.in',5),(167777,'Jhalak Hota','Assistant Professor',9976998765,'jhalak.hotafcs@kiit.ac.in',5),(177654,'Lipika Dewangan','Assistant Professor',7654321134,'lipika.dewanganfcs@kiit.ac.in',5),(178865,' Dr. Banchhanidhi Dash','Assistant Professor',9679362134,'banchhanidhi.dashfcs@kiit.ac.in',5),(187654,'Dr. Murari Mandal','Assistant Professor',9254678658,'murari.mandalfcs@kiit.ac.in',5),(195678,'Sankalp Nayak','Assistant Professor',8967563288,'sankalp.nayakfcs@kiit.ac.in',5);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `program_id` int NOT NULL,
  `program_name` varchar(45) DEFAULT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (1,'B.tech',101),(2,'B.tech',102),(3,'B.tech',103),(4,'B.tech',104),(5,'M.tech',101),(6,'M.tech',102),(7,'M.tech',103),(8,'M.tech',104);
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `roll_no` int NOT NULL,
  `marks_obtain` int DEFAULT NULL,
  `grade` char(1) DEFAULT NULL,
  `subject_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (21051300,80,'E',3022),(21051619,68,'B',3022),(21051628,73,'A',3022),(21051666,82,'E',3022),(21051668,75,'A',3022),(21051670,76,'A',3022),(21052436,85,'E',3022),(21051300,74,'A',3008),(21051619,81,'E',3008),(21051628,78,'A',3008),(21051666,79,'A',3008),(21051668,61,'B',3008),(21051670,74,'A',3008),(21052436,71,'A',3008),(21051300,87,'E',3032),(21051619,78,'A',3032),(21051628,58,'C',3032),(21051666,71,'A',3032),(21051668,84,'E',3032),(21051670,82,'E',3032),(21052436,77,'A',3032),(21051300,75,'A',3007),(21051619,60,'B',3007),(21051668,67,'B',3007),(21051300,73,'A',3006),(21051619,68,'B',3006),(21051668,71,'A',3006),(21051670,79,'A',3006),(21052436,81,'E',3006),(21051628,70,'A',3035),(21051666,72,'A',3035),(21051670,62,'B',3035),(21052436,72,'A',3035),(21051628,75,'A',4033),(21051666,74,'A',4033);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `school_id` int NOT NULL,
  `school_name` varchar(45) DEFAULT NULL,
  `branch_number` int DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (101,'School of Computer Engineering',4),(102,'School of Electrical Engineering',2),(103,'School of Civil Engineering',2),(104,'School of Mechanical Engineering',3);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `address` varchar(70) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone_no` double DEFAULT NULL,
  `10th_marks` int DEFAULT NULL,
  `12th_marks` int DEFAULT NULL,
  `roll_no` int NOT NULL,
  PRIMARY KEY (`student_id`,`roll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (2101,'Pratyay ','2003-09-24',20,'Pareshnath','Kabita ','Male','Township Salboni','West Bengal','pratyay@gmail.com',9475220694,85,90,21051670),(2102,'Rohit','2002-03-14',22,'Punit','Ruma','Male','dwihuduhwudh','Bihar','rohit@gmail.com',8678845745,75,82,21051172),(2103,'Ranjan','2002-03-14',22,'Charan','Renu','Male','dyqwydqiwdjiqji','West Bengal','ranjan@gmail.com',8677745725,79,91,21041543),(2104,'Paritosh','2002-08-10',21,'Ashutosh','Jyoti','Male',' Shivpuri Patna','Bihar','paritoshk1011@gmail.com',9835652450,87,91,21051666),(2105,'Abhimanyu','2004-03-10',20,'Bhagwan','Biva','Male','Chas Bokaro','Jharkhand','pandeyabhimanyu10@gmail.com',7277050666,83,80,21051619),(2106,'Prakhar','2005-08-22',19,'Ramjeet',' Renu','Male',' Vastu Khand','Uttar Pradesh',' prakharsinghjnv22@gmail.com',9783144865,80,87,21051668),(2107,'Nitin','2003-12-04',21,' Umesh',' Uma','Male',' Saraidhela Dhanbad','Jharkhand','21051828@kiit.ac.in',7280826628,87,84,21051828),(2108,'Adarsh','2003-07-04',21,'Santosh','Bandita','Male','Hanuman Bazar','Odisha','adarshpatro2003@gmail.com',8984357744,88,83,21051791),(2109,'Oishy','2003-03-03',21,'Sridhar','Manjusri','Female',' Bangalore',' Karnataka',' oecees98@gmail.com',6289184480,93,90,21052436),(2110,'Ananya','2004-07-19',20,' Mritunjay','Bornali','Female','Bilaspur','Chhattisgarh',' gongjoo2222@gmail.com',8770824390,90,92,21051628),(2111,'Amit','2004-04-25',20,'Awdwdwdwd','Lkdjdkjkak','Male','Bhubaneswar','Odisha','21051535@kiit.ac.in',7970416564,67,62,21051535),(2112,'Ayush','2002-12-21',21,'Avoy','Sarita','Male','BataRoad','Jharkhand','ayush@gmail.com',9693395594,86,90,21051213),(2113,'Bhaskar','2003-09-03',20,'Brijesh','Beena','Male','NTPC COLONY Unchahar',' Uttar Pradesh','mishrabhaskar615@gmail.com',9140656833,80,85,21051643),(2114,'Ayushman','2004-04-04',20,'Avinash','Nidhi','Male','Prayagraj',' Uttar Pradesh','ayushmantripathi@gmail.com',6392640896,90,81,21051553),(2115,'Anirban','2005-02-19',19,'Alak','Anima','Male','Tamluk',' West Bengal','anirbangantait3@gmail.com',8597087532,96,89,2105108),(2116,'Shreyansh','2002-09-25',22,'Rajesh','Rita','Male','madhavpur','Hyderabad','upadhyayshreyansh@gmail.com',8287537127,91,90,2105319),(2117,'Bhoomika','2002-09-15',21,'Nitin','Disha','Female',' Mawaiya Lucknow','Uttar Pradesh','bsehta15@gmail.com',7800280811,95,97,21051300),(2118,'Sarthak','2003-09-05',21,'Deepak','Sushma','Male','Bilaspur','Chhattisgarh','sarthakmohanty05@gmail.com',6264199923,89,93,2105920),(2119,'Samay','2002-10-20',21,'Deepak','Rina','Male','Srinagar','Jammu','samay@gmail.com',9865345219,88,85,21051111),(2120,'Renu','2003-04-24',21,'Sumit','Sumita','Female','Ramnager','Delhi','renu@gmail.com',8743211327,76,82,21052345),(2121,'Anika','2004-05-21',21,'Kishan','Neha','Female','Rohini','Madhya Pradesh','anika09@gmail.com',8637018696,91,85,21052666),(2122,'Abhijit','2003-12-24',21,'Abhinav','Suniti','Male','Medinipur','West Bengal','abhi2122@gmail.com',9979654321,77,87,2105987),(2123,'Saraswati','2002-01-09',22,'Krishna','Roshni','Female','Ranijang','West Bengal','saraswati@gmail.com',7797274248,83,81,21052636),(2124,'Kuldeep','2003-11-26',20,'Govinda','Ritka','Male','Chas Bokaro','Jharkhand','kuldeep12@gmail.com',8921346678,93,87,21051090),(2125,'Pranay','2002-09-11',22,'Pradip','Umarani','Male','Ranrajartala','West Bengal','pranay69@gmail.com',9832777789,79,82,2105876);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_post`
--

DROP TABLE IF EXISTS `student_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_post` (
  `roll_no` int NOT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `address` varchar(70) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone_no` double DEFAULT NULL,
  `hostel_id` int DEFAULT NULL,
  `branch_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_post`
--

LOCK TABLES `student_post` WRITE;
/*!40000 ALTER TABLE `student_post` DISABLE KEYS */;
INSERT INTO `student_post` VALUES (21051670,'Pratyay ','2003-09-24',20,'Pareshnath','Kabita ','Male','Township Salboni','West Bengal','pratyay@gmail.com',9475220694,1,5),(21051172,'Rohit','2002-03-14',22,'Punit','Ruma','Male','dwihuduhwudh','Bihar','rohit@gmail.com',8678845745,1,5),(21041543,'Ranjan','2002-03-14',22,'Charan','Renu','Male','dyqwydqiwdjiqji','West Bengal','ranjan@gmail.com',8677745725,1,5),(21051666,'Paritosh','2002-08-10',21,'Ashutosh','Jyoti','Male',' Shivpuri Patna','Bihar','paritoshk1011@gmail.com',9835652450,1,5),(21051619,'Abhimanyu','2004-03-10',20,'Bhagwan','Biva','Male','Chas Bokaro','Jharkhand','pandeyabhimanyu10@gmail.com',7277050666,1,5),(21051668,'Prakhar','2005-08-22',19,'Ramjeet',' Renu','Male',' Vastu Khand','Uttar Pradesh',' prakharsinghjnv22@gmail.com',9783144865,1,5),(21051828,'Nitin','2003-12-04',21,' Umesh',' Uma','Male',' Saraidhela Dhanbad','Jharkhand','21051828@kiit.ac.in',7280826628,1,5),(21051791,'Adarsh','2003-07-04',21,'Santosh','Bandita','Male','Hanuman Bazar','Odisha','adarshpatro2003@gmail.com',8984357744,2,5),(21052436,'Oishy','2003-03-03',21,'Sridhar','Manjusri','Female',' Bangalore',' Karnataka',' oecees98@gmail.com',6289184480,5,5),(21051628,'Ananya','2004-07-19',20,' Mritunjay','Bornali','Female','Bilaspur','Chhattisgarh',' gongjoo2222@gmail.com',8770824390,5,5),(21051535,'Amit','2004-04-25',20,'Awdwdwdwd','Lkdjdkjkak','Male','Bhubaneswar','Odisha','21051535@kiit.ac.in',7970416564,2,5),(21051213,'Ayush','2002-12-21',21,'Avoy','Sarita','Male','BataRoad','Jharkhand','ayush@gmail.com',9693395594,2,5),(21051643,'Bhaskar','2003-09-03',20,'Brijesh','Beena','Male','NTPC COLONY Unchahar',' Uttar Pradesh','mishrabhaskar615@gmail.com',9140656833,2,5),(21051553,'Ayushman','2004-04-04',20,'Avinash','Nidhi','Male','Prayagraj',' Uttar Pradesh','ayushmantripathi@gmail.com',6392640896,2,5),(2105108,'Anirban','2005-02-19',19,'Alak','Anima','Male','Tamluk',' West Bengal','anirbangantait3@gmail.com',8597087532,3,5),(2105319,'Shreyansh','2002-09-25',22,'Rajesh','Rita','Male','madhavpur','Hyderabad','upadhyayshreyansh@gmail.com',8287537127,3,5),(21051300,'Bhoomika','2002-09-15',21,'Nitin','Disha','Female',' Mawaiya Lucknow','Uttar Pradesh','bsehta15@gmail.com',7800280811,5,5),(2105920,'Sarthak','2003-09-05',21,'Deepak','Sushma','Male','Bilaspur','Chhattisgarh','sarthakmohanty05@gmail.com',6264199923,3,5),(21051111,'Samay','2002-10-20',21,'Deepak','Rina','Male','Srinagar','Jammu','samay@gmail.com',9865345219,4,5),(21052345,'Renu','2003-04-24',21,'Sumit','Sumita','Female','Ramnager','Delhi','renu@gmail.com',8743211327,6,5),(21052666,'Anika','2004-05-21',21,'Kishan','Neha','Female','Rohini','Madhya Pradesh','anika09@gmail.com',8637018696,6,5),(2105987,'Abhijit','2003-12-24',21,'Abhinav','Suniti','Male','Medinipur','West Bengal','abhi2122@gmail.com',9979654321,4,5),(21052636,'Saraswati','2002-01-09',22,'Krishna','Roshni','Female','Ranijang','West Bengal','saraswati@gmail.com',7797274248,7,5),(21051090,'Kuldeep','2003-11-26',20,'Govinda','Ritka','Male','Chas Bokaro','Jharkhand','kuldeep12@gmail.com',8921346678,4,5),(2105876,'Pranay','2002-09-11',22,'Pradip','Umarani','Male','Ranrajartala','West Bengal','pranay69@gmail.com',9832777789,4,5);
/*!40000 ALTER TABLE `student_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_pre`
--

DROP TABLE IF EXISTS `student_pre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_pre` (
  `student_id` int NOT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `address` varchar(70) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone_no` double DEFAULT NULL,
  `10th_marks` int DEFAULT NULL,
  `12th_marks` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_pre`
--

LOCK TABLES `student_pre` WRITE;
/*!40000 ALTER TABLE `student_pre` DISABLE KEYS */;
INSERT INTO `student_pre` VALUES (2101,'Pratyay ','2003-09-24',20,'Pareshnath','Kabita ','Male','Township Salboni','West Bengal','pratyay@gmail.com',9475220694,85,90),(2102,'Rohit','2002-03-14',22,'Punit','Ruma','Male','dwihuduhwudh','Bihar','rohit@gmail.com',8678845745,75,82),(2103,'Ranjan','2002-03-14',22,'Charan','Renu','Male','dyqwydqiwdjiqji','West Bengal','ranjan@gmail.com',8677745725,79,91),(2104,'Paritosh','2002-08-10',21,'Ashutosh','Jyoti','Male',' Shivpuri Patna','Bihar','paritoshk1011@gmail.com',9835652450,87,91),(2105,'Abhimanyu','2004-03-10',20,'Bhagwan','Biva','Male','Chas Bokaro','Jharkhand','pandeyabhimanyu10@gmail.com',7277050666,83,80),(2106,'Prakhar','2005-08-22',19,'Ramjeet',' Renu','Male',' Vastu Khand','Uttar Pradesh',' prakharsinghjnv22@gmail.com',9783144865,80,87),(2107,'Nitin','2003-12-04',21,' Umesh',' Uma','Male',' Saraidhela Dhanbad','Jharkhand','21051828@kiit.ac.in',7280826628,87,84),(2108,'Adarsh','2003-07-04',21,'Santosh','Bandita','Male','Hanuman Bazar','Odisha','adarshpatro2003@gmail.com',8984357744,88,83),(2109,'Oishy','2003-03-03',21,'Sridhar','Manjusri','Female',' Bangalore',' Karnataka',' oecees98@gmail.com',6289184480,93,90),(2110,'Ananya','2004-07-19',20,' Mritunjay','Bornali','Female','Bilaspur','Chhattisgarh',' gongjoo2222@gmail.com',8770824390,90,92),(2111,'Amit','2004-04-25',20,'Awdwdwdwd','Lkdjdkjkak','Male','Bhubaneswar','Odisha','21051535@kiit.ac.in',7970416564,67,62),(2112,'Ayush','2002-12-21',21,'Avoy','Sarita','Male','BataRoad','Jharkhand','ayush@gmail.com',9693395594,86,90),(2113,'Bhaskar','2003-09-03',20,'Brijesh','Beena','Male','NTPC COLONY Unchahar',' Uttar Pradesh','mishrabhaskar615@gmail.com',9140656833,80,85),(2114,'Ayushman','2004-04-04',20,'Avinash','Nidhi','Male','Prayagraj',' Uttar Pradesh','ayushmantripathi@gmail.com',6392640896,90,81),(2115,'Anirban','2005-02-19',19,'Alak','Anima','Male','Tamluk',' West Bengal','anirbangantait3@gmail.com',8597087532,96,89),(2116,'Shreyansh','2002-09-25',22,'Rajesh','Rita','Male','madhavpur','Hyderabad','upadhyayshreyansh@gmail.com',8287537127,91,90),(2117,'Bhoomika','2002-09-15',21,'Nitin','Disha','Female',' Mawaiya Lucknow','Uttar Pradesh','bsehta15@gmail.com',7800280811,95,97),(2118,'Sarthak','2003-09-05',21,'Deepak','Sushma','Male','Bilaspur','Chhattisgarh','sarthakmohanty05@gmail.com',6264199923,89,93),(2119,'Samay','2002-10-20',21,'Deepak','Rina','Male','Srinagar','Jammu','samay@gmail.com',9865345219,88,85),(2120,'Renu','2003-04-24',21,'Sumit','Sumita','Female','Ramnager','Delhi','renu@gmail.com',8743211327,76,82),(2121,'Anika','2004-05-21',21,'Kishan','Neha','Female','Rohini','Madhya Pradesh','anika09@gmail.com',8637018696,91,85),(2122,'Abhijit','2003-12-24',21,'Abhinav','Suniti','Male','Medinipur','West Bengal','abhi2122@gmail.com',9979654321,77,87),(2123,'Saraswati','2002-01-09',22,'Krishna','Roshni','Female','Ranijang','West Bengal','saraswati@gmail.com',7797274248,83,81),(2124,'Kuldeep','2003-11-26',20,'Govinda','Ritka','Male','Chas Bokaro','Jharkhand','kuldeep12@gmail.com',8921346678,93,87),(2125,'Pranay','2002-09-11',22,'Pradip','Umarani','Male','Ranrajartala','West Bengal','pranay69@gmail.com',9832777789,79,82);
/*!40000 ALTER TABLE `student_pre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_subject`
--

DROP TABLE IF EXISTS `student_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_subject` (
  `roll_no` int NOT NULL,
  `professor_id` int NOT NULL,
  `subject_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_subject`
--

LOCK TABLES `student_subject` WRITE;
/*!40000 ALTER TABLE `student_subject` DISABLE KEYS */;
INSERT INTO `student_subject` VALUES (21051300,125479,3022),(21051300,101123,3008),(21051300,105677,3032),(21051300,178865,3007),(21051300,133425,3006),(21051619,132014,3022),(21051619,102345,3008),(21051619,145673,3032),(21051619,178865,3007),(21051619,100564,3006),(21051628,125479,3022),(21051628,167777,3008),(21051628,156785,3032),(21051628,187654,4033),(21051628,195678,3035),(21051666,125479,3022),(21051666,167777,3008),(21051666,156785,3032),(21051666,187654,4033),(21051666,195678,3035),(21051668,125479,3022),(21051668,101123,3008),(21051668,105677,3032),(21051668,178865,3007),(21051668,133425,3006),(21051670,132014,3022),(21051670,102345,3008),(21051670,145673,3032),(21051670,100564,3006),(21051670,195678,3035),(21052436,125479,3022),(21052436,101123,3008),(21052436,105677,3032),(21052436,133425,3006),(21052436,195678,3035);
/*!40000 ALTER TABLE `student_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `subject_id` int NOT NULL,
  `subject_name` varchar(70) DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `Credits` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (2001,'Data Structures and Algorithms',3,'3'),(3006,'Data Analytics',6,'3'),(3007,'Internet of Things',6,'3'),(3008,'Compiler Design',6,'3'),(3022,'Cloud Computing',6,'3'),(3032,'Software Project Management',6,'3'),(3035,'Machine Learning',6,'3'),(4033,'Natural Language Processing',6,'3');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-13 22:39:17
