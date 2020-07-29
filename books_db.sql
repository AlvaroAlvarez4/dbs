-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_code` decimal(3,0) NOT NULL,
  `title` varchar(30) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `year_written` smallint NOT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`book_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (101,'To Kill A Mocking Bird','Harper','Lee',1960,64.00),(102,'The Great Gatsby','Scott','Fitzgerald',1925,74.55),(103,'A Passage To India','E.M.','Foster',1924,230.00),(104,'Invisible Man','Ralph','Elison',1952,136.89),(105,'Mrs.Dalloway','Virginia','Wolf',1925,135.00),(106,'Things Fall Apart','Chinua','Achebe',1958,150.65),(107,'1984','George','Orwell',1945,78.00),(108,'The Time Machine','H.G.','Wells',1895,467.00),(109,'The Old Man and The Sea','Ernest','Hemingway',1952,199.45),(110,'A Farewell To Arms','Ernest','Hemingway',1928,160.50);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editor`
--

DROP TABLE IF EXISTS `editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editor` (
  `editor_id` decimal(3,0) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `affiliation` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`editor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor`
--

LOCK TABLES `editor` WRITE;
/*!40000 ALTER TABLE `editor` DISABLE KEYS */;
INSERT INTO `editor` VALUES (201,'Jack','Collins','NYT'),(202,'Anna','Matthews','WP'),(203,'Tim','Stevens','Vogue'),(204,'Barry','Shaw',NULL),(205,'Chris','Richards','NYT'),(206,'Linda','Thompson','Chronicle'),(207,'Joe','Anderson','NYP'),(208,'Harry','Freeman','NYT'),(209,'Ellen','Murray',NULL),(210,'Nancy','Thompson','NYP');
/*!40000 ALTER TABLE `editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rating_code` char(4) NOT NULL,
  `editor_id` decimal(3,0) NOT NULL,
  `book_code` decimal(3,0) NOT NULL,
  `starrating` decimal(1,0) NOT NULL,
  `rating_date` date DEFAULT NULL,
  PRIMARY KEY (`rating_code`),
  KEY `rating_editor_fk_1` (`editor_id`),
  KEY `rating_book_fk_1` (`book_code`),
  CONSTRAINT `rating_book_fk_1` FOREIGN KEY (`book_code`) REFERENCES `book` (`book_code`),
  CONSTRAINT `rating_editor_fk_1` FOREIGN KEY (`editor_id`) REFERENCES `editor` (`editor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES ('R1',201,101,2,'1992-11-13'),('R10',205,108,4,NULL),('R11',206,107,3,'1999-07-02'),('R12',206,106,5,'1997-12-21'),('R13',208,104,3,'2005-06-30'),('R14',209,104,3,'2005-06-30'),('R2',201,101,4,'1994-01-15'),('R3',202,106,4,NULL),('R4',203,103,2,'1998-02-01'),('R5',203,108,4,'2001-03-01'),('R6',203,108,2,'2005-06-30'),('R7',204,101,3,'1999-10-23'),('R8',205,103,3,'2004-02-16'),('R9',205,104,2,'2004-02-16');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-26 11:37:52
