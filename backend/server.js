import express from "express";
import pg from "pg";
import dotenv from "dotenv";
import cors from "cors";

dotenv.config();
const app = express();
 app.use(cors());
 app.use(express.json());

const pool = new pg.Pool({
  user: process.env.PGUSER,
  host: process.env.PGHOST,
  database: process.env.PGDATABASE,
  password: process.env.PGPASSWORD,
  port: process.env.PGPORT,
});

app.get("/users", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM Utilisateur;");
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.get("/users/:email", async (req, res) => {
  const userEmail = req.params.email;  

  try {
    const result = await pool.query("SELECT * FROM Utilisateur WHERE email = $1;", [userEmail]);
    if (result.rows.length === 0) {
      return res.status(404).json({ error: "User not found" });
    }
    res.json(result.rows[0]); 
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.get("/hotel/:email", async (req, res) => {  
  const { email } = req.params; 
  let formattedEmail = email.replace(/_/g, ' ');  
  formattedEmail = formattedEmail.split('@')[0];
  formattedEmail = formattedEmail
    .split(' ') 
    .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase()) 
    .join(' ');

  try {
    console.log("email: " , formattedEmail);
    const result = await pool.query("SELECT * FROM Hotel WHERE hotel_nom = $1", [formattedEmail]);
    console.log("result: ", result);
    if (result.rows.length > 0) {
      res.json(result.rows);
    } else {
      res.status(404).json({ message: "Hotel not found: " + formattedEmail });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.put("/hotel/update/:name", async (req, res) => {
  const { name } = req.params;  
  const { hotel_nom, category, hotel_adresse, hotel_num_tel, hotel_email, nombre_chambre } = req.body; 
  console.log(hotel_nom); 

  try {
    const updateQuery = `
    UPDATE Hotel
    SET hotel_nom = $1, category = $2, hotel_adresse = $3, hotel_num_tel = $4, hotel_email = $5, nombre_chambre = $6
    WHERE hotel_nom = $7
    RETURNING *;  
  `;
  

    
    const values = [
      hotel_nom,
      category,
      hotel_adresse,
      hotel_num_tel,
      hotel_email,
      nombre_chambre,
      name  
    ];

    const updateResult = await pool.query(updateQuery, values);
    console.log(updateResult);

    if (updateResult.rows.length > 0) {
      res.json(updateResult.rows[0]);  
    } else {
      res.status(404).json({ message: "Hotel not found" + hotel_nom});  
    }
  } catch (err) {
    res.status(500).json({ error: err.message }); 
  }
});

app.get('/staff/:nom_hotel', async (req, res) => {
  const { nom_hotel } = req.params;  
  try {
    const query = `
      SELECT *
      FROM Employee
      WHERE nom_hotel = $1;  
    `;

    const result = await pool.query(query, [nom_hotel]);

    if (result.rows.length > 0) {
      res.json(result.rows);
    } else {
      res.status(404).json({ message: `No staff found for hotel: ${nom_hotel}` });
    }
  } catch (error) {
    console.error("Error fetching staff data: ", error);
    res.status(500).json({ error: error.message });  
  }
});


app.post('/getHotelsWithAvailableRooms', async (req, res) => {
  const { startDate, endDate, capacity, price, size, hotelCategory, hotelChain, totalRooms } = req.body;

  console.log("Received filters:", req.body);

  const startDateFilter = startDate === 'any' || startDate === '' ? null : startDate;
  const endDateFilter = endDate === 'any' || endDate === '' ? null : endDate;
  const hotelCategoryFilter = hotelCategory === 'any' || hotelCategory === '' ? null : hotelCategory;
  const hotelChainFilter = hotelChain === 'any' || hotelChain === '' ? null : hotelChain;

  const sizeFilter = size === 'any' || size === '' ? 1 : size;

  console.log("Filters after conversion:", {
    startDateFilter, endDateFilter, hotelCategoryFilter, hotelChainFilter, sizeFilter
  });

  const minCapacity = capacity || 1;  
  const maxCapacity = capacity || 100;  
  const minPrice = price[0] || 0;  
  const maxPrice = price[1] || 2500000; 
  const minTotalRooms = totalRooms[0] || 0;  
  const maxTotalRooms = totalRooms[1] || 5000000;  

  try {
    const query = `
      SELECT
          h.hotel_nom,
          h.description AS hotel_description,
          h.hotel_adresse,
          h.hotel_num_tel,
          h.hotel_email,
          h.category,
          h.nombre_etoile,
          h.nombre_chambre,
          h.hotel_chaine,
          c.chambre_num,
          c.commodites,
          c.prix,
          c.capacite,
          c.vue,
          c.extensible,
          c.superficie_m2,
          c.description AS chambre_description
      FROM
          Hotel h
      JOIN
          Chambre c ON h.hotel_id = c.hotel_id
      LEFT JOIN
          Reservation r ON c.chambre_num = r.chambre_num
      WHERE
          c.disponible = TRUE
          AND (r.status IS NULL OR r.status NOT IN ('pending', 'confirmed') 
               OR r.date_depart < NOW() OR r.date_arrivee > NOW())
          AND (
              ($1::DATE IS NULL OR r.date_arrivee > $1::DATE) 
              AND ($2::DATE IS NULL OR r.date_depart < $2::DATE)
          )
          AND ($3::TEXT IS NULL OR h.category = $3::TEXT)
          AND ($4::INTEGER IS NULL OR h.hotel_chaine = $4::INTEGER)
          AND (c.capacite >= $5)
          AND (c.prix BETWEEN $6 AND $7)
          AND (
            CAST(c.superficie_m2 AS INTEGER) >= $8 
          )
          AND (h.nombre_chambre BETWEEN $9 AND $10)
      ORDER BY
          h.hotel_nom;
    `;

    const values = [
      startDateFilter,  
      endDateFilter,    
      hotelCategoryFilter,
      hotelChainFilter,   
      minCapacity,       
      minPrice,          
      maxPrice,           
      sizeFilter,         
      minTotalRooms,     
      maxTotalRooms       
    ];

    console.log("Query values:", values); 
    console.log("SQL Query:", query); 

    const result = await pool.query(query, values);
    
    const hotels = result.rows;
    console.log("rowshere:: " ,hotels.length);

    if (hotels.length > 0) {
      res.json({ hotels });
    } else {
      res.json({ hotels: [] });
    }

  } catch (err) {
    console.error('Error fetching hotels:', err.message);
    res.status(500).json({ error: 'Error fetching hotels', details: err });
  }
});

app.post('/hotel/addEmployee', async (req, res) => {
  const {
    employe_NAS,
    prenom,
    nom,
    employe_hotel,
    employe_addresse,
    employe_num_tel,
    role_id
  } = req.body;

  console.log(employe_addresse);

  if (!employe_NAS || !prenom || !nom || !employe_hotel || !employe_addresse || !employe_num_tel || !role_id) {
    return res.status(400).json({ error: 'All fields are required' });
  }

  try {
    const result = await pool.query(
      `INSERT INTO Employee (employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id)
       VALUES ($1, $2, $3, $4, $5, $6, $7)
       RETURNING employe_NAS, prenom, nom, nom_hotel, employe_adresse, employe_num_tel, role_id`,
      [employe_NAS, prenom, nom, employe_hotel, employe_addresse, employe_num_tel, role_id]
    );
if (result.rowCount > 0) {
  res.status(201).json({
    message: 'Employee added successfully',
    employee: result.rows[0], 
  });
} else {
  res.status(500).json({ error: 'Failed to insert employee' });
}

  } catch (err) {
    console.error('Error adding employee:', err);
  }
});

app.get('/reservations/:hotelid', async (req, res) => {
  const hotelId = req.params.hotelid;
  console.log(hotelId);

  try {
    const result = await pool.query(
      'SELECT * FROM Reservation WHERE hotel_id = $1',
      [hotelId]
    );

    if (result.rows.length === 0) {
      return res.status(404).json({ message: 'No reservations found for this hotel' });
    }
    console.log(result.rows);

    res.status(200).json(result.rows);
  } catch (error) {
    console.error('Error fetching reservations:', error);
    res.status(500).json({ message: 'server errorr' });
  }
});

app.post('/paiement/addPaiement', async (req, res) => {
  const { location_id, paiement_date, methode, montant, cvv } = req.body;

  if (!location_id || !paiement_date || !methode || !montant || !cvv) {
    return res.status(400).json({ error: 'All fields are required' });
  }

  try {
    const result = await pool.query(
      `INSERT INTO Paiement (location_id, paiement_date, methode, montant, cvv) 
       VALUES ($1, $2, $3, $4, $5) 
       RETURNING paiement_id, location_id, paiement_date, methode, montant, cvv`,
      [location_id, paiement_date, methode, montant, cvv]
    );

    if (result.rowCount > 0) {
      res.status(201).json({
        message: 'Paiement added successfully',
        paiement: result.rows[0],
      });
    } else {
      res.status(500).json({ error: 'Failed to insert paiement' });
    }
  } catch (err) {
    console.error('Error adding paiement:', err);
    res.status(500).json({ error: 'pas marcher' });
  }
});

app.put('/reservation/update-status/:reservation_id', async (req, res) => {
  const { reservation_id } = req.params;
  
  if (!reservation_id) {
    return res.status(400).json({ error: 'Reservation ID is missing' });
  }

  try {
    const result = await pool.query(
      `UPDATE Reservation 
       SET status = $1 
       WHERE reservation_id = $2 
       RETURNING reservation_id, status`,
      ['confirmed', reservation_id]
    );

    if (result.rowCount > 0) {
      res.status(200).json({
        message: 'Reservation status updated to confirmed',
        reservation: result.rows[0],
      });
    } else {
      res.status(404).json({ error: 'Reservation not found' });
    }
  } catch (err) {
    console.error('Error updating reservation status:', err);
    res.status(500).json({ error: 'erreur server' });
  }
});

app.post('/location/add', async (req, res) => {
  const {
    client_NAS,
    hotel_id,
    status,
    chambre_num,
    employe_NAS,
    date_location,
    date_arrivee,
    date_depart
  } = req.body;

  if (!client_NAS || !hotel_id || !status || !chambre_num || !employe_NAS || !date_location || !date_arrivee || !date_depart) {
    return res.status(400).json({ error: 'missing fields' });
  }

  try {
    const result = await pool.query(
      `INSERT INTO Location (client_NAS, hotel_id, status, chambre_num, employe_NAS, date_location, date_arrivee, date_depart)
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
       RETURNING location_id, client_NAS, hotel_id, status, chambre_num, employe_NAS, date_location, date_arrivee, date_depart`,
      [client_NAS, hotel_id, status, chambre_num, employe_NAS, date_location, date_arrivee, date_depart]
    );

    if (result.rowCount > 0) {
      res.status(201).json({
        message: 'Location added successfully',
        location: result.rows[0],
      });
    } else {
      res.status(500).json({ error: 'Failed to insert location' });
    }
  } catch (err) {
    console.error('Error adding location:', err);
    res.status(500).json({ error: 'server error' });
  }
});

app.put('/chambre/edit/:chambre_num', async (req, res) => {
  const { chambre_num } = req.params;  
  const {
    hotel_nom,
    disponible,
    commodites,
    hotel_id,
    prix,
    capacite,
    vue,
    extensible,
    superficie_m2,
    problemes,
    description
  } = req.body;

  if (!hotel_nom || !disponible || !commodites || !hotel_id || !prix || !capacite || !vue || !extensible || !superficie_m2 || !problemes || !description) {
    return res.status(400).json({ error: 'missing fields' });
  }

  try {
    const result = await pool.query(
      `UPDATE Chambre 
       SET hotel_nom = $1, disponible = $2, commodites = $3, hotel_id = $4, prix = $5, capacite = $6, vue = $7, extensible = $8, superficie_m2 = $9, problemes = $10, description = $11 
       WHERE chambre_num = $12
       RETURNING *`,
      [hotel_nom, disponible, commodites, hotel_id, prix, capacite, vue, extensible, superficie_m2, problemes, description, chambre_num]
    );

    if (result.rowCount === 0) {
      return res.status(404).json({ error: 'Chambre not found' });
    }

    res.status(200).json({
      message: 'Chambre changer successfully',
      chambre: result.rows[0],
    });

  } catch (err) {
    console.error('Error updating chambre:', err);
    res.status(500).json({ error: 'server error' });
  }
});

app.get('/hotel/:hotel_id/rooms', async (req, res) => {
  const { hotel_id } = req.params;  

  try {
    const result = await pool.query(
      `SELECT * FROM Chambre WHERE hotel_id = $1`,
      [hotel_id]
    );

    if (result.rowCount === 0) {
      return res.status(404).json({ error: 'No rooms found for this hotel' });
    }

    res.status(200).json({
      message: 'Rooms retrieved successfully',
      rooms: result.rows,
    });

  } catch (err) {
    console.error('Error retrieving rooms:', err);
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.get('/location/:client_NAS', async (req, res) => {
  const { client_NAS } = req.params;
  
  try {
    const result = await pool.query(
      `SELECT * FROM Location WHERE client_NAS = $1`,
      [client_NAS]
    );

    if (result.rowCount === 0) {
      return res.status(404).json({ error: 'aaucune found for this client' });
    }

    res.status(200).json({ locations: result.rows });
  } catch (err) {
    console.error('Error durant fetching de locations:', err);
    res.status(500).json({ error: 'server error' });
  }
});

app.post('/reservation/create', async (req, res) => {
  const { client_NAS, hotel_id, chambre_num, date_reservation, date_arrivee, date_depart, status } = req.body;

  if (!client_NAS || !hotel_id || !chambre_num || !date_reservation || !date_arrivee || !date_depart || !status) {
    return res.status(400).json({ error: 'Missing fields' });
  }

  try {
    const result = await pool.query(
      `INSERT INTO Reservation (client_NAS, hotel_id, chambre_num, date_reservation, date_arrivee, date_depart, status)
       VALUES ($1, $2, $3, $4, $5, $6, $7) 
       RETURNING *`,
      [client_NAS, hotel_id, chambre_num, date_reservation, date_arrivee, date_depart, status]
    );

    if (result.rowCount > 0) {
      res.status(201).json({
        message: 'rservation created successfully',
        reservation: result.rows[0],
      });
    } else {
      res.status(500).json({ error: 'Failed ' });
    }
  } catch (err) {
    console.error('Error while creating our reservation:', err);
    res.status(500).json({ error: 'server error' });
  }
});

app.delete('/reservation/delete/:reservation_id', async (req, res) => {
  const { reservation_id } = req.params;

  try {
    const result = await pool.query(
      `DELETE FROM Reservation WHERE reservation_id = $1 RETURNING *`,
      [reservation_id]
    );

    if (result.rowCount === 0) {
      return res.status(404).json({ error: 'aucune reservation match' });
    }

    res.status(200).json({
      message: 'Reservation deleted successfully',
      reservation: result.rows[0],
    });
  } catch (err) {
    console.error('failed while deleting reservation:', err);
    res.status(500).json({ error: 'Server error' });
  }
});



const PORT = process.env.PORT || 5252;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));