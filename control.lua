local QuickbarUtils = require("utils/quickbar");
local InventoryUtils = require("utils/inventory");
local SmallKit = require("kits/small_kit");
local MediumKit = require("kits/medium_kit");
local Globals = require("globals");

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index];
	game.speed = Globals.GAME_SPEED; -- 3
	player.color = Globals.PLAYER_COLOR;
	  
	-- Define kits
	local kits = {};

	kits["small"] = {};
	kits["small"]["quickbar"] = SmallKit.define_quickbar();
	kits["small"]["items"] = SmallKit.define_items();

	kits["medium"] = {};
	kits["medium"]["quickbar"] = MediumKit.define_quickbar();
	kits["medium"]["items"] = MediumKit.define_items();

	--selectedkit sale del boton selecionado en la gui.
	local kit = kits[selectedKit];
	player.print(kit)
	if kit == nil then
		kit = kits["default"];
	end

	-- remove initial items
	local playerInventory = player.get_main_inventory();
	for i, v in pairs(Globals.INITIAL_ITEMS) do
		playerInventory.remove({name=v.name, count=v.count});
	end
	player.print("Initial items removed.");

	-- Setup quickbar
	-- QuickbarUtils.set_quickbar_filters(player, kit["quickbar"]);
	
	-- Setup items
	-- InventoryUtils.set_inventory(player, kit["items"]);

end)

