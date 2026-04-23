if not mods["um-standalone-space-age-lib"] then return end

local data_util = require("__sei-library__.data_util")

data_util.set_category_for_recipes("crafting", {
    "discharge-defense-equipment", -- base
})

data_util.add_categories_to_machines({
    "crafting-or-electromagnetics",
}, {
    "assembling-machine-3",
})

data_util.add_categories_to_machines({
    "melting",
}, {
    "chemical-plant",
})

data_util.add_categories_to_machines_with_category({
    "electronics",
    "pressing"
}, "crafting")

data_util.add_categories_to_machines_with_category({
    "crafting-with-fluid-or-metallurgy",
    "metallurgy-or-assembling",
    "organic-or-hand-crafting",
    "organic-or-assembling",
    "electronics-or-assembling",
    "electronics-with-fluid",
    "cryogenics-or-assembling",
}, "crafting-with-fluid")

data_util.add_categories_to_machines_with_category({
    "chemistry-or-cryogenics",
    "organic-or-chemistry"
}, "chemistry")