CREATE INDEX idx_location_arrival_departure ON Location(date_arrivee, date_depart) WHERE status = 'confirmed';

CREATE INDEX idx_reservation_arrival_departure ON Reservation(date_arrivee, date_depart) WHERE status = 'confirmed';

CREATE INDEX idx_client_nas ON Client(client_NAS);

CREATE INDEX idx_chambre_hotel_id ON Chambre(hotel_id);

CREATE INDEX idx_payment_method ON Paiement(methode);

CREATE INDEX idx_client_email ON Client(client_email);

CREATE INDEX idx_employe_tel ON Employee(employe_num_tel);

CREATE INDEX idx_hotel_adresse ON Hotel(hotel_adresse);

CREATE INDEX idx_hotel_rating ON Hotel(nombre_etoile);

CREATE INDEX idx_chambre_disponible ON Chambre(disponible);

CREATE INDEX idx_reservation_status ON Reservation(status);

CREATE INDEX idx_location_status ON Location(status);

CREATE INDEX idx_client_age ON Client(client_age);

