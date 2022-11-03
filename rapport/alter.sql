ALTER TABLE Produit add (exp_date date );
ALTER TABLE Produit drop constraint pk_produit;
ALTER TABLE Produit MODIFY (NumProd number(6) unique);
ALTER TABLE Produit add (Qte_stk number(7,3), Qte_seuil number(7,3));

ALTER TABLE Produit add constraint pt_unique (CodMag);


ADISSON BRIANA
SUZIE RAY