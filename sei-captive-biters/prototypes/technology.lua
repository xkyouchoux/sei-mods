local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "technology",
        name = "captivity",
        icon = path_util.space_age_path.."graphics/technology/captivity.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "bioflux"
            },
            {
                type = "unlock-recipe",
                recipe = "rocket-launcher"
            },
            {
                type = "unlock-recipe",
                recipe = "capture-robot-rocket"
            },
            {
                type = "unlock-recipe",
                recipe = "biter-egg"
            },
            {
                type = "unlock-recipe",
                recipe = "se-bio-sludge-from-biter-egg"
            },
            {
                type = "unlock-recipe",
                recipe = "se-nutrient-gel-biter-egg"
            },
        },
        prerequisites = {"production-science-pack"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "captive-biter-spawner",
        icon = path_util.space_age_path.."graphics/technology/captive-biter-spawner.png",
        icon_size = 256,
        effects =
        {
        {
            type = "unlock-recipe",
            recipe = "captive-biter-spawner"
        }
        },
        prerequisites = {"se-self-sealing-gel", "captivity"},
        unit =
        {
        count = 1000,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
                {"se-biological-science-pack-4", 4},
            },
            time = 60
        }
    },
})
