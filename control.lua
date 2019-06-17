local QuickbarUtils = require("utils/quickbar");
local InventoryUtils = require("utils/inventory");
local Gui = require("utils/gui");
local SmallKit = require("kits/small_kit");
local MediumKit = require("kits/medium_kit");
local LargeKit = require("kits/large_kit");
local DefaultKit = require("kits/default_kit");
local Globals = require("globals");

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index];
	game.speed = Globals.GAME_SPEED; -- 3
	player.color = Globals.PLAYER_COLOR;

	Gui.create_kit_selector(player)

	-- remove initial items
	local playerInventory = player.get_main_inventory();
	for i, v in pairs(Globals.INITIAL_ITEMS) do
		playerInventory.remove({name=v.name, count=v.count});
	end
	player.print("Initial items removed.");

	

end)

script.on_event(defines.events.on_gui_click, function(event)
	local player = game.players[event.player_index]
	local selectedButton = event.element
	local kit_gui = selectedButton.gui.center["frame"]

	-- Define kits
	local kits = {};

	kits["Small Kit"] = {};
	kits["Small Kit"]["quickbar"] = SmallKit.define_quickbar();
	kits["Small Kit"]["items"] = SmallKit.define_items();

	kits["Medium Kit"] = {};
	kits["Medium Kit"]["quickbar"] = MediumKit.define_quickbar();
	kits["Medium Kit"]["items"] = MediumKit.define_items();

	kits["Large Kit"] = {};
	kits["Large Kit"]["quickbar"] = LargeKit.define_quickbar();
	kits["Large Kit"]["items"] = LargeKit.define_items();

	kits["Default Kit"] = {};
	kits["Default Kit"]["quickbar"] = DefaultKit.define_quickbar();
	kits["Default Kit"]["items"] = DefaultKit.define_items();

	if selectedButton.name == "small-kit" then
		Gui.update_kit(Globals.KITS.SMALL_KIT.TITLE, Globals.KITS.SMALL_KIT.DESCRIPTION, kit_gui)
	elseif selectedButton.name == "medium-kit" then
		Gui.update_kit(Globals.KITS.MEDIUM_KIT.TITLE, Globals.KITS.MEDIUM_KIT.DESCRIPTION, kit_gui)
	elseif selectedButton.name == "large-kit" then
		Gui.update_kit(Globals.KITS.LARGE_KIT.TITLE, Globals.KITS.LARGE_KIT.DESCRIPTION, kit_gui)
	elseif selectedButton.name == "default-kit" then
		Gui.update_kit(Globals.KITS.DEFAULT_KIT.TITLE, Globals.KITS.DEFAULT_KIT.DESCRIPTION, kit_gui)
	end
	
	if selectedButton.name == "select-kit" then
		local kit_title = selectedButton.parent.children[1].caption
		player.print(kit_title .. " Selected!");
		local kit = kits[kit_title];

		if kit == nil then
			kit = kits["Default Kit"];
		end
		-- Setup quickbar
		QuickbarUtils.set_quickbar_filters(player, kit["quickbar"]);
	
		-- Setup items
		InventoryUtils.set_inventory(player, kit["items"]);

		kit_gui.destroy();	
	end
	
end) 