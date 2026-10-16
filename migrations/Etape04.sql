-- Piege: La cle etrangere n'est pas not null parce que la commande peut ne pas avoir 
-- de valeur pour la colone idClient

CREATE TABLE Client(
    id INT GENERATED  ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(50)
);

ALTER TABLE Commande ADD COLUMN idClient INT;

INSERT INTO Client(nom) VALUES ('Paul');

INSERT INTO Commande (nom, idClient) VALUES ('CMD002', 1);

INSERT INTO CommandeDetail(idPlat, quantite, idCommande) VALUES (1,2,2);
INSERT INTO CommandeDetail(idPlat, quantite, idCommande) VALUES (2,1,2);
INSERT INTO CommandeDetail(idPlat, quantite, idCommande) VALUES (3,3,2);