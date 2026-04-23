if settings.startup["sessai-legacy-mode"].value then
    data.raw.technology["electromagnetic-plant"].prerequisites = {"se-quantum-processor", "se-aeroframe-bulkhead", "automation-3"}
    data.raw.technology["electromagnetic-plant"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
        {"se-astronomic-science-pack-3", 1},
        {"se-energy-science-pack-3", 1},
    }

    local foundry_name = (require("__sei-foundry__.data_util").prefix or "").."foundry"
    data.raw.technology[foundry_name].prerequisites = {"se-heavy-composite", "se-aeroframe-bulkhead"}
    data.raw.technology[foundry_name].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
        {"se-astronomic-science-pack-3", 1},
        {"se-material-science-pack-3", 1},
    }
end

if mods["se-molten-glass"] then
    data:extend({
        {
            type = "item-subgroup",
            name = "vulcanus-processes",
            group = "intermediate-products",
            order = "a-da"
        }
    })
end