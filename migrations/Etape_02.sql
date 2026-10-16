--Piege: si on avait juste ajoute une colone categorie
-- le probleme ne fera que s'ajouter car si une categorie devait
-- etre mis a jour, alors il faudrait modifier pour chaque les plats
-- cense avoir cette categorie, ce qui est difficile a maintenir sur le 
--long terme et peut aussi provoquer des erreurs de saisie.

CREATE TABLE Categories(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100)
);

INSERT INTO Categories(nom) VALUES('Plat malagasy');
INSERT INTO Categories(nom) VALUES('Soupe');
INSERT INTO Categories(nom) VALUES('Plat chinois');
INSERT INTO Categories(nom) VALUES('Dessert et goûter');
INSERT INTO Categories(nom) VALUES('Boisson');

UPDATE Plats SET idCategorie = 1 WHERE id = 1;
UPDATE Plats SET idCategorie = 1 WHERE id = 2;
UPDATE Plats SET idCategorie = 1 WHERE id = 3;
UPDATE Plats SET idCategorie = 3 WHERE id = 4;
UPDATE Plats SET idCategorie = 2 WHERE id = 5;
UPDATE Plats SET idCategorie = 4 WHERE id = 6;
UPDATE Plats SET idCategorie = 5 WHERE id = 7;

ALTER TABLE Plats ALTER COLUMN idCategorie SET NOT NULL;
