require("prototypes.entity.entities")
require("prototypes.entity.explosions")
require("prototypes.entity.flying-robots")
require("prototypes.entity.projectiles")
require("prototypes.categories.ammo-category")
require("prototypes.categories.fuel-category")
require("prototypes.categories.recipe-category")
require("prototypes.burner-usage")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.spoilage")

require("prototypes.compat.Krastorio2")

local data_util = require("__sei-library__.data_util")

--added from space exploration
se_delivery_cannon_recipes["bioflux"] = {name = "bioflux"}
se_delivery_cannon_recipes["biter-egg"] = {name = "biter-egg"}

data_util.replace_or_add_ingredient("se-biochemical-data", "se-vitamelange-spice", "biter-egg", 1)
data_util.replace_or_add_ingredient("se-biological-science-pack-4", "se-core-fragment-se-vitamelange", "biter-egg", 5)

data_util.replace_or_add_ingredient("se-capsule-small-biter", "biter-egg", "biter-egg", 1)
data_util.replace_or_add_ingredient("se-capsule-small-spitter", "biter-egg", "biter-egg", 1)

data_util.tech_add_prerequisites("se-space-catalogue-biological-1", {"captivity"})

data.raw["unit-spawner"]["biter-spawner"].captured_spawner_entity = "captive-biter-spawner"
data.raw["unit-spawner"]["spitter-spawner"].captured_spawner_entity = "captive-biter-spawner"

sei_capture_robot_categories = sei_capture_robot_categories or {}
sei_capture_robot_categories["rocket"] = true