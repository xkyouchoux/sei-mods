if not mods["Krastorio2"] then return end

local data_util = require("__sei-foundry__.data_util")

data.raw["recipe"][data_util.prefix.."foundry"].ingredients = {
    {type = "item", name = "se-heavy-composite", amount = 20},
    {type = "item", name = "se-heat-shielding", amount = 10},
    {type = "item", name = "se-casting-machine", amount = 1},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "kr-imersium-beam", amount = 20},
    {type = "fluid", name = "lubricant", amount = 80}
}
