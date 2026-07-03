-- 1. On insère d'abord les Catégories parentes
INSERT INTO CATEGORIE (id_categorie, nom_categorie) VALUES 
(1, 'Électronique'),
(2, 'Mode & Vêtements'),
(3, 'Beauté & Cosmétiques');

-- 2. On insère les Produits (qui pointent vers les catégories ci-dessus)
INSERT INTO PRODUIT (id_produit, nom_produit, prix_unitaire, stock_disponible, id_categorie) VALUES 
(1, 'iPhone 13 Pro Max', 550000.00, 4, 1),
(2, 'Écouteurs Sans Fil', 15000.00, 25, 1),
(3, 'Pagne Africain Wax', 12000.00, 3, 2),
(4, 'Chaussures en Cuir', 35000.00, 8, 2),
(5, 'Crème Hydratante Karité', 8000.00, 2, 3);

-- 3. On insère les Clients
INSERT INTO CLIENT (id_client, nom, telephone, ville) VALUES 
(1, 'Jean Manga', '699001122', 'Douala'),
(2, 'Marie Ngo', '677334455', 'Yaoundé'),
(3, 'Alhadji Ibrahim', '655667788', 'Garoua');

-- 4. On insère les Commandes (qui pointent vers les clients)
INSERT INTO COMMANDE (id_commande, date_commande, statut_commande, id_client) VALUES 
(1, '2026-06-20 10:30:00', 'Livrée', 1),
(2, '2026-06-22 14:15:00', 'En cours', 2),
(3, '2026-06-22 18:00:00', 'En cours', 3);

-- 5. On insère les liaisons Produits/Commandes
INSERT INTO contenir (id_commande, id_produit, quantite) VALUES 
(1, 1, 1),
(1, 2, 2),
(2, 3, 2),
(2, 5, 1),
(3, 4, 1);

-- 6. On insère enfin les Paiements liés aux commandes
INSERT INTO PAIEMENT (id_paiement, reference_transaction, methode, montant, id_commande) VALUES 
(1, 'OM_MP260620.1030.A001', 'Orange Money', 580000.00, 1),
(2, 'MOMO_TX99882211', 'MTN MoMo', 32000.00, 2);
