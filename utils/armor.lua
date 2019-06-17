Armor = {}

local inventories = {
    defines.inventory.player_armor,
    defines.inventory.player_main,
    defines.inventory.player_quickbar,
    defines.inventory.player_guns,
    defines.inventory.player_ammo,
    defines.inventory.player_tools,
    defines.inventory.player_vehicle,
    defines.inventory.player_player_trash
}

function Armor.set_armor_items(player, armor_items_list)
    if armor_items_list ~= nil then
        for k,v in pairs(inventories) do
			local inventory = player.get_inventory(v)
			if inventory ~= nil then
				local armor = inventory.find_item_stack("power-armor")
				if armor ~= nil then
					-- Add items to armor grid
					local grid = armor.grid
					for k,v in pairs(armor_items_list) do
						grid.put{name = v[1]}
					end
					break
				end
			end
        end
    end
end

return Armor;