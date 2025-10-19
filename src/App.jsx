import { useEffect, useState } from 'react'
import './App.css'
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "./components/ui/sheet"
import { Button } from "./components/ui/button"
import { ThemeProvider } from './components/ui/theme-provider'
import { ModeToggle } from './components/ui/mode-toggle'
import Header from './components/ui/header'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'
import Login from './pages/login'
import Home from './pages/home'
import AdminReservations from './pages/admin_reservations'
import AdminRooms from './pages/admin_rooms'
import { Toaster } from 'sonner'
import axios from 'axios'
import HotelAdminProfilePage from './pages/hotelAdminProfilePage'
import Staff from './pages/staff'

function App() {
  
  const [modeToggle, setModeToggle] = useState("light");
  return (
    <>
<ThemeProvider defaultTheme="light" storageKey="vite-ui-theme">
  
<Router>
      <Routes>
        <Route path="/" element={<Home />}/> 
        <Route path="/login" element={<Login/>}/> 
        <Route path="/admin/reservations" element={<AdminReservations/>}/> 
        <Route path="/admin/rooms" element={<AdminRooms/>}/> 
        <Route path="/admin/profile" element={<HotelAdminProfilePage/>}/> 
        <Route path="/admin/employees" element={<Staff/>}/> 

      </Routes>
</Router>
<Toaster />
</ThemeProvider>
</>
  )
}

export default App


