local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "heating-tower",
        energy_required = 10,
        ingredients =
        {
            {type = "item", name = "steel-furnace", amount = 1},
            {type = "item", name = "heat-pipe", amount = 5},
            {type = "item", name = "concrete", amount = 20},
            {type = "item", name = "se-heat-shielding", amount = 5},
        },
        results = {{type = "item", name = "heating-tower", amount = 1}},
        enabled = false
    }
})
