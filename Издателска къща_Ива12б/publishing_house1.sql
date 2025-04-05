CREATE DATABASE IF NOT EXISTS `publishing_house`;
USE `publishing_house`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: publishing_house
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Vivian','Marcus'),(2,'Amelia','Gilbert'),(3,'Thomas','Peterson'),(4,'Hariet','Bronos'),(5,'Garet','Chezinski'),(6,'Julliet','Glorian'),(7,'Candice','Lever'),(8,'Bernand','Stone'),(9,'Klaudian','Wecker'),(10,'Lorete','Perien'),(11,'Daniel','Ukev'),(12,'Reneta','Simans'),(13,'Olive','Reyns'),(14,'Ben','Selester'),(15,'Timothy','Hilston');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author_id` int DEFAULT NULL,
  `book_price` decimal(4,2) NOT NULL,
  `genre_book_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `genre_book_id` (`genre_book_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`genre_book_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'The latest hour',3,15.60,4),(2,'Love and flames',11,18.00,6),(3,'Again and again',7,18.30,2),(4,'To love a loser',14,11.25,6),(5,'Give me explanation',5,10.55,15),(6,'The kingdom of dragons',3,15.08,11),(7,'Someday somewhere',14,15.90,5),(8,'Friendship for a lifetime',14,18.90,8),(9,'What is going on',10,20.70,3),(10,'Remember',7,8.96,3),(11,'The West',3,21.90,7),(12,'Margaret and Caleb',2,14.45,6),(13,'Hurry up',10,23.00,4),(14,'The heart of the robot',8,15.72,10),(15,'Look at me',9,9.90,8);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_original`
--

DROP TABLE IF EXISTS `books_original`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_original` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `author_id` int DEFAULT NULL,
  `book_price` decimal(4,2) NOT NULL,
  `genre_book_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_original`
--

LOCK TABLES `books_original` WRITE;
/*!40000 ALTER TABLE `books_original` DISABLE KEYS */;
INSERT INTO `books_original` VALUES (1,'The latest hour',3,15.60,4),(2,'Love and flames',11,20.00,6),(3,'Again and again',7,17.80,2),(4,'To love a loser',14,12.50,6),(5,'Give me explanation',5,21.10,15),(6,'The kingdom of dragons',3,16.20,11),(7,'Someday somewhere',14,17.10,5),(8,'Friendship for a lifetime',14,21.00,8),(9,'What is going on',10,20.20,3),(10,'Remember',7,19.90,3),(11,'The West',3,21.90,7),(12,'Margaret and Caleb',2,15.50,6),(13,'Hurry up',10,23.00,4),(14,'The heart of the robot',8,18.80,10),(15,'Look at me',9,19.30,8);
/*!40000 ALTER TABLE `books_original` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_code` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_code` (`client_code`),
  CONSTRAINT `clients_chk_1` CHECK ((length(`client_code`) = 10))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'K9329312J6','Stevan'),(2,'HU970473JJ','Katherine'),(3,'H76327454Y','Blaga'),(4,'OUY83276GF','Jeremy'),(5,'HUI28879HG','Karen'),(6,'J38387GDJK','Loran'),(7,'JUYY32K889','Marcias'),(8,'BN938JHY39','Penelope'),(9,'HY09W37QQ2','Samantha'),(10,'D7832THGF1','Ben'),(11,'U3876FHGR1','Daria'),(12,'KH7326FFJ2','Susan'),(13,'IO38726FJD','Robert'),(14,'GUIL984762','Vivian'),(15,'UIIY837HHF','Peter');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e-books`
--

DROP TABLE IF EXISTS `e-books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e-books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `e_code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `e_price` decimal(4,2) NOT NULL,
  `genre_ebook_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `e_code` (`e_code`),
  KEY `author_id` (`author_id`),
  KEY `book_id` (`book_id`),
  KEY `genre_ebook_id` (`genre_ebook_id`),
  CONSTRAINT `e-books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `e-books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `e-books_ibfk_3` FOREIGN KEY (`genre_ebook_id`) REFERENCES `genres` (`id`),
  CONSTRAINT `e-books_chk_1` CHECK ((length(`e_code`) = 10))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e-books`
--

LOCK TABLES `e-books` WRITE;
/*!40000 ALTER TABLE `e-books` DISABLE KEYS */;
INSERT INTO `e-books` VALUES (1,'G18U920765','Love and flames(e-book)',11,2,12.50,6),(2,'L8907PP531','What is going on(e-book)',10,9,15.00,3),(3,'9KLU928711','The West(e-book)',3,11,13.50,7),(4,'PO68712GHJ','The huge wave(e-book)',7,NULL,7.90,10),(5,'UV739023HH','Margaret and Caleb(e-book)',2,12,10.00,6),(6,'UGY372278I','Flashback(e-book)',13,NULL,9.50,15),(7,'YUT298683W','Someday somewhere(e-book)',14,7,12.00,5),(8,'O939027GTF','Heavy Crown(e-book)',15,NULL,18.00,5),(9,'JHU82253FF','The kingdom of dragons(e-book)',3,6,8.50,11),(10,'T87372JIU6','The latest hour(e-book)',3,1,10.40,4),(11,'HUKIU32667','To love a loser(e-book)',14,4,9.90,6),(12,'BH839276GH','Remember(e-book)',7,10,17.20,3),(13,'IJO726154G','The best present(e-book)',5,NULL,13.10,11),(14,'JJIHY37752','Wish(e-book)',1,NULL,10.50,2),(15,'8IH9812GFK','Give me explanation(e-book)',5,5,15.40,15);
/*!40000 ALTER TABLE `e-books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebooks_copy`
--

DROP TABLE IF EXISTS `ebooks_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ebooks_copy` (
  `id` int NOT NULL DEFAULT '0',
  `e_code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `e_price` decimal(4,2) NOT NULL,
  `genre_ebook_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebooks_copy`
--

LOCK TABLES `ebooks_copy` WRITE;
/*!40000 ALTER TABLE `ebooks_copy` DISABLE KEYS */;
INSERT INTO `ebooks_copy` VALUES (1,'G18U920765','Love and flames(e-book)',11,2,12.50,6),(2,'L8907PP531','What is going on(e-book)',10,9,15.00,3),(3,'9KLU928711','The West(e-book)',3,11,13.50,7),(5,'UV739023HH','Margaret and Caleb(e-book)',2,12,10.00,6),(7,'YUT298683W','Someday somewhere(e-book)',14,7,12.00,5),(9,'JHU82253FF','The kingdom of dragons(e-book)',3,6,8.50,11),(10,'T87372JIU6','The latest hour(e-book)',3,1,10.40,4),(11,'HUKIU32667','To love a loser(e-book)',14,4,9.90,6),(12,'BH839276GH','Remember(e-book)',7,10,17.20,3),(15,'8IH9812GFK','Give me explanation(e-book)',5,5,15.40,15);
/*!40000 ALTER TABLE `ebooks_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editions`
--

DROP TABLE IF EXISTS `editions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `publishing_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `editions_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editions`
--

LOCK TABLES `editions` WRITE;
/*!40000 ALTER TABLE `editions` DISABLE KEYS */;
INSERT INTO `editions` VALUES (1,2,'2020-12-02'),(2,10,'2021-11-24'),(3,1,'2019-09-12'),(4,15,'2022-08-20'),(5,3,'2021-07-10'),(6,12,'2021-09-09'),(7,14,'2018-10-18'),(8,9,'2020-01-23'),(9,2,'2022-03-15'),(10,13,'2018-04-19'),(11,11,'2017-09-13'),(12,9,'2021-10-21'),(13,8,'2022-06-25'),(14,15,'2020-12-30'),(15,7,'2022-07-17'),(16,6,'2020-03-11'),(17,7,'2020-01-15'),(18,8,'2020-01-18'),(19,9,'2020-01-13'),(20,10,'2020-07-13');
/*!40000 ALTER TABLE `editions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editions_original`
--

DROP TABLE IF EXISTS `editions_original`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editions_original` (
  `id` int NOT NULL DEFAULT '0',
  `book_id` int DEFAULT NULL,
  `publishing_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editions_original`
--

LOCK TABLES `editions_original` WRITE;
/*!40000 ALTER TABLE `editions_original` DISABLE KEYS */;
INSERT INTO `editions_original` VALUES (1,2,'2020-12-02'),(2,10,'2021-11-24'),(3,1,'2019-09-12'),(4,15,'2022-08-20'),(5,3,'2021-07-10'),(6,12,'2021-09-09'),(7,14,'2018-10-18'),(8,9,'2020-01-23'),(9,2,'2022-03-15'),(10,13,'2018-04-19'),(11,11,'2017-09-13'),(12,9,'2021-10-21'),(13,8,'2022-06-25'),(14,15,'2020-12-30'),(15,7,'2022-07-17');
/*!40000 ALTER TABLE `editions_original` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'literaty fiction'),(2,'mystery'),(3,'thriller'),(4,'horror'),(5,'historical'),(6,'romance'),(7,'western'),(8,'bildungsroman'),(9,'speculative fiction'),(10,'science fiction'),(11,'fantasy'),(12,'dystopian'),(13,'magical realism'),(14,'realist literature'),(15,'tragedy');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `edition_id` int DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `ordered_copies_count` int NOT NULL,
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `edition_id` (`edition_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`edition_id`) REFERENCES `editions` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,7,15,'2022-09-15 00:00:00',2,4),(2,8,13,'2022-10-11 00:00:00',1,8),(3,13,10,'2019-01-09 00:00:00',1,10),(4,15,14,'2021-12-03 00:00:00',2,9),(5,7,15,'2022-10-18 00:00:00',3,14),(6,2,9,'2022-05-07 00:00:00',4,15),(7,12,6,'2022-02-15 00:00:00',1,1),(8,13,10,'2020-10-23 00:00:00',2,2),(9,11,11,'2018-10-01 00:00:00',3,6),(10,9,8,'2021-03-12 00:00:00',5,11),(11,2,9,'2022-12-04 00:00:00',2,12),(12,14,7,'2022-03-19 00:00:00',4,3),(13,14,7,'2019-02-03 00:00:00',4,7),(14,8,13,'2022-12-11 00:00:00',1,5),(15,11,11,'2020-12-08 00:00:00',3,13);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `query1`
--

DROP TABLE IF EXISTS `query1`;
/*!50001 DROP VIEW IF EXISTS `query1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query1` AS SELECT 
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `client_id`,
 1 AS `client`,
 1 AS `sum`,
 1 AS `book`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query2`
--

DROP TABLE IF EXISTS `query2`;
/*!50001 DROP VIEW IF EXISTS `query2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query2` AS SELECT 
 1 AS `author_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `book`,
 1 AS `genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query3`
--

DROP TABLE IF EXISTS `query3`;
/*!50001 DROP VIEW IF EXISTS `query3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query3` AS SELECT 
 1 AS `edition_id`,
 1 AS `book_id`,
 1 AS `edition_publishing_date`,
 1 AS `book_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query4`
--

DROP TABLE IF EXISTS `query4`;
/*!50001 DROP VIEW IF EXISTS `query4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query4` AS SELECT 
 1 AS `ebook_id`,
 1 AS `e_code`,
 1 AS `e-book`,
 1 AS `author_id`,
 1 AS `book_id`,
 1 AS `e_price`,
 1 AS `genre_ebook_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query5`
--

DROP TABLE IF EXISTS `query5`;
/*!50001 DROP VIEW IF EXISTS `query5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query5` AS SELECT 
 1 AS `client`,
 1 AS `ordered_copies_count`,
 1 AS `order_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query6`
--

DROP TABLE IF EXISTS `query6`;
/*!50001 DROP VIEW IF EXISTS `query6`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query6` AS SELECT 
 1 AS `client`,
 1 AS `ordered_copies_count`,
 1 AS `order_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query7`
--

DROP TABLE IF EXISTS `query7`;
/*!50001 DROP VIEW IF EXISTS `query7`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query7` AS SELECT 
 1 AS `book_id`,
 1 AS `book`,
 1 AS `editions_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query8`
--

DROP TABLE IF EXISTS `query8`;
/*!50001 DROP VIEW IF EXISTS `query8`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query8` AS SELECT 
 1 AS `book_id`,
 1 AS `book`,
 1 AS `book_price`,
 1 AS `author_id`,
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query9`
--

DROP TABLE IF EXISTS `query9`;
/*!50001 DROP VIEW IF EXISTS `query9`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query9` AS SELECT 
 1 AS `edition_id`,
 1 AS `book_id`,
 1 AS `edition_publishing_date`,
 1 AS `author`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `query1`
--

/*!50001 DROP VIEW IF EXISTS `query1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query1` AS select `o`.`id` AS `order_id`,`o`.`order_date` AS `order_date`,`o`.`client_id` AS `client_id`,`c`.`name` AS `client`,(`b`.`book_price` * `o`.`ordered_copies_count`) AS `sum`,`b`.`name` AS `book` from ((`orders` `o` join `clients` `c` on((`c`.`id` = `o`.`client_id`))) join `books` `b` on((`b`.`id` = `o`.`book_id`))) order by `o`.`client_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query2`
--

/*!50001 DROP VIEW IF EXISTS `query2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query2` AS select `a`.`id` AS `author_id`,`a`.`first_name` AS `first_name`,`a`.`last_name` AS `last_name`,`b`.`name` AS `book`,`g`.`name` AS `genre` from ((`authors` `a` join `books` `b` on((`b`.`author_id` = `a`.`id`))) join `genres` `g` on((`g`.`id` = `b`.`genre_book_id`))) order by `a`.`first_name` desc,`a`.`last_name` desc,`a`.`id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query3`
--

/*!50001 DROP VIEW IF EXISTS `query3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query3` AS select `e`.`id` AS `edition_id`,`e`.`book_id` AS `book_id`,`e`.`publishing_date` AS `edition_publishing_date`,`b`.`book_price` AS `book_price` from (`editions` `e` join `books` `b` on((`b`.`id` = `e`.`book_id`))) order by `b`.`book_price` limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query4`
--

/*!50001 DROP VIEW IF EXISTS `query4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query4` AS select `el`.`id` AS `ebook_id`,`el`.`e_code` AS `e_code`,`el`.`name` AS `e-book`,`el`.`author_id` AS `author_id`,`el`.`book_id` AS `book_id`,`el`.`e_price` AS `e_price`,`el`.`genre_ebook_id` AS `genre_ebook_id` from (((`e-books` `el` left join `books` `b` on((`b`.`id` = `el`.`book_id`))) left join `authors` `a` on((`a`.`id` = `el`.`author_id`))) left join `genres` `g` on((`g`.`id` = `el`.`genre_ebook_id`))) where (`el`.`book_id` is null) order by `el`.`e_price` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query5`
--

/*!50001 DROP VIEW IF EXISTS `query5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query5` AS select `c`.`name` AS `client`,`o`.`ordered_copies_count` AS `ordered_copies_count`,`o`.`order_date` AS `order_date` from (`clients` `c` join `orders` `o` on((`o`.`client_id` = `c`.`id`))) where (`o`.`ordered_copies_count` = (select max(`orders`.`ordered_copies_count`) from `orders`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query6`
--

/*!50001 DROP VIEW IF EXISTS `query6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query6` AS select `c`.`name` AS `client`,`o`.`ordered_copies_count` AS `ordered_copies_count`,`o`.`order_date` AS `order_date` from (`clients` `c` join `orders` `o` on((`o`.`client_id` = `c`.`id`))) where (`o`.`ordered_copies_count` = (select min(`orders`.`ordered_copies_count`) from `orders`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query7`
--

/*!50001 DROP VIEW IF EXISTS `query7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query7` AS select `b`.`id` AS `book_id`,`b`.`name` AS `book`,count(distinct `e`.`id`) AS `editions_count` from (`books` `b` join `editions` `e` on((`e`.`book_id` = `b`.`id`))) group by `b`.`id` order by `b`.`name` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query8`
--

/*!50001 DROP VIEW IF EXISTS `query8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query8` AS select `b`.`id` AS `book_id`,`b`.`name` AS `book`,`b`.`book_price` AS `book_price`,`a`.`id` AS `author_id`,`a`.`first_name` AS `first_name`,`a`.`last_name` AS `last_name` from ((`books` `b` join `authors` `a` on((`a`.`id` = `b`.`author_id`))) join `genres` `g` on((`g`.`id` = `b`.`genre_book_id`))) where (`g`.`name` = 'romance') order by `a`.`first_name` desc,`b`.`book_price` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query9`
--

/*!50001 DROP VIEW IF EXISTS `query9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query9` AS select `e`.`id` AS `edition_id`,`e`.`book_id` AS `book_id`,`e`.`publishing_date` AS `edition_publishing_date`,concat(`a`.`first_name`,' ',`a`.`last_name`) AS `author` from ((`editions` `e` join `books` `b` on((`b`.`id` = `e`.`book_id`))) join `authors` `a` on((`a`.`id` = `b`.`author_id`))) where (year(`e`.`publishing_date`) > 2020) order by `e`.`publishing_date`,`e`.`book_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-05 13:46:59
