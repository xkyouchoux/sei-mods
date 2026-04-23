local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "rocket-turret",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {type = "item", name = "rocket-launcher", amount = 4},
            {type = "item", name = "processing-unit", amount = 4},
            {type = "item", name = "steel-plate", amount = 20},
            {type = "item", name = "se-heavy-girder", amount = 10},
            {type = "item", name = "iron-gear-wheel", amount = 20},
        },
        results = {{type="item", name="rocket-turret", amount=1}}
    },
})
