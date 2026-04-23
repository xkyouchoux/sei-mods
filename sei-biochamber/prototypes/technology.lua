local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "technology",
        name = "biochamber",
        icon = path_util.space_age_path.."graphics/technology/biochamber.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "biochamber"
            },
            {
                type = "unlock-recipe",
                recipe = "nutrients-from-nuggets"
            },
            {
                type = "unlock-recipe",
                recipe = "nutrients-from-bloom"
            },
            {
                type = "unlock-recipe",
                recipe = "nutrients-from-spice"
            },
            {
                type = "unlock-recipe",
                recipe = "nutrients-from-extract"
            },
            {
                type = "unlock-recipe",
                recipe = "nutrients-from-fish"
            },
            {
                type = "unlock-recipe",
                recipe = "bioplastic"
            },
            {
                type = "unlock-recipe",
                recipe = "biosulfur"
            },
            {
                type = "unlock-recipe",
                recipe = "biolubricant"
            },
            {
                type = "unlock-recipe",
                recipe = "fish-breeding"
            },
        },
        prerequisites = {"se-vitalic-epoxy"},
        unit =
        {
            count = 500,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
                {"se-biological-science-pack-3", 1}
            },
            time = 60
        }
    },
})
