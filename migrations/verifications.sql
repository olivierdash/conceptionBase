-- CREATE DATABASE gargotteDeRado;
-- ALTER DATABASE gargotteDeRado OWNER TO postgres;


-- Etape 1
SELECT nom, prix FROM Plats ORDER BY prix DESC;

-- Etape 2
SELECT c.nom as NomCategorie, count(p.nom) as NombrePlat FROM Plats as p JOIN Categories as c ON 
p.idCategorie = c.id GROUP BY c.nom; 

-- Etape 3

SELECT cmd.nom, SUM(p.prix * cmdt.quantite) AS montant
FROM Commande AS cmd JOIN CommandeDetail AS cmdt
ON cmd.id = cmdt.idCommande JOIN Plats AS p
ON cmdt.idPlat = p.id GROUP BY cmd.nom;