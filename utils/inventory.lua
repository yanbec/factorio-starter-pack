Inventory = {};

function Inventory.set_inventory(player, item_list)
    for k,v in pairs(item_list) do
        player.insert{name = v[1], count = v[2]};
    end
end

return Inventory;