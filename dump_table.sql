-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: user10
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `final_users`
--

DROP TABLE IF EXISTS `final_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT '1',
  `email` varchar(40) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `password` (`password`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_users`
--

LOCK TABLES `final_users` WRITE;
/*!40000 ALTER TABLE `final_users` DISABLE KEYS */;
INSERT INTO `final_users` VALUES (1,'user10','123',1,'rest@rest.com','user'),(2,'user101','123',0,'rest@rest.com','user'),(3,'user102','123',0,'rest@rest.com','user');
/*!40000 ALTER TABLE `final_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final_event`
--

DROP TABLE IF EXISTS `final_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_event` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(10) NOT NULL,
  `id_room` bigint(10) NOT NULL,
  `date_create` datetime NOT NULL,
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_room` (`id_room`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_event`
--

LOCK TABLES `final_event` WRITE;
/*!40000 ALTER TABLE `final_event` DISABLE KEYS */;
INSERT INTO `final_event` VALUES (1,1,1,'2019-07-15 00:00:00','test note'),(2,1,2,'2019-07-15 00:00:00','test note'),(3,2,1,'2019-07-15 00:00:00','test note');
/*!40000 ALTER TABLE `final_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final_event_child`
--

DROP TABLE IF EXISTS `final_event_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_event_child` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `id_event` bigint(10) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_event` (`id_event`),
  KEY `eventdate` (`date_start`,`date_end`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_event_child`
--

LOCK TABLES `final_event_child` WRITE;
/*!40000 ALTER TABLE `final_event_child` DISABLE KEYS */;
INSERT INTO `final_event_child` VALUES (5,1,'2019-07-17 20:00:00','2019-07-17 21:30:00'),(6,1,'2019-07-17 22:00:00','2019-07-17 23:30:00'),(7,2,'2019-07-18 10:15:00','2019-07-18 13:30:00'),(8,2,'2019-07-18 15:00:00','2019-07-18 17:00:00'),(9,3,'2019-07-18 08:00:00','2019-07-18 10:00:00');
/*!40000 ALTER TABLE `final_event_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final_rooms`
--

DROP TABLE IF EXISTS `final_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_rooms` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_rooms`
--

LOCK TABLES `final_rooms` WRITE;
/*!40000 ALTER TABLE `final_rooms` DISABLE KEYS */;
INSERT INTO `final_rooms` VALUES (1,'Hall 1'),(2,'Hall 2'),(3,'Banqueting hall');
/*!40000 ALTER TABLE `final_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-18 18:06:59
