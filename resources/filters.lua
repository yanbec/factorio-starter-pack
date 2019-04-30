Filters = {};

function Filters.set_quickbar_filters(player)
    local quickbar = player.get_inventory(defines.inventory.player_quickbar);
    quickbar.clear();
    quickbar.set_filter(1,"transport-belt");
    quickbar.set_filter(2,"inserter");
    quickbar.set_filter(3,"underground-belt");
    quickbar.set_filter(4,"splitter");
    quickbar.set_filter(5,"small-electric-pole");
    quickbar.set_filter(6,"assembling-machine-1");
    quickbar.set_filter(7,"long-handed-inserter");
    quickbar.set_filter(8,"steel-chest");
end

return Filters;