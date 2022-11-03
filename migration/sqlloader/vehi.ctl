LOAD DATA
INFILE 'vehi.csv'
REPLACE
INTO TABLE vehicule
fields terminated by "," OPTIONALLY ENCLOSED BY '"'
(
    NumVehicule,
    NumChauffeur,
    Type_voiture,
    Couleur,
    Puissance,
    Immatriculation,
    Ligne
)