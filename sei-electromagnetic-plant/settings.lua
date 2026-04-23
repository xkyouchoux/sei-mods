data:extend({
    {
        type = "bool-setting",
        name = "sei-electromagnetic-plant-allow-space-recipes",
        setting_type = "startup",
        default_value = false,
        order = "a",
    },
    {
        type = "int-setting",
        name = "sei-electromagnetic-plant-base-production-bonus",
        setting_type = "startup",
        default_value = 20,
        minimum_value = 0,
        maximum_value = 100,
        order = "b",
    },
})