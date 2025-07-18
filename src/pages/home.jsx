import Header from "../components/ui/header";
import HotelCard from "../components/ui/HotelCard";
import Filters from "../components/ui/filters";
import { useState, useEffect } from "react";
import { useNavigate } from 'react-router-dom'; 
import axios from "axios";

function Home() {
  const [isLoggedIn, setIsLoggedIn] = useState(null);
  const [user, setUser] = useState(null);
  const [appliedFilters, setAppliedFilters] = useState(null);
  const [hotels, setHotels] = useState([]);  
  const navigate = useNavigate();

  useEffect(() => {
    const userLoggedIn = localStorage.getItem('isLoggedIn') === 'true';
    setIsLoggedIn(userLoggedIn); 
  }, []);

  useEffect(() => {
    if (isLoggedIn === null) {
      return; 
    }
    
    if (!isLoggedIn) {
      navigate('/login');
    }
  }, [isLoggedIn, navigate]);

  useEffect(() => {
    const storedUser = localStorage.getItem("user");
    if (storedUser) {
      setUser(JSON.parse(storedUser));
    }
  }, []);

  useEffect(() => {
    if (appliedFilters) {
      fetchHotelsWithAvailableRooms();
    }
  }, [appliedFilters]); 

  const fetchHotelsWithAvailableRooms = async () => {
    console.log(appliedFilters);
    try {
      const response = await axios.post('http://localhost:5252/getHotelsWithAvailableRooms', {
          startDate: appliedFilters.startDate,
          endDate: appliedFilters.endDate,
          capacity: appliedFilters.capacity,
          price: appliedFilters.price,
          size: appliedFilters.size,
          hotelCategory: appliedFilters.hotelCategory,
          hotelChain: appliedFilters.hotelChain,
          totalRooms: appliedFilters.totalRooms
      });
      const hotelsMap = transformHotels(response.data.hotels);
      setHotels(hotelsMap);  
    } catch (error) {
      console.error('Error fetching hotels:', error);
    }
  };

  const handleApplyFilters = (filters) => {
    const startDate = filters.startDate === '' ? null : filters.startDate;
    const endDate = filters.endDate === '' ? null : filters.endDate;
    const hotelCategory = filters.hotelCategory === '' ? null : filters.hotelCategory;
    const hotelChain = filters.hotelChain === '' ? null : filters.hotelChain;
    const size = filters.size === '' ? 1 : filters.size;

    const capacity = filters.capacity || 0; 
    const price = filters.price.length === 2 ? filters.price : [0, 25000]; 
    const totalRooms = filters.totalRooms.length === 2 ? filters.totalRooms : [1, 100]; 

    setAppliedFilters({
      startDate,
      endDate,
      capacity,
      hotelCategory,
      hotelChain,
      size,
      price,
      totalRooms
    });
  };

  function transformHotels(queryResult) {
    const hotelsMap = {};

    queryResult.forEach(room => {
      const hotelId = room.hotel_nom;  

      if (!hotelsMap[hotelId]) {
        hotelsMap[hotelId] = {
          name: room.hotel_nom,
          description: room.hotel_description,
          location: room.hotel_adresse,
          pricePerNight: room.prix,  
          image: "https://www.pexels.com/photo/tree-beside-building-3460599/",  
          rooms: []  
        };
      }

      hotelsMap[hotelId].rooms.push({
        name: `Room ${room.chambre_num}`, 
        capacity: room.capacite,
        amenities: room.commodites.split(', '),  
        price: room.prix  
      });
    });

    return Object.values(hotelsMap);
  }

  return (
    <>
      <Header />
      <br />
      <Filters onApply={handleApplyFilters} />
      {appliedFilters ? (
        <>
          {hotels.length > 0 ? (
            hotels.map((hotel) => (
              <div key={hotel.name}>
                {hotel.rooms.length > 0 ? (
                  <HotelCard hotel={hotel} filteredRooms={hotel.rooms} />
                ) : (
                  <div>No rooms available for {hotel.name}</div>
                )}
              </div>
            ))
          ) : (
            <div>No hotels available based on the applied filters.</div>
          )}
        </>
      ) : (
        <div>Apply filters to view available rooms</div>
      )}
    </>
  );
}

export default Home;
