local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "technology",
        name = "fusion-reactor",
        icon = path_util.space_age_path.."graphics/technology/fusion-reactor.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "fusion-reactor"
            },
            {
                type = "unlock-recipe",
                recipe = "fusion-generator"
            },
            {
                type = "unlock-recipe",
                recipe = "fusion-power-cell",
            },
            {
                type = "unlock-recipe",
                recipe = "flash-coolant-cold"
            }
        },
        prerequisites = {"se-holmium-solenoid", "se-heavy-girder", "cryogenic-plant"},
        unit =
        {
            count = 500,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"space-science-pack", 1},
                {"utility-science-pack", 1},
                {"production-science-pack", 1},
                {"se-material-science-pack-1", 1},
                {"se-energy-science-pack-2", 1},
            },
            time = 60
        }
    },
})
