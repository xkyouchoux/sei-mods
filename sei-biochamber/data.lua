require("prototypes.entity.entities")
require("prototypes.entity.explosions")
require("prototypes.entity.remnants")
require("prototypes.categories.fuel-category")
require("prototypes.categories.recipe-category")
require("prototypes.burner-usage")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.spoilage")

require("prototypes.compat.Krastorio2")
require("prototypes.compat.sei-captive-biters")

--added from space exploration
se_delivery_cannon_recipes["nutrients"] = {name = "nutrients"}

data.raw.recipe["se-vitalic-epoxy"].order = "a[vitamelange]-h[vitalic-epoxy]-a[vitalic-epoxy]"
data.raw.recipe["se-self-sealing-gel"].order = "a[vitamelange]-i[self-sealing-gel]-a[self-sealing-gel]"
