SmallKit = {};

function SmallKit.define_quickbar()
    quickbarItems = {
        {1, "transport-belt"},
		{2, "underground-belt"},
		{3, "splitter"},
		{4, "inserter"},
		{5, "medium-electric-pole"},
        {6, "burner-mining-drill"},
        {7, "stone-furnace"},
		{10, "car"}
    };

    return quickbarItems;
end

function SmallKit.define_items()
    items = {
        {"iron-plate", 200},
		{"copper-plate", 200},
		{"iron-gear-wheel", 50},
		{"transport-belt", 500},
		{"splitter", 50},
		{"underground-belt", 50},
		{"burner-mining-drill", 20},
		{"stone-furnace", 20},
		{"coal", 100}
    };

    return items;
end

return SmallKit;