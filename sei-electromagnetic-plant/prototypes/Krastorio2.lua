if SEI_SPACE_AGE then return end

if not mods["Krastorio2"] then return end

local data_util = require("__sei-library__.data_util")

data.raw.recipe["electromagnetic-plant"].ingredients = {
    {type = "item", name = "kr-imersium-beam", amount = 20},
    {type = "item", name = "kr-energy-control-unit", amount = 10},
    {type = "item", name = "se-quantum-processor", amount = 20},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "assembling-machine-3", amount = 1}
}

data_util.tech_add_prerequisites("electromagnetic-plant", {"kr-energy-control-unit"})