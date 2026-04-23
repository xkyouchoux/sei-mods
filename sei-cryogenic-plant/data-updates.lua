local data_util = require("__sei-library__.data_util")

data_util.add_categories_to_machines({
    "cryogenics"
}, {
    "se-space-biochemical-laboratory",
    "se-space-biochemical-laboratory-grounded",
    "kr-advanced-chemical-plant",
})

if settings.startup["sei-cryogenic-plant-required-for-progression"].value then
    local cryogenics_recipes = {
        "se-cryonite-lubricant",
        "se-cryonite-crystal",
        "se-cryonite-ion-exchange-beads",
        "se-cryonite-slush",
        "se-water-ice",
        "se-methane-ice",
        "se-beryllium-hydroxide",
        "se-naquium-refined",
        "se-holmium-chloride",
        "se-naquium-powder",
    }

    data_util.set_category_for_recipes("cryogenics", cryogenics_recipes)
end
