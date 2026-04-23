if not SEI_SPACE_AGE then return end

local data_util = require("__sei-library__.data_util")

data_util.add_categories_to_machines({
    "electronics", 
    "electronics-with-fluid",
    "pressing",
    "metallurgy-or-assembling",
    "organic-or-hand-crafting",
    "organic-or-assembling",
    "electronics-or-assembling",
    "cryogenics-or-assembling",
    "crafting-with-fluid-or-metallurgy"
}, {
    "se-space-manufactory", 
    "se-space-manufactory-grounded"
})

data_util.add_categories_to_machines({
    "chemistry-or-cryogenics",
    "organic-or-chemistry"
}, {
    "se-space-biochemical-laboratory", 
    "se-space-biochemical-laboratory-grounded"
})