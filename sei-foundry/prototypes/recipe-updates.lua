local data_util = require("__sei-foundry__.data_util")

data:extend({
    data_util.create_casting_recipe({
        name = "se-heat-shielding",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "item", name = "sulfur", amount = 8},
            {type = "item", name = "stone-tablet", amount = 20},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(2)},
        },
    }),
    data_util.create_casting_recipe({
        name = "se-steel-ingot", 
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = 500},
        },
        energy_required = data.raw["recipe"]["se-steel-ingot"].energy_required
    }),
    data_util.create_casting_recipe({
        name = "pipe",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)}
        },
    }),
    data_util.create_casting_recipe({
        name = "pipe-to-ground",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "item", name = "pipe", amount = 10},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(5)},
        },
    }),
    data_util.create_casting_recipe({
        name = "iron-gear-wheel",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
        },
    }),
    data_util.create_casting_recipe({
        name = "iron-stick",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
        },
        results = {{type = "item", name = "iron-stick", amount = 4}},
    }),
    data_util.create_casting_recipe({
        name = "copper-cable",
        icons = {data.raw.fluid["se-molten-copper"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(1)},
        },
    }),
    data_util.create_casting_recipe({
        name = "low-density-structure",
        icons = {data.raw.fluid["se-molten-copper"].icon, data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "item", name = "plastic-bar", amount = 10},
            {type = "item", name = data_util.get_glass(), amount = 10},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(5)},
            {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(10)},
        },
    }),
    data_util.create_casting_recipe({
        name = "se-low-density-structure-beryllium",
        icons = {data.raw.item["se-aeroframe-scaffold"].icon, data.raw.fluid["se-molten-iron"].icon},
        item = "low-density-structure",
        ingredients = {
            {type = "item", name = "se-aeroframe-scaffold", amount = 1},
            {type = "item", name = "plastic-bar", amount = 2},
            {type = "item", name = data_util.get_glass(), amount = 2},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(2)},
        },
        results = {{type = "item", name = "low-density-structure", amount = 2}},
    }),
    data_util.create_casting_recipe({
        name = "concrete",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
            {type = "item", name = "stone-brick", amount = 5},
            {type = "item", name = data_util.get_sand(), amount = 10},
            {type = "fluid", name = "water", amount = 100},
            
        },
        results = {{type = "item", name = "concrete", amount = 10}},
    }),
    data_util.create_casting_recipe({
        name = "barrel",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(1)},
        },
    }),
    data_util.create_casting_recipe({
        name = "motor",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "item", name = "iron-gear-wheel", amount = 1},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
        },
    }),
    data_util.create_casting_recipe({
        name = "engine-unit",
        icons = {data.raw.fluid["se-molten-iron"].icon},
        ingredients = { 
            {type = "item", name = "motor", amount = 2},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(4) + data_util.get_iron_cost_for_steel(2)},
        },
    }),
    data_util.create_casting_recipe({
        name = "se-material-testing-pack",
        icons = {data.raw.fluid["se-molten-copper"].icon, data.raw.fluid["se-molten-iron"].icon},
        ingredients = {
            {type = "item", name = "plastic-bar", amount = 1},
            {type = "item", name = "stone", amount = 1},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
            {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(1)},
        },
    }),
})