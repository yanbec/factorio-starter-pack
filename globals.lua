local Globals = {
    GAME_SPEED = 3,
    INITIAL_ITEMS = {
        {name = "iron-plate", count = 8},
        {name = "burner-mining-drill", count = 1},
        {name = "stone-furnace", count = 1}
    },
    PLAYER_COLOR = {
        r = 252,
        g = 227,
        b = 0
    },
    KITS = {
        SMALL_KIT = {
            TITLE = "Small Kit",
            DESCRIPTION = "Small Kit includes:",
            ITEMS = {

            }
        },
        MEDIUM_KIT = {
            TITLE = "Medium Kit",
            DESCRIPTION = "Medium Kit includes"
        },
        LARGE_KIT = {
            TITLE = "Large Kit",
            DESCRIPTION = "Large kit includes:"
        },
        DEFAULT_KIT = {
            TITLE = "Default Kit",
            DESCRIPTION = "Default Kit includes:",
            ITEMS = {
                {name = "iron-plate", count = 8},
                {name = "burner-mining-drill", count = 1},
                {name = "stone-furnace", count = 1},
                {name = "wood", count = 1}
            }
        }
    }
}

return Globals;