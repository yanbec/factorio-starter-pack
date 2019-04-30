local Materials = {};

function Materials.set_materials(player)
    player.insert{name="steel-axe", count=5}
    player.insert{name="iron-plate", count=600}
    player.insert{name="copper-plate", count=400}
    player.insert{name="coal", count=200}
    player.insert{name="electronic-circuit", count=200}
    player.insert{name="iron-gear-wheel", count=200}
    player.insert{name="underground-belt", count=50}
    player.insert{name="splitter", count=50}
    player.insert{name="small-electric-pole", count=50}
end

return Materials;