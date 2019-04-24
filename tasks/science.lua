local Science = {};

function Science.set_science(player)
    player.insert{name="lab", count=6};
    player.insert{name="science-pack-1", count=50};
end

return Science;