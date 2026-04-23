local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "technology",
        name = "rocket-turret",
        icon = path_util.space_age_path.."graphics/technology/rocket-turret.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "rocket-turret"
            },
        },
        prerequisites = {"se-heavy-girder", "rocketry"},
        unit = {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                {"chemical-science-pack", 1},
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
                {"se-material-science-pack-1", 1}
            },
            time = 60,
            count = 100
        }
    },
})
