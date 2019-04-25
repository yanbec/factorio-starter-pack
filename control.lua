local Fliters = require("tasks/filters");
local Materials = require("tasks/materials");
local Logistics = require("tasks/logistics");
local Science = require("tasks/science");
local Mining =require("tasks/mining");
local Power = require("tasks/power");
local Globals = require("globals");

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index];
	game.speed = Globals.GAME_SPEED;
  	player.color = Globals.PLAYER_COLOR;  -- change player color to yellow
	
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
	player.insert{name="electric-mining-drill", count=36} -- 13 for iron, 13 for copper, 2 for stone, 8 for coal == 36
	player.insert{name="stone-furnace", count=96} -- two setups of 4x12 == 96
	
	-- power
	Power.set_power_items(player);

	-- science
	Science.set_science(player);
	
	-- car

end)

script.on_event(defines.events.on_player_respawned, function(event)
	-- body
end)