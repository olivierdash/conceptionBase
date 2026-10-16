# Schemas

## Plats

                                  Table "public.plats"
   Column    |          Type          | Collation | Nullable |           Default            
-------------|------------------------|-----------|----------|------------------------------
 id          | integer                |           | not null | generated always as identity
 nom         | character varying(100) |           | not null | 
 prix        | numeric                |           |          | 
 idcategorie | integer                |           | not null | 

## Categories

                              Table "public.categories"
 Column |          Type          | Collation | Nullable |           Default            
--------|------------------------|-----------|----------|------------------------------
 id     | integer                |           | not null | generated always as identity
 nom    | character varying(100) |           |          | 

## Commandes && CommandeDetail

                                    Table "public.commande"
   Column    |           Type           | Collation | Nullable |           Default            
--------------|--------------------------|-----------|----------|------------------------------
 id           | integer                  |           | not null | generated always as identity
 nom          | character varying(50)    |           |          | 
 datecommande | timestamp with time zone |           |          | now()

                       Table "public.commandedetail"
   Column   |  Type   | Collation | Nullable |           Default            
------------|---------|-----------|----------|------------------------------
 id         | integer |           | not null | generated always as identity
 idplat     | integer |           | not null | 
 quantite   | integer |           |          | 
 idcommande | integer |           | not null | 
