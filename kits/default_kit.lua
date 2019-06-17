DefaultKit = {};

function DefaultKit.define_quickbar()
    quickbarItems = {
        {1, "burner-mining-drill"},
		{2, "stone-furnace"}
    };

    return quickbarItems;
end

function DefaultKit.define_items()
    items = {
        {"iron-plate", 8},
        {"stone-furnace", 1},
        {"burner-mining-drill", 1}
    };

    return items;
end

return DefaultKit;