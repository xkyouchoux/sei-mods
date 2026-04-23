if SEI_SPACE_AGE then return end

data:extend({
    {
        type = "recipe",
        name = "electromagnetic-plant",
        category = "crafting",
        energy_required = 10,
        ingredients =
        {
            {type = "item", name = "steel-plate", amount = 50},
            {type = "item", name = "se-holmium-solenoid", amount = 10},
            {type = "item", name = "se-quantum-processor", amount = 20},
            {type = "item", name = "refined-concrete", amount = 20},
            {type = "item", name = "assembling-machine-3", amount = 1}
        },
        results = {{type="item", name="electromagnetic-plant", amount=1}},
        enabled = false
    },
})