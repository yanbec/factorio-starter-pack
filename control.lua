local QuickbarUtils = require("utils/quickbar");
local InventoryUtils = require("utils/inventory");
local ArmorUtils = require("utils/armor");
local TechnologiesUtils = require("utils/technologies");
local Gui = require("utils/gui");
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

end)

script.on_event(defines.events.on_gui_click, function(event)
	local player = game.players[event.player_index]
	local selectedButton = event.element
	local kit_gui = selectedButton.gui.center["frame"]

	-- Define kits
	local kits = {};

	kits["Small Kit"] = {};
	kits["Small Kit"]["quickbar"] = Globals.KITS.SMALL_KIT.QUICKBAR;
	kits["Small Kit"]["items"] = Globals.KITS.SMALL_KIT.ITEMS;

	kits["Medium Kit"] = {};
	kits["Medium Kit"]["quickbar"] = Globals.KITS.MEDIUM_KIT.QUICKBAR;
	kits["Medium Kit"]["items"] = Globals.KITS.MEDIUM_KIT.ITEMS;
	kits["Medium Kit"]["armor-items"] = Globals.KITS.LARGE_KIT.ARMOR;

	kits["Large Kit"] = {};
	kits["Large Kit"]["quickbar"] = Globals.KITS.LARGE_KIT.QUICKBAR;
	kits["Large Kit"]["items"] = Globals.KITS.LARGE_KIT.ITEMS;
	kits["Large Kit"]["armor-items"] = Globals.KITS.LARGE_KIT.ARMOR;
	kits["Large Kit"]["technologies"] = Globals.KITS.LARGE_KIT.TECHNOLOGIES;

	kits["Default Kit"] = {};
	kits["Default Kit"]["quickbar"] = Globals.KITS.DEFAULT_KIT.QUICKBAR;
	kits["Default Kit"]["items"] = Globals.KITS.DEFAULT_KIT.ITEMS;

	-- HANDLE GUI INFO
	if selectedButton.name == "small-kit" then	
		Gui.update_kit(player, Globals.KITS.SMALL_KIT.GUI_TITLE, Globals.KITS.SMALL_KIT.TITLE, kit_gui)
	elseif selectedButton.name == "medium-kit" then
		Gui.update_kit(player, Globals.KITS.MEDIUM_KIT.GUI_TITLE, Globals.KITS.MEDIUM_KIT.TITLE, kit_gui)
	elseif selectedButton.name == "large-kit" then
		Gui.update_kit(player, Globals.KITS.LARGE_KIT.GUI_TITLE, Globals.KITS.LARGE_KIT.TITLE, kit_gui)
	elseif selectedButton.name == "default-kit" then
		Gui.update_kit(player, Globals.KITS.DEFAULT_KIT.GUI_TITLE, Globals.KITS.DEFAULT_KIT.TITLE, kit_gui)
	end
	
	if selectedButton.name == "select-kit" then
		local kit_title = kit_gui.children[1].children[2].children[1].caption;
		player.print(kit_title .. " Selected!");
		local kit = kits[kit_title];

		if kit == nil then
			kit = kits["Default Kit"];
		end
		-- Setup quickbar
		QuickbarUtils.set_quickbar_filters(player, kit["quickbar"]);
	
		-- Setup items
		InventoryUtils.set_inventory(player, kit["items"]);

		-- Setup armor items
		if kit["armor-items"] ~= nil then
			ArmorUtils.set_armor_items(player, kit["armor-items"]);
		end

		-- Setup technologies
		if kit["technologies"] ~= nil then
			TechnologiesUtils.unlock_technologies(player, kit["technologies"]);			
		end

		kit_gui.destroy();	
	end
	
end) 