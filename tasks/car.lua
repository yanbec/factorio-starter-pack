local Car = {};

function Car.set_car_items(player)
    player.insert{name="car", count="1"};
    player.insert{name="coal", count="200"}
end

return Car;