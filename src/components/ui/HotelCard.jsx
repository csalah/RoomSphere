import { useState } from "react";
import { Button } from "../ui/button";
import { Collapsible, CollapsibleContent, CollapsibleTrigger } from "../ui/collapsible"; 
import { Card, CardHeader, CardTitle, CardContent } from "../ui/card"; 

export default function HotelCard({ hotel, filteredRooms = [], addToCart }) {
  const [showRooms, setShowRooms] = useState(false);

  const toggleRooms = () => {
    setShowRooms(!showRooms);
  };

  return (
    <Card className="w-full max-w-xl mx-auto rounded-lg shadow-lg bg-white dark:bg-gray-800 transition-all">
      <CardHeader>
        <img
          src={hotel.image}
          alt={hotel.name}
          className="w-full h-48 object-cover rounded-lg"
        />
      </CardHeader>

      <CardContent>
        <CardTitle className="text-xl font-semibold text-primary dark:text-white">
          {hotel.name}
        </CardTitle>
        <p className="text-gray-600 dark:text-gray-300 mt-2">
          {hotel.description}
        </p>

        <p className="mt-4 text-lg font-medium text-primary dark:text-white">
          {hotel.location}
        </p>


        <Button
          onClick={toggleRooms}
          variant="outline"
          size="sm"
          className="mt-4"
        >
          {showRooms ? "Hide Rooms" : "See Available Rooms"}
        </Button>

        <Collapsible open={showRooms}>
          <CollapsibleTrigger />
          <CollapsibleContent>
            <div className="mt-4 space-y-2">
              {filteredRooms.length === 0 ? (
                <p className="text-gray-500 dark:text-gray-400">No rooms available</p>
              ) : (
                filteredRooms.map((room, index) => (
                  <div key={index} className="p-4 bg-gray-100 dark:bg-gray-700 rounded-lg shadow-sm">
                    <h4 className="text-lg font-semibold text-primary dark:text-white">{room.name}</h4>
                    <p className="text-md text-gray-600 dark:text-gray-300">Capacity: {room.capacity}</p>
                    <p className="text-sm text-gray-500 dark:text-gray-400">Amenities: {room.amenities.join(", ")}</p>
                    <p className="mt-2 text-md font-medium text-primary dark:text-white">
                      Price: ${room.price}
                    </p>
                    <Button
                      onClick={() => addToCart(room)} 
                      variant="outline"
                      size="sm"
                      className="mt-4"
                    >
                      Add to Cart
                    </Button>
                  </div>
                ))
              )}
            </div>
          </CollapsibleContent>
        </Collapsible>
      </CardContent>
    </Card>
  );
}
