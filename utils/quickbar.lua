Quickbar = {};

function Quickbar.set_quickbar_filters(player, quickbar_items)
    local player_quickbar = player.get_inventory(defines.inventory.player_quickbar);
    player_quickbar.clear();

    for k,v in pairs(quickbar_items) do
        player_quickbar.set_filter(v[1], v[2]);
    end
end

return Quickbar;