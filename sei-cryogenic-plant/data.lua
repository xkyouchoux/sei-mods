require("prototypes.categories.recipe-category")
require("prototypes.entity.explosions")
require("prototypes.entity.remnants")
require("prototypes.entity.entities")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

require("prototypes.Krastorio2")

local data_util = require("__sei-library__.data_util")

if settings.startup["sei-cryogenic-plant-required-for-progression"].value then
    data_util.tech_add_prerequisites("se-processing-cryonite", {"cryogenic-plant"})
end