local data_util = require("__sei-library__.data_util")

data_util.replace_or_add_ingredient("se-capsule-small-biter", "biter-egg", "biter-egg", 1)
data_util.replace_or_add_ingredient("se-capsule-small-spitter", "biter-egg", "biter-egg", 1)

data_util.add_recipes_to_recipe_productivity("se-bio-sludge", {
    "se-bio-sludge-from-biter-egg"
})

data_util.add_recipes_to_recipe_productivity("se-nutrient-gel", {
    "se-nutrient-gel-biter-egg"
})
