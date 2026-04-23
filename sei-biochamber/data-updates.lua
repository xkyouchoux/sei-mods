local data_util = require("__sei-library__.data_util")

local organic_recipes = {
    "light-oil-cracking",
    "heavy-oil-cracking",
    "se-vitamelange-extract",
    "se-bioscrubber",
    "se-vitalic-acid",
    "se-vitalic-epoxy",

    "se-vitalic-reagent",
    "kr-biomass",    
}

if settings.startup["sei-biochamber-allow-space-recipes"].value then
    table.insert(organic_recipes, "se-self-sealing-gel")
end

data_util.add_additional_category_to_recipes("organic", organic_recipes)

data_util.add_recipes_to_recipe_productivity("plastic-bar", {
    "bioplastic",
})

data_util.add_recipes_to_recipe_productivity("sulfur", {
    "biosulfur",
})

data_util.add_recipes_to_recipe_productivity("lubricant", {
    "biolubricant",
})
