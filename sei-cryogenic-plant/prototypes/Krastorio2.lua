if not mods["Krastorio2"] then return end

local data_util = require("__sei-library__.data_util")

data_util.conditional_modify({
    type = "assembling-machine",
    name = "cryogenic-plant",
    module_slots = 3,
    energy_usage = "250kW",
})

data_util.replace_or_add_ingredient("cryogenic-plant", "steel-plate", "kr-steel-beam", 10)
data_util.replace_or_add_ingredient("kr-advanced-chemical-plant", "chemical-plant", "cryogenic-plant", 2)

if not settings.startup["sei-cryogenic-plant-required-for-progression"].value then
    data_util.tech_add_prerequisites("kr-advanced-chemical-plant", {"cryogenic-plant"})
end