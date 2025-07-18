INSERT INTO Chaine_Hotel (chaine_id, chaine_nom, nombre_hotel, chaine_email, chaine_num_tel, chaine_adresse) VALUES
(1, 'Northern Star Hotels', 5, 'contact@northernstar.com', '416-555-1234', '250 Bay St, Toronto, ON, Canada'),
(2, 'Evergreen Lodgings', 5, 'contact@evergreenlodgings.com', '604-555-5678', '800 Burrard St, Vancouver, BC, Canada'),
(3, 'Summit Stays', 5, 'contact@summitstays.com', '303-555-7890', '500 17th St, Denver, CO, USA'),
(4, 'Maplewood Hospitality', 5, 'contact@maplewoodhotels.com', '514-555-2468', '1000 René-Lévesque Blvd, Montreal, QC, Canada'),
(5, 'Atlantic Breeze Resorts', 5, 'contact@atlanticbreeze.com', '902-555-1357', '300 Waterfront Dr, Halifax, NS, Canada'),
(6, 'Pinecrest Inns', 5, 'contact@pinecrestinns.com', '206-555-9012', '450 Pine St, Seattle, WA, USA'),
(7, 'Aurora Grand Hotels', 5, 'contact@auroragrand.com', '312-555-6789', '200 Michigan Ave, Chicago, IL, USA');

INSERT INTO Hotel (hotel_id, hotel_chaine, hotel_nom, description, nombre_etoile, category, hotel_adresse, hotel_num_tel, hotel_email, nombre_chambre)
VALUES
(1, 1, 'Northern Star Toronto', 'Luxurious stay in downtown Toronto', 5, 'Luxury', '250 Bay St, Toronto, ON, Canada', '416-555-1234', 'contact@northernstar.com', 200),
(2, 1, 'Northern Star Ottawa', 'A serene hotel in the heart of Ottawa', 5, 'Luxury', '100 Rideau St, Ottawa, ON, Canada', '416-555-1240', 'contact@northernstar.com', 180),
(3, 1, 'Northern Star Montreal', 'Elegant accommodations in Montreal', 5, 'Luxury', '500 Sherbrooke St, Montreal, QC, Canada', '416-555-1250', 'contact@northernstar.com', 220),
(4, 1, 'Northern Star Vancouver', 'Opulent stays with stunning views of Vancouver', 5, 'Luxury', '200 Georgia St, Vancouver, BC, Canada', '416-555-1260', 'contact@northernstar.com', 210),
(5, 1, 'Northern Star Calgary', 'Premium stay in Calgary downtown', 5, 'Luxury', '300 17th Ave, Calgary, AB, Canada', '416-555-1270', 'contact@northernstar.com', 190);

INSERT INTO Hotel (hotel_id, hotel_chaine, hotel_nom, description, nombre_etoile, category, hotel_adresse, hotel_num_tel, hotel_email, nombre_chambre)
VALUES
(6, 2, 'Evergreen Vancouver', 'Green and eco-friendly hotel in Vancouver', 5, 'Eco', '800 Burrard St, Vancouver, BC, Canada', '604-555-5678', 'contact@evergreenlodgings.com', 150),
(7, 2, 'Evergreen Victoria', 'Relaxing stay amidst nature in Victoria', 5, 'Eco', '500 Wharf St, Victoria, BC, Canada', '604-555-5680', 'contact@evergreenlodgings.com', 120),
(8, 2, 'Evergreen Whistler', 'Luxurious mountain retreat in Whistler', 5, 'Eco', '200 Village St, Whistler, BC, Canada', '604-555-5690', 'contact@evergreenlodgings.com', 180),
(9, 2, 'Evergreen Kelowna', 'Charming vineyard views in Kelowna', 5, 'Eco', '300 Lakeshore Rd, Kelowna, BC, Canada', '604-555-5700', 'contact@evergreenlodgings.com', 160),
(10, 2, 'Evergreen Kamloops', 'Cozy stay with great views of the mountains', 5, 'Eco', '150 Columbia St, Kamloops, BC, Canada', '604-555-5710', 'contact@evergreenlodgings.com', 140);

INSERT INTO Hotel (hotel_id, hotel_chaine, hotel_nom, description, nombre_etoile, category, hotel_adresse, hotel_num_tel, hotel_email, nombre_chambre)
VALUES
(11, 3, 'Summit Denver', 'A high-end hotel with amazing views of the mountains', 5, 'Luxury', '500 17th St, Denver, CO, USA', '303-555-7890', 'contact@summitstays.com', 200),
(12, 3, 'Summit Boulder', 'Stay amidst the scenic beauty of Boulder', 5, 'Luxury', '400 Pearl St, Boulder, CO, USA', '303-555-7900', 'contact@summitstays.com', 180),
(13, 3, 'Summit Colorado Springs', 'Elegant hotel with stunning mountain views', 5, 'Luxury', '300 Tejon St, Colorado Springs, CO, USA', '303-555-7910', 'contact@summitstays.com', 190),
(14, 3, 'Summit Aspen', 'Opulent hotel in the heart of Aspen', 5, 'Luxury', '150 Aspen St, Aspen, CO, USA', '303-555-7920', 'contact@summitstays.com', 160),
(15, 3, 'Summit Vail', 'Luxurious mountain resort in Vail', 5, 'Luxury', '500 Bridge St, Vail, CO, USA', '303-555-7930', 'contact@summitstays.com', 210);

INSERT INTO Hotel (hotel_id, hotel_chaine, hotel_nom, description, nombre_etoile, category, hotel_adresse, hotel_num_tel, hotel_email, nombre_chambre)
VALUES
(16, 4, 'Maplewood Montreal', 'Modern luxury in the heart of Montreal', 5, 'Luxury', '1000 René-Lévesque Blvd, Montreal, QC, Canada', '514-555-2468', 'contact@maplewoodhotels.com', 180),
(17, 4, 'Maplewood Quebec City', 'Charming stays in historic Quebec City', 5, 'Luxury', '500 St-Jean St, Quebec City, QC, Canada', '514-555-2470', 'contact@maplewoodhotels.com', 160),
(18, 4, 'Maplewood Ottawa', 'Elegant and cozy hotel in Ottawa', 5, 'Luxury', '200 Rideau St, Ottawa, ON, Canada', '514-555-2480', 'contact@maplewoodhotels.com', 150),
(19, 4, 'Maplewood Toronto', 'Luxury hotel with city views in Toronto', 5, 'Luxury', '350 Yonge St, Toronto, ON, Canada', '514-555-2490', 'contact@maplewoodhotels.com', 200),
(20, 4, 'Maplewood Vancouver', 'Sophisticated accommodations with ocean views', 5, 'Luxury', '150 Granville St, Vancouver, BC, Canada', '514-555-2500', 'contact@maplewoodhotels.com', 190);

INSERT INTO Hotel (hotel_id, hotel_chaine, hotel_nom, description, nombre_etoile, category, hotel_adresse, hotel_num_tel, hotel_email, nombre_chambre)
VALUES
(21, 5, 'Atlantic Breeze Halifax', 'Coastal retreat in Halifax', 5, 'Resort', '300 Waterfront Dr, Halifax, NS, Canada', '902-555-1357', 'contact@atlanticbreeze.com', 220),
(22, 5, 'Atlantic Breeze Charlottetown', 'Charming resort with island views', 5, 'Resort', '200 Queen St, Charlottetown, PE, Canada', '902-555-1360', 'contact@atlanticbreeze.com', 180),
(23, 5, 'Atlantic Breeze Sydney', 'Relaxing resort on the coast of Nova Scotia', 5, 'Resort', '500 Esplanade St, Sydney, NS, Canada', '902-555-1370', 'contact@atlanticbreeze.com', 200),
(24, 5, 'Atlantic Breeze Moncton', 'Coastal luxury in Moncton', 5, 'Resort', '150 St-George St, Moncton, NB, Canada', '902-555-1380', 'contact@atlanticbreeze.com', 170),
(25, 5, 'Atlantic Breeze St. John', 'Exquisite resort on the Bay of Fundy', 5, 'Resort', '300 Water St, Saint John, NB, Canada', '902-555-1390', 'contact@atlanticbreeze.com', 160);

INSERT INTO Hotel (hotel_id, hotel_chaine, hotel_nom, description, nombre_etoile, category, hotel_adresse, hotel_num_tel, hotel_email, nombre_chambre)
VALUES
(26, 6, 'Pinecrest Seattle', 'Modern stay with views of the Seattle skyline', 5, 'Luxury', '450 Pine St, Seattle, WA, USA', '206-555-9012', 'contact@pinecrestinns.com', 200),
(27, 6, 'Pinecrest Portland', 'Charming inn with scenic views of Portland', 5, 'Luxury', '300 SW 6th Ave, Portland, OR, USA', '206-555-9020', 'contact@pinecrestinns.com', 180),
(28, 6, 'Pinecrest San Francisco', 'Sleek design and comfort in San Francisco', 5, 'Luxury', '200 Market St, San Francisco, CA, USA', '206-555-9030', 'contact@pinecrestinns.com', 210),
(29, 6, 'Pinecrest Los Angeles', 'Trendy luxury hotel in Los Angeles', 5, 'Luxury', '500 Hollywood Blvd, Los Angeles, CA, USA', '206-555-9040', 'contact@pinecrestinns.com', 190),
(30, 6, 'Pinecrest Denver', 'Mountain retreat with chic amenities', 5, 'Luxury', '350 Broadway St, Denver, CO, USA', '206-555-9050', 'contact@pinecrestinns.com', 180);

INSERT INTO Hotel (hotel_id, hotel_chaine, hotel_nom, description, nombre_etoile, category, hotel_adresse, hotel_num_tel, hotel_email, nombre_chambre)
VALUES
(31, 7, 'Aurora Grand Chicago', 'Luxury stay with stunning views of Lake Michigan', 5, 'Luxury', '200 Michigan Ave, Chicago, IL, USA', '312-555-6789', 'contact@auroragrand.com', 220),
(32, 7, 'Aurora Grand New York', 'Sophisticated hotel in the heart of Manhattan', 5, 'Luxury', '150 W 42nd St, New York, NY, USA', '312-555-6790', 'contact@auroragrand.com', 250),
(33, 7, 'Aurora Grand Los Angeles', 'Elegant accommodations with Hollywood views', 5, 'Luxury', '500 Sunset Blvd, Los Angeles, CA, USA', '312-555-6800', 'contact@auroragrand.com', 230),
(34, 7, 'Aurora Grand Miami', 'Opulent hotel with ocean views', 5, 'Luxury', '100 Ocean Dr, Miami, FL, USA', '312-555-6810', 'contact@auroragrand.com', 210),
(35, 7, 'Aurora Grand San Francisco', 'Stylish and luxurious hotel in San Francisco', 5, 'Luxury', '200 Market St, San Francisco, CA, USA', '312-555-6820', 'contact@auroragrand.com', 240);

UPDATE Hotel
SET nombre_chambre = 3;

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(1, 'Northern Star Toronto', TRUE, 'WiFi, AC, TV', 1, 200.00, 2, 'City View', FALSE, '25m²', FALSE, 'Luxurious room with city view'),
(2, 'Northern Star Toronto', TRUE, 'WiFi, AC, TV', 1, 220.00, 2, 'City View', FALSE, '25m²', FALSE, 'Elegant room with all amenities'),
(3, 'Northern Star Toronto', TRUE, 'WiFi, AC, TV', 1, 250.00, 2, 'City View', FALSE, '30m²', FALSE, 'Spacious and luxurious room');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(4, 'Northern Star Ottawa', TRUE, 'WiFi, AC, TV', 2, 180.00, 2, 'Park View', FALSE, '22m²', FALSE, 'Comfortable room with park view'),
(5, 'Northern Star Ottawa', TRUE, 'WiFi, AC, TV', 2, 200.00, 2, 'Park View', FALSE, '25m²', FALSE, 'Cozy and peaceful room'),
(6, 'Northern Star Ottawa', TRUE, 'WiFi, AC, TV', 2, 220.00, 2, 'Park View', FALSE, '30m²', FALSE, 'Modern and relaxing room');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(7, 'Northern Star Montreal', TRUE, 'WiFi, AC, TV', 3, 190.00, 2, 'City View', FALSE, '22m²', FALSE, 'Stylish room with city view'),
(8, 'Northern Star Montreal', TRUE, 'WiFi, AC, TV', 3, 210.00, 2, 'City View', FALSE, '25m²', FALSE, 'Elegant room in a prime location'),
(9, 'Northern Star Montreal', TRUE, 'WiFi, AC, TV', 3, 240.00, 2, 'City View', FALSE, '30m²', FALSE, 'Spacious and modern room');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(10, 'Northern Star Vancouver', TRUE, 'WiFi, AC, TV', 4, 210.00, 2, 'Ocean View', FALSE, '23m²', FALSE, 'Comfortable room with ocean view'),
(11, 'Northern Star Vancouver', TRUE, 'WiFi, AC, TV', 4, 230.00, 2, 'Ocean View', FALSE, '25m²', FALSE, 'Relaxing room with beautiful ocean view'),
(12, 'Northern Star Vancouver', TRUE, 'WiFi, AC, TV', 4, 250.00, 2, 'Ocean View', FALSE, '30m²', FALSE, 'Luxurious room with spacious layout');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(13, 'Northern Star Calgary', TRUE, 'WiFi, AC, TV', 5, 180.00, 2, 'Mountain View', FALSE, '20m²', FALSE, 'Cozy room with mountain view'),
(14, 'Northern Star Calgary', TRUE, 'WiFi, AC, TV', 5, 200.00, 2, 'Mountain View', FALSE, '25m²', FALSE, 'Relaxing room with mountain views'),
(15, 'Northern Star Calgary', TRUE, 'WiFi, AC, TV', 5, 220.00, 2, 'Mountain View', FALSE, '30m²', FALSE, 'Spacious room with large windows');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(16, 'Evergreen Vancouver', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 6, 180.00, 2, 'City View', FALSE, '25m²', FALSE, 'Eco-friendly room with city view'),
(17, 'Evergreen Vancouver', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 6, 200.00, 2, 'City View', FALSE, '27m²', FALSE, 'Sustainable and relaxing room'),
(18, 'Evergreen Vancouver', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 6, 220.00, 2, 'City View', FALSE, '30m²', FALSE, 'Spacious eco room with beautiful view');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(19, 'Evergreen Victoria', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 7, 170.00, 2, 'Garden View', FALSE, '22m²', FALSE, 'Eco-conscious room with garden view'),
(20, 'Evergreen Victoria', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 7, 190.00, 2, 'Garden View', FALSE, '25m²', FALSE, 'Relaxing room with natural surroundings'),
(21, 'Evergreen Victoria', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 7, 210.00, 2, 'Garden View', FALSE, '28m²', FALSE, 'Sustainable room with tranquil garden view');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(22, 'Evergreen Whistler', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 8, 200.00, 2, 'Mountain View', FALSE, '25m²', FALSE, 'Luxurious eco room with mountain view'),
(23, 'Evergreen Whistler', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 8, 220.00, 2, 'Mountain View', FALSE, '28m²', FALSE, 'Eco-friendly room with expansive views'),
(24, 'Evergreen Whistler', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 8, 240.00, 2, 'Mountain View', FALSE, '30m²', FALSE, 'Spacious mountain view room');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(25, 'Evergreen Kelowna', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 9, 180.00, 2, 'Vineyard View', FALSE, '25m²', FALSE, 'Charming room with vineyard view'),
(26, 'Evergreen Kelowna', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 9, 200.00, 2, 'Vineyard View', FALSE, '27m²', FALSE, 'Eco-conscious room with a lovely view'),
(27, 'Evergreen Kelowna', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 9, 220.00, 2, 'Vineyard View', FALSE, '30m²', FALSE, 'Spacious room with vineyard vistas');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(28, 'Evergreen Kamloops', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 10, 160.00, 2, 'Mountain View', FALSE, '22m²', FALSE, 'Cozy eco room with mountain views'),
(29, 'Evergreen Kamloops', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 10, 180.00, 2, 'Mountain View', FALSE, '24m²', FALSE, 'Tranquil room with sustainable features'),
(30, 'Evergreen Kamloops', TRUE, 'WiFi, AC, TV, Eco-friendly amenities', 10, 200.00, 2, 'Mountain View', FALSE, '26m²', FALSE, 'Spacious eco-friendly room');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(31, 'Summit Denver', TRUE, 'WiFi, AC, TV, Luxury amenities', 11, 250.00, 2, 'Mountain View', FALSE, '30m²', FALSE, 'Luxury room with mountain views'),
(32, 'Summit Denver', TRUE, 'WiFi, AC, TV, Luxury amenities', 11, 270.00, 2, 'Mountain View', FALSE, '32m²', FALSE, 'Spacious room with panoramic mountain views'),
(33, 'Summit Denver', TRUE, 'WiFi, AC, TV, Luxury amenities', 11, 290.00, 2, 'Mountain View', FALSE, '35m²', FALSE, 'Elegant room with stunning mountain views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(34, 'Summit Boulder', TRUE, 'WiFi, AC, TV, Luxury amenities', 12, 230.00, 2, 'Scenic View', FALSE, '28m²', FALSE, 'Room with breathtaking views of Boulder'),
(35, 'Summit Boulder', TRUE, 'WiFi, AC, TV, Luxury amenities', 12, 250.00, 2, 'Scenic View', FALSE, '30m²', FALSE, 'Cozy room with scenic views of Boulder'),
(36, 'Summit Boulder', TRUE, 'WiFi, AC, TV, Luxury amenities', 12, 270.00, 2, 'Scenic View', FALSE, '32m²', FALSE, 'Luxury room with amazing Boulder views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(37, 'Summit Colorado Springs', TRUE, 'WiFi, AC, TV, Luxury amenities', 13, 240.00, 2, 'Mountain View', FALSE, '30m²', FALSE, 'Elegant room with views of the mountains'),
(38, 'Summit Colorado Springs', TRUE, 'WiFi, AC, TV, Luxury amenities', 13, 260.00, 2, 'Mountain View', FALSE, '32m²', FALSE, 'Luxury suite with stunning mountain vistas'),
(39, 'Summit Colorado Springs', TRUE, 'WiFi, AC, TV, Luxury amenities', 13, 280.00, 2, 'Mountain View', FALSE, '35m²', FALSE, 'Cozy and spacious room with spectacular mountain views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(40, 'Summit Aspen', TRUE, 'WiFi, AC, TV, Luxury amenities', 14, 250.00, 2, 'Mountain View', FALSE, '28m²', FALSE, 'Luxury room with magnificent mountain views'),
(41, 'Summit Aspen', TRUE, 'WiFi, AC, TV, Luxury amenities', 14, 270.00, 2, 'Mountain View', FALSE, '30m²', FALSE, 'Cozy and elegant room with beautiful mountain views'),
(42, 'Summit Aspen', TRUE, 'WiFi, AC, TV, Luxury amenities', 14, 290.00, 2, 'Mountain View', FALSE, '32m²', FALSE, 'Opulent room with expansive mountain vistas');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(43, 'Summit Vail', TRUE, 'WiFi, AC, TV, Luxury amenities', 15, 260.00, 2, 'Mountain View', FALSE, '30m²', FALSE, 'Luxury room with picturesque mountain views'),
(44, 'Summit Vail', TRUE, 'WiFi, AC, TV, Luxury amenities', 15, 280.00, 2, 'Mountain View', FALSE, '32m²', FALSE, 'Spacious and cozy room with magnificent views'),
(45, 'Summit Vail', TRUE, 'WiFi, AC, TV, Luxury amenities', 15, 300.00, 2, 'Mountain View', FALSE, '35m²', FALSE, 'Spacious luxury suite with panoramic views of the mountains');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(46, 'Maplewood Montreal', TRUE, 'WiFi, AC, TV, Luxury amenities', 16, 240.00, 2, 'City View', FALSE, '28m²', FALSE, 'Modern room with great city view'),
(47, 'Maplewood Montreal', TRUE, 'WiFi, AC, TV, Luxury amenities', 16, 260.00, 2, 'City View', FALSE, '30m²', FALSE, 'Luxury room with beautiful views of Montreal'),
(48, 'Maplewood Montreal', TRUE, 'WiFi, AC, TV, Luxury amenities', 16, 280.00, 2, 'City View', FALSE, '32m²', FALSE, 'Spacious and elegant room with stunning city views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(49, 'Maplewood Quebec City', TRUE, 'WiFi, AC, TV, Luxury amenities', 17, 220.00, 2, 'Historic City View', FALSE, '25m²', FALSE, 'Room with historic city views'),
(50, 'Maplewood Quebec City', TRUE, 'WiFi, AC, TV, Luxury amenities', 17, 240.00, 2, 'Historic City View', FALSE, '28m²', FALSE, 'Elegant room with views of Quebec City'),
(51, 'Maplewood Quebec City', TRUE, 'WiFi, AC, TV, Luxury amenities', 17, 260.00, 2, 'Historic City View', FALSE, '30m²', FALSE, 'Luxury suite with historic city views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(52, 'Maplewood Ottawa', TRUE, 'WiFi, AC, TV, Luxury amenities', 18, 210.00, 2, 'City View', FALSE, '25m²', FALSE, 'Elegant city view room'),
(53, 'Maplewood Ottawa', TRUE, 'WiFi, AC, TV, Luxury amenities', 18, 230.00, 2, 'City View', FALSE, '28m²', FALSE, 'Cozy room with beautiful city views'),
(54, 'Maplewood Ottawa', TRUE, 'WiFi, AC, TV, Luxury amenities', 18, 250.00, 2, 'City View', FALSE, '30m²', FALSE, 'Spacious and luxurious room with city view');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(55, 'Maplewood Toronto', TRUE, 'WiFi, AC, TV, Luxury amenities', 19, 250.00, 2, 'City View', FALSE, '30m²', FALSE, 'Luxury room with amazing city view'),
(56, 'Maplewood Toronto', TRUE, 'WiFi, AC, TV, Luxury amenities', 19, 270.00, 2, 'City View', FALSE, '32m²', FALSE, 'Spacious city view room with luxury amenities'),
(57, 'Maplewood Toronto', TRUE, 'WiFi, AC, TV, Luxury amenities', 19, 290.00, 2, 'City View', FALSE, '35m²', FALSE, 'Elegant suite with exceptional city views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(58, 'Maplewood Vancouver', TRUE, 'WiFi, AC, TV, Luxury amenities', 20, 240.00, 2, 'Ocean View', FALSE, '28m²', FALSE, 'Ocean view room with luxury features'),
(59, 'Maplewood Vancouver', TRUE, 'WiFi, AC, TV, Luxury amenities', 20, 260.00, 2, 'Ocean View', FALSE, '30m²', FALSE, 'Spacious room with beautiful ocean views'),
(60, 'Maplewood Vancouver', TRUE, 'WiFi, AC, TV, Luxury amenities', 20, 280.00, 2, 'Ocean View', FALSE, '32m²', FALSE, 'Elegant room with magnificent ocean vistas');


INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(61, 'Atlantic Breeze Halifax', TRUE, 'WiFi, AC, TV, Resort amenities', 21, 220.00, 2, 'Ocean View', FALSE, '30m²', FALSE, 'Luxury room with ocean views'),
(62, 'Atlantic Breeze Halifax', TRUE, 'WiFi, AC, TV, Resort amenities', 21, 240.00, 2, 'Ocean View', FALSE, '32m²', FALSE, 'Spacious room with breathtaking ocean views'),
(63, 'Atlantic Breeze Halifax', TRUE, 'WiFi, AC, TV, Resort amenities', 21, 260.00, 2, 'Ocean View', FALSE, '35m²', FALSE, 'Elegant suite with panoramic ocean views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(64, 'Atlantic Breeze Charlottetown', TRUE, 'WiFi, AC, TV, Resort amenities', 22, 210.00, 2, 'Island View', FALSE, '28m²', FALSE, 'Room with scenic island views'),
(65, 'Atlantic Breeze Charlottetown', TRUE, 'WiFi, AC, TV, Resort amenities', 22, 230.00, 2, 'Island View', FALSE, '30m²', FALSE, 'Cozy room with island views'),
(66, 'Atlantic Breeze Charlottetown', TRUE, 'WiFi, AC, TV, Resort amenities', 22, 250.00, 2, 'Island View', FALSE, '32m²', FALSE, 'Luxury room with panoramic island views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(67, 'Atlantic Breeze Sydney', TRUE, 'WiFi, AC, TV, Resort amenities', 23, 220.00, 2, 'Coastal View', FALSE, '30m²', FALSE, 'Spacious room with coastal views'),
(68, 'Atlantic Breeze Sydney', TRUE, 'WiFi, AC, TV, Resort amenities', 23, 240.00, 2, 'Coastal View', FALSE, '32m²', FALSE, 'Elegant room with stunning coastal views'),
(69, 'Atlantic Breeze Sydney', TRUE, 'WiFi, AC, TV, Resort amenities', 23, 260.00, 2, 'Coastal View', FALSE, '35m²', FALSE, 'Luxury suite with expansive coastal views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(70, 'Atlantic Breeze Moncton', TRUE, 'WiFi, AC, TV, Resort amenities', 24, 200.00, 2, 'Coastal View', FALSE, '28m²', FALSE, 'Cozy room with coastal views'),
(71, 'Atlantic Breeze Moncton', TRUE, 'WiFi, AC, TV, Resort amenities', 24, 220.00, 2, 'Coastal View', FALSE, '30m²', FALSE, 'Spacious room with beautiful coastal views'),
(72, 'Atlantic Breeze Moncton', TRUE, 'WiFi, AC, TV, Resort amenities', 24, 240.00, 2, 'Coastal View', FALSE, '32m²', FALSE, 'Elegant room with expansive coastal views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(73, 'Atlantic Breeze St. John', TRUE, 'WiFi, AC, TV, Resort amenities', 25, 210.00, 2, 'Bay View', FALSE, '30m²', FALSE, 'Luxury room with stunning Bay of Fundy views'),
(74, 'Atlantic Breeze St. John', TRUE, 'WiFi, AC, TV, Resort amenities', 25, 230.00, 2, 'Bay View', FALSE, '32m²', FALSE, 'Spacious room with amazing Bay of Fundy views'),
(75, 'Atlantic Breeze St. John', TRUE, 'WiFi, AC, TV, Resort amenities', 25, 250.00, 2, 'Bay View', FALSE, '35m²', FALSE, 'Elegant suite with breathtaking Bay of Fundy views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(76, 'Pinecrest Seattle', TRUE, 'WiFi, AC, TV, Luxury amenities', 26, 230.00, 2, 'City View', FALSE, '28m²', FALSE, 'Modern room with views of the Seattle skyline'),
(77, 'Pinecrest Seattle', TRUE, 'WiFi, AC, TV, Luxury amenities', 26, 250.00, 2, 'City View', FALSE, '30m²', FALSE, 'Spacious room with beautiful city views'),
(78, 'Pinecrest Seattle', TRUE, 'WiFi, AC, TV, Luxury amenities', 26, 270.00, 2, 'City View', FALSE, '32m²', FALSE, 'Luxury suite with amazing city skyline views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(79, 'Pinecrest Portland', TRUE, 'WiFi, AC, TV, Luxury amenities', 27, 220.00, 2, 'City View', FALSE, '28m²', FALSE, 'Room with great views of Portland'),
(80, 'Pinecrest Portland', TRUE, 'WiFi, AC, TV, Luxury amenities', 27, 240.00, 2, 'City View', FALSE, '30m²', FALSE, 'Spacious room with views of the Portland skyline'),
(81, 'Pinecrest Portland', TRUE, 'WiFi, AC, TV, Luxury amenities', 27, 260.00, 2, 'City View', FALSE, '32m²', FALSE, 'Luxury suite with panoramic city views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(82, 'Pinecrest San Francisco', TRUE, 'WiFi, AC, TV, Luxury amenities', 28, 240.00, 2, 'City View', FALSE, '30m²', FALSE, 'Elegant room with beautiful city views'),
(83, 'Pinecrest San Francisco', TRUE, 'WiFi, AC, TV, Luxury amenities', 28, 260.00, 2, 'City View', FALSE, '32m²', FALSE, 'Spacious room with views of San Francisco skyline'),
(84, 'Pinecrest San Francisco', TRUE, 'WiFi, AC, TV, Luxury amenities', 28, 280.00, 2, 'City View', FALSE, '35m²', FALSE, 'Opulent suite with expansive city views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(85, 'Pinecrest Los Angeles', TRUE, 'WiFi, AC, TV, Luxury amenities', 29, 250.00, 2, 'City View', FALSE, '30m²', FALSE, 'Modern room with city skyline views'),
(86, 'Pinecrest Los Angeles', TRUE, 'WiFi, AC, TV, Luxury amenities', 29, 270.00, 2, 'City View', FALSE, '32m²', FALSE, 'Cozy room with great views of Los Angeles'),
(87, 'Pinecrest Los Angeles', TRUE, 'WiFi, AC, TV, Luxury amenities', 29, 290.00, 2, 'City View', FALSE, '35m²', FALSE, 'Luxury suite with stunning city views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(88, 'Pinecrest Denver', TRUE, 'WiFi, AC, TV, Luxury amenities', 30, 220.00, 2, 'Mountain View', FALSE, '28m²', FALSE, 'Room with amazing mountain views'),
(89, 'Pinecrest Denver', TRUE, 'WiFi, AC, TV, Luxury amenities', 30, 240.00, 2, 'Mountain View', FALSE, '30m²', FALSE, 'Spacious room with scenic mountain views'),
(90, 'Pinecrest Denver', TRUE, 'WiFi, AC, TV, Luxury amenities', 30, 260.00, 2, 'Mountain View', FALSE, '32m²', FALSE, 'Opulent suite with panoramic mountain views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(91, 'Aurora Grand Chicago', TRUE, 'WiFi, AC, TV, Luxury amenities', 31, 250.00, 2, 'Lake Michigan View', FALSE, '30m²', FALSE, 'Luxury room with stunning Lake Michigan views'),
(92, 'Aurora Grand Chicago', TRUE, 'WiFi, AC, TV, Luxury amenities', 31, 270.00, 2, 'Lake Michigan View', FALSE, '32m²', FALSE, 'Spacious room with panoramic lake views'),
(93, 'Aurora Grand Chicago', TRUE, 'WiFi, AC, TV, Luxury amenities', 31, 290.00, 2, 'Lake Michigan View', FALSE, '35m²', FALSE, 'Opulent suite with expansive Lake Michigan views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(94, 'Aurora Grand New York', TRUE, 'WiFi, AC, TV, Luxury amenities', 32, 300.00, 2, 'Manhattan View', FALSE, '30m²', FALSE, 'Elegant room with spectacular views of Manhattan'),
(95, 'Aurora Grand New York', TRUE, 'WiFi, AC, TV, Luxury amenities', 32, 320.00, 2, 'Manhattan View', FALSE, '32m²', FALSE, 'Spacious room with breathtaking Manhattan skyline views'),
(96, 'Aurora Grand New York', TRUE, 'WiFi, AC, TV, Luxury amenities', 32, 350.00, 2, 'Manhattan View', FALSE, '35m²', FALSE, 'Luxurious suite with panoramic views of Manhattan');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(97, 'Aurora Grand Los Angeles', TRUE, 'WiFi, AC, TV, Luxury amenities', 33, 280.00, 2, 'Hollywood View', FALSE, '30m²', FALSE, 'Luxury room with iconic Hollywood views'),
(98, 'Aurora Grand Los Angeles', TRUE, 'WiFi, AC, TV, Luxury amenities', 33, 300.00, 2, 'Hollywood View', FALSE, '32m²', FALSE, 'Spacious room with stunning views of Hollywood landmarks'),
(99, 'Aurora Grand Los Angeles', TRUE, 'WiFi, AC, TV, Luxury amenities', 33, 320.00, 2, 'Hollywood View', FALSE, '35m²', FALSE, 'Elegant suite with amazing views of Hollywood');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(100, 'Aurora Grand Miami', TRUE, 'WiFi, AC, TV, Luxury amenities', 34, 260.00, 2, 'Ocean View', FALSE, '28m²', FALSE, 'Cozy room with beautiful ocean views'),
(101, 'Aurora Grand Miami', TRUE, 'WiFi, AC, TV, Luxury amenities', 34, 280.00, 2, 'Ocean View', FALSE, '30m²', FALSE, 'Spacious room with sweeping ocean views'),
(102, 'Aurora Grand Miami', TRUE, 'WiFi, AC, TV, Luxury amenities', 34, 300.00, 2, 'Ocean View', FALSE, '32m²', FALSE, 'Luxury suite with panoramic ocean views');

INSERT INTO Chambre (chambre_num, hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description)
VALUES
(103, 'Aurora Grand San Francisco', TRUE, 'WiFi, AC, TV, Luxury amenities', 35, 270.00, 2, 'City View', FALSE, '30m²', FALSE, 'Stylish room with stunning views of San Francisco'),
(104, 'Aurora Grand San Francisco', TRUE, 'WiFi, AC, TV, Luxury amenities', 35, 290.00, 2, 'City View', FALSE, '32m²', FALSE, 'Spacious room with incredible city views'),
(105, 'Aurora Grand San Francisco', TRUE, 'WiFi, AC, TV, Luxury amenities', 35, 310.00, 2, 'City View', FALSE, '35m²', FALSE, 'Luxurious suite with panoramic city views');

UPDATE Chambre
SET superficie_m2 = REGEXP_REPLACE(superficie_m2, '[^\d.]', '', 'g');


INSERT INTO Utilisateur (email, password, userType, status)
VALUES
('northern_star_toronto@info.com', 'admin', 'admin', 'active'),
('user@test.com', 'userpassword', 'user', 'active'),
('northern_star_ottawa@info.com', 'admin', 'admin', 'active'),
('northern_star_montreal@info.com', 'admin', 'admin', 'active'),
('northern_star_vancouver@info.com', 'admin', 'admin', 'active'),
('northern_star_calgary@info.com', 'admin', 'admin', 'active'),
('evergreen_vancouver@info.com', 'admin', 'admin', 'active'),
('evergreen_victoria@info.com', 'admin', 'admin', 'active'),
('evergreen_whistler@info.com', 'admin', 'admin', 'active'),
('evergreen_kelowna@info.com', 'admin', 'admin', 'active'),
('evergreen_kamloops@info.com', 'admin', 'admin', 'active'),
('summit_denver@info.com', 'admin', 'admin', 'active'),
('summit_boulder@info.com', 'admin', 'admin', 'active'),
('summit_colorado_springs@info.com', 'admin', 'admin', 'active'),
('summit_aspen@info.com', 'admin', 'admin', 'active'),
('summit_vail@info.com', 'admin', 'admin', 'active'),
('maplewood_montreal@info.com', 'admin', 'admin', 'active'),
('maplewood_quebec_city@info.com', 'admin', 'admin', 'active'),
('maplewood_ottawa@info.com', 'admin', 'admin', 'active'),
('maplewood_toronto@info.com', 'admin', 'admin', 'active'),
('maplewood_vancouver@info.com', 'admin', 'admin', 'active'),
('atlantic_breeze_halifax@info.com', 'admin', 'admin', 'active'),
('atlantic_breeze_charlottetown@info.com', 'admin', 'admin', 'active'),
('atlantic_breeze_sydney@info.com', 'admin', 'admin', 'active'),
('atlantic_breeze_moncton@info.com', 'admin', 'admin', 'active'),
('atlantic_breeze_st_john@info.com', 'admin', 'admin', 'active'),
('pinecrest_seattle@info.com', 'admin', 'admin', 'active'),
('pinecrest_portland@info.com', 'admin', 'admin', 'active'),
('pinecrest_san_francisco@info.com', 'admin', 'admin', 'active'),
('pinecrest_los_angeles@info.com', 'admin', 'admin', 'active'),
('pinecrest_denver@info.com', 'admin', 'admin', 'active'),
('aurora_grand_chicago@info.com', 'admin', 'admin', 'active'),
('aurora_grand_new_york@info.com', 'admin', 'admin', 'active'),
('aurora_grand_los_angeles@info.com', 'admin', 'admin', 'active'),
('aurora_grand_miami@info.com', 'admin', 'admin', 'active'),
('aurora_grand_san_francisco@info.com', 'admin', 'admin', 'active');


INSERT INTO Role (role_id, role_nom, description, salaire)
VALUES
(1, 'Receptionist', 'Responsible for checking guests in and out, managing reservations and answering guest inquiries', 35000),
(2, 'Housekeeper', 'Responsible for cleaning and maintaining hotel rooms and common areas', 28000),
(3, 'Concierge', 'Assists guests with various tasks such as booking tours, recommending local attractions, and making reservations', 45000),
(4, 'Manager', 'Oversees daily hotel operations, manages staff, and ensures guest satisfaction', 60000),
(5, 'Bellhop', 'Assists guests with luggage, provides information about the hotel and its amenities', 25000);


INSERT INTO Gestionnaire (gestionnaire_id, prenom, nom, gestionnaire_adresse, gestionnaire_hotel, gestionnaire_email, gestionnaire_num_tel)
VALUES 
(1, 'John', 'Doe', '123 Queen St, Toronto, ON, Canada', 'Northern Star Toronto', 'johndoe@northernstar.com', '416-555-1111'),
(2, 'Jane', 'Smith', '456 Rideau St, Ottawa, ON, Canada', 'Northern Star Ottawa', 'janesmith@northernstar.com', '416-555-1112'),
(3, 'Alex', 'Johnson', '789 Sherbrooke St, Montreal, QC, Canada', 'Northern Star Montreal', 'alexjohnson@northernstar.com', '416-555-1113'),
(4, 'Chris', 'Brown', '101 Georgia St, Vancouver, BC, Canada', 'Northern Star Vancouver', 'chrisbrown@northernstar.com', '416-555-1114'),
(5, 'Morgan', 'White', '202 17th Ave, Calgary, AB, Canada', 'Northern Star Calgary', 'morganwhite@northernstar.com', '416-555-1115'),

(6, 'Sophia', 'Davis', '303 Burrard St, Vancouver, BC, Canada', 'Evergreen Vancouver', 'sophiadavis@evergreenlodgings.com', '604-555-2001'),
(7, 'Liam', 'Martinez', '404 Wharf St, Victoria, BC, Canada', 'Evergreen Victoria', 'liammartinez@evergreenlodgings.com', '604-555-2002'),
(8, 'Emma', 'Garcia', '505 Village St, Whistler, BC, Canada', 'Evergreen Whistler', 'emmagarcia@evergreenlodgings.com', '604-555-2003'),
(9, 'Noah', 'Rodriguez', '606 Lakeshore Rd, Kelowna, BC, Canada', 'Evergreen Kelowna', 'noahrodriguez@evergreenlodgings.com', '604-555-2004'),
(10, 'Olivia', 'Martinez', '707 Columbia St, Kamloops, BC, Canada', 'Evergreen Kamloops', 'oliviamartinez@evergreenlodgings.com', '604-555-2005'),

(11, 'William', 'Lopez', '808 17th St, Denver, CO, USA', 'Summit Denver', 'williamlopez@summitstays.com', '303-555-3001'),
(12, 'Ava', 'Gonzalez', '909 Pearl St, Boulder, CO, USA', 'Summit Boulder', 'avagonzalez@summitstays.com', '303-555-3002'),
(13, 'James', 'Wilson', '1010 Tejon St, Colorado Springs, CO, USA', 'Summit Colorado Springs', 'jameswilson@summitstays.com', '303-555-3003'),
(14, 'Mia', 'Taylor', '1111 Aspen St, Aspen, CO, USA', 'Summit Aspen', 'miataylor@summitstays.com', '303-555-3004'),
(15, 'Benjamin', 'Anderson', '1212 Bridge St, Vail, CO, USA', 'Summit Vail', 'benjaminanderson@summitstays.com', '303-555-3005'),

(16, 'Charlotte', 'Hernandez', '1313 René-Lévesque Blvd, Montreal, QC, Canada', 'Maplewood Montreal', 'charlottehernandez@maplewoodhotels.com', '514-555-4001'),
(17, 'Lucas', 'King', '1414 St-Jean St, Quebec City, QC, Canada', 'Maplewood Quebec City', 'lucasking@maplewoodhotels.com', '514-555-4002'),
(18, 'Amelia', 'Scott', '1515 Rideau St, Ottawa, ON, Canada', 'Maplewood Ottawa', 'ameliascott@maplewoodhotels.com', '514-555-4003'),
(19, 'Henry', 'Adams', '1616 Yonge St, Toronto, ON, Canada', 'Maplewood Toronto', 'henryadams@maplewoodhotels.com', '514-555-4004'),
(20, 'Isabella', 'Clark', '1717 Granville St, Vancouver, BC, Canada', 'Maplewood Vancouver', 'isabellaclark@maplewoodhotels.com', '514-555-4005'),

(21, 'Jack', 'Nelson', '1818 Waterfront Dr, Halifax, NS, Canada', 'Atlantic Breeze Halifax', 'jacknelson@atlanticbreeze.com', '902-555-5001'),
(22, 'Sophia', 'Carter', '1919 Queen St, Charlottetown, PE, Canada', 'Atlantic Breeze Charlottetown', 'sophiacarter@atlanticbreeze.com', '902-555-5002'),
(23, 'Liam', 'Mitchell', '2020 Esplanade St, Sydney, NS, Canada', 'Atlantic Breeze Sydney', 'liammitchell@atlanticbreeze.com', '902-555-5003'),
(24, 'Grace', 'Roberts', '2121 St-George St, Moncton, NB, Canada', 'Atlantic Breeze Moncton', 'graceroberts@atlanticbreeze.com', '902-555-5004'),
(25, 'Ethan', 'Perez', '2222 Water St, Saint John, NB, Canada', 'Atlantic Breeze St. John', 'ethanperez@atlanticbreeze.com', '902-555-5005'),

(26, 'Eva', 'Morris', '2323 Pine St, Seattle, WA, USA', 'Pinecrest Seattle', 'evamorris@pinecrestinns.com', '206-555-6001'),
(27, 'Mason', 'Rogers', '2424 SW 6th Ave, Portland, OR, USA', 'Pinecrest Portland', 'masonrogers@pinecrestinns.com', '206-555-6002'),
(28, 'Zoe', 'Reed', '2525 Market St, San Francisco, CA, USA', 'Pinecrest San Francisco', 'zoereed@pinecrestinns.com', '206-555-6003'),
(29, 'Daniel', 'Cook', '2626 Hollywood Blvd, Los Angeles, CA, USA', 'Pinecrest Los Angeles', 'danielcook@pinecrestinns.com', '206-555-6004'),
(30, 'Chloe', 'Morgan', '2727 Broadway St, Denver, CO, USA', 'Pinecrest Denver', 'chloemorgan@pinecrestinns.com', '206-555-6005'),

(31, 'Zachary', 'Baker', '2828 Michigan Ave, Chicago, IL, USA', 'Aurora Grand Chicago', 'zacharybaker@auroragrand.com', '312-555-7001'),
(32, 'Lily', 'Graham', '2929 W 42nd St, New York, NY, USA', 'Aurora Grand New York', 'lilygraham@auroragrand.com', '312-555-7002'),
(33, 'Ryan', 'Hall', '3030 Sunset Blvd, Los Angeles, CA, USA', 'Aurora Grand Los Angeles', 'ryanhall@auroragrand.com', '312-555-7003'),
(34, 'Megan', 'Young', '3131 Ocean Dr, Miami, FL, USA', 'Aurora Grand Miami', 'meganyoung@auroragrand.com', '312-555-7004'),
(35, 'Jacob', 'Allen', '3232 Market St, San Francisco, CA, USA', 'Aurora Grand San Francisco', 'jacoballen@auroragrand.com', '312-555-7005');


INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000001, 'Alice', 'Smith', 'Northern Star Calgary', '123 Main St, Calgary, AB, Canada', '403-123-4567', 1),
(100000002, 'Bob', 'Johnson', 'Northern Star Calgary', '456 Elm St, Calgary, AB, Canada', '403-234-5678', 2),
(100000003, 'Charlie', 'Williams', 'Northern Star Calgary', '789 Oak St, Calgary, AB, Canada', '403-345-6789', 3),
(100000004, 'Diana', 'Brown', 'Northern Star Calgary', '101 Pine St, Calgary, AB, Canada', '403-456-7890', 4),
(100000005, 'Eve', 'Jones', 'Northern Star Calgary', '202 Birch St, Calgary, AB, Canada', '403-567-8901', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000006, 'George', 'Taylor', 'Northern Star Toronto', '123 King St, Toronto, ON, Canada', '416-123-4567', 1),
(100000007, 'Hannah', 'Davis', 'Northern Star Toronto', '456 Queen St, Toronto, ON, Canada', '416-234-5678', 2),
(100000008, 'Ian', 'Martinez', 'Northern Star Toronto', '789 York St, Toronto, ON, Canada', '416-345-6789', 3),
(100000009, 'Jack', 'Miller', 'Northern Star Toronto', '101 Bay St, Toronto, ON, Canada', '416-456-7890', 4),
(100000010, 'Kathy', 'Wilson', 'Northern Star Toronto', '202 Dundas St, Toronto, ON, Canada', '416-567-8901', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000011, 'Liam', 'Moore', 'Northern Star Montreal', '123 St-Catherine St, Montreal, QC, Canada', '514-123-4567', 1),
(100000012, 'Monica', 'Taylor', 'Northern Star Montreal', '456 Sherbrooke St, Montreal, QC, Canada', '514-234-5678', 2),
(100000013, 'Nathan', 'Anderson', 'Northern Star Montreal', '789 Peel St, Montreal, QC, Canada', '514-345-6789', 3),
(100000014, 'Olivia', 'Thomas', 'Northern Star Montreal', '101 Saint-Laurent Blvd, Montreal, QC, Canada', '514-456-7890', 4),
(100000015, 'Paul', 'Jackson', 'Northern Star Montreal', '202 Saint-Denis St, Montreal, QC, Canada', '514-567-8901', 5);


INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000016, 'Quincy', 'White', 'Northern Star Vancouver', '123 Granville St, Vancouver, BC, Canada', '604-123-4567', 1),
(100000017, 'Rachel', 'Harris', 'Northern Star Vancouver', '456 West Georgia St, Vancouver, BC, Canada', '604-234-5678', 2),
(100000018, 'Sam', 'Clark', 'Northern Star Vancouver', '789 Robson St, Vancouver, BC, Canada', '604-345-6789', 3),
(100000019, 'Tina', 'Rodriguez', 'Northern Star Vancouver', '101 Seymour St, Vancouver, BC, Canada', '604-456-7890', 4),
(100000020, 'Uma', 'Lewis', 'Northern Star Vancouver', '202 Main St, Vancouver, BC, Canada', '604-567-8901', 5);


INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000021, 'Victor', 'Martinez', 'Northern Star Ottawa', '123 Rideau St, Ottawa, ON, Canada', '613-123-4567', 1),
(100000022, 'Wendy', 'Roberts', 'Northern Star Ottawa', '456 Bank St, Ottawa, ON, Canada', '613-234-5678', 2),
(100000023, 'Xander', 'Walker', 'Northern Star Ottawa', '789 Wellington St, Ottawa, ON, Canada', '613-345-6789', 3),
(100000024, 'Yara', 'Adams', 'Northern Star Ottawa', '101 Albert St, Ottawa, ON, Canada', '613-456-7890', 4),
(100000025, 'Zoe', 'Scott', 'Northern Star Ottawa', '202 Elgin St, Ottawa, ON, Canada', '613-567-8901', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000026, 'Adam', 'Green', 'Evergreen Calgary', '123 Maple St, Calgary, AB, Canada', '403-678-9012', 1),
(100000027, 'Bella', 'Parker', 'Evergreen Calgary', '456 Cedar St, Calgary, AB, Canada', '403-789-0123', 2),
(100000028, 'Cameron', 'Evans', 'Evergreen Calgary', '789 Birch St, Calgary, AB, Canada', '403-890-1234', 3),
(100000029, 'Dana', 'Lewis', 'Evergreen Calgary', '101 Oak St, Calgary, AB, Canada', '403-901-2345', 4),
(100000030, 'Elliot', 'Morris', 'Evergreen Calgary', '202 Pine St, Calgary, AB, Canada', '403-012-3456', 5);


INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000031, 'Fay', 'Scott', 'Evergreen Toronto', '123 King St, Toronto, ON, Canada', '416-678-9012', 1),
(100000032, 'Gabe', 'Hughes', 'Evergreen Toronto', '456 Queen St, Toronto, ON, Canada', '416-789-0123', 2),
(100000033, 'Holly', 'Bryant', 'Evergreen Toronto', '789 Front St, Toronto, ON, Canada', '416-890-1234', 3),
(100000034, 'Ivy', 'Baker', 'Evergreen Toronto', '101 Bay St, Toronto, ON, Canada', '416-901-2345', 4),
(100000035, 'Jack', 'Carter', 'Evergreen Toronto', '202 Yonge St, Toronto, ON, Canada', '416-012-3456', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000036, 'Kara', 'Young', 'Evergreen Montreal', '123 St-Laurent Blvd, Montreal, QC, Canada', '514-678-9012', 1),
(100000037, 'Liam', 'Martinez', 'Evergreen Montreal', '456 Sherbrooke St, Montreal, QC, Canada', '514-789-0123', 2),
(100000038, 'Maya', 'Gonzalez', 'Evergreen Montreal', '789 Peel St, Montreal, QC, Canada', '514-890-1234', 3),
(100000039, 'Nate', 'Moore', 'Evergreen Montreal', '101 University St, Montreal, QC, Canada', '514-901-2345', 4),
(100000040, 'Olivia', 'King', 'Evergreen Montreal', '202 Saint-Denis St, Montreal, QC, Canada', '514-012-3456', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000041, 'Paul', 'Clark', 'Evergreen Vancouver', '123 Granville St, Vancouver, BC, Canada', '604-678-9012', 1),
(100000042, 'Quincy', 'Nguyen', 'Evergreen Vancouver', '456 Main St, Vancouver, BC, Canada', '604-789-0123', 2),
(100000043, 'Rita', 'Lopez', 'Evergreen Vancouver', '789 Cambie St, Vancouver, BC, Canada', '604-890-1234', 3),
(100000044, 'Sam', 'Harris', 'Evergreen Vancouver', '101 Broadway St, Vancouver, BC, Canada', '604-901-2345', 4),
(100000045, 'Tina', 'Roberts', 'Evergreen Vancouver', '202 Nelson St, Vancouver, BC, Canada', '604-012-3456', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000046, 'Uma', 'Martin', 'Evergreen Ottawa', '123 Rideau St, Ottawa, ON, Canada', '613-678-9012', 1),
(100000047, 'Vera', 'Walker', 'Evergreen Ottawa', '456 Bank St, Ottawa, ON, Canada', '613-789-0123', 2),
(100000048, 'Will', 'Allen', 'Evergreen Ottawa', '789 Wellington St, Ottawa, ON, Canada', '613-890-1234', 3),
(100000049, 'Xander', 'Young', 'Evergreen Ottawa', '101 Albert St, Ottawa, ON, Canada', '613-901-2345', 4),
(100000050, 'Yara', 'Jackson', 'Evergreen Ottawa', '202 Elgin St, Ottawa, ON, Canada', '613-012-3456', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000051, 'Alice', 'Brown', 'Summit Calgary', '123 5th Ave, Calgary, AB, Canada', '403-234-5678', 1),
(100000052, 'Brian', 'Johnson', 'Summit Calgary', '456 10th St, Calgary, AB, Canada', '403-345-6789', 2),
(100000053, 'Catherine', 'Davis', 'Summit Calgary', '789 14th St, Calgary, AB, Canada', '403-456-7890', 3),
(100000054, 'Daniel', 'Miller', 'Summit Calgary', '101 18th Ave, Calgary, AB, Canada', '403-567-8901', 4),
(100000055, 'Ella', 'Wilson', 'Summit Calgary', '202 22nd St, Calgary, AB, Canada', '403-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000056, 'Felix', 'Garcia', 'Summit Toronto', '123 York St, Toronto, ON, Canada', '416-234-5678', 1),
(100000057, 'Grace', 'Rodriguez', 'Summit Toronto', '456 Dundas St, Toronto, ON, Canada', '416-345-6789', 2),
(100000058, 'Henry', 'Martinez', 'Summit Toronto', '789 Bloor St, Toronto, ON, Canada', '416-456-7890', 3),
(100000059, 'Irene', 'Lopez', 'Summit Toronto', '101 Queen St, Toronto, ON, Canada', '416-567-8901', 4),
(100000060, 'James', 'Morris', 'Summit Toronto', '202 King St, Toronto, ON, Canada', '416-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000061, 'Kylie', 'Lee', 'Summit Montreal', '123 Ste-Catherine St, Montreal, QC, Canada', '514-234-5678', 1),
(100000062, 'Louis', 'Lopez', 'Summit Montreal', '456 McGill St, Montreal, QC, Canada', '514-345-6789', 2),
(100000063, 'Megan', 'Gonzalez', 'Summit Montreal', '789 Parc Ave, Montreal, QC, Canada', '514-456-7890', 3),
(100000064, 'Nina', 'Rodriguez', 'Summit Montreal', '101 St-Denis St, Montreal, QC, Canada', '514-567-8901', 4),
(100000065, 'Oscar', 'Perez', 'Summit Montreal', '202 Crescent St, Montreal, QC, Canada', '514-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000066, 'Paul', 'Wang', 'Summit Vancouver', '123 West Georgia St, Vancouver, BC, Canada', '604-234-5678', 1),
(100000067, 'Quinn', 'Kim', 'Summit Vancouver', '456 Burrard St, Vancouver, BC, Canada', '604-345-6789', 2),
(100000068, 'Riley', 'Nguyen', 'Summit Vancouver', '789 Robson St, Vancouver, BC, Canada', '604-456-7890', 3),
(100000069, 'Sophia', 'Chang', 'Summit Vancouver', '101 Granville St, Vancouver, BC, Canada', '604-567-8901', 4),
(100000070, 'Travis', 'Li', 'Summit Vancouver', '202 Main St, Vancouver, BC, Canada', '604-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000071, 'Uma', 'Taylor', 'Summit Ottawa', '123 Sussex Dr, Ottawa, ON, Canada', '613-234-5678', 1),
(100000072, 'Victor', 'Nelson', 'Summit Ottawa', '456 Wellington St, Ottawa, ON, Canada', '613-345-6789', 2),
(100000073, 'Wendy', 'Wilson', 'Summit Ottawa', '789 Sparks St, Ottawa, ON, Canada', '613-456-7890', 3),
(100000074, 'Xander', 'Hernandez', 'Summit Ottawa', '101 Elgin St, Ottawa, ON, Canada', '613-567-8901', 4),
(100000075, 'Yara', 'Young', 'Summit Ottawa', '202 Albert St, Ottawa, ON, Canada', '613-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000076, 'Aaron', 'Miller', 'Maplewood Calgary', '123 8th Ave, Calgary, AB, Canada', '403-789-0123', 1),
(100000077, 'Bella', 'Taylor', 'Maplewood Calgary', '456 12th St, Calgary, AB, Canada', '403-890-1234', 2),
(100000078, 'Chris', 'Moore', 'Maplewood Calgary', '789 16th Ave, Calgary, AB, Canada', '403-901-2345', 3),
(100000079, 'Diana', 'Jackson', 'Maplewood Calgary', '101 20th St, Calgary, AB, Canada', '403-012-3456', 4),
(100000080, 'Evan', 'Martin', 'Maplewood Calgary', '202 24th Ave, Calgary, AB, Canada', '403-123-4567', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000081, 'Felicia', 'Lee', 'Maplewood Toronto', '123 Bay St, Toronto, ON, Canada', '416-234-5678', 1),
(100000082, 'Gavin', 'Harris', 'Maplewood Toronto', '456 Front St, Toronto, ON, Canada', '416-345-6789', 2),
(100000083, 'Holly', 'Clark', 'Maplewood Toronto', '789 Queen St, Toronto, ON, Canada', '416-456-7890', 3),
(100000084, 'Isaac', 'Lewis', 'Maplewood Toronto', '101 Spadina Ave, Toronto, ON, Canada', '416-567-8901', 4),
(100000085, 'Jenna', 'Walker', 'Maplewood Toronto', '202 Dundas St, Toronto, ON, Canada', '416-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000086, 'Kevin', 'Young', 'Maplewood Montreal', '123 Sherbrooke St, Montreal, QC, Canada', '514-234-5678', 1),
(100000087, 'Lily', 'Scott', 'Maplewood Montreal', '456 St-Denis St, Montreal, QC, Canada', '514-345-6789', 2),
(100000088, 'Maya', 'Baker', 'Maplewood Montreal', '789 St-Laurent Blvd, Montreal, QC, Canada', '514-456-7890', 3),
(100000089, 'Nathan', 'Adams', 'Maplewood Montreal', '101 Papineau Ave, Montreal, QC, Canada', '514-567-8901', 4),
(100000090, 'Olivia', 'King', 'Maplewood Montreal', '202 Parc Ave, Montreal, QC, Canada', '514-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000091, 'Paul', 'Davis', 'Maplewood Vancouver', '123 Granville St, Vancouver, BC, Canada', '604-234-5678', 1),
(100000092, 'Quinn', 'Graham', 'Maplewood Vancouver', '456 Davie St, Vancouver, BC, Canada', '604-345-6789', 2),
(100000093, 'Rachel', 'Evans', 'Maplewood Vancouver', '789 Broadway St, Vancouver, BC, Canada', '604-456-7890', 3),
(100000094, 'Sam', 'Mitchell', 'Maplewood Vancouver', '101 Cambie St, Vancouver, BC, Canada', '604-567-8901', 4),
(100000095, 'Tessa', 'Collins', 'Maplewood Vancouver', '202 Main St, Vancouver, BC, Canada', '604-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000096, 'Ursula', 'Brown', 'Maplewood Ottawa', '123 Rideau St, Ottawa, ON, Canada', '613-234-5678', 1),
(100000097, 'Victor', 'Hernandez', 'Maplewood Ottawa', '456 Bank St, Ottawa, ON, Canada', '613-345-6789', 2),
(100000098, 'Wendy', 'Garcia', 'Maplewood Ottawa', '789 Elgin St, Ottawa, ON, Canada', '613-456-7890', 3),
(100000099, 'Xander', 'Wright', 'Maplewood Ottawa', '101 Albert St, Ottawa, ON, Canada', '613-567-8901', 4),
(100000100, 'Yara', 'Morris', 'Maplewood Ottawa', '202 Queen St, Ottawa, ON, Canada', '613-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000101, 'Zane', 'Walker', 'Atlantic Halifax', '123 Spring Garden Rd, Halifax, NS, Canada', '902-234-5678', 1),
(100000102, 'Ava', 'Hughes', 'Atlantic Halifax', '456 Quinpool Rd, Halifax, NS, Canada', '902-345-6789', 2),
(100000103, 'Ben', 'King', 'Atlantic Halifax', '789 Barrington St, Halifax, NS, Canada', '902-456-7890', 3),
(100000104, 'Cora', 'Scott', 'Atlantic Halifax', '101 Upper Water St, Halifax, NS, Canada', '902-567-8901', 4),
(100000105, 'Dylan', 'Adams', 'Atlantic Halifax', '202 Gottingen St, Halifax, NS, Canada', '902-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000106, 'Ethan', 'Moore', 'Atlantic Saint John', '123 King St, Saint John, NB, Canada', '506-234-5678', 1),
(100000107, 'Faith', 'Taylor', 'Atlantic Saint John', '456 Princess St, Saint John, NB, Canada', '506-345-6789', 2),
(100000108, 'Gage', 'Parker', 'Atlantic Saint John', '789 Broad St, Saint John, NB, Canada', '506-456-7890', 3),
(100000109, 'Hannah', 'Martin', 'Atlantic Saint John', '101 Chipman Hill, Saint John, NB, Canada', '506-567-8901', 4),
(100000110, 'Isaac', 'Miller', 'Atlantic Saint John', '202 Charlotte St, Saint John, NB, Canada', '506-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000111, 'Jack', 'White', 'Atlantic Moncton', '123 Main St, Moncton, NB, Canada', '506-234-5678', 1),
(100000112, 'Kiera', 'Anderson', 'Atlantic Moncton', '456 St. George St, Moncton, NB, Canada', '506-345-6789', 2),
(100000113, 'Liam', 'Thomas', 'Atlantic Moncton', '789 Mountain Rd, Moncton, NB, Canada', '506-456-7890', 3),
(100000114, 'Mila', 'Jackson', 'Atlantic Moncton', '101 Morton Ave, Moncton, NB, Canada', '506-567-8901', 4),
(100000115, 'Nina', 'Lewis', 'Atlantic Moncton', '202 Whelan Dr, Moncton, NB, Canada', '506-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000116, 'Olivia', 'Roberts', 'Atlantic Charlottetown', '123 Queen St, Charlottetown, PE, Canada', '902-234-5678', 1),
(100000117, 'Paul', 'Young', 'Atlantic Charlottetown', '456 Kent St, Charlottetown, PE, Canada', '902-345-6789', 2),
(100000118, 'Quinn', 'Green', 'Atlantic Charlottetown', '789 Richmond St, Charlottetown, PE, Canada', '902-456-7890', 3),
(100000119, 'Riley', 'Harris', 'Atlantic Charlottetown', '101 North River Rd, Charlottetown, PE, Canada', '902-567-8901', 4),
(100000120, 'Sophia', 'Clark', 'Atlantic Charlottetown', '202 Riverside Dr, Charlottetown, PE, Canada', '902-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000121, 'Tyler', 'Evans', 'Atlantic Fredericton', '123 Queen St, Fredericton, NB, Canada', '506-234-5678', 1),
(100000122, 'Uma', 'Thompson', 'Atlantic Fredericton', '456 Regent St, Fredericton, NB, Canada', '506-345-6789', 2),
(100000123, 'Vera', 'Martin', 'Atlantic Fredericton', '789 Prospect St, Fredericton, NB, Canada', '506-456-7890', 3),
(100000124, 'William', 'Roberts', 'Atlantic Fredericton', '101 Knight St, Fredericton, NB, Canada', '506-567-8901', 4),
(100000125, 'Xena', 'Lopez', 'Atlantic Fredericton', '202 Edgewood Dr, Fredericton, NB, Canada', '506-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000126, 'Yara', 'Davis', 'Pinecrest Toronto', '123 Yonge St, Toronto, ON, Canada', '416-234-5678', 1),
(100000127, 'Zach', 'Williams', 'Pinecrest Toronto', '456 Bay St, Toronto, ON, Canada', '416-345-6789', 2),
(100000128, 'Amelia', 'Morris', 'Pinecrest Toronto', '789 Queen St W, Toronto, ON, Canada', '416-456-7890', 3),
(100000129, 'Brian', 'Evans', 'Pinecrest Toronto', '101 Bloor St W, Toronto, ON, Canada', '416-567-8901', 4),
(100000130, 'Clara', 'Robinson', 'Pinecrest Toronto', '202 Spadina Ave, Toronto, ON, Canada', '416-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000131, 'Daniel', 'Harris', 'Pinecrest Ottawa', '123 Rideau St, Ottawa, ON, Canada', '613-234-5678', 1),
(100000132, 'Ella', 'Martinez', 'Pinecrest Ottawa', '456 Bank St, Ottawa, ON, Canada', '613-345-6789', 2),
(100000133, 'Finn', 'Garcia', 'Pinecrest Ottawa', '789 Sparks St, Ottawa, ON, Canada', '613-456-7890', 3),
(100000134, 'Grace', 'Miller', 'Pinecrest Ottawa', '101 Elgin St, Ottawa, ON, Canada', '613-567-8901', 4),
(100000135, 'Henry', 'Lopez', 'Pinecrest Ottawa', '202 Wellington St, Ottawa, ON, Canada', '613-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000136, 'Isla', 'King', 'Pinecrest Montreal', '123 Rue Saint-Denis, Montreal, QC, Canada', '514-234-5678', 1),
(100000137, 'Jack', 'Gonzalez', 'Pinecrest Montreal', '456 Rue Sainte-Catherine, Montreal, QC, Canada', '514-345-6789', 2),
(100000138, 'Kaitlyn', 'Wilson', 'Pinecrest Montreal', '789 Boulevard de Maisonneuve, Montreal, QC, Canada', '514-456-7890', 3),
(100000139, 'Leo', 'Perez', 'Pinecrest Montreal', '101 Rue Sherbrooke, Montreal, QC, Canada', '514-567-8901', 4),
(100000140, 'Mia', 'Young', 'Pinecrest Montreal', '202 Rue Peel, Montreal, QC, Canada', '514-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000141, 'Nina', 'Carter', 'Pinecrest Calgary', '123 8th Ave SW, Calgary, AB, Canada', '403-234-5678', 1),
(100000142, 'Oscar', 'Roberts', 'Pinecrest Calgary', '456 17th Ave SW, Calgary, AB, Canada', '403-345-6789', 2),
(100000143, 'Piper', 'Martinez', 'Pinecrest Calgary', '789 14th St NW, Calgary, AB, Canada', '403-456-7890', 3),
(100000144, 'Quinn', 'Taylor', 'Pinecrest Calgary', '101 Macleod Trail SE, Calgary, AB, Canada', '403-567-8901', 4),
(100000145, 'Riley', 'Jackson', 'Pinecrest Calgary', '202 6th Ave NE, Calgary, AB, Canada', '403-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000146, 'Sophie', 'Green', 'Pinecrest Vancouver', '123 Robson St, Vancouver, BC, Canada', '604-234-5678', 1),
(100000147, 'Theo', 'Wright', 'Pinecrest Vancouver', '456 Granville St, Vancouver, BC, Canada', '604-345-6789', 2),
(100000148, 'Uma', 'Hernandez', 'Pinecrest Vancouver', '789 Broadway St, Vancouver, BC, Canada', '604-456-7890', 3),
(100000149, 'Victor', 'Lopez', 'Pinecrest Vancouver', '101 Burrard St, Vancouver, BC, Canada', '604-567-8901', 4),
(100000150, 'Wendy', 'Clark', 'Pinecrest Vancouver', '202 Cambie St, Vancouver, BC, Canada', '604-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000151, 'Alice', 'Brown', 'Aurora Toronto', '123 Front St W, Toronto, ON, Canada', '416-234-5678', 1),
(100000152, 'Benjamin', 'Jones', 'Aurora Toronto', '456 King St W, Toronto, ON, Canada', '416-345-6789', 2),
(100000153, 'Catherine', 'Smith', 'Aurora Toronto', '789 Queen St E, Toronto, ON, Canada', '416-456-7890', 3),
(100000154, 'David', 'Miller', 'Aurora Toronto', '101 Dundas St E, Toronto, ON, Canada', '416-567-8901', 4),
(100000155, 'Emma', 'Taylor', 'Aurora Toronto', '202 Bay St, Toronto, ON, Canada', '416-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000156, 'Fiona', 'Davis', 'Aurora Ottawa', '123 Rideau St, Ottawa, ON, Canada', '613-234-5678', 1),
(100000157, 'George', 'Wilson', 'Aurora Ottawa', '456 Bank St, Ottawa, ON, Canada', '613-345-6789', 2),
(100000158, 'Hannah', 'Clark', 'Aurora Ottawa', '789 Sparks St, Ottawa, ON, Canada', '613-456-7890', 3),
(100000159, 'Ian', 'Harris', 'Aurora Ottawa', '101 Elgin St, Ottawa, ON, Canada', '613-567-8901', 4),
(100000160, 'Jessica', 'Lopez', 'Aurora Ottawa', '202 Wellington St, Ottawa, ON, Canada', '613-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000161, 'Kara', 'Taylor', 'Aurora Montreal', '123 Rue Saint-Denis, Montreal, QC, Canada', '514-234-5678', 1),
(100000162, 'Louis', 'Garcia', 'Aurora Montreal', '456 Rue Sainte-Catherine, Montreal, QC, Canada', '514-345-6789', 2),
(100000163, 'Maria', 'Martinez', 'Aurora Montreal', '789 Boulevard de Maisonneuve, Montreal, QC, Canada', '514-456-7890', 3),
(100000164, 'Nathan', 'Evans', 'Aurora Montreal', '101 Rue Sherbrooke, Montreal, QC, Canada', '514-567-8901', 4),
(100000165, 'Olivia', 'Perez', 'Aurora Montreal', '202 Rue Peel, Montreal, QC, Canada', '514-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000166, 'Paul', 'Johnson', 'Aurora Calgary', '123 8th Ave SW, Calgary, AB, Canada', '403-234-5678', 1),
(100000167, 'Quinn', 'Williams', 'Aurora Calgary', '456 17th Ave SW, Calgary, AB, Canada', '403-345-6789', 2),
(100000168, 'Rachel', 'Brown', 'Aurora Calgary', '789 14th St NW, Calgary, AB, Canada', '403-456-7890', 3),
(100000169, 'Sam', 'Davis', 'Aurora Calgary', '101 Macleod Trail SE, Calgary, AB, Canada', '403-567-8901', 4),
(100000170, 'Tina', 'Moore', 'Aurora Calgary', '202 6th Ave NE, Calgary, AB, Canada', '403-678-9012', 5);

INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id) 
VALUES 
(100000171, 'Uma', 'Clark', 'Aurora Vancouver', '123 Robson St, Vancouver, BC, Canada', '604-234-5678', 1),
(100000172, 'Victor', 'Morris', 'Aurora Vancouver', '456 Granville St, Vancouver, BC, Canada', '604-345-6789', 2),
(100000173, 'Wendy', 'Lee', 'Aurora Vancouver', '789 Broadway St, Vancouver, BC, Canada', '604-456-7890', 3),
(100000174, 'Xander', 'Hughes', 'Aurora Vancouver', '101 Burrard St, Vancouver, BC, Canada', '604-567-8901', 4),
(100000175, 'Yara', 'Carter', 'Aurora Vancouver', '202 Cambie St, Vancouver, BC, Canada', '604-678-9012', 5);

INSERT INTO Client (client_NAS, prenom, nom, client_adresse, client_num_tel, client_email, client_age, date_enregistrement)
VALUES
    (123456789, 'Alice', 'Dupont', '123 Rue de Paris, Toronto, Canada', '416-123-4567', 'alice.dupont@example.com', 25, '2025-03-06'),
    (234567890, 'Bob', 'Martin', '456 Avenue des Champs, Montreal, Canada', '514-234-5678', 'bob.martin@example.com', 30, '2025-03-06'),
    (345678901, 'Charlie', 'Durand', '789 Boulevard Saint-Germain, Vancouver, Canada', '604-345-6789', 'charlie.durand@example.com', 35, '2025-03-06'),
    (456789012, 'David', 'Lemoine', '321 Rue de la Liberté, Calgary, Canada', '403-456-7890', 'david.lemoine@example.com', 28, '2025-03-06'),
    (567890123, 'Eva', 'Lemoine', '654 Avenue des Tuileries, Edmonton, Canada', '780-567-8901', 'eva.lemoine@example.com', 40, '2025-03-06'),
    (678901234, 'Francois', 'Gauthier', '987 Rue de la République, Ottawa, Canada', '613-678-9012', 'francois.gauthier@example.com', 45, '2025-03-06'),
    (789012345, 'Georges', 'Mercier', '213 Boulevard de la Mer, Quebec City, Canada', '418-789-0123', 'georges.mercier@example.com', 32, '2025-03-06'),
    (890123456, 'Hélène', 'Pires', '432 Rue de la Paix, Hamilton, Canada', '905-890-1234', 'helene.pires@example.com', 50, '2025-03-06'),
    (901234567, 'Igor', 'Benoit', '876 Avenue de la Gare, Winnipeg, Canada', '204-901-2345', 'igor.benoit@example.com', 38, '2025-03-06'),
    (112233445, 'Juliette', 'Roche', '543 Rue du Soleil, Saskatoon, Canada', '306-112-2334', 'juliette.roche@example.com', 29, '2025-03-06');

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (1, 123456789, 1, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 1);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (2, 234567890, 2, '2025-04-05', '2025-04-12', '2025-04-14', 'Pending', 1);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (3, 345678901, 3, '2025-04-05', '2025-04-15', '2025-04-17', 'Pending', 1);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (4, 456789012, 4, '2025-04-05', '2025-04-18', '2025-04-20', 'Confirmed', 2);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (5, 567890123, 5, '2025-04-05', '2025-04-22', '2025-04-24', 'Pending', 2);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (6, 678901234, 6, '2025-04-05', '2025-04-26', '2025-04-28', 'Pending', 2);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (7, 789012345, 7, '2025-04-05', '2025-04-29', '2025-05-01', 'Confirmed', 3);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (8, 890123456, 8, '2025-04-05', '2025-05-03', '2025-05-05', 'Pending', 3);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (9, 901234567, 9, '2025-04-05', '2025-05-07', '2025-05-09', 'Pending', 3);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (10, 112233445, 10, '2025-04-05', '2025-05-10', '2025-05-12', 'Confirmed', 4);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (11, 123456789, 11, '2025-04-05', '2025-05-14', '2025-05-16', 'Pending', 4);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (12, 234567890, 12, '2025-04-05', '2025-05-18', '2025-05-20', 'Pending', 4);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (21, 123456789, 13, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 5);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (22, 234567890, 14, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 5);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (23, 345678901, 15, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 5);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (24, 456789012, 16, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 6);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (25, 567890123, 17, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 6);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (26, 678901234, 18, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 6);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (27, 789012345, 19, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 7);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (28, 890123456, 20, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 7);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (29, 901234567, 21, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 7);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (30, 112233445, 22, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 8);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (31, 123456789, 23, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 8);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (32, 234567890, 24, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 8);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (33, 123456789, 25, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 9);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (34, 234567890, 26, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 9);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (35, 345678901, 27, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 9);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (36, 456789012, 28, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 10);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (37, 567890123, 29, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 10);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (38, 678901234, 30, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 10);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (39, 789012345, 31, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 11);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (40, 890123456, 32, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 11);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (41, 901234567, 33, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 11);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (42, 112233445, 34, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 12);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (43, 123456789, 35, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 12);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (44, 234567890, 36, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 12);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (45, 345678901, 37, '2025-04-05', '2025-04-10', '2025-04-12', 'Confirmed', 13);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (46, 456789012, 38, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 13);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (47, 567890123, 39, '2025-04-05', '2025-04-10', '2025-04-12', 'Pending', 13);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (51, 901234567, 40, '2025-04-05', '2025-05-10', '2025-05-12', 'Confirmed', 14);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (52, 112233445, 41, '2025-04-05', '2025-05-14', '2025-05-16', 'Pending', 14);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (53, 123456789, 42, '2025-04-05', '2025-05-18', '2025-05-20', 'Pending', 14);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (54, 234567890, 43, '2025-04-05', '2025-05-10', '2025-05-12', 'Confirmed', 15);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (55, 345678901, 44, '2025-04-05', '2025-05-14', '2025-05-16', 'Pending', 15);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (56, 456789012, 45, '2025-04-05', '2025-05-18', '2025-05-20', 'Pending', 15);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (57, 567890123, 46, '2025-04-05', '2025-05-10', '2025-05-12', 'Confirmed', 16);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (58, 678901234, 47, '2025-04-05', '2025-05-14', '2025-05-16', 'Pending', 16);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (59, 789012345, 48, '2025-04-05', '2025-05-18', '2025-05-20', 'Pending', 16);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (60, 890123456, 49, '2025-04-05', '2025-05-10', '2025-05-12', 'Confirmed', 17);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (61, 901234567, 50, '2025-04-05', '2025-05-14', '2025-05-16', 'Pending', 17);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (62, 112233445, 51, '2025-04-05', '2025-05-18', '2025-05-20', 'Pending', 17);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (63, 123456789, 52, '2025-04-05', '2025-05-10', '2025-05-12', 'Confirmed', 18);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (64, 234567890, 53, '2025-04-05', '2025-05-14', '2025-05-16', 'Pending', 18);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (65, 345678901, 54, '2025-04-05', '2025-05-18', '2025-05-20', 'Pending', 18);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (66, 456789012, 55, '2025-04-05', '2025-05-10', '2025-05-12', 'Confirmed', 19);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (67, 567890123, 56, '2025-04-05', '2025-05-14', '2025-05-16', 'Pending', 19);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (68, 678901234, 57, '2025-04-05', '2025-05-18', '2025-05-20', 'Pending', 19);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (69, 789012345, 58, '2025-04-05', '2025-05-10', '2025-05-12', 'Confirmed', 20);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (70, 890123456, 59, '2025-04-05', '2025-05-14', '2025-05-16', 'Pending', 20);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (71, 901234567, 60, '2025-04-05', '2025-05-18', '2025-05-20', 'Pending', 20);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (72, 112233445, 61, '2025-04-05', '2025-06-10', '2025-06-12', 'Confirmed', 21);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (73, 123456789, 62, '2025-04-05', '2025-06-14', '2025-06-16', 'Pending', 21);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (74, 234567890, 63, '2025-04-05', '2025-06-18', '2025-06-20', 'Pending', 21);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (75, 345678901, 64, '2025-04-05', '2025-06-10', '2025-06-12', 'Confirmed', 22);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (76, 456789012, 65, '2025-04-05', '2025-06-14', '2025-06-16', 'Pending', 22);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (77, 567890123, 66, '2025-04-05', '2025-06-18', '2025-06-20', 'Pending', 22);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (78, 678901234, 67, '2025-04-05', '2025-06-10', '2025-06-12', 'Confirmed', 23);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (79, 789012345, 68, '2025-04-05', '2025-06-14', '2025-06-16', 'Pending', 23);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (80, 890123456, 69, '2025-04-05', '2025-06-18', '2025-06-20', 'Pending', 23);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (81, 901234567, 70, '2025-04-05', '2025-06-10', '2025-06-12', 'Confirmed', 24);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (82, 112233445, 71, '2025-04-05', '2025-06-14', '2025-06-16', 'Pending', 24);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (83, 123456789, 72, '2025-04-05', '2025-06-18', '2025-06-20', 'Pending', 24);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (84, 234567890, 73, '2025-04-05', '2025-06-10', '2025-06-12', 'Confirmed', 25);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (85, 345678901, 74, '2025-04-05', '2025-06-14', '2025-06-16', 'Pending', 25);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (86, 456789012, 75, '2025-04-05', '2025-06-18', '2025-06-20', 'Pending', 25);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (87, 567890123, 76, '2025-04-05', '2025-06-10', '2025-06-12', 'Confirmed', 26);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (88, 678901234, 77, '2025-04-05', '2025-06-14', '2025-06-16', 'Pending', 26);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (89, 789012345, 78, '2025-04-05', '2025-06-18', '2025-06-20', 'Pending', 26);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (90, 890123456, 79, '2025-04-05', '2025-06-10', '2025-06-12', 'Confirmed', 27);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (91, 901234567, 80, '2025-04-05', '2025-06-14', '2025-06-16', 'Pending', 27);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (92, 112233445, 81, '2025-04-05', '2025-06-18', '2025-06-20', 'Pending', 27);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (93, 123456789, 82, '2025-04-05', '2025-07-10', '2025-07-12', 'Confirmed', 28);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (94, 234567890, 83, '2025-04-05', '2025-07-14', '2025-07-16', 'Pending', 28);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (95, 345678901, 84, '2025-04-05', '2025-07-18', '2025-07-20', 'Pending', 28);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (96, 456789012, 85, '2025-04-05', '2025-07-10', '2025-07-12', 'Confirmed', 29);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (97, 567890123, 86, '2025-04-05', '2025-07-14', '2025-07-16', 'Pending', 29);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (98, 678901234, 87, '2025-04-05', '2025-07-18', '2025-07-20', 'Pending', 29);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (99, 789012345, 88, '2025-04-05', '2025-07-10', '2025-07-12', 'Confirmed', 30);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (100, 890123456, 89, '2025-04-05', '2025-07-14', '2025-07-16', 'Pending', 30);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (101, 901234567, 90, '2025-04-05', '2025-07-18', '2025-07-20', 'Pending', 30);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (102, 112233445, 91, '2025-04-05', '2025-07-10', '2025-07-12', 'Confirmed', 31);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (103, 123456789, 92, '2025-04-05', '2025-07-14', '2025-07-16', 'Pending', 31);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (104, 234567890, 93, '2025-04-05', '2025-07-18', '2025-07-20', 'Pending', 31);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (105, 345678901, 94, '2025-04-05', '2025-07-10', '2025-07-12', 'Confirmed', 32);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (106, 456789012, 95, '2025-04-05', '2025-07-14', '2025-07-16', 'Pending', 32);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (107, 567890123, 96, '2025-04-05', '2025-07-18', '2025-07-20', 'Pending', 32);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (108, 678901234, 97, '2025-04-05', '2025-07-10', '2025-07-12', 'Confirmed', 33);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (109, 789012345, 98, '2025-04-05', '2025-07-14', '2025-07-16', 'Pending', 33);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (110, 890123456, 99, '2025-04-05', '2025-07-18', '2025-07-20', 'Pending', 33);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (111, 901234567, 100, '2025-04-05', '2025-07-10', '2025-07-12', 'Confirmed', 34);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (112, 112233445, 101, '2025-04-05', '2025-07-14', '2025-07-16', 'Pending', 34);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (113, 123456789, 102, '2025-04-05', '2025-07-18', '2025-07-20', 'Pending', 34);

INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (114, 234567890, 103, '2025-04-05', '2025-07-10', '2025-07-12', 'Confirmed', 35);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (115, 345678901, 104, '2025-04-05', '2025-07-14', '2025-07-16', 'Pending', 35);
INSERT INTO Reservation (reservation_id, client_NAS, chambre_num, date_reservation, date_arrivee, date_depart, status, hotel_id)
VALUES (116, 456789012, 105, '2025-04-05', '2025-07-18', '2025-07-20', 'Pending', 35);
