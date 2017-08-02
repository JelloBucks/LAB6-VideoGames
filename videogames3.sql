-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: videogames
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Current Database: `videogames`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `videogames` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `videogames`;

--
-- Table structure for table `consoles`
--

DROP TABLE IF EXISTS `consoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consoles` (
  `consoleID` int(11) NOT NULL AUTO_INCREMENT,
  `consoleName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`consoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consoles`
--

LOCK TABLES `consoles` WRITE;
/*!40000 ALTER TABLE `consoles` DISABLE KEYS */;
INSERT INTO `consoles` VALUES (1,'Xbox One'),(2,'Playstion 4'),(3,'PC'),(4,'Nintendo Switch');
/*!40000 ALTER TABLE `consoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamegenres`
--

DROP TABLE IF EXISTS `gamegenres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamegenres` (
  `gameID` int(11) DEFAULT NULL,
  `gameTypeID` int(11) DEFAULT NULL,
  UNIQUE KEY `pkgamegenres` (`gameID`,`gameTypeID`),
  KEY `gameTypeID` (`gameTypeID`),
  CONSTRAINT `gamegenres_ibfk_1` FOREIGN KEY (`gameID`) REFERENCES `games` (`gameID`),
  CONSTRAINT `gamegenres_ibfk_2` FOREIGN KEY (`gameTypeID`) REFERENCES `gametypes` (`gameTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamegenres`
--

LOCK TABLES `gamegenres` WRITE;
/*!40000 ALTER TABLE `gamegenres` DISABLE KEYS */;
INSERT INTO `gamegenres` VALUES (1,1),(2,1),(3,1),(4,4),(5,1),(6,1),(7,4),(8,5),(9,5),(10,1);
/*!40000 ALTER TABLE `gamegenres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `gameID` int(11) NOT NULL,
  `GameTitle` varchar(255) DEFAULT NULL,
  `GameType` varchar(255) DEFAULT NULL,
  `consoleID` int(11) DEFAULT NULL,
  `releaseDate` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`gameID`),
  KEY `consoleID` (`consoleID`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`consoleID`) REFERENCES `consoles` (`consoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Rainbow 6 Siege','FPS',1,'12/1/2015'),(2,'Overwatch','FPS',1,'5/24/2016'),(3,'Titanfall 2','FPS',1,'10/28/2016'),(4,'FIFA 17','Sports',1,'9/27/2016'),(5,'Gears of War 4','FPS',1,'10/11/2016'),(6,'Counter-Strike Global Offensive','FPS',3,'8/21/2012'),(7,'Rocket League','Sports',3,'7/7/2015'),(8,'Minecraft','Survival',1,'11/18/2011'),(9,'Rust','Survival',3,'12/11/2013'),(10,'Battlefield 1','FPS',1,'10/21/2016');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametypes`
--

DROP TABLE IF EXISTS `gametypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gametypes` (
  `gameTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `gameType` varchar(55) DEFAULT NULL,
  `gameTypeDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gameTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametypes`
--

LOCK TABLES `gametypes` WRITE;
/*!40000 ALTER TABLE `gametypes` DISABLE KEYS */;
INSERT INTO `gametypes` VALUES (1,'FPS','First-person shooter is a video game genre centered around gun and other weapon-based combat in a first-person perspective.'),(2,'RPG','A role-playing game is a game in which players assume the roles of characters in a fictional setting.'),(3,'MMO','A very large number of players interact with one another within a virtual world'),(4,'Sports','Sports game is a video game that simulates the practice of sports.'),(5,'Survival','Survival games are a genre of action video games that generally start the player off with minimal resources, in a hostile, open-world environment and survive as long as possible.');
/*!40000 ALTER TABLE `gametypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-19 17:27:15
