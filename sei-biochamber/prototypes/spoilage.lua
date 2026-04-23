if not (settings.startup["sei-biochamber-enable-spoilage"].value or SEI_FORCE_SPOILAGE) then return end

local data_util = require("__sei-library__.data_util")

data.raw["assembling-machine"]["biochamber"].energy_source.burnt_inventory_size = 1

data.raw.capsule["raw-fish"].spoil_ticks = 453000
data.raw.capsule["raw-fish"].spoil_result = "spoilage"

data_util.conditional_modify({
    type = "item",
    name = "nutrients",
    spoil_ticks = 5 * minute,
    spoil_result = "spoilage",
})

data:extend({
    {
        type = "recipe",
        name = "nutrients-from-spoilage",
        additional_categories = {"organic"},
        order = "c[nutrients]-c[nutrients]-a[spoilage]",
        energy_required = 2,
        icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.item["spoilage"].icon),
        ingredients = {
            {type = "item", name = "spoilage", amount = 10},
        },
        results = {{type="item", name="nutrients", amount=1, percent_spoiled=0.5}},
        enabled = false,
        allow_productivity = true,
        crafting_machine_tint = {
            primary = {r = 0.8, g = 0.9, b = 1, a = 1.000},
            secondary = {r = 0.5, g = 0.5, b = 0.8, a = 1.000},
        }
    },
})

data_util.replace_or_add_ingredient("biosulfur", "se-vitamelange-nugget", "spoilage", 5)

table.insert(data.raw.technology["biochamber"].effects, 2, {
        type = "unlock-recipe",
        recipe = "nutrients-from-spoilage"
    }
)
