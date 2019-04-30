local Fliters = require("resources/filters");
local Materials = require("resources/materials");
local Logistics = require("resources/logistics");
local Science = require("resources/science");
local Mining =require("resources/mining");
local Smelting = require("resources/smelting");
local Power = require("resources/power");
local Car = require("resources/car");
local Globals = require("globals");

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index];
	game.speed = Globals.GAME_SPEED; -- 3
  	player.color = Globals.PLAYER_COLOR;
	
	-- remove initial items
	local playerInventory = player.get_main_inventory();
	for i, v in pairs(Globals.INITIAL_ITEMS) do
		playerInventory.remove({name=v.name, count=v.count});
		player.print("Initial items removed.");
	end
	
	-- quickbar
	Filters.set_quickbar_filters(player);
	
	-- materials
	Materials.set_materials(player);
		
	--logistics
	Logistics.set_logistics(player);

	-- smelting/mining
	Mining.set_mining_items(player);
	Smelting.set_smelting_items(player);
	
	-- power
	Power.set_power_items(player);

	-- science
	Science.set_science(player);
	
	-- car
	Car.set_car_items(player);

end)

