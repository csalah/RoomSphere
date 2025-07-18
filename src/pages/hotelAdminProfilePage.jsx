import { useState, useEffect } from "react";
import { Card, CardHeader, CardContent, CardTitle, CardDescription } from "../components/ui/card";
import { Button } from "../components/ui/button";
import { Input } from "../components/ui/input";
import AdminHeader from "../components/ui/adminHeader";
import { toast } from "sonner";
import axios from "axios";

const HotelAdminProfilePage = () => {
  const [hotel, setHotel] = useState(null); 
  const [tempHotel, setTempHotel] = useState(null); 
  const [isEditing, setIsEditing] = useState(false);
  

  useEffect(() => {
    const user = JSON.parse(localStorage.getItem("user"));
    if (user) {
      setHotel(user); 
      setTempHotel(user);
    }
  }, []); 

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setTempHotel((prevHotel) => {
      const updatedHotel = [...prevHotel];
      updatedHotel[0] = {
        ...updatedHotel[0],
        [name]: value, 
      };
      return updatedHotel; 
    });
  };

  const handleSaveChanges = async () => {
    if (!tempHotel) {
      toast.error("Hotel information is missing!");
      return;
    }
  
    const { hotel_nom, category, hotel_adresse, hotel_num_tel, hotel_email, nombre_chambre } = tempHotel[0];
  
    if (!hotel_nom || !category || !hotel_adresse || !hotel_num_tel || !hotel_email || !nombre_chambre) {
      toast.error("Please verify that all fields are filled with valid information.");
      return;
    }
  
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(hotel_email)) {
      toast.error("Please enter a valid email address.");
      return;
    }
  
    const phonePattern = /^\(?\d{3}\)?[-.\s]?\d{3}[-.\s]?\d{4}$/;
    if (!phonePattern.test(hotel_num_tel)) {
      toast.error("Please enter a valid phone number.");
      return;
    }
  
    if (isNaN(nombre_chambre) || nombre_chambre <= 0) {
      toast.error("Please enter a valid number of rooms.");
      return;
    }
    
    try {
        const hotelData = {
            hotel_nom,
            category,
            hotel_adresse,
            hotel_num_tel,
            hotel_email,
            nombre_chambre
          };
          console.log(hotelData);
          const response = await axios.put(`http://localhost:5252/hotel/update/${hotel_nom}`, hotelData);

      if (!response === 200) {
        throw new Error("Failed to update hotel information");
      }
      setHotel(tempHotel);
      toast.success("Hotel information updated successfully.");
      setIsEditing(false);  
    } catch (error) {
      console.error("Error updating hotel: ", error);
      toast.error("An error occurred while updating the hotel.");
    }
  };
  

  const handleEditToggle = () => {
    setIsEditing(!isEditing);
  };

  if (!hotel) {
    return <div>Loading...</div>;
  }

  if (!tempHotel) {
    return <div>Loading...</div>;
  }

  return (
    <>
      <AdminHeader />
      <div className="max-w-7xl mx-auto p-6">
        <h1 className="text-3xl font-semibold mb-8">Hotel Admin Profile</h1>

        <Card>
          <CardHeader>
            <CardTitle>{hotel[0].hotel_nom}</CardTitle>
            <CardDescription>Your hotel is currently rated {hotel[0].nombre_etoile} Stars</CardDescription>
          </CardHeader>

          <CardContent>
            <div className="space-y-4">
              <div>
                <strong>Category:</strong>
                {isEditing ? (
                  <Input
                    name="category"
                    value={tempHotel[0].category} 
                    onChange={handleInputChange}
                    className="mt-1 w-full"
                  />
                ) : (
                  <p>{hotel[0].category}</p>
                )}
              </div>

              <div>
                <strong>Address:</strong>
                {isEditing ? (
                  <Input
                    name="hotel_adresse"
                    value={tempHotel[0].hotel_adresse} 
                    onChange={handleInputChange}
                    className="mt-1 w-full"
                  />
                ) : (
                  <p>{hotel[0].hotel_adresse}</p>
                )}
              </div>

              <div>
                <strong>Phone:</strong>
                {isEditing ? (
                  <Input
                    name="hotel_num_tel"
                    value={tempHotel[0].hotel_num_tel} 
                    onChange={handleInputChange}
                    className="mt-1 w-full"
                  />
                ) : (
                  <p>{hotel[0].hotel_num_tel}</p>
                )}
              </div>

              <div>
                <strong>Email:</strong>
                {isEditing ? (
                  <Input
                    name="hotel_email"
                    input type="email"
                    value={tempHotel[0].hotel_email} 
                    onChange={handleInputChange}
                    className="mt-1 w-full"
                  />
                ) : (
                  <p>{hotel[0].hotel_email}</p>
                )}
              </div>

              <div>
                <strong>Total rooms:</strong>
                {isEditing ? (
                  <Input
                    name="nombre_chambre"
                    value={tempHotel[0].nombre_chambre} 
                    onChange={handleInputChange}
                    className="mt-1 w-full"
                  />
                ) : (
                  <p>{hotel[0].nombre_chambre}</p>
                )}
              </div>

              <div className="mt-4">
                <Button onClick={handleEditToggle}>
                  {isEditing ? "Cancel" : "Edit Hotel Details"}
                </Button>
                {isEditing && (
                  <Button className="ml-4" onClick={handleSaveChanges}>
                    Save Changes
                  </Button>
                )}
              </div>
            </div>
          </CardContent>
        </Card>
      </div>
    </>
  );
};

export default HotelAdminProfilePage;
