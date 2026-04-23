local data_util = require("__sei-foundry__.data_util")

data:extend({
    {
        type = "recipe",
        name = data_util.prefix.."foundry",
        category = "crafting-with-fluid",
        enabled = false,
        ingredients =
            {{type = "item", name = "se-heavy-composite", amount = 20},
            {type = "item", name = "se-heat-shielding", amount = 10},
            {type = "item", name = "se-casting-machine", amount = 1},
            {type = "item", name = "refined-concrete", amount = 20},
            {type = "item", name = "steel-plate", amount = 50},
            {type = "fluid", name = "lubricant", amount = 80}
        },
        energy_required = 10,
        results = {{type="item", name=data_util.prefix.."foundry", amount=1}}
    },
})
