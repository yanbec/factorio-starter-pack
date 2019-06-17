local SmallKit = require("kits/small_kit");
local MediumKit = require("kits/medium_kit");
local LargeKit = require("kits/large_kit");
local DefaultKit = require("kits/default_kit");

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
            QUICKBAR = SmallKit.define_quickbar(),
            ITEMS = SmallKit.define_items()
        },
        MEDIUM_KIT = {
            TITLE = "Medium Kit",
            DESCRIPTION = "Medium Kit includes",
            QUICKBAR = MediumKit.define_quickbar(),
            ITEMS = MediumKit.define_items(),
            ARMOR = MediumKit.define_armor_items()
        },
        LARGE_KIT = {
            TITLE = "Large Kit",
            DESCRIPTION = "Large kit includes:",
            QUICKBAR = LargeKit.define_quickbar(),
            ITEMS = LargeKit.define_items(),
            ARMOR = LargeKit.define_armor_items()
        },
        DEFAULT_KIT = {
            TITLE = "Default Kit",
            DESCRIPTION = "Default Kit includes:",
            QUICKBAR = DefaultKit.define_quickbar(),
            ITEMS = DefaultKit.define_items()
        }
    }
}

return Globals;