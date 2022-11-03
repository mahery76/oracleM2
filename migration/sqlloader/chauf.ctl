LOAD DATA
INFILE 'chauf.csv'
REPLACE
INTO TABLE Chauffeur 
fields terminated by "," OPTIONALLY ENCLOSED BY '"'
(
    NumChauff,
    NomChauff,
    CIN,
    NumTel
)
