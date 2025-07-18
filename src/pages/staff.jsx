import React, { useState, useEffect } from 'react';
import { Button } from '../components/ui/button';
import { Dialog, DialogTrigger, DialogContent, DialogHeader, DialogFooter } from '../components/ui/dialog';
import { Input } from '../components/ui/input';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '../components/ui/select';
import axios from 'axios';
import AdminHeader from '../components/ui/adminHeader';
import { toast } from 'sonner';

const Staff = () => {
  const [staffData, setStaffData] = useState([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  const [hotelNom, setHotelNom] = useState(null);
  const [hotelAddresse, setHotelAddresse] = useState(null);
  const [newStaff, setNewStaff] = useState({
    prenom: '',
    nom: '',
    employe_NAS: '',
    employe_num_tel: '',
    role_id: '',
    employe_num_tel: '',
    employe_addresse:'',
    employe_hotel: ''
  });

  useEffect(() => {
    const hotelData = JSON.parse(localStorage.getItem('user'));
    if (!hotelData || hotelData.length === 0) {
      setError('No hotel data found');
      setLoading(false);
      return;
    }
    const hotelNom = hotelData[0].hotel_nom;
    const hotelAddresse = hotelData[0].hotel_adresse;
    setHotelAddresse(hotelAddresse);
    setHotelNom(hotelNom);

    if (!hotelNom) {
      setError('No hotel name found in localStorage');
      setLoading(false);
      return;
    }

    const roleMap = {
      1: "Receptionist",
      2: "Housekeeper",
      3: "Concierge",
      4: "Manager",
      5: "Bellhop",
    };

    const fetchStaffData = async () => {
      try {
        const response = await axios.get(`http://localhost:5252/staff/${hotelNom}`);
        const staffList = response.data.map((staff) => ({
          firstName: staff.prenom,
          lastName: staff.nom,
          nas: staff.employe_nas,
          phoneNumber: staff.employe_num_tel,
          role: roleMap[staff.role_id],
        }));
        setStaffData(staffList);
      } catch (err) {
        console.error('Error fetching staff data: ', err);
        setError('Failed to load staff data');
        setLoading(false);
      }
    };

    fetchStaffData();
  }, []);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setNewStaff({ ...newStaff, [name]: value });
  };

  const handleRoleChange = (value) => {
    setNewStaff({ ...newStaff, role_id: value });
  };

  const handleSubmit = async () => {
    newStaff.employe_addresse = hotelAddresse;
    newStaff.employe_hotel = hotelNom;
    if (!newStaff.prenom || !newStaff.nom || !newStaff.employe_NAS || !newStaff.employe_num_tel || !newStaff.role_id || !newStaff.employe_addresse || !newStaff.employe_hotel) {
        toast.error("All fields are required");
        return;
      }
      if (isNaN(newStaff.employe_NAS) || newStaff.employe_NAS < 100000000 || newStaff.employe_NAS > 999999999) {
        toast.error('Employee NAS must be a 9-digit number between 100000000 and 999999999.');
        return;
      }

      const phoneRegex = /(\+?\d{1,3}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}/;
      if (!phoneRegex.test(newStaff.employe_num_tel)) {
        toast.error('Invalid phone number format. Ensure the format is correct (ex:(XXX) XXX-XXXX)');
        return;
      }
    try {
      const response = await axios.post('http://localhost:5252/hotel/addEmployee', newStaff);
    //   console.log(response.data);
      if (response.status === 201) {
        setNewStaff({
          prenom: '',
          nom: '',
          employe_NAS: '',
          employe_num_tel: '',
          role_id: '',
          employe_num_tel: '',
          employe_addresse: '',
          employe_hotel: ''
        });
        setStaffData((prevData) => [...prevData, response.data]);
        toast("Successfully added new employee");
        window.location.reload();
      }
    } catch (err) {
      console.error('Error adding employee:', err);
      toast.error("An error occurred while adding the employee.");
    }
  };

  if (loading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>{error}</div>;
  }

  return (
    <>
      <AdminHeader />
      <div className="p-4">
        <h1 className="text-2xl font-bold mb-4">Staff List</h1>
        <table className="table-auto w-full border-collapse border border-gray-300">
          <thead>
            <tr>
              <th className="px-4 py-2 border border-gray-300 text-center">First Name</th>
              <th className="px-4 py-2 border border-gray-300 text-center">Last Name</th>
              <th className="px-4 py-2 border border-gray-300 text-center">NAS</th>
              <th className="px-4 py-2 border border-gray-300 text-center">Phone Number</th>
              <th className="px-4 py-2 border border-gray-300 text-center">Role</th>
            </tr>
          </thead>
          <tbody>
            {staffData.map((staff, index) => (
              <tr key={index}>
                <td className="px-4 py-2 border border-gray-300">{staff.firstName}</td>
                <td className="px-4 py-2 border border-gray-300">{staff.lastName}</td>
                <td className="px-4 py-2 border border-gray-300">{staff.nas}</td>
                <td className="px-4 py-2 border border-gray-300">{staff.phoneNumber}</td>
                <td className="px-4 py-2 border border-gray-300">{staff.role}</td>
              </tr>
            ))}
          </tbody>
        </table>
        <Dialog>
          <DialogTrigger asChild>
            <Button className="mt-4" variant="outline">
              Add New Staff
            </Button>
          </DialogTrigger>
          <DialogContent>
            <DialogHeader>Add New Employee</DialogHeader>
            <div className="space-y-4 p-4">
              <Input
                name="prenom"
                value={newStaff.prenom}
                onChange={handleInputChange}
                placeholder="First Name"
              />
              <Input
                name="nom"
                value={newStaff.nom}
                onChange={handleInputChange}
                placeholder="Last Name"
              />
              <Input
                name="employe_NAS"
                type="number"
                value={newStaff.employe_NAS}
                onChange={handleInputChange}
                placeholder="NAS"
              />
              <Input
                name="employe_num_tel"
                value={newStaff.employe_num_tel}
                onChange={handleInputChange}
                placeholder="Phone Number"
              />
              <Select value={newStaff.role_id} onValueChange={handleRoleChange}>
                <SelectTrigger>
                  <SelectValue placeholder="Select Role" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="1">Receptionist</SelectItem>
                  <SelectItem value="2">Housekeeper</SelectItem>
                  <SelectItem value="3">Concierge</SelectItem>
                  <SelectItem value="4">Manager</SelectItem>
                  <SelectItem value="5">Bellhop</SelectItem>
                </SelectContent>
              </Select>
            </div>
            <DialogFooter>
              <Button variant="outline" onClick={() => setIsModalOpen(false)}>
                Cancel
              </Button>
              <Button onClick={handleSubmit}>Add Employee</Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>
      </div>
    </>
  );
};

export default Staff;
