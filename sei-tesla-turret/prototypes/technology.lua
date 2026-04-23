local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "technology",
        name = "tesla-turret",
        icon = path_util.space_age_path.."graphics/technology/tesla-weapons.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "tesla-turret",
            },
        },
        prerequisites = {"se-holmium-solenoid", "se-heavy-girder", "se-tesla-gun"},
        unit =
        {
            count = 250,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"se-rocket-science-pack", 1},
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
