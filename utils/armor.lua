Armor = {}

local inventories = {
    defines.inventory.character_main,
    defines.inventory.character_armor
}

function Armor.set_armor_items(player, armor_items_list)
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

return Armor;
