-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: littlelemondm2
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL,
  `orderDate` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `totalCost` decimal(10,0) DEFAULT NULL,
  `menuId` int DEFAULT NULL,
  `staffId` int DEFAULT NULL,
  `bookingId` int DEFAULT NULL,
  `odsId` int DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `f-menu_idx` (`menuId`),
  KEY `f-staff_idx` (`staffId`),
  KEY `f-booking_idx` (`bookingId`),
  KEY `f-odsid_idx` (`odsId`),
  CONSTRAINT `f-booking` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`bookingId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `f-menu` FOREIGN KEY (`menuId`) REFERENCES `menus` (`menuId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `f-odsid` FOREIGN KEY (`odsId`) REFERENCES `orderdeliverystatus` (`odsId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `f-staff` FOREIGN KEY (`staffId`) REFERENCES `staffinformations` (`staffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-17 18:34:43
