data.raw.item["turbo-transport-belt"].subgroup = "transport-belt"
data.raw.item["turbo-underground-belt"].subgroup = "underground-belt"
data.raw.item["turbo-splitter"].subgroup = "splitter"

data.raw.recipe["turbo-transport-belt"].ingredients = {
    {type = "item", name = "se-iridium-plate", amount = 2},
    {type = "item", name = "express-transport-belt", amount = 1},
    {type= "fluid", name = "lubricant", amount = 20}
}
data.raw.recipe["turbo-underground-belt"].ingredients = {
    {type = "item", name = "se-iridium-plate", amount = 10},
    {type = "item", name = "express-underground-belt", amount = 2},
    {type = "fluid", name = "lubricant", amount = 40}
}
data.raw.recipe["turbo-splitter"].ingredients = {
    {type = "item", name = "se-iridium-plate", amount = 4},
    {type = "item", name = "express-splitter", amount = 1},
    {type = "item", name = "processing-unit", amount = 2},
    {type = "fluid", name = "lubricant", amount = 80}
}

if data.raw.recipe["turbo-lane-splitter"] then
    data.raw.recipe["turbo-lane-splitter"].ingredients = {
        {type = "item", name = "se-iridium-plate", amount = 4},
        {type = "item", name = "express-lane-splitter", amount = 2},
        {type = "item", name = "processing-unit", amount = 2},
        {type = "fluid", name = "lubricant", amount = 80}
    }
end

data.raw.technology["turbo-transport-belt"].prerequisites = {"se-material-science-pack-1", "logistics-3"}
data.raw.technology["turbo-transport-belt"].unit = {
    count = 500,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1},
        {"production-science-pack", 1},
        {"se-material-science-pack-1", 1},
    },
    time = 60
}

require("prototypes.aai-loaders")
