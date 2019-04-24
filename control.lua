local Fliters = require("tasks/filters");
local Materials = require("tasks/materials");
local Logistics = require("tasks/logistics");
local Science = require("tasks/science");
local Mining =require("tasks/mining");
local Globals = require("globals");

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index];
	game.speed = Globals.GAME_SPEED;
  	player.color = Globals.PLAYER_COLOR;  -- change player color to yellow
	
	-- remove initial items
	local playerInventory = player.get_main_inventory();
	for i, v in pairs(Globals.INITIAL_ITEM) do
		print(v.name);
	end

	playerInventory.remove({name="wood", count=1});
	
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
		player.insert{name="boiler", count=28} -- two rows of 14 boilers == 28
		player.insert{name="coal", count=1400} -- 50 coal per boiler * 28 == 1400
		player.insert{name="steam-engine", count=20} -- two rows of 10 steam engines == 20
		player.insert{name="offshore-pump", count=2} -- two power chains
		player.insert{name="pipe-to-ground", count=50}
		player.insert{name="pipe", count=50}
	-- armor
		player.insert{name="power-armor", count = 1}
			local p_armor = player.get_inventory(5)[1].grid
				p_armor.put({name = "fusion-reactor-equipment"})
				p_armor.put({name = "personal-roboport-equipment"})
				p_armor.put({name = "personal-roboport-equipment"})
				p_armor.put({name = "personal-roboport-equipment"})
				p_armor.put({name = "personal-roboport-equipment"})
				p_armor.put({name = "personal-roboport-equipment"})			  
				p_armor.put({name = "battery-mk2-equipment"})			  
				p_armor.put({name = "battery-mk2-equipment"})			  
				p_armor.put({name = "battery-mk2-equipment"})
		player.insert{name="construction-robot", count = 50}
	-- science
	Science.set_science(player);
	
	-- car
		player.insert{name="car", count=1}
		player.insert{name="coal", count=200} -- coal for car
end)

script.on_event(defines.events.on_player_respawned, function(event)
	-- body
end)