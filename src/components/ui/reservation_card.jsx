import { useState, useEffect } from "react";
import { Card, CardHeader, CardTitle, CardDescription, CardContent } from "../ui/card";
import { Button } from "../ui/button";
import { Sheet, SheetTrigger, SheetContent } from "../ui/sheet";
import axios from "axios";

export default function ReservationCard({ reservation }) {
  const [isOpen, setIsOpen] = useState(false);
  const [isConfirmed, setIsConfirmed] = useState(reservation.status === "confirmed");
  const [cvv, setCvv] = useState("");
  const [employeeNas, setEmployeeNas] = useState("");
  const [expiryMonth, setExpiryMonth] = useState("");
  const [expiryYear, setExpiryYear] = useState("");
  const [formError, setFormError] = useState("");
  const [staffData, setStaffData] = useState([]);
  const [hotelNom, setHotelNom] = useState(null);

  useEffect(() => {
    const hotelData = JSON.parse(localStorage.getItem('user'));
    if (!hotelData || hotelData.length === 0) {
      return;
    }
    const name = hotelData && hotelData.length > 0 ? hotelData[0].hotel_nom : null;
    setHotelNom(name);

    if (!hotelNom) {
      return;
    }

    const fetchStaffData = async () => {
      try {
        const response = await axios.get(`http://localhost:5252/staff/${hotelNom}`);
        console.log(response.data);
        const staffList = response.data.map((staff) => ({
          firstName: staff.prenom,
          lastName: staff.nom,
          nas: staff.employe_nas,
          phoneNumber: staff.employe_num_tel,
        }));
        setStaffData(staffList);
      } catch (err) {
        console.error('Error fetching staff data: ', err);
      }
    };

    fetchStaffData();
  }, []);

  const checkStaffByNAS = (nasToCheck) => {
    for (let i = 0; i < staffData.length; i++) {
      if (staffData[i].nas === nasToCheck) {
        return true;  
      }
    }
    return false;  
  };
  
  const handleConfirm =  async () => {

    try {
      const response = await axios.get(`http://localhost:5252/staff/${hotelNom}`);
      console.log(response.data);
      const staffList = response.data.map((staff) => ({
        firstName: staff.prenom,
        lastName: staff.nom,
        nas: staff.employe_nas,
        phoneNumber: staff.employe_num_tel,
      }));
      setStaffData(staffList);
    } catch (err) {
      console.error('Error fetching staff data: ', err);
    }

    let validStaff = checkStaffByNAS(100000011);

    const cvvPattern = /^\d{3}$/;
    const expiryMonthPattern = /^(0[1-9]|1[0-2])$/;

    if (!cvvPattern.test(cvv)) {
      setFormError("CVV must be exactly 3 digits");
      return;
    }

    if (!expiryMonthPattern.test(expiryMonth)) {
      setFormError("Expiry Month must be a valid month (01-12)");
      return;
    }
    
 
    if(validStaff){
      setIsOpen(false);
      setFormError(""); 
    }
    
  };

    

  return (
    <Card className="bg-white shadow-lg rounded-lg p-4 hover:shadow-xl transition-all duration-300">
      <CardHeader>
        <CardTitle className="text-xl font-semibold text-gray-800">
          Client NAS: {reservation.client_nas}  
        </CardTitle>
        <CardDescription className="text-gray-500">{reservation.status}</CardDescription>
      </CardHeader>
      <CardContent>
        <div className="space-y-2 text-sm">
        <p><strong>Reservation Date:</strong> {new Date(reservation.date_reservation).toLocaleDateString("en-CA")}</p>
        <p><strong>Arrival:</strong> {new Date(reservation.date_arrivee).toLocaleDateString("en-CA")}</p>
        <p><strong>Departure:</strong> {new Date(reservation.date_depart).toLocaleDateString("en-CA")}</p>
        <p><strong>Room Number:</strong> {reservation.chambre_num}</p>

        </div>

        {reservation.status === "Pending" && (
          <div className="flex justify-center mt-4">
            <Button variant="outline" className="text-green-600 hover:bg-green-100" onClick={() => setIsOpen(true)}>
              Confirm Reservation
            </Button>
          </div>
        )}
      </CardContent>

      <Sheet open={isOpen} onOpenChange={setIsOpen}>
        <SheetContent className="bg-white p-6 rounded-lg shadow-lg">
          <h2 className="text-xl font-bold mb-4">Confirm Reservation</h2>
          <p className="text-gray-600 mb-4">Please enter payment details and your employee NAS to confirm this reservation.</p>
          
          <div className="space-y-4">
            <input
              type="text"
              value={cvv}
              onChange={(e) => setCvv(e.target.value)}
              placeholder="CVV (3 digits)"
              className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
            />
            <input
              type="text"
              value={employeeNas}
              onChange={(e) => setEmployeeNas(e.target.value)}
              placeholder="Employee NAS (9 digits)"
              className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
            />
            <input
              type="text"
              value={expiryMonth}
              onChange={(e) => setExpiryMonth(e.target.value)}
              placeholder="Expiry Month (01-12)"
              className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
            />
            <input
              type="text"
              value={expiryYear}
              onChange={(e) => setExpiryYear(e.target.value)}
              placeholder="Expiry Year (e.g., 2025)"
              className="border border-gray-300 p-3 w-full rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-500"
            />

            {formError && <p className="text-red-600 text-sm">{formError}</p>}

            <Button
              onClick={handleConfirm}
              className="w-full mt-4 bg-green-500 text-white hover:bg-green-600"
            >
              Confirm Reservation
            </Button>
          </div>
        </SheetContent>
      </Sheet>
    </Card>
  );
}
