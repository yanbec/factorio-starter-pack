local Power = {};

function Power.set_power_items(player)
    player.insert{name="boiler", count=14}
		player.insert{name="steam-engine", count=10}
		player.insert{name="offshore-pump", count=2} 
		player.insert{name="pipe-to-ground", count=25}
		player.insert{name="pipe", count=50}
end

return Power;