local Smelting = {};

function Smelting.set_smelting_items(player)
    player.insert{name="stone-furnace", count=96} -- two setups of 4x12 == 96
end

return Smelting;