local Fliters = require("tasks/filters");
local Materials = require("tasks/materials");
local Logistics = require("tasks/logistics");
local Science = require("tasks/science");
local Mining =require("tasks/mining");
local Smelting = require("tasks/smelting");
local Power = require("tasks/power");
local Car = require("tasks/car");
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

script.on_event(defines.events.on_entity_died, function(event)
	local entity = event.entity;
 	if entity.type ~= "player" then return end;

	local pos = entity.surface.find_non_colliding_position(
		"steel-chest", entity.position, 8, 1);
	if not pos then return end;

	entity.surface.create_entity{name = "steel-chest", position = pos, force="neutral"};
end)

