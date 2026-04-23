local path_util = require("__sei-library__.path_util")
local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "technology",
        name = "fruits-processing",
        icon = "__sei-gleba-fruits__/graphics/technology/fruits-processing.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "yumako-seed-genetic-breeding"
            },
            {
                type = "unlock-recipe",
                recipe = "jellynut-seed-genetic-breeding"
            },
            {
                type = "unlock-recipe",
                recipe = "yumako-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "jellynut-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "artificial-yumako-soil"
            },
            {
                type = "unlock-recipe",
                recipe = "artificial-jellynut-soil"
            },
            {
                type = "unlock-recipe",
                recipe = "bioflux"
            },
        },
        prerequisites = {"se-space-genetics-laboratory", "agriculture", "se-processing-vitamelange"},
        unit =
        {
            count = 100,
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
        name = "carbon-fiber",
        icon = path_util.space_age_path.."graphics/technology/carbon-fiber.png",
        icon_size = 256,
        effects =
        {
        {
            type = "unlock-recipe",
            recipe = "carbon-fiber",
        },
        },
        prerequisites = {"fruits-processing", "se-biological-science-pack-1"},
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
                {"se-biological-science-pack-1", 1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "bioflux-processing",
        icon = path_util.space_age_path.."graphics/technology/bioflux-processing.png",
        icon_size = 256,
        effects =
        {
        {
            type = "unlock-recipe",
            recipe = "bioplastic"
        },
        {
            type = "unlock-recipe",
            recipe = "rocket-fuel-from-jelly"
        },
        {
            type = "unlock-recipe",
            recipe = "biosulfur"
        },
        {
            type = "unlock-recipe",
            recipe = "biolubricant"
        }
        },
        prerequisites = {"fruits-processing", "se-biological-science-pack-1"},
        unit =
        {
            count = 250,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
                {"se-biological-science-pack-1", 1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "fruits-processing-vitalic-acid",
        icons = {
            { icon = "__sei-gleba-fruits__/graphics/technology/fruits-processing.png" , scale = 1, icon_size = 256, shift = {12, 12} },
            { icon = "__space-exploration-graphics__/graphics/technology/vitalic-acid.png", scale = 1, icon_size = 128, shift = {-64, -64} },
        },
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "yumako-processing-vita"
            },
            {
                type = "unlock-recipe",
                recipe = "jellynut-processing-vita"
            },
        },
        prerequisites = {"se-biological-science-pack-2"},
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
                {"se-biological-science-pack-2", 1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "carbon-fiber-robot-frame",
        icons = {
            { icon = "__base__/graphics/technology/robotics.png" , scale = 1, icon_size = 256, shift = {12, 12} },
            { icon = path_util.space_age_path.."graphics/technology/carbon-fiber.png", scale = 0.5, icon_size = 256, shift = {-64, -64} },
        },
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "carbon-fiber-robot-frame"
            },
        },
        prerequisites = {"se-biological-science-pack-2"},
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
                {"se-biological-science-pack-2", 1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "overgrowth-soil",
        icon = path_util.space_age_path.."graphics/technology/overgrowth-soil.png",
        icon_size = 256,
        effects =
        {
        {
            type = "unlock-recipe",
            recipe = "overgrowth-yumako-soil"
        },
        {
            type = "unlock-recipe",
            recipe = "overgrowth-jellynut-soil"
        }
        },
        prerequisites = {"biochamber"},
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
