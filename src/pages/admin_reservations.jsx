import { useState, useEffect } from "react";
import AdminHeader from "../components/ui/adminHeader";
import ReservationCard from "../components/ui/reservation_card";
import { useLocation } from "react-router-dom";

export default function AdminReservations() {
  const [reservations, setReservations] = useState([]);
  const [hotel, setHotel] = useState(null);
  const location = useLocation();

  useEffect(() => {
    const storedHotel = localStorage.getItem("user");
    if (storedHotel) {
      setHotel(JSON.parse(storedHotel));
    }
  }, []);

  useEffect(() => {
    const getReservations = async () => {
      if (hotel) {
        try {
          const hotelId = hotel[0].hotel_id
          const response = await fetch(
            `http://localhost:5252/reservations/${hotelId}`
          );
          const data = await response.json();
          console.log(data);
          setReservations(data); 
        } catch (error) {
          console.error("Error fetching reservations:", error);
        }
      }
    };
    
    if (hotel) {
      getReservations(); 
    }
  }, [hotel]); 


  return (
    <>
      <AdminHeader />
      <div className="p-6">
        <h1 className="text-2xl font-bold mb-4">Reservations</h1>
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
          {reservations.map((reservation) => (
            console.log(reservation),
            <ReservationCard key={reservation.reservation_id} reservation={reservation} />
          ))}
        </div>
      </div>
    </>
  );
}
