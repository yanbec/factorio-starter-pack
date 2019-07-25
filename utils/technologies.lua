Technology = {};

function Technology.unlock_technologies(player, tech_list)
    for k,v in pairs(tech_list) do
        if player.force.technologies[v[1]] ~= nil then
            player.force.technologies[v[1]].researched = true
        else 
            player.print("Tech not found: " .. v[1])
        end
    end
end

return Technology;