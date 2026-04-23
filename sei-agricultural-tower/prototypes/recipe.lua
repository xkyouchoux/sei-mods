local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "agricultural-tower",
        energy_required = 10,
        ingredients =
        {
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "advanced-circuit", amount = 3},
            {type = "item", name = SEItemNames.get_sand_name(), amount = 20},
            {type = "item", name = "landfill", amount = 1}
        },
        results = {{type="item", name="agricultural-tower", amount=1}},
        enabled = false
    },
    {
        type = "recipe",
        name = "wood-processing",
        icon = "__base__/graphics/icons/wood-processing.png",
        subgroup = "agriculture-seeds",
        order = "a[seeds]-a[wood-processing]",
        category = "crafting-with-fluid",
        additional_categories = mods["sei-biochamber"] and {"organic"} or nil,
        enabled = false,
        allow_productivity = true,
        energy_required = 2,
        ingredients = {
            {type = "item", name = "wood", amount = 1},
            {type = "fluid", name = "water", amount = 40},
        },
        results =
        {
            {type = "item", name = "tree-seed", amount = 1},
        },
        auto_recycle = false,
        crafting_machine_tint =
        {
            primary = {r = 0.442, g = 0.205, b = 0.090, a = 1.000}, -- #703416ff
            secondary = {r = 1.000, g = 0.500, b = 0.000, a = 1.000}, -- #ff7f00ff
        }
    },
    
    {
        type = "recipe",
        name = "wood-processing-sand",
        icons = data_util.sub_icons("__base__/graphics/icons/wood-processing.png", data.raw["item"][SEItemNames.get_sand_name()].icon),
        subgroup = "agriculture-seeds",
        order = "a[seeds]-a[wood-processing]-sand",
        category = "crafting-with-fluid",
        additional_categories = mods["sei-biochamber"] and {"organic"} or nil,
        enabled = false,
        allow_productivity = true,
        energy_required = 4,
        ingredients = {
            {type = "item", name = SEItemNames.get_sand_name(), amount = 1},
            {type = "item", name = "wood", amount = 4},
            {type = "fluid", name = "water", amount = 20},
        },
        results =
        {
            {type = "item", name = "tree-seed", amount = 4},
        },
        auto_recycle = false,
        crafting_machine_tint =
        {
            primary = {r = 0.442, g = 0.205, b = 0.090, a = 1.000}, -- #703416ff
            secondary = {r = 1.000, g = 0.500, b = 0.000, a = 1.000}, -- #ff7f00ff
        }
    }
})