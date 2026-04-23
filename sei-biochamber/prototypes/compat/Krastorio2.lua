if not mods["Krastorio2"] then return end

local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "fertilizer-with-nutrients",
        category = "organic",
        order = data.raw.recipe["se-kr-fertilizer-with-nutrients"].order .. "-bio",
        energy_required = 4,
        icons = data_util.sub_icons(data.raw.item["kr-fertilizer"].icon, data.raw.item["nutrients"].icon),
        ingredients = {
            {type = "item", name = "kr-biomass", amount = 2},
            {type = "item", name = "kr-sand", amount = 5},
            {type = "item", name = "nutrients", amount = 40},
            {type = "fluid", name = "kr-nitric-acid", amount = 10},
            {type = "fluid", name = "kr-mineral-water", amount = 20},
        },
        results = {{type="item", name="kr-fertilizer", amount = 20}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
})

data_util.replace_or_add_ingredient("biochamber", "steel-plate", "kr-imersium-beam", 10)

data.raw.recipe["se-kr-fertilizer-with-nutrients"].icon = nil
data.raw.recipe["se-kr-fertilizer-with-nutrients"].icons = data_util.sub_icons(data.raw.item["kr-fertilizer"].icon, data.raw.fluid["se-nutrient-gel"].icon)

table.insert(data.raw.technology["biochamber"].effects, {
        type = "unlock-recipe",
        recipe = "fertilizer-with-nutrients"
    }
)
