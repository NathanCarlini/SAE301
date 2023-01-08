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

-- Dump completed on 2023-01-08 20:36:31
