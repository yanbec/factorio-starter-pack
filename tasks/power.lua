local Power = {};

function Power.set_power_items(player)
    player.insert{name="boiler", count=28} -- two rows of 14 boilers == 28
		player.insert{name="steam-engine", count=20} -- two rows of 10 steam engines == 20
		player.insert{name="offshore-pump", count=2} -- two power chains
		player.insert{name="pipe-to-ground", count=50}
		player.insert{name="pipe", count=50}
end

return Power;