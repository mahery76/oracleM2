DROP TABLE Vehicule;
DROP TABLE Ligne;
DROP TABLE Chauffeur;
CREATE TABLE Chauffeur (
    NumChauff int not NULL,
    NomChauff varchar (30) unique,
    CIN varchar (20),
    NumTel varchar (15),
    Constraint PK_Chauffeur primary key (NumChauff)
);
CREATE TABLE Ligne (
    NumLigne int not null,
    NomLigne varchar(60),
    Distance varchar(10),
    Constraint PK_ligne primary key (NumLigne)
);
CREATE TABLE Vehicule (
    NumVehicule int not null,
    NumChauffeur int not null,
    Type_voiture varchar (20),
    Couleur varchar (20),
    Puissance varchar(10),
    Immatriculation varchar (10) unique,
    Ligne int not null,
    Constraint Ck_puissance CHECK (Puissance >= 0),
    Constraint Pk_vehicule primary key (NumVehicule),
    Constraint Fk_chauffeur Foreign key (NumChauffeur) references Chauffeur (NumChauff),
    Constraint FK_ligne foreign key (Ligne) references Ligne (NumLigne)
);

--  select tablespace_name, table_name from user_tables;
