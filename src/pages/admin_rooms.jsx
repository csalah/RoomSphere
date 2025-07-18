import { useState, useEffect } from "react";
import RoomCard from "../components/ui/roomCard";
import AdminHeader from "../components/ui/adminHeader";

const mockRoomsData = [
  {
    chambre_num: 101,
    hotel_nom: "Grand Hotel",
    disponible: true,
    commodites: "WiFi, Air Conditioning",
    prix: 150.00,
    capacite: 2,
    vue: "Ocean View",
    extensible: true,
    superficie_m2: "30 m²",
    problemes: false,
    description: "A luxurious room with a beautiful ocean view.",
  },
  {
    chambre_num: 102,
    hotel_nom: "Grand Hotel",
    disponible: false,
    commodites: "WiFi, TV",
    prix: 120.00,
    capacite: 2,
    vue: "City View",
    extensible: false,
    superficie_m2: "25 m²",
    problemes: true,
    description: "Comfortable room with a view of the city.",
  },
];

export default function AdminRooms() {
  const [rooms, setRooms] = useState(mockRoomsData);
  const [hotel, setHotel] = useState(null);

useEffect(() => {
  const storedHotel = localStorage.getItem("user");
  if (storedHotel) {
    setHotel(JSON.parse(storedHotel));
  }
}, []);

console.log(hotel);

  const handleSaveRoomDetails = (updatedRoom) => {
    setRooms((prevRooms) =>
      prevRooms.map((room) =>
        room.chambre_num === updatedRoom.chambre_num ? updatedRoom : room
      )
    );
  };

  return (
    <>
    <AdminHeader />
    <br />
    <div className="space-y-6">
      {rooms.map((room) => (
        <RoomCard key={room.chambre_num} room={room} onSave={handleSaveRoomDetails} />
      ))}
    </div>
    </>
  );
}
