import { useState } from "react";
import { Card, CardHeader, CardTitle, CardDescription, CardContent } from "../ui/card";
import { Button } from "../ui/button";
import { Sheet, SheetTrigger, SheetContent } from "../ui/sheet";

export default function RoomCard({ room, onSave }) {
  const [isOpen, setIsOpen] = useState(false);
  const [roomDetails, setRoomDetails] = useState({ ...room });  
  const [tempRoomDetails, setTempRoomDetails] = useState({ ...room });  
  const [isSubmitting, setIsSubmitting] = useState(false);  


  const handleSave = () => {
    setIsSubmitting(true); 
    setTimeout(() => {
      setRoomDetails(tempRoomDetails); 
      onSave(tempRoomDetails); 
      setIsSubmitting(false); 
      setIsOpen(false); 
    }, 1000); 
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setTempRoomDetails((prevDetails) => ({
      ...prevDetails,
      [name]: value,
    }));
  };

  const handleCheckboxChange = (e) => {
    const { name, checked } = e.target;
    setTempRoomDetails((prevDetails) => ({
      ...prevDetails,
      [name]: checked,
    }));
  };

  return (
    <Card className="bg-white shadow-lg rounded-lg p-4 hover:shadow-xl transition-all duration-300">
      <CardHeader>
        <CardTitle className="text-xl font-semibold text-gray-800">Room {roomDetails.chambre_num}</CardTitle>
        <CardDescription className="text-gray-500">Status: {roomDetails.disponible ? "Available" : "Unavailable"}</CardDescription>
      </CardHeader>
      <CardContent>
        <div className="space-y-2 text-sm">
          <p><strong>Room Number:</strong> {roomDetails.chambre_num}</p>
          <p><strong>Capacity:</strong> {roomDetails.capacite} people</p>
          <p><strong>Price:</strong> ${roomDetails.prix}</p>
          <p><strong>Room View:</strong> {roomDetails.vue}</p>
          <p><strong>Area:</strong> {roomDetails.superficie_m2} m²</p>
          <p><strong>Extensible:</strong> {roomDetails.extensible ? "Yes" : "No"}</p>
          <p><strong>Commodities:</strong> {roomDetails.commodites}</p>
          <p><strong>Problems:</strong> {roomDetails.problemes ? "Yes" : "No"}</p>
          <p><strong>Description:</strong> {roomDetails.description}</p>
        </div>

        <div className="flex justify-center mt-4">
          <Button variant="outline" className="text-blue-600 hover:bg-blue-100" onClick={() => setIsOpen(true)}>
            Edit Room Details
          </Button>
        </div>
      </CardContent>

      <Sheet open={isOpen} onOpenChange={setIsOpen}>
        <SheetContent className="bg-white p-6 rounded-lg shadow-lg max-h-screen overflow-y-auto">
          <h2 className="text-xl font-bold mb-4">Edit Room Details</h2>
          
          <div className="space-y-4">
            <div className="flex flex-col space-y-2">
              <label htmlFor="prix" className="text-sm font-semibold">Price</label>
              <input
                type="number"
                name="prix"
                id="prix"
                value={tempRoomDetails.prix}
                onChange={handleChange}
                placeholder="Price"
                className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
              />
            </div>

            <div className="flex flex-col space-y-2">
              <label htmlFor="capacite" className="text-sm font-semibold">Capacity</label>
              <input
                type="number"
                name="capacite"
                id="capacite"
                value={tempRoomDetails.capacite}
                onChange={handleChange}
                placeholder="Capacity"
                className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
              />
            </div>

            <div className="flex flex-col space-y-2">
              <label htmlFor="vue" className="text-sm font-semibold">Room View</label>
              <input
                type="text"
                name="vue"
                id="vue"
                value={tempRoomDetails.vue}
                onChange={handleChange}
                placeholder="Room View"
                className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
              />
            </div>

            <div className="flex flex-col space-y-2">
              <label htmlFor="superficie_m2" className="text-sm font-semibold">Room Area (m²)</label>
              <input
                type="text"
                name="superficie_m2"
                id="superficie_m2"
                value={tempRoomDetails.superficie_m2}
                onChange={handleChange}
                placeholder="Room Area (m²)"
                className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
              />
            </div>

            <div className="flex flex-col space-y-2">
              <label htmlFor="commodites" className="text-sm font-semibold">Commodities</label>
              <textarea
                name="commodites"
                id="commodites"
                value={tempRoomDetails.commodites}
                onChange={handleChange}
                placeholder="Commodities"
                className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
              />
            </div>

            <div className="flex flex-col space-y-2">
              <label htmlFor="description" className="text-sm font-semibold">Description</label>
              <textarea
                name="description"
                id="description"
                value={tempRoomDetails.description}
                onChange={handleChange}
                placeholder="Description"
                className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
              />
            </div>

            <div className="flex items-center space-x-2">
              <label className="text-sm">Available</label>
              <input
                type="checkbox"
                name="disponible"
                checked={tempRoomDetails.disponible}
                onChange={handleCheckboxChange}
                className="h-5 w-5"
              />
            </div>

            <div className="flex items-center space-x-2">
              <label className="text-sm">Has Problems</label>
              <input
                type="checkbox"
                name="problemes"
                checked={tempRoomDetails.problemes}
                onChange={handleCheckboxChange}
                className="h-5 w-5"
              />
            </div>

            <Button
              onClick={handleSave}
              disabled={isSubmitting} 
              className="w-full mt-4 bg-green-500 text-white hover:bg-green-600"
            >
              {isSubmitting ? "Saving..." : "Save Room Details"}
            </Button>
          </div>
        </SheetContent>
      </Sheet>
    </Card>
  );
}
