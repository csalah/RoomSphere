SET search_path = "projet";


CREATE OR REPLACE VIEW chambres_disponibles_par_region AS
SELECT H.hotel_adresse AS region, 
       H.hotel_nom,
       COUNT(C.chambre_num) AS nombre_chambres_disponibles
FROM Hotel H
INNER JOIN Chambre C ON H.hotel_id = C.hotel_id
WHERE C.disponible = TRUE
GROUP BY H.hotel_adresse, H.hotel_nom;




CREATE OR REPLACE VIEW capacite_par_chambre_hotel AS
SELECT C.chambre_num, 
       C.capacite, 
       H.hotel_nom
FROM Chambre C
INNER JOIN Hotel H ON C.hotel_id = H.hotel_id;






