-- Piege: je met la quantite dans commandeDetail car elle varie a chaque plats

CREATE TABLE Commande(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(50),
    dateCommande TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE CommandeDetail(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    idPlat INT NOT NULL,
    quantite INT CHECK (quantite > 0),
    idCommande INT NOT NULL
);

INSERT INTO Commande (nom) VALUES ('CMD001');

INSERT INTO CommandeDetail(idPlat, quantite, idCommande) VALUES (1,2,1);
INSERT INTO CommandeDetail(idPlat, quantite, idCommande) VALUES (2,1,1);
INSERT INTO CommandeDetail(idPlat, quantite, idCommande) VALUES (3,3,1);