require("prototypes.entity.turrets")
require("prototypes.entity.remnants")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

require("prototypes.compat.Krastorio2")

local data_util = require("__sei-library__.data_util")

data_util.remove_ingredient("spidertron", "rocket-launcher")
data_util.replace_or_add_ingredient("spidertron", "se-heavy-girder", "se-heavy-girder", 6)
data_util.replace_or_add_ingredient("spidertron", "processing-unit", "processing-unit", 12)
data_util.replace_or_add_ingredient("spidertron", nil, "rocket-turret", 1)

data_util.tech_add_prerequisites("spidertron", {"rocket-turret"})

data_util.tech_add_prerequisites("stronger-explosives-7", {"rocket-turret"})
