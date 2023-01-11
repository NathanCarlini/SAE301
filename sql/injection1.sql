`instrument`(`idInstrument`,`reference`,`nom`,`prix`,`notation`,`idgamme`,`idMicro`,
`idTypeInstrument`,`idControle`,`idCouleurMateriel`,`idTuners`,`idNombreCorde`,`idTremolo`,
`idManualite`,`idMateriau`,`idConstruction`,`idNombreFrette`

="INSERT INTO `nombreCorde`('idInstrument','reference','nom','prix','notation','idgamme','idMicro',
'idTypeInstrument','idControle','idCouleurMateriel','idTuners','idNombreCorde','idTremolo',
'idManualite','idMateriau','idConstruction','idNombreFrette') 
VALUES ("&AF2&","&AG2&")"

'instrument'('idInstrument','reference','nom','prix','notation','idgamme','idMicro',
'idTypeInstrument','idControle','idCouleurMateriel','idTuners','idNombreCorde','idTremolo',
'idManualite','idMateriau','idConstruction','idNombreFrette') VALUES


INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(1,1,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(2,1,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(3,1,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(4,1,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(5,1,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(6,1,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(7,1,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(8,1,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(9,1,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(10,1,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(11,1,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(12,1,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(13,1,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(14,1,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(15,1,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(16,1,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(17,1,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(18,1,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(19,1,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(20,1,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(21,1,0);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(1,2,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(2,2,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(3,2,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(11,2,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(12,2,0);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(13,2,0);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(14,2,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(15,2,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(19,2,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(20,2,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(21,2,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(4,3,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(5,3,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(6,3,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(7,3,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(8,3,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(9,3,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(10,3,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(21,4,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(1,5,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(2,5,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(6,5,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(7,5,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(8,5,1);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(9,5,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(10,5,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(11,5,5);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(12,5,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(18,5,2);
INSERT INTO lieninstrumentmagasin (idInstrument, idMagasin, stock) VALUES(19,5,2);


INSERT INTO magasin (idMagasin, adresse, codePostal, description, nom, json) VALUES(1,'26 Av. des Bénédictins',87000 Limoges,'Le magasin de musique de Limoges. Une large gamme de guitares acoustiques, électriques, électro-ac mais aussi de basses, pianos, claviers et batteries.','Music Passion 87','45.832950, 1.267190');
INSERT INTO magasin (idMagasin, adresse, codePostal, description, nom, json) VALUES(2,'8 Rue des Combes BP 30190',87005 Limoges,'Située dans le centre-ville de Limoges, la Fnac vous accueille dans son magasin d’une superficie de plus de 2100m2. Vous y retrouverez tous les univers de la Fnac : livres, disques, DVD, micro‐informatique, objets connectés, gaming, téléphonie, son, photo, TV, papeterie,… Pour vos places de spectacles l’espace billetterie de Fnac Spectacles propose une large sélection d’événements.','FNAC Limoges','45.832250, 1.257570');
INSERT INTO magasin (idMagasin, adresse, codePostal, description, nom, json) VALUES(3,'30 Rue Amédée Gordini',87280 Limoges,'Cultura enseigne leader de biens de loisirs culturels et créatifs','Cultura Limoges','45.895320, 1.280380');
INSERT INTO magasin (idMagasin, adresse, codePostal, description, nom, json) VALUES(4,'12 Rue Jules Guesde',87000 Limoges,'Petit magasin proposant un large eventail de produits','Music Mania','45.829520, 1.261290');
INSERT INTO magasin (idMagasin, adresse, codePostal, description, nom, json) VALUES(5,'5 Rue de la Glâne',87000 Limoges,'rien','Limouzik','45.822910, 1.218190');
