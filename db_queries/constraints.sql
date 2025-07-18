
ALTER TABLE Client
ADD CONSTRAINT CHK_Client_NAS CHECK (client_NAS >= 100000000 AND client_NAS <= 999999999);

ALTER TABLE Client 
ADD CONSTRAINT Client_NAS_Unique UNIQUE (client_NAS); 

ALTER TABLE Employee
ADD CONSTRAINT CHK_Employe_NAS CHECK (employe_NAS >= 100000000 AND employe_NAS <= 999999999);

ALTER TABLE Employee 
ADD CONSTRAINT Employee_NAS_Unique UNIQUE (employe_NAS); 




ALTER TABLE Client
ADD CONSTRAINT CHK_Age CHECK (client_age >= 18);

ALTER TABLE Reservation 
ADD CONSTRAINT CHK_Reservation_Date CHECK (Date_Depart > Date_Arrivee); 

ALTER TABLE Location 
ADD CONSTRAINT CHK_Location_Date CHECK (Date_Depart > Date_Arrivee); 

ALTER TABLE Paiement 
ADD CONSTRAINT CHK_Valid_Methode CHECK (methode IN ('Mastercard', 'Visa')); 

ALTER TABLE Reservation 
ADD CONSTRAINT CHK_Reservation_Unique UNIQUE (chambre_num, date_arrivee, date_depart);  



ALTER TABLE Paiement
ADD CONSTRAINT CHK_Format_CVV CHECK (cvv ~ '^\d{4}-\d{4}-\d{4}-\d{4}$');

ALTER TABLE Hotel 
ADD CONSTRAINT CHK_Rating CHECK (nombre_etoile >= 1 AND nombre_etoile <= 5);




ALTER TABLE Client 
ADD CONSTRAINT CHK_Format_Tel_Client CHECK (client_num_tel SIMILAR TO '(\+?\d{1,3}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}'); 

ALTER TABLE Employee 
ADD CONSTRAINT CHK_Format_Tel_Employee CHECK (employe_num_tel SIMILAR TO '(\+?\d{1,3}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}'); 

ALTER TABLE Gestionnaire 
ADD CONSTRAINT CHK_Format_Tel_Gestionnaire CHECK (gestionnaire_num_tel SIMILAR TO '(\+?\d{1,3}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}'); 

ALTER TABLE Chaine_Hotel 
ADD CONSTRAINT CHK_Format_Tel_Chaine CHECK (chaine_num_tel SIMILAR TO '(\+?\d{1,3}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}'); 

ALTER TABLE Hotel 
ADD CONSTRAINT CHK_Format_Tel_Hotel CHECK (hotel_num_tel SIMILAR TO '(\+?\d{1,3}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}'); 



ALTER TABLE Reservation 
ADD CONSTRAINT CHK_Format_Date_Arr CHECK (to_char(date_arrivee, 'YYYY-MM-DD') ~ '^\d{4}-\d{2}-\d{2}$');

ALTER TABLE Reservation 
ADD CONSTRAINT CHK_Format_Date_Dep CHECK (to_char(date_depart, 'YYYY-MM-DD') ~ '^\d{4}-\d{2}-\d{2}$');

ALTER TABLE Location 
ADD CONSTRAINT CHK_Format_Date_Arr CHECK (to_char(date_arrivee, 'YYYY-MM-DD') ~ '^\d{4}-\d{2}-\d{2}$'); 

ALTER TABLE Location 
ADD CONSTRAINT CHK_Format_Date_Dep CHECK (to_char(date_depart, 'YYYY-MM-DD') ~ '^\d{4}-\d{2}-\d{2}$'); 



ALTER TABLE Gestionnaire 
ADD CONSTRAINT CHK_Format_Email_Gestionnaire CHECK (gestionnaire_email LIKE '%_@_%._%'); 

ALTER TABLE Chaine_Hotel
ADD CONSTRAINT CHK_Format_Email_Chaine CHECK (chaine_email LIKE '%_@_%._%'); 

ALTER TABLE Hotel 
ADD CONSTRAINT CHK_Format_Email_Hotel CHECK (hotel_email LIKE '%_@_%._%');

ALTER TABLE Client 
ADD CONSTRAINT CHK_Format_Email_client CHECK (client_email LIKE '%_@_%._%'); 

ALTER TABLE Chambre DROP CONSTRAINT chambre_hotel_id_fkey;
ALTER TABLE Chambre ADD CONSTRAINT chambre_hotel_id_fkey FOREIGN KEY (chambre_hotel_id) REFERENCES Hotel(hotel_id);


