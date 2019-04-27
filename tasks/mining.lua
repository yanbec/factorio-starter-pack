local Mining = {};

function Mining.set_mining_items(player)
    player.insert{name="electric-mining-drill", count=36} -- 13 for iron, 13 for copper, 2 for stone, 8 for coal == 36
end

return Mining;