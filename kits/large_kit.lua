LargeKit = {};

function LargeKit.define_quickbar()
    quickbarItems = {
        {1, "transport-belt"},
		{2, "underground-belt"},
		{3, "splitter"},
		{4, "inserter"},
		{5, "medium-electric-pole"},
		{10, "car"}
    };

    return quickbarItems;
end

function LargeKit.define_items()
    items = {
        {"power-armor", 1},
		{"iron-plate", 600},
		{"copper-plate", 400},
		{"iron-gear-wheel", 200},
		{"electronic-circuit", 200},
		{"advanced-circuit", 200},
		{"transport-belt", 1500},
		{"underground-belt", 50},
		{"splitter", 50},
		{"steel-furnace", 100},
		{"assembling-machine-2", 100},
		{"inserter", 300},
		{"long-handed-inserter", 50},
		{"steel-chest", 50},
		{"electric-mining-drill", 50},
		{"medium-electric-pole", 400},
		{"big-electric-pole", 100},
		{"logistic-chest-requester", 100},
		{"logistic-chest-passive-provider", 100},
		{"boiler", 20},
		{"steam-engine", 40},
		{"offshore-pump", 10},
		{"pipe-to-ground", 100},
		{"pipe", 100},
		{"chemical-plant", 20},
		{"oil-refinery", 10}, 
		{"car", 1},
		{"coal", 50},
		{"roboport", 20},
		{"construction-robot", 50},
		{"logistic-robot", 300},
		{"lab", 10}
    };

    return items;
end

function LargeKit.define_armor_items()
    armor_items = {
        {"fusion-reactor-equipment"},
		{"personal-roboport-equipment"},
		{"personal-roboport-equipment"},
		{"personal-roboport-equipment"},
		{"personal-roboport-equipment"},
		{"personal-roboport-equipment"},
		{"battery-equipment"},
		{"battery-equipment"},
		{"battery-equipment"}
    }

    return armor_items;
end

function LargeKit.define_technology_list()
	technology_list = {
		{"automation"},
		{"steel-processing"},
		{"automation-2"},
		{"oil-processing"},
		{"plastics"},
		{"advanced-electronics"},
		{"sulfur-processing"},
		{"battery"},
		{"electronics"},
		{"engine"},
		{"electric-engine"},
		{"robotics"},
		{"logistic-robotics"},
		{"construction-robotics"},
		{"logistic-system"}
	}

	return technology_list;
end

return LargeKit;