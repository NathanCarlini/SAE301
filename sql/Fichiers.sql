-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage de la structure de table test. accessoire
CREATE TABLE IF NOT EXISTS `accessoire` (
  `idAccessoire` int NOT NULL,
  `libelle` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idAccessoire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.accessoire : ~4 rows (environ)
INSERT INTO `accessoire` (`idAccessoire`, `libelle`) VALUES
	(1, 'aucun'),
	(2, 'Millenium GS-2001 A'),
	(3, '685 SGR-13AC Hardcase'),
	(4, '686 SGR-13AC Hardcase');

-- Listage de la structure de table test. construction
CREATE TABLE IF NOT EXISTS `construction` (
  `idConstruction` int NOT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idConstruction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.construction : ~3 rows (environ)
INSERT INTO `construction` (`idConstruction`, `libelle`) VALUES
	(1, 'DoveTail Set-Neck'),
	(2, 'Set-Neck'),
	(3, 'Bolt-on');

-- Listage de la structure de table test. controle
CREATE TABLE IF NOT EXISTS `controle` (
  `idControle` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idControle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.controle : ~5 rows (environ)
INSERT INTO `controle` (`idControle`, `nombre`, `libelle`) VALUES
	(1, '0', 'aucun'),
	(2, '1', 'Fishman Isys+ Preamp (Volume/On-Board Tuner/Bass/Treble/Phase Switch)'),
	(3, '4', 'Fishman Matrix Infinity EQ (Volume/Tone/Bass/Voicing Switch)'),
	(4, '3', 'Master Volume/Blend/EMG-B30 3-Band Active/ E/Q'),
	(5, '4', 'Volume/Tone/3-Way Switch');

-- Listage de la structure de table test. couleur
CREATE TABLE IF NOT EXISTS `couleur` (
  `idCouleur` int NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCouleur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.couleur : ~17 rows (environ)
INSERT INTO `couleur` (`idCouleur`, `libelle`) VALUES
	(1, 'Aurora Burst'),
	(2, 'Carbon Grey'),
	(3, 'Charcoal Burst'),
	(4, 'Electric Magenta'),
	(5, 'Gloss Black'),
	(6, 'Natural Satin'),
	(7, 'Ocean Blue Burst'),
	(8, 'Satin Aqua'),
	(9, 'Satin Black'),
	(10, 'Satin Metallic Light Blue'),
	(11, 'Satin Purple'),
	(12, 'Satin See Thru Black'),
	(13, 'Satin White'),
	(14, 'See-Thru Cherry Burst'),
	(15, 'Trans Black Burst Satin'),
	(16, 'Vampyre Red Burst Satin'),
	(17, 'Vintage Sunburst');

-- Listage de la structure de table test. couleurmateriel
CREATE TABLE IF NOT EXISTS `couleurmateriel` (
  `idCouleurMateriel` int NOT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idCouleurMateriel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.couleurmateriel : ~4 rows (environ)
INSERT INTO `couleurmateriel` (`idCouleurMateriel`, `libelle`) VALUES
	(1, 'Black Chrome'),
	(2, 'Gloss Black'),
	(3, 'Black'),
	(4, 'Chrome');

-- Listage de la structure de table test. gamme
CREATE TABLE IF NOT EXISTS `gamme` (
  `idgamme` int NOT NULL,
  `libelle` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idgamme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.gamme : ~7 rows (environ)
INSERT INTO `gamme` (`idgamme`, `libelle`) VALUES
	(1, 'Acoustics'),
	(2, 'Synyster Gates'),
	(3, 'Riot Series'),
	(4, 'C6 Deluxe'),
	(5, 'C-6 Plus'),
	(6, 'C7 Deluxe'),
	(7, 'C8 Deluxe');

-- Listage de la structure de table test. instrument
CREATE TABLE IF NOT EXISTS `instrument` (
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

-- Listage des données de la table test.instrument : ~21 rows (environ)
INSERT INTO `instrument` (`idInstrument`, `reference`, `nom`, `prix`, `notation`, `idgamme`, `idMicro`, `idTypeInstrument`, `idControle`, `idCouleurMateriel`, `idTuners`, `idNombreCorde`, `idTremolo`, `idManualite`, `idMateriau`, `idConstruction`, `idNombreFrette`) VALUES
	(1, 'SKU #3715', 'Deluxe Acoustic', 299.00, 0, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 3),
	(2, 'SKU Orleans Stage-7 Acoustic', 'Orleans Stage-7 Acoustic', 629.00, 5, 1, 1, 1, 2, 2, 1, 4, 1, 1, 2, 2, 1),
	(3, 'SKU #282', 'Robert Smith RS-1000 Stage Acoustic', 1049.00, 3, 1, 1, 1, 3, 2, 1, 3, 1, 1, 1, 2, 2),
	(4, 'SKU Orleans Studio Acoustic', 'Orleans Studio Acoustic', 469.00, 0, 1, 1, 1, 2, 1, 1, 3, 1, 1, 1, 2, 1),
	(5, 'SKU #3717', 'DJ Ashba Acoustic', 799.00, 3, 1, 1, 1, 2, 3, 1, 3, 1, 1, 1, 1, 3),
	(6, 'SKU #3710', 'Orleans Stage Acoustic', 559.00, 0, 1, 1, 1, 2, 1, 1, 3, 1, 1, 2, 2, 1),
	(7, 'SKU #3701', 'Synyster Gates SYN GA SC Acoustic', 559.00, 5, 2, 1, 1, 2, 4, 1, 3, 1, 1, 3, 1, 1),
	(8, 'SKU #1455', 'Riot-5 Bass LH', 1249.00, 5, 3, 3, 2, 4, 3, 1, 2, 1, 2, 4, 3, 4),
	(9, 'SKU #1450', 'Riot-4 Bass', 1149.00, 5, 3, 3, 2, 4, 3, 1, 1, 1, 1, 4, 3, 4),
	(10, 'SKU #1452', 'Riot-5 Bass', 1199.00, 0, 3, 3, 2, 4, 3, 1, 2, 1, 1, 4, 3, 4),
	(11, 'SKU #1454', 'Riot-4 Bass LH', 1199.00, 4, 3, 3, 2, 4, 3, 1, 1, 1, 2, 4, 3, 4),
	(12, 'SKU #428', 'C-6 Deluxe', 349.00, 5, 4, 2, 1, 5, 4, 1, 3, 1, 1, 5, 3, 4),
	(13, 'SKU #434', 'C-6 FR Deluxe', 449.00, 4, 4, 2, 1, 5, 4, 2, 3, 2, 1, 5, 3, 4),
	(14, 'SKU #433', 'C-6 Deluxe LH', 399.00, 5, 4, 2, 1, 5, 4, 1, 3, 1, 2, 5, 3, 4),
	(15, 'SKU #436', 'C-6 FR Deluxe LH', 499.00, 0, 4, 2, 1, 5, 4, 2, 3, 2, 2, 5, 3, 4),
	(16, 'SKU #446', 'C-6 Plus', 399.00, 5, 5, 2, 1, 5, 4, 1, 3, 1, 1, 5, 3, 4),
	(17, 'SKU #448', 'C-6 Plus LH', 449.00, 4, 5, 2, 1, 5, 4, 1, 3, 1, 2, 5, 3, 4),
	(18, 'SKU C-7 Deluxe', 'C-7 Deluxe', 399.00, 5, 6, 2, 1, 5, 4, 1, 4, 1, 1, 5, 3, 4),
	(19, 'SKU #439', 'C-7 Deluxe LH', 449.00, 4, 6, 2, 1, 5, 4, 1, 4, 1, 2, 5, 3, 4),
	(20, 'SKU #440', 'C-8 Deluxe', 499.00, 0, 7, 2, 1, 5, 4, 1, 5, 1, 1, 5, 3, 4),
	(21, 'SKU #442', 'C-8 Deluxe LH', 549.00, 4, 7, 2, 1, 5, 4, 1, 5, 1, 2, 5, 3, 4);

-- Listage de la structure de table test. lienaccessoireinstrument
CREATE TABLE IF NOT EXISTS `lienaccessoireinstrument` (
  `idAccessoire` int NOT NULL,
  `idInstrument` int NOT NULL,
  PRIMARY KEY (`idAccessoire`,`idInstrument`),
  KEY `idInstrument` (`idInstrument`),
  CONSTRAINT `lienaccessoireinstrument_ibfk_1` FOREIGN KEY (`idAccessoire`) REFERENCES `accessoire` (`idAccessoire`),
  CONSTRAINT `lienaccessoireinstrument_ibfk_2` FOREIGN KEY (`idInstrument`) REFERENCES `instrument` (`idInstrument`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.lienaccessoireinstrument : ~22 rows (environ)
INSERT INTO `lienaccessoireinstrument` (`idAccessoire`, `idInstrument`) VALUES
	(1, 1),
	(2, 2),
	(2, 3),
	(3, 3),
	(4, 4),
	(2, 5),
	(1, 6),
	(4, 7),
	(4, 8),
	(1, 9),
	(1, 10),
	(4, 11),
	(2, 12),
	(1, 13),
	(4, 14),
	(1, 15),
	(1, 16),
	(4, 17),
	(1, 18),
	(2, 19),
	(1, 20),
	(1, 21);

-- Listage de la structure de table test. lienaccessoiretypeaccessoire
CREATE TABLE IF NOT EXISTS `lienaccessoiretypeaccessoire` (
  `idAccessoire` int NOT NULL,
  `idTypeAccessoire` int NOT NULL,
  PRIMARY KEY (`idAccessoire`,`idTypeAccessoire`),
  KEY `idTypeAccessoire` (`idTypeAccessoire`),
  CONSTRAINT `lienaccessoiretypeaccessoire_ibfk_1` FOREIGN KEY (`idAccessoire`) REFERENCES `accessoire` (`idAccessoire`),
  CONSTRAINT `lienaccessoiretypeaccessoire_ibfk_2` FOREIGN KEY (`idTypeAccessoire`) REFERENCES `typeaccessoire` (`idTypeAccessoire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.lienaccessoiretypeaccessoire : ~4 rows (environ)
INSERT INTO `lienaccessoiretypeaccessoire` (`idAccessoire`, `idTypeAccessoire`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 3);

-- Listage de la structure de table test. liencouleurinstrument
CREATE TABLE IF NOT EXISTS `liencouleurinstrument` (
  `idCouleur` int NOT NULL,
  `idInstrument` int NOT NULL,
  `nomImageInstrument` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCouleur`,`idInstrument`),
  KEY `idInstrument` (`idInstrument`),
  CONSTRAINT `liencouleurinstrument_ibfk_1` FOREIGN KEY (`idCouleur`) REFERENCES `couleur` (`idCouleur`),
  CONSTRAINT `liencouleurinstrument_ibfk_2` FOREIGN KEY (`idInstrument`) REFERENCES `instrument` (`idInstrument`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.liencouleurinstrument : ~32 rows (environ)
INSERT INTO `liencouleurinstrument` (`idCouleur`, `idInstrument`, `nomImageInstrument`) VALUES
	(1, 8, 'SKU1455AuroraBurst'),
	(1, 9, 'SKU1450AuroraBurst'),
	(1, 10, 'SKU1452AuroraBurst'),
	(1, 11, 'SKU1454AuroraBurst'),
	(2, 5, 'SKU3717CarbonGrey'),
	(3, 16, 'SKU446CharcoalBurst'),
	(3, 17, 'SKU448CharcoalBurst'),
	(4, 16, 'SKU446ElectricMagenta'),
	(5, 3, 'SKU282GlossBlack'),
	(6, 1, 'SKU3715NaturalSatin'),
	(6, 4, 'SKUOrleansStudioAcousticNaturalSatin'),
	(7, 16, 'SKU446OceanBlueBurst'),
	(8, 12, 'SKU428SatinAqua'),
	(9, 12, 'SKU428SatinBlack'),
	(9, 13, 'SKU434SatinBlack'),
	(9, 14, 'SKU433SatinBlack'),
	(9, 15, 'SKU436SatinBlack'),
	(9, 18, 'SKUC-7DeluxeSatinBlack'),
	(9, 19, 'SKU439SatinBlack'),
	(9, 20, 'SKU440SatinBlack'),
	(9, 21, 'SKU442SatinBlack'),
	(10, 12, 'SKU428SatinMetallicLightBlue'),
	(11, 12, 'SKU428SatinPurple'),
	(12, 2, 'SKUOrleansStage-7AcousticSatinSeeThruBlack'),
	(13, 12, 'SKU428SatinWhite'),
	(13, 13, 'SKU434SatinWhite'),
	(13, 18, 'SKUC-7DeluxeSatinWhite'),
	(13, 20, 'SKU440SatinWhite'),
	(14, 16, 'SKU446See-ThruCherryBurst'),
	(15, 7, 'SKU3701TransBlackBurstSatin'),
	(16, 6, 'SKU3710VampyreRedBurstSatin'),
	(17, 16, 'SKU446VintageSunburst');

-- Listage de la structure de table test. lieninstrumentmagasin
CREATE TABLE IF NOT EXISTS `lieninstrumentmagasin` (
  `idInstrument` int NOT NULL,
  `idMagasin` int NOT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`idInstrument`,`idMagasin`),
  KEY `idMagasin` (`idMagasin`),
  CONSTRAINT `lieninstrumentmagasin_ibfk_1` FOREIGN KEY (`idInstrument`) REFERENCES `instrument` (`idInstrument`),
  CONSTRAINT `lieninstrumentmagasin_ibfk_2` FOREIGN KEY (`idMagasin`) REFERENCES `magasin` (`idMagasin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.lieninstrumentmagasin : ~51 rows (environ)
INSERT INTO `lieninstrumentmagasin` (`idInstrument`, `idMagasin`, `stock`) VALUES
	(1, 1, 5),
	(1, 2, 2),
	(1, 5, 2),
	(2, 1, 5),
	(2, 2, 2),
	(2, 5, 2),
	(3, 1, 5),
	(3, 2, 2),
	(4, 1, 5),
	(4, 3, 1),
	(5, 1, 5),
	(5, 3, 1),
	(6, 1, 5),
	(6, 3, 1),
	(6, 5, 2),
	(7, 1, 5),
	(7, 3, 1),
	(7, 5, 2),
	(8, 1, 5),
	(8, 3, 1),
	(8, 5, 1),
	(9, 1, 2),
	(9, 3, 1),
	(9, 5, 2),
	(10, 1, 2),
	(10, 3, 1),
	(10, 5, 2),
	(11, 1, 2),
	(11, 2, 2),
	(11, 5, 5),
	(12, 1, 2),
	(12, 2, 0),
	(12, 5, 2),
	(13, 1, 2),
	(13, 2, 0),
	(14, 1, 2),
	(14, 2, 2),
	(15, 1, 2),
	(15, 2, 2),
	(16, 1, 2),
	(17, 1, 2),
	(18, 1, 1),
	(18, 5, 2),
	(19, 1, 1),
	(19, 2, 2),
	(19, 5, 2),
	(20, 1, 1),
	(20, 2, 2),
	(21, 1, 0),
	(21, 2, 1),
	(21, 4, 5);

-- Listage de la structure de table test. magasin
CREATE TABLE IF NOT EXISTS `magasin` (
  `idMagasin` int NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `codePostal` int DEFAULT NULL,
  `description` text,
  `nom` varchar(250) DEFAULT NULL,
  `json` text,
  PRIMARY KEY (`idMagasin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.magasin : ~5 rows (environ)
INSERT INTO `magasin` (`idMagasin`, `adresse`, `codePostal`, `description`, `nom`, `json`) VALUES
	(1, '26 Av. des Bénédictins', 87000, 'Le magasin de musique de Limoges. Une large gamme de guitares acoustiques, électriques, électro-ac mais aussi de basses, pianos, claviers et batteries.', 'Music Passion 87', '45.832950, 1.267190'),
	(2, '8 Rue des Combes BP 30190', 87005, 'Située dans le centre-ville de Limoges, la Fnac vous accueille dans son magasin d’une superficie de plus de 2100m2. Vous y retrouverez tous les univers de la Fnac : livres, disques, DVD, micro‐informatique, objets connectés, gaming, téléphonie, son, photo, TV, papeterie,… Pour vos places de spectacles l’espace billetterie de Fnac Spectacles propose une large sélection d’événements.', 'FNAC Limoges', '45.832250, 1.257570'),
	(3, '30 Rue Amédée Gordini', 87280, 'Cultura enseigne leader de biens de loisirs culturels et créatifs', 'Cultura Limoges', '45.895320, 1.280380'),
	(4, '12 Rue Jules Guesde', 87000, 'Petit magasin proposant un large eventail de produits', 'Music Mania', '45.829520, 1.261290'),
	(5, '5 Rue de la Glâne', 87000, 'rien', 'Limouzik', '45.822910, 1.218190');

-- Listage de la structure de table test. manualite
CREATE TABLE IF NOT EXISTS `manualite` (
  `idManualite` int NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idManualite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.manualite : ~2 rows (environ)
INSERT INTO `manualite` (`idManualite`, `libelle`) VALUES
	(1, 'Droite'),
	(2, 'Gauche');

-- Listage de la structure de table test. materiau
CREATE TABLE IF NOT EXISTS `materiau` (
  `idMateriau` int NOT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idMateriau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.materiau : ~5 rows (environ)
INSERT INTO `materiau` (`idMateriau`, `libelle`) VALUES
	(1, 'Mahogany'),
	(2, 'Flamed Maple'),
	(3, 'Rosewood'),
	(4, 'Swamp Ash'),
	(5, 'Basswood');

-- Listage de la structure de table test. micro
CREATE TABLE IF NOT EXISTS `micro` (
  `idMicro` int NOT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idMicro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.micro : ~3 rows (environ)
INSERT INTO `micro` (`idMicro`, `libelle`) VALUES
	(1, 'aucun'),
	(2, 'HH'),
	(3, 'HH actif');

-- Listage de la structure de table test. nombrecorde
CREATE TABLE IF NOT EXISTS `nombrecorde` (
  `idNombreCorde` int NOT NULL,
  `nombre` int DEFAULT NULL,
  PRIMARY KEY (`idNombreCorde`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.nombrecorde : ~5 rows (environ)
INSERT INTO `nombrecorde` (`idNombreCorde`, `nombre`) VALUES
	(1, 4),
	(2, 5),
	(3, 6),
	(4, 7),
	(5, 8);

-- Listage de la structure de table test. nombrefrette
CREATE TABLE IF NOT EXISTS `nombrefrette` (
  `idNombreFrette` int NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idNombreFrette`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.nombrefrette : ~4 rows (environ)
INSERT INTO `nombrefrette` (`idNombreFrette`, `nombre`) VALUES
	(1, '20'),
	(2, '21'),
	(3, '22'),
	(4, '24');

-- Listage de la structure de table test. tremolo
CREATE TABLE IF NOT EXISTS `tremolo` (
  `idTremolo` int NOT NULL,
  `presenceFloydRose` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTremolo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.tremolo : ~2 rows (environ)
INSERT INTO `tremolo` (`idTremolo`, `presenceFloydRose`) VALUES
	(1, 'Non'),
	(2, 'Oui');

-- Listage de la structure de table test. tuner
CREATE TABLE IF NOT EXISTS `tuner` (
  `idTuners` int NOT NULL,
  `marque` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idTuners`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.tuner : ~2 rows (environ)
INSERT INTO `tuner` (`idTuners`, `marque`) VALUES
	(1, 'Schecter'),
	(2, 'Floyd');

-- Listage de la structure de table test. typeaccessoire
CREATE TABLE IF NOT EXISTS `typeaccessoire` (
  `idTypeAccessoire` int NOT NULL,
  `libelle` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idTypeAccessoire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.typeaccessoire : ~3 rows (environ)
INSERT INTO `typeaccessoire` (`idTypeAccessoire`, `libelle`) VALUES
	(1, 'aucun'),
	(2, 'Pied'),
	(3, 'Housse');

-- Listage de la structure de table test. typeinstrument
CREATE TABLE IF NOT EXISTS `typeinstrument` (
  `idTypeInstrument` int NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTypeInstrument`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table test.typeinstrument : ~2 rows (environ)
INSERT INTO `typeinstrument` (`idTypeInstrument`, `type`) VALUES
	(1, 'Guitare'),
	(2, 'Basse');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
