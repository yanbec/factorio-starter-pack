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
	  
	-- Define kits
	local kits = {};

	kits["small"] = {};
	kits["medium"] = {};
	kits["large"] = {};
	
	-- remove initial items
	local playerInventory = player.get_main_inventory();
	for i, v in pairs(Globals.INITIAL_ITEMS) do
		playerInventory.remove({name=v.name, count=v.count});
		player.print("Initial items removed.");
	end
end)

