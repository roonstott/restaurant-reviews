-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: best_restaurant
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `Cuisines`
--

DROP TABLE IF EXISTS `Cuisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cuisines` (
  `CuisineId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CuisineId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuisines`
--

LOCK TABLES `Cuisines` WRITE;
/*!40000 ALTER TABLE `Cuisines` DISABLE KEYS */;
INSERT INTO `Cuisines` VALUES (1,'Croatian'),(2,'Italian'),(3,'Turkish'),(4,'Diner');
/*!40000 ALTER TABLE `Cuisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Restaurants`
--

DROP TABLE IF EXISTS `Restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Restaurants` (
  `RestaurantId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `CuisineId` int DEFAULT NULL,
  PRIMARY KEY (`RestaurantId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurants`
--

LOCK TABLES `Restaurants` WRITE;
/*!40000 ALTER TABLE `Restaurants` DISABLE KEYS */;
INSERT INTO `Restaurants` VALUES (9,'Giovanni\'s Room',2),(10,'Giovanni\'s Room',2),(11,'Sultan\'s Palace',3),(12,'Giovanni\'s Room',2),(13,'Cro Caffe',1),(14,'Giovanni\'s Room',2),(15,'Giovanni\'s Room',2),(16,'Turkish',3),(17,'df',1),(18,'Giovanni\'s Room',2),(19,'gfd',1),(20,'gfd',1),(21,'Sultan\'s Palace',1),(22,'Giovanni\'s Room',2),(23,'Rex',1);
/*!40000 ALTER TABLE `Restaurants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-21 15:52:10
