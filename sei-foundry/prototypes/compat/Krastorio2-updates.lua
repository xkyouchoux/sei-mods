if not mods["Krastorio2"] then return end

local data_util = require("__sei-foundry__.data_util")

data:extend({
    data_util.create_casting_recipe({
        name = "kr-steel-pipe",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(1)},
        },
    }),
    data_util.create_casting_recipe({
        name = "kr-steel-pipe-to-ground",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "item", name = "kr-steel-pipe", amount = 15},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(5)},
        },
    }),
    data_util.create_casting_recipe({
        name = "kr-steel-gear-wheel",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(1)},
        },
    }),
    data_util.create_casting_recipe({
        name = "kr-iron-beam",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
        },
    }),
    data_util.create_casting_recipe({
        name = "kr-steel-beam",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(2)},
        },
    }),
    data_util.create_casting_recipe({
        name = "kr-inserter-parts",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "item", name = "iron-gear-wheel", amount = 2},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
        },
    }),
    data_util.create_casting_recipe({
        name = "kr-automation-core",
        icons = {data.raw.fluid["se-molten-copper"].icon, data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "item", name = "iron-gear-wheel", amount = 4},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
            {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(6)},
        },
    })
})

data.raw["recipe"]["casting-se-steel-ingot"].ingredients = {
    {type = "fluid", name = "se-molten-iron", amount = 700}
}

data.raw["recipe"]["casting-iron-gear-wheel"].ingredients = {
    {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)}
}

data.raw["recipe"]["casting-engine-unit"].ingredients = { 
    {type = "item", name = "motor", amount = 2},
    {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2) + data_util.get_iron_cost_for_steel(1)},
}

data.raw["recipe"]["casting-se-material-testing-pack"].ingredients = {
    {type = "item", name = "plastic-bar", amount = 1},
    {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
    {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(1)},
    {type = "item", name = "kr-rare-metals", amount = 1},
    {type = "item", name = "kr-lithium-chloride", amount = 1},
}

local casting_recipes = {
    "kr-steel-pipe",
    "kr-steel-pipe-to-ground",
    "kr-steel-gear-wheel",
    "kr-iron-beam",
    "kr-steel-beam",
    "kr-inserter-parts",
    "kr-automation-core",
}

for _,recipe in pairs(casting_recipes) do
    data_util.recipe_require_tech("casting-" .. recipe, data_util.prefix.."foundry")
end
