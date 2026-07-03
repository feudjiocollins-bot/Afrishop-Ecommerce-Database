CREATE TABLE CLIENT(
   id_client INT,
   nom VARCHAR(50) NOT NULL,
   telephone VARCHAR(50) NOT NULL,
   ville VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_client)
);

CREATE TABLE CATEGORIE(
   id_categorie INT,
   nom_categorie VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_categorie)
);

CREATE TABLE COMMANDE(
   id_commande INT,
   date_commande DATETIME NOT NULL,
   statut_commande VARCHAR(50) NOT NULL,
   id_client INT NOT NULL,
   PRIMARY KEY(id_commande),
   FOREIGN KEY(id_client) REFERENCES CLIENT(id_client)
);

CREATE TABLE PAIEMENT(
   id_paiement INT,
   reference_transaction VARCHAR(50) NOT NULL,
   methode VARCHAR(50) NOT NULL,
   montant DECIMAL(15,2) NOT NULL,
   id_commande INT NOT NULL,
   PRIMARY KEY(id_paiement),
   UNIQUE(id_commande),
   FOREIGN KEY(id_commande) REFERENCES COMMANDE(id_commande)
);

CREATE TABLE PRODUIT(
   id_produit INT,
   nom_produit VARCHAR(50) NOT NULL,
   prix_unitaire DECIMAL(15,2) NOT NULL,
   stock_disponible INT NOT NULL,
   id_categorie INT NOT NULL,
   PRIMARY KEY(id_produit),
   FOREIGN KEY(id_categorie) REFERENCES CATEGORIE(id_categorie)
);

CREATE TABLE contenir(
   id_commande INT,
   id_produit INT,
   quantite INT NOT NULL,
   PRIMARY KEY(id_commande, id_produit),
   FOREIGN KEY(id_commande) REFERENCES COMMANDE(id_commande),
   FOREIGN KEY(id_produit) REFERENCES PRODUIT(id_produit)
);
