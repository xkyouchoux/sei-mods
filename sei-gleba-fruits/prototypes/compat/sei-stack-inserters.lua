if not mods["sei-stack-inserters"] then return end

local data_util = require("__sei-library__.data_util")

data_util.replace_or_add_ingredient("stack-inserter", "low-density-structure", "carbon-fiber", 1)

data_util.tech_remove_prerequisites("stack-inserter", {"utility-science-pack"})
data_util.tech_add_prerequisites("stack-inserter", {"carbon-fiber"})

data_util.tech_add_ingredients("stack-inserter", {"production-science-pack", "se-biological-science-pack-1"})

data_util.tech_remove_ingredients("stack-inserter", {"utility-science-pack"})
data_util.tech_remove_ingredients("transport-belt-capacity-1", {"utility-science-pack"})
data_util.tech_remove_ingredients("transport-belt-capacity-2", {"utility-science-pack"})
