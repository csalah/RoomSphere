import  SimpleHeader  from "../components/ui/simpleHeader"
import React, { useState, useEffect } from "react";
import { useNavigate } from 'react-router-dom'; 
import axios from "axios";
import { toast } from "sonner";


function Login() {

    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [userType, setUserType] = useState('');
    const [userInfo, setUserInfo] = useState(null);
    const [isLoggedIn, setisLoggedIn] = useState(false);
    const navigate = useNavigate();

    useEffect(() => {
      if (userInfo) {
        localStorage.setItem("user", JSON.stringify(userInfo));
      }
    }, [userInfo]);

    useEffect(() => {
      if (isLoggedIn) {
        localStorage.setItem('isLoggedIn', 'true');
      }
    }, [userInfo]);

    const fetchUserInfo = async (email, usertype) => {
      try {
        if(usertype === "admin"){
          const response = await axios.get(`http://localhost:5252/hotel/${email}`);
          setUserInfo(response.data);
        }
        else{
          console.log("regular user");
          setUserInfo(email);
        }
      } catch (error) {
        console.log("Could not locate user. Err: ", error);
      }
    }

    const handleLogin = async (e) => {
        e.preventDefault();
        
        try {
          const response = await axios.get(`http://localhost:5252/users/${email}`);
      
          if (response.data.password === password) {      
            const userType = response.data.usertype;
            setUserType(userType);
            fetchUserInfo(response.data.email, userType);
            setisLoggedIn(true);
            toast.success("Login successful, redirecting to your hotel dashboard");

            setTimeout(() => {
              if (userType === "admin") {
                navigate('/admin/profile');
              } else {
                navigate('/');
              }
            }, 1500);
          } else {
            toast.error("Verify your login information and try again.");
          }
      
        } catch (error) {
          toast.error("Verify your login information and try again.");
        }
      };
      
  
    return (
      <>
        <div className="min-h-screen bg-background flex flex-col">
      <SimpleHeader />

      <main className="flex-1 flex items-center justify-center px-4 py-8">
        <div className="max-w-md w-full bg-white shadow-lg rounded-lg p-6">
          <h2 className="text-3xl font-semibold text-center text-primary mb-6">Login</h2>
          <form onSubmit={handleLogin}>
            <div className="mb-4">
              <label htmlFor="email" className="block text-sm font-medium text-gray-700">Email</label>
              <input
                type="email"
                id="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
                className="mt-2 w-full px-4 py-2 border rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary"
                placeholder="Email"
              />
            </div>

            <div className="mb-6">
              <label htmlFor="password" className="block text-sm font-medium text-gray-700">Password</label>
              <input
                type="password"
                id="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
                className="mt-2 w-full px-4 py-2 border rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-primary"
                placeholder="Enter your password"
              />
            </div>

            <div>
              <button
                type="submit"
                className="w-full py-2 px-4 bg-primary text-white rounded-lg shadow-md hover:bg-primary-dark focus:outline-none focus:ring-2 focus:ring-primary"
              >
                Log in
              </button>
            </div>
          </form>
        </div>
      </main>
    </div>
      </>
    )
  }
  
  export default Login
  