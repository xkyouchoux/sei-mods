if SEI_SPACE_AGE then return end

local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "technology",
        name = "electromagnetic-plant",
        localised_name = {"technology-name.sei-electromagnetic-plant"},
        localised_description = {"technology-description.sei-electromagnetic-plant"},
        icon = path_util.space_age_path.."graphics/technology/electromagnetic-plant.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "electromagnetic-plant",
            },
        },
        prerequisites = {
            "se-quantum-processor", 
            "automation-3",
        },
        unit = {
            count = 500,
            time = 60,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"utility-science-pack", 1},
                {"se-energy-science-pack-3", 1},
            }
        }
    },
})
