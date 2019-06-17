MediumKit = {};

function MediumKit.define_quickbar()
    quickbarItems = {
        {1, "transport-belt"},
		{2, "underground-belt"},
		{3, "splitter"},
		{4, "inserter"},
		{5, "medium-electric-pole"},
        {6, "electric-mining-drill"},
        {7, "stone-furnace"},
		{10, "car"}
    };

    return quickbarItems;
end

function MediumKit.define_items()
    items = {
        {"iron-plate", 600},
		{"copper-plate", 400},
		{"iron-gear-wheel", 200},
		{"electronic-circuit", 200},
		{"transport-belt", 1100},
		{"underground-belt", 50},
		{"splitter", 50},
		{"stone-furnace", 100},
		{"assembling-machine-1", 20},
		{"inserter", 300},
		{"long-handed-inserter", 50},
		{"steel-chest", 50},
		{"electric-mining-drill", 50},
		{"medium-electric-pole", 200},
		{"boiler", 10},
		{"steam-engine", 20},
		{"offshore-pump", 1},
		{"pipe-to-ground", 50},
		{"pipe", 50},
		{"car", 1},
		{"coal", 200},
		{"construction-robot", 50},
		{"lab", 10},
		{"power-armor", 1}
    };

    return items;
end

return MediumKit;