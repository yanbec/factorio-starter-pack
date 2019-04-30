local Logistics = {}

function Logistics.set_logistics(player)
    player.insert{name="assembling-machine-1", count=20}
    player.insert{name="long-handed-inserter", count=50}		
    player.insert{name="blueprint", count=1}
    player.insert{name="deconstruction-planner", count=1}
    player.insert{name="steel-chest", count=50}
    player.insert{name="inserter", count=135}
    player.insert{name="transport-belt", count=500}
end

return Logistics;