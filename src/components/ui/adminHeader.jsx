import { useState } from "react";
import { useTheme } from "./theme-provider"; 
import { Button } from "./button";
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from "./dropdown-menu";
import { Sheet, SheetContent, SheetTrigger } from "./sheet";
import { MoonIcon, SunIcon, Bars3Icon } from "@heroicons/react/24/outline";
import { useNavigate } from "react-router-dom";

export default function AdminHeader() {
  const { theme, setTheme } = useTheme();
  const [isOpen, setIsOpen] = useState(false);
  const navigate = useNavigate();

  const handleLogout = () => {
    localStorage.removeItem('user');
    localStorage.removeItem('isloggedIn');
    navigate('/login');
  }


  return (
    <header className="bg-background border-b">
      <nav className="container mx-auto flex items-center justify-between p-4">
     
        <a href="#" className="text-2xl font-bold">
          RoomSphere
        </a>

      
        <div className="hidden md:flex space-x-6">
          <a href="/admin/profile" className="text-muted-foreground hover:text-primary">Profile</a>
          <a href="/admin/employees" className="text-muted-foreground hover:text-primary">Employees</a>
          <a href="/admin/rooms" className="text-muted-foreground hover:text-primary">Rooms</a>
          <a href="/admin/reservations" className="text-muted-foreground hover:text-primary">Reservations</a>
        
        </div>

        <div className="flex items-center space-x-4">

        <Button variant="outline" size="sm" onClick={handleLogout}>
                LOGOUT
              </Button>

          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <Button variant="outline" size="icon">
                {theme === "dark" ? <SunIcon className="size-5" /> : <MoonIcon className="size-5" />}
              </Button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end">
              <DropdownMenuItem onClick={() => setTheme("light")}>Light</DropdownMenuItem>
              <DropdownMenuItem onClick={() => setTheme("dark")}>Dark</DropdownMenuItem>
              <DropdownMenuItem onClick={() => setTheme("system")}>System</DropdownMenuItem>
            </DropdownMenuContent>
          </DropdownMenu>

 
          <Sheet open={isOpen} onOpenChange={setIsOpen}>
            <SheetTrigger asChild>
              <Button variant="outline" size="icon" className="md:hidden">
                <Bars3Icon className="size-6" />
              </Button>
            </SheetTrigger>
            <SheetContent side="right" className="flex flex-col items-center space-y-6 p-6">
            <a href="#" className="text-muted-foreground hover:text-primary">Home</a>
          <a href="#" className="text-muted-foreground hover:text-primary">Bookings</a>
            </SheetContent>
          </Sheet>
        </div>
      </nav>
    </header>
  );
}
