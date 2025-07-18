CREATE OR REPLACE FUNCTION trigger_chambre_num()
RETURNS TRIGGER AS $$
DECLARE
    hotel_id INT;
BEGIN
    SELECT chambre_hotel_id INTO hotel_id
    FROM Chambre
    WHERE chambre_num = NEW.chambre_num LIMIT 1;

    IF hotel_id IS NOT NULL THEN
        UPDATE Hotel
        SET nombre_chambre = nombre_chambre - 1
        WHERE Hotel.id_hotel = hotel_id;  
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_chambre_num
AFTER INSERT ON Reservation
FOR EACH ROW
EXECUTE FUNCTION trigger_chambre_num();



CREATE OR REPLACE FUNCTION restore_chambre_num()
RETURNS TRIGGER AS $$
DECLARE
    hotel_id INT;
BEGIN
    SELECT hotel_id INTO hotel_id
    FROM Chambre
    WHERE chambre_num = OLD.chambre_num LIMIT 1;

    IF hotel_id IS NOT NULL THEN
        UPDATE Hotel
        SET nombre_chambre = nombre_chambre + 1
        WHERE id_hotel = hotel_id;
    END IF;

    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER restore_chambre_num
AFTER DELETE ON Reservation
FOR EACH ROW
EXECUTE FUNCTION restore_chambre_num();

