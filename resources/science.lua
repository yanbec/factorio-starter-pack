local Science = {};

function Science.set_science(player)
    player.insert{name="lab", count=4};
    player.insert{name="science-pack-1", count=50};
end

return Science;