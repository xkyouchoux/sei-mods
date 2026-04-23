if not mods["aai-loaders"] then return end

if data.raw.recipe["aai-turbo-loader"] then
    data.raw.recipe["aai-turbo-loader"].category = "crafting-with-fluid"
    data.raw.recipe["aai-turbo-loader"].ingredients = settings.startup["aai-loaders-mode"].value == "expensive" and {
        {type = "item", name = "se-iridium-plate", amount = 50},
        {type = "item", name = "aai-express-loader", amount = 1},
        {type = "item", name = "processing-unit", amount = 50},
        {type = "item", name = "electric-engine-unit", amount = 50},
        {type= "fluid", name = "lubricant", amount = 1600}
    } or {
        {type = "item", name = "se-iridium-plate", amount = 5},
        {type = "item", name = "aai-express-loader", amount = 1},
        {type = "item", name = "processing-unit", amount = 5},
        {type = "item", name = "electric-engine-unit", amount = 5},
        {type= "fluid", name = "lubricant", amount = 160}
    }
end

if data.raw.technology["aai-turbo-loader"] then
    data.raw.technology["aai-turbo-loader"].unit = {
        count = 500,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"se-rocket-science-pack", 1},
            {"space-science-pack", 1},
            {"production-science-pack", 1},
            {"se-material-science-pack-1", 1},
        },
        time = 15
    }
end
