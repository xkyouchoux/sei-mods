if settings.startup["sessai-legacy-mode"].value then
    data.raw.recipe["cryogenic-plant"].ingredients = {
        {type = "item", name = "refined-concrete", amount = 10},
        {type = "item", name = "chemical-plant", amount = 1},
        {type = "item", name = "processing-unit", amount = 8},
        {type = "item", name = "steel-plate", amount = 20},
        {type = "item", name = mods["Krastorio2"] and "kr-glass" or "glass", amount = 16}
    }

    data.raw.recipe["electromagnetic-plant"].ingredients = {
        {type = "item", name = "se-holmium-solenoid", amount = 38},
        {type = "item", name = "se-aeroframe-bulkhead", amount = 24},
        {type = "item", name = "se-quantum-processor", amount = 24},
        {type = "item", name = "refined-concrete", amount = 48},
        {type = "item", name = "assembling-machine-3", amount = 1}
    }

    local foundry_name = (require("__sei-foundry__.data_util").prefix or "").."foundry"

    data.raw.recipe[foundry_name].ingredients = {
        {type = "item", name = "se-heavy-composite", amount = 16},
        {type = "item", name = "processing-unit", amount = 8},
        {type = "item", name = "se-casting-machine", amount = 1},
        {type = "item", name = "se-aeroframe-bulkhead", amount = 16},
        {type = "fluid", name = "lubricant", amount = 80}
    }

    data.raw.recipe["stack-inserter"].ingredients = {
        {type = "item", name = "low-density-structure", amount = 1},
        {type = "item", name = "processing-unit", amount = 1},
        {type = "item", name = "bulk-inserter", amount = 1},
    }
end