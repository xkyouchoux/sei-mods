if not mods["sei-captive-biters"] then return end

local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "nutrients-from-bioflux",
        category = "organic",
        order = "c[nutrients]-c[nutrients]-f[bioflux]",
        energy_required = 2,
        icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw["capsule"]["bioflux"].icon),
        ingredients = {
            {type = "item", name = "bioflux", amount = 5},
        },
        results = {{type="item", name="nutrients", amount = 40}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
    {
        type = "recipe",
        name = "nutrients-from-biter-egg",
        additional_categories = {"organic"},
        order = "c[nutrients]-c[nutrients]-h[biter-egg]",
        energy_required = 2,
        icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.item["biter-egg"].icon),
        ingredients = {
            {type = "item", name = "biter-egg", amount = 1},
        },
        results = {{type="item", name="nutrients", amount = 20}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
})

data_util.conditional_modify({
    type = "recipe",
    name = "bioplastic",
    icons = data_util.sub_icons(data.raw.item["plastic-bar"].icon, data.raw["capsule"]["bioflux"].icon),
})
data_util.replace_or_add_ingredient("bioplastic", "se-bio-sludge", "bioflux", 1)
    
data_util.conditional_modify({
    type = "recipe",
    name = "biosulfur",
    icons = data_util.sub_icons(data.raw.item["sulfur"].icon, data.raw["capsule"]["bioflux"].icon),
})
data_util.replace_or_add_ingredient("biosulfur", "se-bio-sludge", "bioflux", 1)
data_util.enable_recipe("nutrients-from-spice")
data_util.disable_recipe("nutrients-from-spice")

data_util.enable_recipe("nutrients-from-extract")
data_util.disable_recipe("nutrients-from-extract")

table.insert(data.raw.technology["biochamber"].effects, {
        type = "unlock-recipe",
        recipe = "nutrients-from-bioflux"
    }
)

table.insert(data.raw.technology["biochamber"].effects, {
        type = "unlock-recipe",
        recipe = "nutrients-from-biter-egg"
    }
)