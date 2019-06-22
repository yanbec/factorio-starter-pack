Technology = {};

function Technology.unlock_technologies(player, tech_list)
    for k,v in pairs(tech_list) do
        player.force.technologies[v[1]].researched = true
    end
end

return Technology;