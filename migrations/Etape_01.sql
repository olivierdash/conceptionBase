--Piege: Je choisis le NUMERIC (entier) pour le prix car il n'y a pas de centimes

CREATE TABLE Plats(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL UNIQUE,
    prix NUMERIC CHECK (prix > 0)
);

INSERT INTO Plats (nom, prix) VALUES('Romazava', 7000);
INSERT INTO Plats (nom, prix) VALUES('Ravitoto sy henakisoa', 8000);
INSERT INTO Plats (nom, prix) VALUES('Akoho sy voanio', 8500);
INSERT INTO Plats (nom, prix) VALUES('Mi sao', 600);
INSERT INTO Plats (nom, prix) VALUES('Soupe chinoise', 5000);
INSERT INTO Plats (nom, prix) VALUES('Mofo gasy (les 4)', 1000);
INSERT INTO Plats (nom, prix) VALUES('Ranonampango', 500);
