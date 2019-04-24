local Logistics = {}

function Logistics.set_logistics(player)
    player.insert{name="assembling-machine-1", count=20}
    player.insert{name="long-handed-inserter", count=50}		
    player.insert{name="blueprint", count=1}
    player.insert{name="deconstruction-planner", count=1}
    player.insert{name="steel-chest", count=50}
    player.insert{name="inserter", count=270} -- 2 inserters per stone furnace, 96 stone furnaces to start with in 4 layouts of 2x12 = 4*2*2*12 == 192 + 28 for boilers + 50 spare
    player.insert{name="transport-belt", count=800}
end

return Logistics;