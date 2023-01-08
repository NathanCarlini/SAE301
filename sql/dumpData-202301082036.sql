-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `accessoire`
--

DROP TABLE IF EXISTS `accessoire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessoire` (
  `idAccessoire` int NOT NULL,
  `libelle` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idAccessoire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessoire`
--

LOCK TABLES `accessoire` WRITE;
/*!40000 ALTER TABLE `accessoire` DISABLE KEYS */;
INSERT INTO `accessoire` VALUES (1,'aucun');
INSERT INTO `accessoire` VALUES (2,'Millenium GS-2001 A');
INSERT INTO `accessoire` VALUES (3,'685 SGR-13AC Hardcase');
INSERT INTO `accessoire` VALUES (4,'686 SGR-13AC Hardcase');
/*!40000 ALTER TABLE `accessoire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `construction`
--

DROP TABLE IF EXISTS `construction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `construction` (
  `idConstruction` int NOT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idConstruction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `construction`
--

LOCK TABLES `construction` WRITE;
/*!40000 ALTER TABLE `construction` DISABLE KEYS */;
INSERT INTO `construction` VALUES (1,'DoveTail Set-Neck');
INSERT INTO `construction` VALUES (2,'Set-Neck');
INSERT INTO `construction` VALUES (3,'Bolt-on');
/*!40000 ALTER TABLE `construction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controle`
--

DROP TABLE IF EXISTS `controle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controle` (
  `idControle` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idControle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controle`
--

LOCK TABLES `controle` WRITE;
/*!40000 ALTER TABLE `controle` DISABLE KEYS */;
INSERT INTO `controle` VALUES (1,'0','aucun');
INSERT INTO `controle` VALUES (2,'1','Fishman Isys+ Preamp (Volume/On-Board Tuner/Bass/Treble/Phase Switch)');
INSERT INTO `controle` VALUES (3,'4','Fishman Matrix Infinity EQ (Volume/Tone/Bass/Voicing Switch)');
INSERT INTO `controle` VALUES (4,'3','Master Volume/Blend/EMG-B30 3-Band Active/ E/Q');
INSERT INTO `controle` VALUES (5,'4','Volume/Tone/3-Way Switch');
/*!40000 ALTER TABLE `controle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couleur`
--

DROP TABLE IF EXISTS `couleur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `couleur` (
  `idCouleur` int NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCouleur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couleur`
--

LOCK TABLES `couleur` WRITE;
/*!40000 ALTER TABLE `couleur` DISABLE KEYS */;
INSERT INTO `couleur` VALUES (1,'Aurora Burst');
INSERT INTO `couleur` VALUES (2,'Carbon Grey');
INSERT INTO `couleur` VALUES (3,'Charcoal Burst');
INSERT INTO `couleur` VALUES (4,'Electric Magenta');
INSERT INTO `couleur` VALUES (5,'Gloss Black');
INSERT INTO `couleur` VALUES (6,'Natural Satin');
INSERT INTO `couleur` VALUES (7,'Ocean Blue Burst');
INSERT INTO `couleur` VALUES (8,'Satin Aqua');
INSERT INTO `couleur` VALUES (9,'Satin Black');
INSERT INTO `couleur` VALUES (10,'Satin Metallic Light Blue');
INSERT INTO `couleur` VALUES (11,'Satin Purple');
INSERT INTO `couleur` VALUES (12,'Satin See Thru Black');
INSERT INTO `couleur` VALUES (13,'Satin White');
INSERT INTO `couleur` VALUES (14,'See-Thru Cherry Burst');
INSERT INTO `couleur` VALUES (15,'Trans Black Burst Satin');
INSERT INTO `couleur` VALUES (16,'Vampyre Red Burst Satin');
INSERT INTO `couleur` VALUES (17,'Vintage Sunburst');
/*!40000 ALTER TABLE `couleur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couleurmateriel`
--

DROP TABLE IF EXISTS `couleurmateriel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `couleurmateriel` (
  `idCouleurMateriel` int NOT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idCouleurMateriel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couleurmateriel`
--

LOCK TABLES `couleurmateriel` WRITE;
/*!40000 ALTER TABLE `couleurmateriel` DISABLE KEYS */;
INSERT INTO `couleurmateriel` VALUES (1,'Black Chrome');
INSERT INTO `couleurmateriel` VALUES (2,'Gloss Black');
INSERT INTO `couleurmateriel` VALUES (3,'Black');
INSERT INTO `couleurmateriel` VALUES (4,'Chrome');
/*!40000 ALTER TABLE `couleurmateriel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamme`
--

DROP TABLE IF EXISTS `gamme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamme` (
  `idgamme` int NOT NULL,
  `libelle` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idgamme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamme`
--

LOCK TABLES `gamme` WRITE;
/*!40000 ALTER TABLE `gamme` DISABLE KEYS */;
INSERT INTO `gamme` VALUES (1,'Acoustics');
INSERT INTO `gamme` VALUES (2,'Synyster Gates');
INSERT INTO `gamme` VALUES (3,'Riot Series');
INSERT INTO `gamme` VALUES (4,'C6 Deluxe');
INSERT INTO `gamme` VALUES (5,'C-6 Plus');
INSERT INTO `gamme` VALUES (6,'C7 Deluxe');
INSERT INTO `gamme` VALUES (7,'C8 Deluxe');
/*!40000 ALTER TABLE `gamme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrument`
--

DROP TABLE IF EXISTS `instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instrument` (
  `idInstrument` int NOT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `nom` varchar(250) DEFAULT NULL,
  `prix` decimal(15,2) DEFAULT NULL,
  `notation` int DEFAULT NULL,
  `idgamme` int NOT NULL,
  `idMicro` int NOT NULL,
  `idTypeInstrument` int NOT NULL,
  `idControle` int NOT NULL,
  `idCouleurMateriel` int NOT NULL,
  `idTuners` int NOT NULL,
  `idNombreCorde` int NOT NULL,
  `idTremolo` int NOT NULL,
  `idManualite` int NOT NULL,
  `idMateriau` int NOT NULL,
  `idConstruction` int NOT NULL,
  `idNombreFrette` int NOT NULL,
  PRIMARY KEY (`idInstrument`),
  KEY `idgamme` (`idgamme`),
  KEY `idMicro` (`idMicro`),
  KEY `idTypeInstrument` (`idTypeInstrument`),
  KEY `idControle` (`idControle`),
  KEY `idCouleurMateriel` (`idCouleurMateriel`),
  KEY `idTuners` (`idTuners`),
  KEY `idNombreCorde` (`idNombreCorde`),
  KEY `idTremolo` (`idTremolo`),
  KEY `idManualite` (`idManualite`),
  KEY `idMateriau` (`idMateriau`),
  KEY `idConstruction` (`idConstruction`),
  KEY `idNombreFrette` (`idNombreFrette`),
  CONSTRAINT `instrument_ibfk_1` FOREIGN KEY (`idgamme`) REFERENCES `gamme` (`idgamme`),
  CONSTRAINT `instrument_ibfk_10` FOREIGN KEY (`idMateriau`) REFERENCES `materiau` (`idMateriau`),
  CONSTRAINT `instrument_ibfk_11` FOREIGN KEY (`idConstruction`) REFERENCES `construction` (`idConstruction`),
  CONSTRAINT `instrument_ibfk_12` FOREIGN KEY (`idNombreFrette`) REFERENCES `nombrefrette` (`idNombreFrette`),
  CONSTRAINT `instrument_ibfk_2` FOREIGN KEY (`idMicro`) REFERENCES `micro` (`idMicro`),
  CONSTRAINT `instrument_ibfk_3` FOREIGN KEY (`idTypeInstrument`) REFERENCES `typeinstrument` (`idTypeInstrument`),
  CONSTRAINT `instrument_ibfk_4` FOREIGN KEY (`idControle`) REFERENCES `controle` (`idControle`),
  CONSTRAINT `instrument_ibfk_5` FOREIGN KEY (`idCouleurMateriel`) REFERENCES `couleurmateriel` (`idCouleurMateriel`),
  CONSTRAINT `instrument_ibfk_6` FOREIGN KEY (`idTuners`) REFERENCES `tuner` (`idTuners`),
  CONSTRAINT `instrument_ibfk_7` FOREIGN KEY (`idNombreCorde`) REFERENCES `nombrecorde` (`idNombreCorde`),
  CONSTRAINT `instrument_ibfk_8` FOREIGN KEY (`idTremolo`) REFERENCES `tremolo` (`idTremolo`),
  CONSTRAINT `instrument_ibfk_9` FOREIGN KEY (`idManualite`) REFERENCES `manualite` (`idManualite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrument`
--

LOCK TABLES `instrument` WRITE;
/*!40000 ALTER TABLE `instrument` DISABLE KEYS */;
INSERT INTO `instrument` VALUES (1,'SKU #3715','Deluxe Acoustic',299.00,0,1,1,1,1,1,1,3,1,1,1,1,3);
INSERT INTO `instrument` VALUES (2,'SKU Orleans Stage-7 Acoustic','Orleans Stage-7 Acoustic',629.00,5,1,1,1,2,2,1,4,1,1,2,2,1);
INSERT INTO `instrument` VALUES (3,'SKU #282','Robert Smith RS-1000 Stage Acoustic',1049.00,3,1,1,1,3,2,1,3,1,1,1,2,2);
INSERT INTO `instrument` VALUES (4,'SKU Orleans Studio Acoustic','Orleans Studio Acoustic',469.00,0,1,1,1,2,1,1,3,1,1,1,2,1);
INSERT INTO `instrument` VALUES (5,'SKU #3717','DJ Ashba Acoustic',799.00,3,1,1,1,2,3,1,3,1,1,1,1,3);
INSERT INTO `instrument` VALUES (6,'SKU #3710','Orleans Stage Acoustic',559.00,0,1,1,1,2,1,1,3,1,1,2,2,1);
INSERT INTO `instrument` VALUES (7,'SKU #3701','Synyster Gates SYN GA SC Acoustic',559.00,5,2,1,1,2,4,1,3,1,1,3,1,1);
INSERT INTO `instrument` VALUES (8,'SKU #1455','Riot-5 Bass LH',1249.00,5,3,3,2,4,3,1,2,1,2,4,3,4);
INSERT INTO `instrument` VALUES (9,'SKU #1450','Riot-4 Bass',1149.00,5,3,3,2,4,3,1,1,1,1,4,3,4);
INSERT INTO `instrument` VALUES (10,'SKU #1452','Riot-5 Bass',1199.00,0,3,3,2,4,3,1,2,1,1,4,3,4);
INSERT INTO `instrument` VALUES (11,'SKU #1454','Riot-4 Bass LH',1199.00,4,3,3,2,4,3,1,1,1,2,4,3,4);
INSERT INTO `instrument` VALUES (12,'SKU #428','C-6 Deluxe',349.00,5,4,2,1,5,4,1,3,1,1,5,3,4);
INSERT INTO `instrument` VALUES (13,'SKU #434','C-6 FR Deluxe',449.00,4,4,2,1,5,4,2,3,2,1,5,3,4);
INSERT INTO `instrument` VALUES (14,'SKU #433','C-6 Deluxe LH',399.00,5,4,2,1,5,4,1,3,1,2,5,3,4);
INSERT INTO `instrument` VALUES (15,'SKU #436','C-6 FR Deluxe LH',499.00,0,4,2,1,5,4,2,3,2,2,5,3,4);
INSERT INTO `instrument` VALUES (16,'SKU #446','C-6 Plus',399.00,5,5,2,1,5,4,1,3,1,1,5,3,4);
INSERT INTO `instrument` VALUES (17,'SKU #448','C-6 Plus LH',449.00,4,5,2,1,5,4,1,3,1,2,5,3,4);
INSERT INTO `instrument` VALUES (18,'SKU C-7 Deluxe','C-7 Deluxe',399.00,5,6,2,1,5,4,1,4,1,1,5,3,4);
INSERT INTO `instrument` VALUES (19,'SKU #439','C-7 Deluxe LH',449.00,4,6,2,1,5,4,1,4,1,2,5,3,4);
INSERT INTO `instrument` VALUES (20,'SKU #440','C-8 Deluxe',499.00,0,7,2,1,5,4,1,5,1,1,5,3,4);
INSERT INTO `instrument` VALUES (21,'SKU #442','C-8 Deluxe LH',549.00,4,7,2,1,5,4,1,5,1,2,5,3,4);
/*!40000 ALTER TABLE `instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lienaccessoireinstrument`
--

DROP TABLE IF EXISTS `lienaccessoireinstrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lienaccessoireinstrument` (
  `idAccessoire` int NOT NULL,
  `idInstrument` int NOT NULL,
  PRIMARY KEY (`idAccessoire`,`idInstrument`),
  KEY `idInstrument` (`idInstrument`),
  CONSTRAINT `lienaccessoireinstrument_ibfk_1` FOREIGN KEY (`idAccessoire`) REFERENCES `accessoire` (`idAccessoire`),
  CONSTRAINT `lienaccessoireinstrument_ibfk_2` FOREIGN KEY (`idInstrument`) REFERENCES `instrument` (`idInstrument`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lienaccessoireinstrument`
--

LOCK TABLES `lienaccessoireinstrument` WRITE;
/*!40000 ALTER TABLE `lienaccessoireinstrument` DISABLE KEYS */;
INSERT INTO `lienaccessoireinstrument` VALUES (1,1);
INSERT INTO `lienaccessoireinstrument` VALUES (2,2);
INSERT INTO `lienaccessoireinstrument` VALUES (2,3);
INSERT INTO `lienaccessoireinstrument` VALUES (3,3);
INSERT INTO `lienaccessoireinstrument` VALUES (4,4);
INSERT INTO `lienaccessoireinstrument` VALUES (2,5);
INSERT INTO `lienaccessoireinstrument` VALUES (1,6);
INSERT INTO `lienaccessoireinstrument` VALUES (4,7);
INSERT INTO `lienaccessoireinstrument` VALUES (4,8);
INSERT INTO `lienaccessoireinstrument` VALUES (1,9);
INSERT INTO `lienaccessoireinstrument` VALUES (1,10);
INSERT INTO `lienaccessoireinstrument` VALUES (4,11);
INSERT INTO `lienaccessoireinstrument` VALUES (2,12);
INSERT INTO `lienaccessoireinstrument` VALUES (1,13);
INSERT INTO `lienaccessoireinstrument` VALUES (4,14);
INSERT INTO `lienaccessoireinstrument` VALUES (1,15);
INSERT INTO `lienaccessoireinstrument` VALUES (1,16);
INSERT INTO `lienaccessoireinstrument` VALUES (4,17);
INSERT INTO `lienaccessoireinstrument` VALUES (1,18);
INSERT INTO `lienaccessoireinstrument` VALUES (2,19);
INSERT INTO `lienaccessoireinstrument` VALUES (1,20);
INSERT INTO `lienaccessoireinstrument` VALUES (1,21);
/*!40000 ALTER TABLE `lienaccessoireinstrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lienaccessoiretypeaccessoire`
--

DROP TABLE IF EXISTS `lienaccessoiretypeaccessoire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lienaccessoiretypeaccessoire` (
  `idAccessoire` int NOT NULL,
  `idTypeAccessoire` int NOT NULL,
  PRIMARY KEY (`idAccessoire`,`idTypeAccessoire`),
  KEY `idTypeAccessoire` (`idTypeAccessoire`),
  CONSTRAINT `lienaccessoiretypeaccessoire_ibfk_1` FOREIGN KEY (`idAccessoire`) REFERENCES `accessoire` (`idAccessoire`),
  CONSTRAINT `lienaccessoiretypeaccessoire_ibfk_2` FOREIGN KEY (`idTypeAccessoire`) REFERENCES `typeaccessoire` (`idTypeAccessoire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lienaccessoiretypeaccessoire`
--

LOCK TABLES `lienaccessoiretypeaccessoire` WRITE;
/*!40000 ALTER TABLE `lienaccessoiretypeaccessoire` DISABLE KEYS */;
INSERT INTO `lienaccessoiretypeaccessoire` VALUES (1,1);
INSERT INTO `lienaccessoiretypeaccessoire` VALUES (2,2);
INSERT INTO `lienaccessoiretypeaccessoire` VALUES (3,3);
INSERT INTO `lienaccessoiretypeaccessoire` VALUES (4,3);
/*!40000 ALTER TABLE `lienaccessoiretypeaccessoire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liencouleurinstrument`
--

DROP TABLE IF EXISTS `liencouleurinstrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liencouleurinstrument` (
  `idCouleur` int NOT NULL,
  `idInstrument` int NOT NULL,
  `nomImageInstrument` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCouleur`,`idInstrument`),
  KEY `idInstrument` (`idInstrument`),
  CONSTRAINT `liencouleurinstrument_ibfk_1` FOREIGN KEY (`idCouleur`) REFERENCES `couleur` (`idCouleur`),
  CONSTRAINT `liencouleurinstrument_ibfk_2` FOREIGN KEY (`idInstrument`) REFERENCES `instrument` (`idInstrument`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liencouleurinstrument`
--

LOCK TABLES `liencouleurinstrument` WRITE;
/*!40000 ALTER TABLE `liencouleurinstrument` DISABLE KEYS */;
INSERT INTO `liencouleurinstrument` VALUES (1,8,'SKU1455AuroraBurst');
INSERT INTO `liencouleurinstrument` VALUES (1,9,'SKU1450AuroraBurst');
INSERT INTO `liencouleurinstrument` VALUES (1,10,'SKU1452AuroraBurst');
INSERT INTO `liencouleurinstrument` VALUES (1,11,'SKU1454AuroraBurst');
INSERT INTO `liencouleurinstrument` VALUES (2,5,'SKU3717CarbonGrey');
INSERT INTO `liencouleurinstrument` VALUES (3,16,'SKU446CharcoalBurst');
INSERT INTO `liencouleurinstrument` VALUES (3,17,'SKU448CharcoalBurst');
INSERT INTO `liencouleurinstrument` VALUES (4,16,'SKU446ElectricMagenta');
INSERT INTO `liencouleurinstrument` VALUES (5,3,'SKU282GlossBlack');
INSERT INTO `liencouleurinstrument` VALUES (6,1,'SKU3715NaturalSatin');
INSERT INTO `liencouleurinstrument` VALUES (6,4,'SKUOrleansStudioAcousticNaturalSatin');
INSERT INTO `liencouleurinstrument` VALUES (7,16,'SKU446OceanBlueBurst');
INSERT INTO `liencouleurinstrument` VALUES (8,12,'SKU428SatinAqua');
INSERT INTO `liencouleurinstrument` VALUES (9,12,'SKU428SatinBlack');
INSERT INTO `liencouleurinstrument` VALUES (9,13,'SKU434SatinBlack');
INSERT INTO `liencouleurinstrument` VALUES (9,14,'SKU433SatinBlack');
INSERT INTO `liencouleurinstrument` VALUES (9,15,'SKU436SatinBlack');
INSERT INTO `liencouleurinstrument` VALUES (9,18,'SKUC-7DeluxeSatinBlack');
INSERT INTO `liencouleurinstrument` VALUES (9,19,'SKU439SatinBlack');
INSERT INTO `liencouleurinstrument` VALUES (9,20,'SKU440SatinBlack');
INSERT INTO `liencouleurinstrument` VALUES (9,21,'SKU442SatinBlack');
INSERT INTO `liencouleurinstrument` VALUES (10,12,'SKU428SatinMetallicLightBlue');
INSERT INTO `liencouleurinstrument` VALUES (11,12,'SKU428SatinPurple');
INSERT INTO `liencouleurinstrument` VALUES (12,2,'SKUOrleansStage-7AcousticSatinSeeThruBlack');
INSERT INTO `liencouleurinstrument` VALUES (13,12,'SKU428SatinWhite');
INSERT INTO `liencouleurinstrument` VALUES (13,13,'SKU434SatinWhite');
INSERT INTO `liencouleurinstrument` VALUES (13,18,'SKUC-7DeluxeSatinWhite');
INSERT INTO `liencouleurinstrument` VALUES (13,20,'SKU440SatinWhite');
INSERT INTO `liencouleurinstrument` VALUES (14,16,'SKU446See-ThruCherryBurst');
INSERT INTO `liencouleurinstrument` VALUES (15,7,'SKU3701TransBlackBurstSatin');
INSERT INTO `liencouleurinstrument` VALUES (16,6,'SKU3710VampyreRedBurstSatin');
INSERT INTO `liencouleurinstrument` VALUES (17,16,'SKU446VintageSunburst');
/*!40000 ALTER TABLE `liencouleurinstrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieninstrumentmagasin`
--

DROP TABLE IF EXISTS `lieninstrumentmagasin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lieninstrumentmagasin` (
  `idInstrument` int NOT NULL,
  `idMagasin` int NOT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`idInstrument`,`idMagasin`),
  KEY `idMagasin` (`idMagasin`),
  CONSTRAINT `lieninstrumentmagasin_ibfk_1` FOREIGN KEY (`idInstrument`) REFERENCES `instrument` (`idInstrument`),
  CONSTRAINT `lieninstrumentmagasin_ibfk_2` FOREIGN KEY (`idMagasin`) REFERENCES `magasin` (`idMagasin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieninstrumentmagasin`
--

LOCK TABLES `lieninstrumentmagasin` WRITE;
/*!40000 ALTER TABLE `lieninstrumentmagasin` DISABLE KEYS */;
/*!40000 ALTER TABLE `lieninstrumentmagasin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magasin`
--

DROP TABLE IF EXISTS `magasin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magasin` (
  `idMagasin` int NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `codePostal` int DEFAULT NULL,
  `description` text,
  `nom` varchar(250) DEFAULT NULL,
  `json` text,
  PRIMARY KEY (`idMagasin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magasin`
--

LOCK TABLES `magasin` WRITE;
/*!40000 ALTER TABLE `magasin` DISABLE KEYS */;
/*!40000 ALTER TABLE `magasin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manualite`
--

DROP TABLE IF EXISTS `manualite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manualite` (
  `idManualite` int NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idManualite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manualite`
--

LOCK TABLES `manualite` WRITE;
/*!40000 ALTER TABLE `manualite` DISABLE KEYS */;
INSERT INTO `manualite` VALUES (1,'Droite');
INSERT INTO `manualite` VALUES (2,'Gauche');
/*!40000 ALTER TABLE `manualite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiau`
--

DROP TABLE IF EXISTS `materiau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiau` (
  `idMateriau` int NOT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idMateriau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiau`
--

LOCK TABLES `materiau` WRITE;
/*!40000 ALTER TABLE `materiau` DISABLE KEYS */;
INSERT INTO `materiau` VALUES (1,'Mahogany');
INSERT INTO `materiau` VALUES (2,'Flamed Maple');
INSERT INTO `materiau` VALUES (3,'Rosewood');
INSERT INTO `materiau` VALUES (4,'Swamp Ash');
INSERT INTO `materiau` VALUES (5,'Basswood');
/*!40000 ALTER TABLE `materiau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `micro`
--

DROP TABLE IF EXISTS `micro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `micro` (
  `idMicro` int NOT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idMicro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `micro`
--

LOCK TABLES `micro` WRITE;
/*!40000 ALTER TABLE `micro` DISABLE KEYS */;
INSERT INTO `micro` VALUES (1,'aucun');
INSERT INTO `micro` VALUES (2,'HH');
INSERT INTO `micro` VALUES (3,'HH actif');
/*!40000 ALTER TABLE `micro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombrecorde`
--

DROP TABLE IF EXISTS `nombrecorde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nombrecorde` (
  `idNombreCorde` int NOT NULL,
  `nombre` int DEFAULT NULL,
  PRIMARY KEY (`idNombreCorde`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombrecorde`
--

LOCK TABLES `nombrecorde` WRITE;
/*!40000 ALTER TABLE `nombrecorde` DISABLE KEYS */;
INSERT INTO `nombrecorde` VALUES (1,4);
INSERT INTO `nombrecorde` VALUES (2,5);
INSERT INTO `nombrecorde` VALUES (3,6);
INSERT INTO `nombrecorde` VALUES (4,7);
INSERT INTO `nombrecorde` VALUES (5,8);
/*!40000 ALTER TABLE `nombrecorde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombrefrette`
--

DROP TABLE IF EXISTS `nombrefrette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nombrefrette` (
  `idNombreFrette` int NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idNombreFrette`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombrefrette`
--

LOCK TABLES `nombrefrette` WRITE;
/*!40000 ALTER TABLE `nombrefrette` DISABLE KEYS */;
INSERT INTO `nombrefrette` VALUES (1,'20');
INSERT INTO `nombrefrette` VALUES (2,'21');
INSERT INTO `nombrefrette` VALUES (3,'22');
INSERT INTO `nombrefrette` VALUES (4,'24');
/*!40000 ALTER TABLE `nombrefrette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tremolo`
--

DROP TABLE IF EXISTS `tremolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tremolo` (
  `idTremolo` int NOT NULL,
  `presenceFloydRose` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTremolo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tremolo`
--

LOCK TABLES `tremolo` WRITE;
/*!40000 ALTER TABLE `tremolo` DISABLE KEYS */;
INSERT INTO `tremolo` VALUES (1,'Non');
INSERT INTO `tremolo` VALUES (2,'Oui');
/*!40000 ALTER TABLE `tremolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuner`
--

DROP TABLE IF EXISTS `tuner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tuner` (
  `idTuners` int NOT NULL,
  `marque` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idTuners`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuner`
--

LOCK TABLES `tuner` WRITE;
/*!40000 ALTER TABLE `tuner` DISABLE KEYS */;
INSERT INTO `tuner` VALUES (1,'Schecter');
INSERT INTO `tuner` VALUES (2,'Floyd');
/*!40000 ALTER TABLE `tuner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeaccessoire`
--

DROP TABLE IF EXISTS `typeaccessoire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeaccessoire` (
  `idTypeAccessoire` int NOT NULL,
  `libelle` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idTypeAccessoire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeaccessoire`
--

LOCK TABLES `typeaccessoire` WRITE;
/*!40000 ALTER TABLE `typeaccessoire` DISABLE KEYS */;
INSERT INTO `typeaccessoire` VALUES (1,'aucun');
INSERT INTO `typeaccessoire` VALUES (2,'Pied');
INSERT INTO `typeaccessoire` VALUES (3,'Housse');
/*!40000 ALTER TABLE `typeaccessoire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeinstrument`
--

DROP TABLE IF EXISTS `typeinstrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeinstrument` (
  `idTypeInstrument` int NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTypeInstrument`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeinstrument`
--

LOCK TABLES `typeinstrument` WRITE;
/*!40000 ALTER TABLE `typeinstrument` DISABLE KEYS */;
INSERT INTO `typeinstrument` VALUES (1,'Guitare');
INSERT INTO `typeinstrument` VALUES (2,'Basse');
/*!40000 ALTER TABLE `typeinstrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 20:36:45
