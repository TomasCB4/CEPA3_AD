CREATE DATABASE  IF NOT EXISTS `eSports` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eSports`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: eSports
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `Compite`
--

DROP TABLE IF EXISTS `Compite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compite` (
  `nJugadores` int DEFAULT NULL,
  `team_nomTeam` varchar(255) NOT NULL,
  `game_idGame` int NOT NULL,
  PRIMARY KEY (`game_idGame`,`team_nomTeam`),
  KEY `FK3ara7xr45ii9d2q3lt5tfte95` (`team_nomTeam`),
  CONSTRAINT `FK3ara7xr45ii9d2q3lt5tfte95` FOREIGN KEY (`team_nomTeam`) REFERENCES `eTeam` (`nomTeam`),
  CONSTRAINT `FKt2pfs8b04j2k4tot8jhydvc89` FOREIGN KEY (`game_idGame`) REFERENCES `eGames` (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compite`
--

LOCK TABLES `Compite` WRITE;
/*!40000 ALTER TABLE `Compite` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eGames`
--

DROP TABLE IF EXISTS `eGames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eGames` (
  `idGame` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tipoJuego` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eGames`
--

LOCK TABLES `eGames` WRITE;
/*!40000 ALTER TABLE `eGames` DISABLE KEYS */;
/*!40000 ALTER TABLE `eGames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ePlayer`
--

DROP TABLE IF EXISTS `ePlayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ePlayer` (
  `idPlayer` int NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `nacionalitat` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPlayer`),
  KEY `FK_PLY_TM` (`team`),
  CONSTRAINT `FK_PLY_TM` FOREIGN KEY (`team`) REFERENCES `eTeam` (`nomTeam`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ePlayer`
--

LOCK TABLES `ePlayer` WRITE;
/*!40000 ALTER TABLE `ePlayer` DISABLE KEYS */;
INSERT INTO `ePlayer` VALUES (1,26,'Rekkles','Sueco','adc','Eretics'),(2,24,'Faker','Koreano','mid','Eretics');
/*!40000 ALTER TABLE `ePlayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eTeam`
--

DROP TABLE IF EXISTS `eTeam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eTeam` (
  `nomTeam` varchar(255) NOT NULL,
  `pressupost` int DEFAULT NULL,
  `nomManager` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nomTeam`),
  UNIQUE KEY `UK_7vmwrub7w20jxe47h6n463qlu` (`nomManager`),
  CONSTRAINT `FK_ETM_MGR` FOREIGN KEY (`nomManager`) REFERENCES `manager` (`nomManager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eTeam`
--

LOCK TABLES `eTeam` WRITE;
/*!40000 ALTER TABLE `eTeam` DISABLE KEYS */;
INSERT INTO `eTeam` VALUES ('Eretics',120000,'Tomas');
/*!40000 ALTER TABLE `eTeam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `nomManager` varchar(255) NOT NULL,
  `dni` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nomManager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('Tomas','10010010E');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'eSports'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-15  8:37:31
