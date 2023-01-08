-- insert tables categories
INSERT INTO `manualite`(`idManualite`, `libelle`) VALUES (1,'Droite');
INSERT INTO `manualite`(`idManualite`, `libelle`) VALUES (2,'Gauche');
INSERT INTO `typeAccessoire`(`idTypeAccessoire`, `libelle`) VALUES (1,'aucun');
INSERT INTO `typeAccessoire`(`idTypeAccessoire`, `libelle`) VALUES (3,'Housse');
INSERT INTO `typeAccessoire`(`idTypeAccessoire`, `libelle`) VALUES (2,'Pied');
INSERT INTO `typeInstrument`(`idTypeInstrument`, `type`) VALUES (2, 'Basse');
INSERT INTO `typeInstrument`(`idTypeInstrument`, `type`) VALUES (1, 'Guitare');
INSERT INTO `micro`(`idMicro`, `libelle`) VALUES (1, 'aucun');
INSERT INTO `micro`(`idMicro`, `libelle`) VALUES (2, 'HH');
INSERT INTO `micro`(`idMicro`, `libelle`) VALUES (3, 'HH actif');
INSERT INTO `controle`(`idControle`, `nombre`, `libelle`) VALUES (1,0, 'aucun');
INSERT INTO `controle`(`idControle`, `nombre`, `libelle`) VALUES (2,1, 'Fishman Isys+ Preamp (Volume/On-Board Tuner/Bass/Treble/Phase Switch)');
INSERT INTO `controle`(`idControle`, `nombre`, `libelle`) VALUES (3,4, 'Fishman Matrix Infinity EQ (Volume/Tone/Bass/Voicing Switch)');
INSERT INTO `controle`(`idControle`, `nombre`, `libelle`) VALUES (4,3, 'Master Volume/Blend/EMG-B30 3-Band Active/ E/Q');
INSERT INTO `controle`(`idControle`, `nombre`, `libelle`) VALUES (5,4, 'Volume/Tone/3-Way Switch');
INSERT INTO `nombreCorde`(`idNombreCorde`, `nombre`) VALUES (1,4);
INSERT INTO `nombreCorde`(`idNombreCorde`, `nombre`) VALUES (2,5);
INSERT INTO `nombreCorde`(`idNombreCorde`, `nombre`) VALUES (3,6);
INSERT INTO `nombreCorde`(`idNombreCorde`, `nombre`) VALUES (4,7);
INSERT INTO `nombreCorde`(`idNombreCorde`, `nombre`) VALUES (5,8);
INSERT INTO `gamme`(`idgamme`, `libelle`) VALUES (1, 'Acoustics');
INSERT INTO `gamme`(`idgamme`, `libelle`) VALUES (4, 'C6 Deluxe');
INSERT INTO `gamme`(`idgamme`, `libelle`) VALUES (5, 'C-6 Plus');
INSERT INTO `gamme`(`idgamme`, `libelle`) VALUES (6, 'C7 Deluxe');
INSERT INTO `gamme`(`idgamme`, `libelle`) VALUES (7, 'C8 Deluxe');
INSERT INTO `gamme`(`idgamme`, `libelle`) VALUES (3, 'Riot Series');
INSERT INTO `gamme`(`idgamme`, `libelle`) VALUES (2, 'Synyster Gates');
INSERT INTO `materiau`(`idMateriau`, `libelle`) VALUES (5, 'Basswood');
INSERT INTO `materiau`(`idMateriau`, `libelle`) VALUES (2, 'Flamed Maple');
INSERT INTO `materiau`(`idMateriau`, `libelle`) VALUES (1, 'Mahogany');
INSERT INTO `materiau`(`idMateriau`, `libelle`) VALUES (3, 'Rosewood');
INSERT INTO `materiau`(`idMateriau`, `libelle`) VALUES (4, 'Swamp Ash');
INSERT INTO `nombreFrette`(`idNombreFrette`, `nombre`) VALUES (1, 20);
INSERT INTO `nombreFrette`(`idNombreFrette`, `nombre`) VALUES (2, 21);
INSERT INTO `nombreFrette`(`idNombreFrette`, `nombre`) VALUES (3, 22);
INSERT INTO `nombreFrette`(`idNombreFrette`, `nombre`) VALUES (4, 24);
INSERT INTO `construction`(`idConstruction`, `libelle`) VALUES (3, 'Bolt-on');
INSERT INTO `construction`(`idConstruction`, `libelle`) VALUES (1, 'DoveTail Set-Neck');
INSERT INTO `construction`(`idConstruction`, `libelle`) VALUES (2, 'Set-Neck');
INSERT INTO `tremolo`(`idTremolo`, `presenceFloydRose`) VALUES (1, 'Non');
INSERT INTO `tremolo`(`idTremolo`, `presenceFloydRose`) VALUES (2, 'Oui');
INSERT INTO `couleurMateriel`(`idCouleurMateriel`, `libelle`) VALUES (3, 'Black');
INSERT INTO `couleurMateriel`(`idCouleurMateriel`, `libelle`) VALUES (1, 'Black Chrome');
INSERT INTO `couleurMateriel`(`idCouleurMateriel`, `libelle`) VALUES (4, 'Chrome');
INSERT INTO `couleurMateriel`(`idCouleurMateriel`, `libelle`) VALUES (2, 'Gloss Black');
INSERT INTO `accessoire`(`idAccessoire`, `libelle`) VALUES (3, '685 SGR-13AC Hardcase');
INSERT INTO `accessoire`(`idAccessoire`, `libelle`) VALUES (4, '686 SGR-13AC Hardcase');
INSERT INTO `accessoire`(`idAccessoire`, `libelle`) VALUES (1, 'aucun');
INSERT INTO `accessoire`(`idAccessoire`, `libelle`) VALUES (2, 'Millenium GS-2001 A');
INSERT INTO `tuner`(`idTuners`, `marque`) VALUES (2, 'Floyd');
INSERT INTO `tuner`(`idTuners`, `marque`) VALUES (1, 'Schecter');
INSERT INTO couleur (idCouleur, libelle) VALUES(1, 'Aurora Burst');
INSERT INTO couleur (idCouleur, libelle) VALUES(2, 'Carbon Grey');
INSERT INTO couleur (idCouleur, libelle) VALUES(3, 'Charcoal Burst');
INSERT INTO couleur (idCouleur, libelle) VALUES(4, 'Electric Magenta');
INSERT INTO couleur (idCouleur, libelle) VALUES(5, 'Gloss Black');
INSERT INTO couleur (idCouleur, libelle) VALUES(6, 'Natural Satin');
INSERT INTO couleur (idCouleur, libelle) VALUES(7, 'Ocean Blue Burst');
INSERT INTO couleur (idCouleur, libelle) VALUES(8, 'Satin Aqua');
INSERT INTO couleur (idCouleur, libelle) VALUES(9, 'Satin Black');
INSERT INTO couleur (idCouleur, libelle) VALUES(10, 'Satin Metallic Light Blue');
INSERT INTO couleur (idCouleur, libelle) VALUES(11, 'Satin Purple');
INSERT INTO couleur (idCouleur, libelle) VALUES(12, 'Satin See Thru Black');
INSERT INTO couleur (idCouleur, libelle) VALUES(13, 'Satin White');
INSERT INTO couleur (idCouleur, libelle) VALUES(14, 'See-Thru Cherry Burst');
INSERT INTO couleur (idCouleur, libelle) VALUES(15, 'Trans Black Burst Satin');
INSERT INTO couleur (idCouleur, libelle) VALUES(16, 'Vampyre Red Burst Satin');
INSERT INTO couleur (idCouleur, libelle) VALUES(17, 'Vintage Sunburst');


-- insert values table instrument
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (1,'SKU #3715','Deluxe Acoustic',299,0,1,1,1,1,1,1,3,1,1,1,1,3);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (2,'SKU Orleans Stage-7 Acoustic','Orleans Stage-7 Acoustic',629,5,1,1,1,2,2,1,4,1,1,2,2,1);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (3,'SKU #282','Robert Smith RS-1000 Stage Acoustic',1049,3,1,1,1,3,2,1,3,1,1,1,2,2);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (4,'SKU Orleans Studio Acoustic','Orleans Studio Acoustic',469,0,1,1,1,2,1,1,3,1,1,1,2,1);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (5,'SKU #3717','DJ Ashba Acoustic',799,3,1,1,1,2,3,1,3,1,1,1,1,3);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (6,'SKU #3710','Orleans Stage Acoustic',559,0,1,1,1,2,1,1,3,1,1,2,2,1);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (7,'SKU #3701','Synyster Gates SYN GA SC Acoustic',559,5,2,1,1,2,4,1,3,1,1,3,1,1);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (8,'SKU #1455','Riot-5 Bass LH',1249,5,3,3,2,4,3,1,2,1,2,4,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (9,'SKU #1450','Riot-4 Bass',1149,5,3,3,2,4,3,1,1,1,1,4,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (10,'SKU #1452','Riot-5 Bass',1199,0,3,3,2,4,3,1,2,1,1,4,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (11,'SKU #1454','Riot-4 Bass LH',1199,4,3,3,2,4,3,1,1,1,2,4,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (12,'SKU #428','C-6 Deluxe',349,5,4,2,1,5,4,1,3,1,1,5,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (13,'SKU #434','C-6 FR Deluxe',449,4,4,2,1,5,4,2,3,2,1,5,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (14,'SKU #433','C-6 Deluxe LH',399,5,4,2,1,5,4,1,3,1,2,5,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (15,'SKU #436','C-6 FR Deluxe LH',499,0,4,2,1,5,4,2,3,2,2,5,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (16,'SKU #446','C-6 Plus',399,5,5,2,1,5,4,1,3,1,1,5,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (17,'SKU #448','C-6 Plus LH',449,4,5,2,1,5,4,1,3,1,2,5,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (18,'SKU C-7 Deluxe','C-7 Deluxe',399,5,6,2,1,5,4,1,4,1,1,5,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (19,'SKU #439','C-7 Deluxe LH',449,4,6,2,1,5,4,1,4,1,2,5,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (20,'SKU #440','C-8 Deluxe',499,0,7,2,1,5,4,1,5,1,1,5,3,4);
INSERT INTO `instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`) VALUES (21,'SKU #442','C-8 Deluxe LH',549,4,7,2,1,5,4,1,5,1,2,5,3,4);


--table lien couleur instrument
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(1,9,'SKU1450AuroraBurst');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(1,10,'SKU1452AuroraBurst');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(1,11,'SKU1454AuroraBurst');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(1,8,'SKU1455AuroraBurst');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(5,3,'SKU282GlossBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(15,7,'SKU3701TransBlackBurstSatin');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(16,6,'SKU3710VampyreRedBurstSatin');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(6,1,'SKU3715NaturalSatin');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(2,5,'SKU3717CarbonGrey');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(9,12,'SKU428SatinBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(13,12,'SKU428SatinWhite');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(8,12,'SKU428SatinAqua');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(10,12,'SKU428SatinMetallicLightBlue');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(11,12,'SKU428SatinPurple');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(9,14,'SKU433SatinBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(9,13,'SKU434SatinBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(13,13,'SKU434SatinWhite');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(9,15,'SKU436SatinBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(9,19,'SKU439SatinBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(9,20,'SKU440SatinBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(13,20,'SKU440SatinWhite');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(9,21,'SKU442SatinBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(3,16,'SKU446CharcoalBurst');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(4,16,'SKU446ElectricMagenta');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(7,16,'SKU446OceanBlueBurst');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(14,16,'SKU446See-ThruCherryBurst');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(17,16,'SKU446VintageSunburst');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(3,17,'SKU448CharcoalBurst');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(9,18,'SKUC-7DeluxeSatinBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(13,18,'SKUC-7DeluxeSatinWhite');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(12,2,'SKUOrleansStage-7AcousticSatinSeeThruBlack');
INSERT INTO liencouleurinstrument (idCouleur, idInstrument, nomImageInstrument) VALUES(6,4,'SKUOrleansStudioAcousticNaturalSatin');

INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 1);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(2, 2);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(3, 3);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(2, 3);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(4, 4);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(2, 5);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 6);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(4, 7);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(4, 8);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 9);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 10);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(4, 11);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(2, 12);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 13);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(4, 14);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 15);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 16);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(4, 17);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 18);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(2, 19);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 20);
INSERT INTO lienAccessoireInstrument (idAccessoire, idInstrument) VALUES(1, 21);
