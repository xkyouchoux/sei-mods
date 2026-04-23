local data_util = require("__sei-foundry__.data_util")
local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "technology",
        name = data_util.prefix.."foundry",
        localised_name = data_util.prefix == "sei-" and {"technology-name.sei-foundry-bzfoundry"} or {"technology-name.sei-foundry"},
        localised_description = {"technology-description.sei-foundry"},
        icon = path_util.space_age_path.."graphics/technology/foundry.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = data_util.prefix.."foundry"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-se-heat-shielding"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-se-steel-ingot"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-pipe"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-pipe-to-ground"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-iron-gear-wheel"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-iron-stick"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-copper-cable"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-low-density-structure"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-concrete"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-barrel"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-motor"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-engine-unit"
            },
            
            {
                type = "unlock-recipe",
                recipe = "casting-se-material-testing-pack"
            },
        },
        prerequisites = {"se-heavy-composite"},
        unit = {
            count = 500,
            time = 60,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
                {"se-material-science-pack-3", 1},
            }
        }
    },
})