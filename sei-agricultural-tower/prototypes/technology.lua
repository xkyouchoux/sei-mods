local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "technology",
        name = "agriculture",
        icon = path_util.space_age_path.."graphics/technology/agriculture.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "agricultural-tower"
            },
            {
                type = "unlock-recipe",
                recipe = "wood-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "wood-processing-sand"
            }
        },
        prerequisites = {"chemical-science-pack"},
        unit =
        {
            count = 100,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 60
        }
    },
})