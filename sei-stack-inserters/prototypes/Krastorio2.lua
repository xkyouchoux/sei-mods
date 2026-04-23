if not mods["Krastorio2"] then return end

local data_util = require("__sei-library__.data_util")

data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].drops_full_belt_stacks = settings.startup["sei-add-stacking-to-kr-electric-mining-drill-mk2"].value
data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].drops_full_belt_stacks = settings.startup["sei-add-stacking-to-kr-electric-mining-drill-mk3"].value

if settings.startup["sei-add-stacking-to-kr-inserters"].value then
    data.raw["inserter"]["stack-inserter"].next_upgrade = "kr-superior-inserter"
    data_util.replace_or_add_ingredient("kr-superior-inserter", "bulk-inserter", "stack-inserter", 1)
    data_util.replace_or_add_ingredient("kr-superior-long-inserter", "bulk-inserter", "stack-inserter", 1)
end

data.raw["recipe"]["stack-inserter"].ingredients = { 
    {type = "item", name = "low-density-structure", amount = 1},
    {type = "item", name = "kr-inserter-parts", amount = 4},
    {type = "item", name = "advanced-circuit", amount = 2},
    {type = "item", name = "processing-unit", amount = 1},
    {type = "item", name = "bulk-inserter", amount = 1},
}