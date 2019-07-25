Quickbar = {};

function Quickbar.set_quickbar_filters(player, quickbar_items)
    for k,v in pairs(quickbar_items) do
        player.set_quick_bar_slot(v[1], v[2]);
    end
end

return Quickbar;