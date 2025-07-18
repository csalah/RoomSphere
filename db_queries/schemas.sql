
CREATE TABLE Role( 
    description VARCHAR(200), 
    role_id INTEGER,
    role_nom VARCHAR(25), 
    salaire INTEGER, 
    PRIMARY KEY (role_id)
); 

CREATE TABLE Chaine_Hotel( 
    chaine_id INTEGER,
    chaine_nom VARCHAR(150), 
    nombre_hotel INTEGER, 
    chaine_email VARCHAR(100), 
    chaine_num_tel VARCHAR(25),
    chaine_adresse VARCHAR(200), 
    PRIMARY KEY (chaine_id)
); 

CREATE TABLE Hotel( 
    hotel_id INTEGER,
    hotel_chaine INTEGER,
    hotel_nom VARCHAR(150),
    description VARCHAR(200), 
    nombre_etoile INTEGER, 
    category VARCHAR(100), 
    hotel_adresse VARCHAR(200), 
    hotel_num_tel VARCHAR(25),
    hotel_email VARCHAR(100), 
    nombre_chambre INTEGER,  
    PRIMARY KEY (hotel_id), 
    FOREIGN KEY (hotel_chaine) REFERENCES Chaine_Hotel(chaine_id)
); 

CREATE TABLE Gestionnaire( 
    gestionnaire_id INTEGER,
    prenom VARCHAR(80), 
    nom VARCHAR(80), 
    gestionnaire_adresse VARCHAR(200), 
    gestionnaire_hotel VARCHAR(150), 
    gestionnaire_email VARCHAR(100), 
    gestionnaire_num_tel VARCHAR(25), 
    PRIMARY KEY (gestionnaire_id)
); 

CREATE TABLE Employee( 
    employe_NAS INTEGER,
    prenom VARCHAR(80), 
    nom VARCHAR(80),
    nom_hotel VARCHAR(150), 
    employe_adresse VARCHAR(200), 
    employe_num_tel VARCHAR(25), 
    role_id INTEGER,
    PRIMARY KEY (employe_NAS), 
    FOREIGN KEY (role_id) REFERENCES Role(role_id)
); 

CREATE TABLE Client( 
    client_NAS INTEGER,
    prenom VARCHAR(80), 
    nom VARCHAR(80), 
    client_adresse VARCHAR(200), 
    client_num_tel VARCHAR(25), 
    client_email VARCHAR(100),
    client_age INTEGER, 
    date_enregistrement DATE, 
    PRIMARY KEY (client_NAS)
); 

CREATE TABLE Chambre( 
    chambre_num INTEGER,
    hotel_nom VARCHAR(150),
    disponible BOOLEAN, 
    commodites VARCHAR(250), 
    hotel_id INTEGER,
    prix DECIMAL(10,2), 
    capacite INTEGER, 
    vue VARCHAR(200), 
    extensible BOOLEAN, 
    superficie_m2 VARCHAR(100), 
    problemes BOOLEAN, 
    description VARCHAR(255), 
    PRIMARY KEY (chambre_num), 
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
); 

CREATE TABLE Reservation( 
    reservation_id INTEGER,
    client_NAS INTEGER,
    hotel_id INTEGER,
    chambre_num INTEGER,
    date_reservation DATE, 
    date_arrivee DATE, 
    date_depart DATE, 
    status VARCHAR(80), 
    PRIMARY KEY (reservation_id), 
    FOREIGN KEY (chambre_num) REFERENCES Chambre(chambre_num), 
    FOREIGN KEY (client_NAS) REFERENCES Client(client_NAS),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)

); 

CREATE TABLE Location( 
    location_id INTEGER,
    client_NAS INTEGER,
    hotel_id INTEGER,
    status VARCHAR(80), 
    chambre_num INTEGER,
    employe_NAS INTEGER,    
    date_location DATE, 
    date_arrivee DATE, 
    date_depart DATE, 
    PRIMARY KEY (location_id), 
    FOREIGN KEY (chambre_num) REFERENCES Chambre(chambre_num), 
    FOREIGN KEY (client_NAS) REFERENCES Client(client_NAS),
    FOREIGN KEY (employe_NAS) REFERENCES Employee(employe_NAS),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)

); 

CREATE TABLE Paiement( 
    paiement_id INTEGER,
    location_id INTEGER,
    paiement_date DATE,
    methode VARCHAR(100), 
    montant DECIMAL(10,2), 
    cvv VARCHAR(20), 
    PRIMARY KEY (paiement_id), 
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
); 

CREATE TABLE Utilisateur(
    email VARCHAR(150),
    password VARCHAR(80),
    userType VARCHAR(25),
    status VARCHAR(25),
    PRIMARY KEY (email)
); 

ALTER TABLE Chambre RENAME COLUMN hotel_id TO chambre_hotel_id;
