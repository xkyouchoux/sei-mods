require("prototypes.categories.recipe-category")
require("prototypes.entity.explosions")
require("prototypes.entity.remnants")
require("prototypes.entity.entities")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

require("prototypes.compat.Krastorio2")

data.raw.recipe["se-heat-shielding-iridium"].order = data.raw.item["se-heat-shielding"].order .. "-z"
data.raw.recipe["se-low-density-structure-beryllium"].order = data.raw.item["low-density-structure"].order .. "-z"
