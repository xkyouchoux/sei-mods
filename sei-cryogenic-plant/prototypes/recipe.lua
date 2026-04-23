local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "cryogenic-plant",
        category = "crafting",
        energy_required = 10,
        ingredients =
        {
            {type = "item", name = "refined-concrete", amount = 20},
            {type = "item", name = "chemical-plant", amount = 1},
            {type = "item", name = "processing-unit", amount = 8},
            {type = "item", name = "steel-plate", amount = 20},
            {type = "item", name = SEItemNames.get_glass_name(), amount = 16}
        },
        results = {{type="item", name="cryogenic-plant", amount=1}},
        enabled = false,
    },
})