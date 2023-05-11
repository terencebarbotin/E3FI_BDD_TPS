-- TP1 - Exercice 1.2

-- Requêtes pour créer les tables, avec leurs clés primaires. 
-- Modèle : CREATE TABLE <table> (<column1> <type_column1>, <column2> <type_column2>, ..., PRIMARY KEY (<primary_key>) );

-- On ajoute des conditions pour que : 
-- Les noms des Segments, des Salles, et des Postes sont à nuls. 
-- Le domaine de valeurs de la colonne "ad" dans la table Poste s'étend de 0 à 255
-- La colonne "prix" dans la table Logiciel est supérieure ou égale à 0
-- La colonne "dateIns" dans la table Installer estt égale à la date du jour par défaut


CREATE TABLE Segment (
    indIP VARCHAR(11),
    nomSegment VARCHAR(20) NOT NULL,
    etage TINYINT(1),
    PRIMARY KEY (indIP)
);

CREATE TABLE Salle (
    nSalle VARCHAR(7),
    nomSalle VARCHAR(20) NOT NULL,
    nbPoste TINYINT(2),
    indIP VARCHAR(11),
    PRIMARY KEY (nSalle)
);

CREATE TABLE Poste (
    nPoste VARCHAR(7),
    nomPoste VARCHAR(20) NOT NULL,
    indIP VARCHAR(11),
    ad VARCHAR(3) CHECK (ad >= 0 AND ad <= 255),
    typePoste VARCHAR(9),
    nSalle VARCHAR(7),
    PRIMARY KEY (nPoste)
);

CREATE TABLE Logiciel (
    nLog VARCHAR(5),
    nomLog VARCHAR(20) NOT NULL,
    dateAch dateTIME,
    version VARCHAR(7),
    typeLog VARCHAR(9),
    prix DECIMAL(6, 2) CHECK (prix >= 0),
    PRIMARY KEY (nLog)
);

CREATE TABLE Installer (
    nPoste VARCHAR(7),
    nLog VARCHAR(5),
    numIns INTEGER(5),
    dateIns TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    delai SMALLINT,
    PRIMARY KEY (numIns)
);

CREATE TABLE Types (
    typeLP VARCHAR(9),
    nomType VARCHAR(20) NOT NULL,
    PRIMARY KEY (typeLP)
);
