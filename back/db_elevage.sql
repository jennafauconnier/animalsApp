-- MySQL dump 10.13  Distrib 8.0.18, for osx10.15 (x86_64)
--
-- Host: localhost    Database: elevage
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `Animal`
--

DROP TABLE IF EXISTS `Animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Animal` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `espece` int(11) NOT NULL,
  `sexe` char(1) DEFAULT NULL,
  `date_naissance` datetime NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Animal`
--

LOCK TABLES `Animal` WRITE;
/*!40000 ALTER TABLE `Animal` DISABLE KEYS */;
INSERT INTO `Animal` VALUES (1,1,'M','2019-01-01 00:00:00','Bobby'),(2,1,'M','2018-09-10 00:00:00','Fox'),(3,1,'M','2019-07-07 00:00:00','Oboy'),(4,1,'M','2017-08-12 00:00:00','Red'),(5,1,'F','2019-02-02 00:00:00','Lol'),(6,1,'F','2019-03-02 00:00:00','Kiddo'),(7,1,'F','2019-01-12 00:00:00','Yubari'),(8,1,'F','2019-09-07 00:00:00','Pretty'),(9,2,'M','2017-10-07 00:00:00','Onyx'),(10,2,'M','2017-03-07 00:00:00','Pilou'),(11,2,'M','2018-02-09 00:00:00','Payam'),(12,2,'F','2019-04-04 00:00:00','Mixie'),(13,2,'F','2019-07-12 00:00:00','Nova'),(14,2,'F','2019-07-12 00:00:00','Vogue');
/*!40000 ALTER TABLE `Animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Espece`
--

DROP TABLE IF EXISTS `Espece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Espece` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Espece`
--

LOCK TABLES `Espece` WRITE;
/*!40000 ALTER TABLE `Espece` DISABLE KEYS */;
INSERT INTO `Espece` VALUES (1,'Chien'),(2,'Chat');
/*!40000 ALTER TABLE `Espece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Espece_race`
--

DROP TABLE IF EXISTS `Espece_race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Espece_race` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `espece_id` smallint(6) NOT NULL,
  `race_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Espece_race`
--

LOCK TABLES `Espece_race` WRITE;
/*!40000 ALTER TABLE `Espece_race` DISABLE KEYS */;
INSERT INTO `Espece_race` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,2),(10,10,2),(11,11,2),(12,12,2),(13,13,2),(14,14,2);
/*!40000 ALTER TABLE `Espece_race` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Race`
--

DROP TABLE IF EXISTS `Race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Race` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Race`
--

LOCK TABLES `Race` WRITE;
/*!40000 ALTER TABLE `Race` DISABLE KEYS */;
INSERT INTO `Race` VALUES (1,'Eurasier'),(2,'Golden Retriever'),(3,'Husky'),(4,'Berger Allemand'),(5,'Border Collie'),(6,'Berger Australien'),(7,'Terre-Neuve'),(8,'Berger Blanc Suisse'),(9,'Européen'),(10,'Sacré de Birmanie'),(11,'Maine Coon'),(12,'Norvégien'),(13,'Sibérien'),(14,'Sphynx');
/*!40000 ALTER TABLE `Race` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-24 11:12:21
