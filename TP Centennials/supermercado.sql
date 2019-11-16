-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: supermercado
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `codigo_sucursal` int(11) NOT NULL,
  `barrio` varchar(50) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`codigo_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1001,'Villa Luro','Av Rivadavia 3566'),(1002,'Almagro','Rawson 26'),(1003,'Balvanera','Av. Rivadavia 3050'),(1004,'San Cristóbal','Av. Independencia 2262'),(1005,'Almagro','Río de Janeiro 844'),(1006,'Caballito','Otamendi 443'),(1007,'San Nicolás','Tte. Gral. Juan Domingo Perón 1653'),(1008,'Flores','Junin 638'),(1009,'Monserrat','Viamonte 1141'),(1010,'Recoleta','Riobamba 1014');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `numero_Ticket` int(11) NOT NULL,
  `codigo_sucursal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto_total` double NOT NULL,
  `medio_de_pago` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`numero_Ticket`),
  KEY `codigo_sucursal` (`codigo_sucursal`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`codigo_sucursal`) REFERENCES `sucursales` (`codigo_sucursal`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`codigo_sucursal`) REFERENCES `sucursales` (`codigo_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (5358,1001,'2019-10-11',2600,'Debito'),(5359,1010,'2019-11-16',3590,'Debito'),(5360,1009,'2019-09-10',1200,'Efectivo'),(5361,1005,'2019-10-20',9800,'Credito'),(5362,1003,'2019-11-15',5950,'Credito'),(5363,1002,'2019-09-09',121,'Efectivo'),(5364,1010,'2019-10-15',590,'Efectivo'),(5365,1004,'2019-10-20',3056,'Efectivo'),(5366,1005,'2019-09-29',454,'Debito'),(5367,1009,'2019-09-30',2600,'Debito'),(5368,1002,'2019-11-14',3450,'Credito'),(5370,1010,'2019-09-23',780,'Debito'),(5371,1010,'2019-11-20',900,'Debito'),(5372,1001,'2019-09-27',1240,'Efectivo'),(5373,1001,'2019-10-19',670,'Efectivo'),(5374,1002,'2019-11-16',7000,'Efectivo'),(5375,1002,'2019-11-11',4500,'Efectivo'),(5376,1004,'2019-10-20',340,'Efectivo'),(5377,1005,'2019-09-23',3760,'Credito'),(5378,1003,'2019-09-26',2340,'Credito'),(5379,1007,'2019-09-30',5600,'Debito'),(5380,1007,'2019-10-30',2450,'Credito'),(5381,1009,'2019-09-19',7600,'Debito'),(5382,1008,'2019-09-08',600,'Efectivo');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-16 17:05:47
