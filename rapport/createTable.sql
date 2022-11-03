CREATE TABLE Magasin (NumMag number(5,3),
NomMag varchar (30) unique,
Constraint PK_Magasin primary key (NumMag));


CREATE TABLE Produit
(Numprod number(6) not null,
Desprod varchar (15) unique,
Couleur char,
Poids number (7,3),
Prix number(10,3),
CodMag number(5,3),
Constraint Ck1_Produit CHECK (Poids>=0),
Constraint PK_Produit primary key (NumProd),
Constraint FK_Produit Foreign Key (CodMag) references Magasin (NumMag));
