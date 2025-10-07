-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: gaz_orest_myhailiv
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_material` varchar(100) NOT NULL,
  `kilkist_kg` varchar(50) DEFAULT NULL,
  `vartist_USD` varchar(50) DEFAULT NULL,
  `fk_material_vudybytok` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_material_vudybytok` (`fk_material_vudybytok`),
  CONSTRAINT `material_ibfk_1` FOREIGN KEY (`fk_material_vudybytok`) REFERENCES `vudybytok` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'	Water','		135000','		135',1),(2,'	Water','		108450','		108.45',2),(3,'	Methane','	117600','		58.8',3),(4,'	Methane_CCS','	123600','		61.8',4),(5,'	Methane','	120000','		60',5),(6,'	Biomass','	145000','		14.5',6),(7,'	Water','		119250','		119.25',7),(8,'	Water','		99000','		99',8),(9,'	Methane','	130400','		65.2',9),(10,'	Methane','	120400','		60.2',10);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ochistka`
--

DROP TABLE IF EXISTS `ochistka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ochistka` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chistota` float DEFAULT NULL,
  `metod_ochustku` varchar(100) DEFAULT NULL,
  `kilkist_vidhodiv` varchar(50) DEFAULT NULL,
  `fk_ochistka_product` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ochistka_product` (`fk_ochistka_product`),
  CONSTRAINT `ochistka_ibfk_1` FOREIGN KEY (`fk_ochistka_product`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ochistka`
--

LOCK TABLES `ochistka` WRITE;
/*!40000 ALTER TABLE `ochistka` DISABLE KEYS */;
INSERT INTO `ochistka` VALUES (1,99.9,'PSA(PressureSwingAdsorption)','13.5',1),(2,99.95,'PSA+membrany','12.0',2),(3,97,'MembranSeparation','147',3),(4,99,'PSA+CatalyticOxidation','15.45',4),(5,99.5,'PSA','15.0',5),(6,98,'MembranSeparation','145',6),(7,99.95,'PSA+membrany','13.25',7),(8,99.9,'PSA','11.0',8),(9,98,'MembranSeparation','163',9),(10,99.5,'PSA','15.05',10);
/*!40000 ALTER TABLE `ochistka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_product` varchar(100) NOT NULL,
  `chistota` varchar(50) DEFAULT NULL,
  `domishku` varchar(50) DEFAULT NULL,
  `obem_v_litrah` int DEFAULT NULL,
  `fk_prodyct_vudybytok` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_prodyct_vudybytok` (`fk_prodyct_vudybytok`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`fk_prodyct_vudybytok`) REFERENCES `vudybytok` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,' Hydrogen','  99.9 ','	 \"O₂ H₂O\"',13500,1),(2,' Hydrogen','  99.95 ',' 	 \"O₂ H₂O\"',12000,2),(3,' Hydrogen','  97','	 \"O₂ N₂ H₂O CO₂ CO\"',14700,3),(4,' Hydrogen','  99','	 \"CO₂ O₂\"',15450,4),(5,' Hydrogen','  99.5','	 \"H₂O CH₄\"',15000,5),(6,' Hydrogen','  98','	 \"H₂O CO₂\"',14500,6),(7,' Hydrogen','  99.95','	 \"O₂ H₂O\"',13250,7),(8,' Hydrogen','  99.9','  	 \"O₂ H₂O\"',11000,8),(9,' Hydrogen','  98','	 \"O₂ N₂ H₂O CO₂ CO\"',16300,9),(10,' Hydrogen',' 99.5',' 	 \"H₂O CH₄\"',15050,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `save`
--

DROP TABLE IF EXISTS `save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `save` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stan` varchar(100) DEFAULT NULL,
  `max_obem` int DEFAULT NULL,
  `kilcist_obemy` int DEFAULT NULL,
  `tisk` int DEFAULT NULL,
  `fk_save_ochistka` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_save_ochistka` (`fk_save_ochistka`),
  CONSTRAINT `save_ibfk_2` FOREIGN KEY (`fk_save_ochistka`) REFERENCES `ochistka` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save`
--

LOCK TABLES `save` WRITE;
/*!40000 ALTER TABLE `save` DISABLE KEYS */;
INSERT INTO `save` VALUES (1,'Gas',20000,15000,200,1),(2,'Gas',18000,12050,220,2),(3,'Gas',25000,14700,180,3),(4,'Gas',15000,15450,250,4),(5,'Gas',22000,15000,210,5),(6,'Gas',30000,14500,190,6),(7,'Gas',20000,13250,200,7),(8,'Gas',18000,1100,220,8),(9,'Gas',25000,16300,180,9),(10,'Gas',22000,15050,210,10);
/*!40000 ALTER TABLE `save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spogivachi`
--

DROP TABLE IF EXISTS `spogivachi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spogivachi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `obem` int DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `fk_spogivachi_transportuvany` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_spogivachi_transportuvany` (`fk_spogivachi_transportuvany`),
  CONSTRAINT `spogivachi_ibfk_1` FOREIGN KEY (`fk_spogivachi_transportuvany`) REFERENCES `transportuvany` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spogivachi`
--

LOCK TABLES `spogivachi` WRITE;
/*!40000 ALTER TABLE `spogivachi` DISABLE KEYS */;
INSERT INTO `spogivachi` VALUES (1,'John',15000,'Kyiv Shevchenka St',1),(2,'Alice',12050,'Lviv Svobody Ave',2),(3,'Bob',14700,'Odessa Deribasivska St',3),(4,'Emma',15450,'Kharkiv Sumskaya St',4),(5,'Michael',15000,'Dnipro Yavornytskoho Ave',5),(6,'Sophia',14500,'Kherson Sobornosti Ave',6),(7,'Daniel',13250,'Cherkasy Shevchenka St',7),(8,'Olivia',11000,'Lutsk Voli Ave',8),(9,'William',16300,'Zaporizhzhia Sobornyi Ave',9),(10,'Emily',15050,'Poltava Kotsiubynskoho St',10);
/*!40000 ALTER TABLE `spogivachi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportuvany`
--

DROP TABLE IF EXISTS `transportuvany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportuvany` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tip` varchar(100) DEFAULT NULL,
  `vidstan` int DEFAULT NULL,
  `obem` int DEFAULT NULL,
  `data_vidpravci` date DEFAULT NULL,
  `fk_transportuvany_save` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_transportuvany_save` (`fk_transportuvany_save`),
  CONSTRAINT `transportuvany_ibfk_2` FOREIGN KEY (`fk_transportuvany_save`) REFERENCES `save` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportuvany`
--

LOCK TABLES `transportuvany` WRITE;
/*!40000 ALTER TABLE `transportuvany` DISABLE KEYS */;
INSERT INTO `transportuvany` VALUES (1,'Land',120,15000,'2025-10-05',1),(2,'Land',200,12050,'2025-10-06',2),(3,'Water',500,14700,'2025-10-07',3),(4,'Land',80,15450,'2025-10-08',4),(5,'Water',400,15000,'2025-10-09',5),(6,'Land',300,14500,'2025-10-10',6),(7,'Land',150,13250,'2025-10-11',7),(8,'Water',600,11000,'2025-10-12',8),(9,'Water',450,16300,'2025-10-13',9),(10,'Land',220,15050,'2025-10-14',10);
/*!40000 ALTER TABLE `transportuvany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vudybytok`
--

DROP TABLE IF EXISTS `vudybytok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vudybytok` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vugotovleno_v_litrah` int DEFAULT NULL,
  `tehnologiy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vudybytok`
--

LOCK TABLES `vudybytok` WRITE;
/*!40000 ALTER TABLE `vudybytok` DISABLE KEYS */;
INSERT INTO `vudybytok` VALUES (1,12000,' electroliz'),(2,11000,' electroliz'),(3,14700,' SMR \r'),(4,15450,' SMR+CCS\r'),(5,15000,' piroliz_metany\r'),(6,14500,' z_biomasu\r'),(7,13250,' electroliz_PEM\r'),(8,11000,' electroliz_Alkaline\r'),(9,16300,' SMR\r'),(10,15050,' piroliz_metany');
/*!40000 ALTER TABLE `vudybytok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ytulizatsiy`
--

DROP TABLE IF EXISTS `ytulizatsiy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ytulizatsiy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tip_vidhodiv` varchar(100) DEFAULT NULL,
  `metod` varchar(100) DEFAULT NULL,
  `kilkist_kg` float DEFAULT NULL,
  `fk_ytulizatsiy_ochustka` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ytulizatsiy_ochustka` (`fk_ytulizatsiy_ochustka`),
  CONSTRAINT `ytulizatsiy_ibfk_3` FOREIGN KEY (`fk_ytulizatsiy_ochustka`) REFERENCES `ochistka` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ytulizatsiy`
--

LOCK TABLES `ytulizatsiy` WRITE;
/*!40000 ALTER TABLE `ytulizatsiy` DISABLE KEYS */;
INSERT INTO `ytulizatsiy` VALUES (1,'Liquid','Filtration',13.5,1),(2,'Liquid','Filtration',12,2),(3,'Gaseous','Venting',147,3),(4,'Gaseous','Catalysis',15.45,4),(5,'Gaseous','Venting',15,5),(6,'Solid','Recycling',145,6),(7,'Liquid','Filtration',13.25,7),(8,'Liquid','Filtration',11,8),(9,'Gaseous','Venting',163,9),(10,'Gaseous','Venting',15.05,10);
/*!40000 ALTER TABLE `ytulizatsiy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-06 11:26:18
