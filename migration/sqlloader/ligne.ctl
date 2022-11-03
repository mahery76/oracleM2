LOAD DATA
INFILE 'ligne.csv'
REPLACE 
INTO TABLE ligne
fields terminated by "," OPTIONALLY ENCLOSED BY '"'
(
    NumLigne,
    NomLigne,
    Distance
)