import { useState } from "react";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Select, SelectTrigger, SelectValue, SelectContent, SelectItem } from "@/components/ui/select";
import { Slider } from "@/components/ui/slider";

export default function Filters({ onApply }) {
  const [filters, setFilters] = useState({
    startDate: "",
    endDate: "",
    capacity: "",
    size: "",
    hotelChain: "",
    hotelCategory: "",
    totalRooms: [1, 100],
    price: [0, 25000], 
  });

  const handleApply = () => {
    onApply(filters);
  };

  const handleDateChange = (e, type) => {
    const value = e.target.value;
    if (type === "start") {
      setFilters({ ...filters, startDate: value });
    } else {
      setFilters({ ...filters, endDate: value });
    }
  };

  return (
    <div className="bg-white shadow-md rounded-lg p-4 mb-6">
      <div className="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-4 gap-4">
        <Input
          type="date"
          placeholder="Start Date"
          value={filters.startDate}
          onChange={(e) => handleDateChange(e, "start")}
        />

        <Input
          type="date"
          placeholder="End Date"
          value={filters.endDate}
          onChange={(e) => handleDateChange(e, "end")}
        />

        <Input 
          type="number" 
          placeholder="Capacity" 
          value={filters.capacity}
          onChange={(e) => setFilters({ ...filters, capacity: e.target.value })}
        />

        <Input 
          type="number" 
          placeholder="Size (m²)" 
          value={filters.size}
          onChange={(e) => setFilters({ ...filters, size: e.target.value })}
        />
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-4 gap-4 mt-5">
        <Select onValueChange={(value) => setFilters({ ...filters, hotelChain: value })}>
          <SelectTrigger>
            <SelectValue placeholder="Hotel Chain" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="1">Northern Star Hotels</SelectItem>
            <SelectItem value="6">Pinecrest Inns</SelectItem>
            <SelectItem value="3">Summit Stays</SelectItem>
            <SelectItem value="5">Atlantic Breeze Resorts</SelectItem>
            <SelectItem value="7">Aurora Grand Hotels</SelectItem>
            <SelectItem value="2">Evergreen Lodgings</SelectItem>
            <SelectItem value="4">Maplewood Hospitality</SelectItem>
          </SelectContent>
        </Select>

        <Select onValueChange={(value) => setFilters({ ...filters, hotelCategory: value })}>
          <SelectTrigger>
            <SelectValue placeholder="Hotel Category" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="Resort">Resort</SelectItem>
            <SelectItem value="Eco">Eco</SelectItem>
            <SelectItem value="Luxury">Luxury</SelectItem>
          </SelectContent>
        </Select>

        <div>
          <p className="text-sm text-gray-600 mb-1">Total Rooms: {filters.totalRooms[0]} - {filters.totalRooms[1]}</p>
          <Slider 
            value={filters.totalRooms}
            min={1} max={200} 
            step={1}
            onValueChange={(value) => setFilters({ ...filters, totalRooms: value })}
          />
        </div>

        <div>
          <p className="text-sm text-gray-600 mb-1">Price: ${filters.price[0]} - ${filters.price[1]}</p>
          <Slider 
            value={filters.price} 
            min={0} max={25000} 
            step={100}
            onValueChange={(value) => setFilters({ ...filters, price: value })}
          />
        </div>
      </div>

      <div className="flex justify-end mt-4">
        <Button onClick={handleApply}>Apply Filters</Button>
      </div>
    </div>
  );
}
