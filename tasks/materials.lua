local Materials = {};

function Materials.set_materials(player)
    player.insert{name="steel-axe", count=10}
    player.insert{name="iron-plate", count=592} -- 8 extra are added by freeplay scenario starting items
    player.insert{name="copper-plate", count=400}
    player.insert{name="electronic-circuit", count=200}
    player.insert{name="iron-gear-wheel", count=200}
    player.insert{name="underground-belt", count=50}
    player.insert{name="splitter", count=50}
    player.insert{name="small-electric-pole", count=148} -- 48 required for furnace setup, 100 extra == 148
end

return Materials;