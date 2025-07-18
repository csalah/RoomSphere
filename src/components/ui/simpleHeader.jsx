import { useState } from "react";
import { useTheme } from "./theme-provider"; 
import { Button } from "./button";
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from "./dropdown-menu";
import { Sheet, SheetContent, SheetTrigger } from "./sheet";
import { MoonIcon, SunIcon, Bars3Icon } from "@heroicons/react/24/outline";
export default function SimpleHeader() {
  const { theme, setTheme } = useTheme();
  const [isOpen, setIsOpen] = useState(false);

  return (
    <header className="bg-background border-b">
      <nav className="container mx-auto flex items-center justify-between p-4">
     
        <a href="#" className="text-2xl font-bold">
          RoomSphere
        </a>

        <div className="flex items-center space-x-4">
    

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
          </Sheet>
        </div>
      </nav>
    </header>
  );
}
