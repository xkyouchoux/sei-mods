local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "tesla-turret",
        category = "space-electromagnetics",
        energy_required = 30,
        ingredients = {
            {type = "item", name = "se-tesla-gun", amount = 1},
            {type = "item", name = "processing-unit", amount = 10},
            {type = "item", name = "se-holmium-solenoid", amount = 10},
            {type = "item", name = "se-heavy-girder", amount = 10},
            {type = "fluid", name = "se-ion-stream", amount = 50},
        },
        results = {{type="item", name="tesla-turret", amount=1}},
        enabled = false
    },
})
