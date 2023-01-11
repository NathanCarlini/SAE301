CREATE TABLE nombreCorde(
   idNombreCorde INT,
   nombre INT,
   PRIMARY KEY(idNombreCorde)
);

CREATE TABLE couleur(
   idCouleur INT,
   libelle VARCHAR(50),
   PRIMARY KEY(idCouleur)
);

CREATE TABLE tremolo(
   idTremolo INT,
   presenceFloydRose VARCHAR(50),
   PRIMARY KEY(idTremolo)
);


CREATE TABLE manualite(
   idManualite INT,
   libelle VARCHAR(50),
   PRIMARY KEY(idManualite)
);

CREATE TABLE couleurMateriel(
   idCouleurMateriel INT,
   libelle VARCHAR(150),
   PRIMARY KEY(idCouleurMateriel)
);

CREATE TABLE tuner(
   idTuners INT,
   marque VARCHAR(150),
   PRIMARY KEY(idTuners)
);

CREATE TABLE materiau(
   idMateriau INT,
   libelle VARCHAR(150),
   PRIMARY KEY(idMateriau)
);

CREATE TABLE accessoire(
   idAccessoire INT,
   libelle VARCHAR(250),
   PRIMARY KEY(idAccessoire)
);

CREATE TABLE nombreFrette(
   idNombreFrette INT,
   nombre VARCHAR(150),
   PRIMARY KEY(idNombreFrette)
);

CREATE TABLE micro(
   idMicro INT,
   libelle VARCHAR(150),
   PRIMARY KEY(idMicro)
);

CREATE TABLE construction(
   idConstruction INT,
   libelle VARCHAR(150),
   PRIMARY KEY(idConstruction)
);

CREATE TABLE controle(
   idControle INT,
   nombre VARCHAR(50),
   libelle VARCHAR(150),
   PRIMARY KEY(idControle)
);

CREATE TABLE typeInstrument(
   idTypeInstrument INT,
   type VARCHAR(50),
   PRIMARY KEY(idTypeInstrument)
);

CREATE TABLE magasin(
   idMagasin INT,
   adresse VARCHAR(50),
   codePostal INT,
   description TEXT,
   nom VARCHAR(250),
   PRIMARY KEY(idMagasin)
);

CREATE TABLE gamme(
   idgamme INT,
   libelle VARCHAR(250),
   PRIMARY KEY(idgamme)
);

CREATE TABLE typeAccessoire(
   idTypeAccessoire INT,
   libelle VARCHAR(250),
   PRIMARY KEY(idTypeAccessoire)
);

CREATE TABLE instrument(
   idInstrument INT,
   reference VARCHAR(50),
   nom VARCHAR(250),
   prix DECIMAL(15,2),
   notation INT,
   idgamme INT NOT NULL,
   idMicro INT NOT NULL,
   idTypeInstrument INT NOT NULL,
   idControle INT NOT NULL,
   idCouleurMateriel INT NOT NULL,
   idTuners INT NOT NULL,
   idNombreCorde INT NOT NULL,
   idTremolo INT NOT NULL,
   idManualite INT NOT NULL,
   idMateriau INT NOT NULL,
   idConstruction INT NOT NULL,
   idNombreFrette INT NOT NULL,
   PRIMARY KEY(idInstrument),
   FOREIGN KEY(idgamme) REFERENCES gamme(idgamme),
   FOREIGN KEY(idMicro) REFERENCES micro(idMicro),
   FOREIGN KEY(idTypeInstrument) REFERENCES typeInstrument(idTypeInstrument),
   FOREIGN KEY(idControle) REFERENCES controle(idControle),
   FOREIGN KEY(idCouleurMateriel) REFERENCES couleurMateriel(idCouleurMateriel),
   FOREIGN KEY(idTuners) REFERENCES tuner(idTuners),
   FOREIGN KEY(idNombreCorde) REFERENCES nombreCorde(idNombreCorde),
   FOREIGN KEY(idTremolo) REFERENCES tremolo(idTremolo),
   FOREIGN KEY(idManualite) REFERENCES manualite(idManualite),
   FOREIGN KEY(idMateriau) REFERENCES materiau(idMateriau),
   FOREIGN KEY(idConstruction) REFERENCES construction(idConstruction),
   FOREIGN KEY(idNombreFrette) REFERENCES nombreFrette(idNombreFrette)
);

CREATE TABLE lienAccessoireInstrument(
   idAccessoire INT,
   idInstrument INT,
   PRIMARY KEY(idAccessoire, idInstrument),
   FOREIGN KEY(idAccessoire) REFERENCES accessoire(idAccessoire),
   FOREIGN KEY(idInstrument) REFERENCES instrument(idInstrument)
);

CREATE TABLE lienCouleurInstrument(
   idCouleur INT,
   idInstrument INT,
   nomImageInstrument VARCHAR(50),
   PRIMARY KEY(idCouleur, idInstrument),
   FOREIGN KEY(idCouleur) REFERENCES couleur(idCouleur),
   FOREIGN KEY(idInstrument) REFERENCES instrument(idInstrument)
);


CREATE TABLE lienInstrumentMagasin(
   idInstrument INT,
   idMagasin INT,
   stock INT,
   PRIMARY KEY(idInstrument, idMagasin),
   FOREIGN KEY(idInstrument) REFERENCES instrument(idInstrument),
   FOREIGN KEY(idMagasin) REFERENCES magasin(idMagasin)
);

CREATE TABLE lienAccessoireTypeAccessoire(
   idAccessoire INT,
   idTypeAccessoire INT,
   PRIMARY KEY(idAccessoire, idTypeAccessoire),
   FOREIGN KEY(idAccessoire) REFERENCES accessoire(idAccessoire),
   FOREIGN KEY(idTypeAccessoire) REFERENCES typeAccessoire(idTypeAccessoire)
);
