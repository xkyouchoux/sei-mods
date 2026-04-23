data:extend({
    {
        type = "int-setting",
        name = "sei-biochamber-base-production-bonus",
        setting_type = "startup",
        default_value = 20,
        minimum_value = 0,
        maximum_value = 100,
        order = "a",
    },
    {
        type = "bool-setting",
        name = "sei-biochamber-allow-space-recipes",
        setting_type = "startup",
        default_value = false,
        order = "b",
    },
    {
        type = "bool-setting",
        name = "sei-biochamber-enable-spoilage",
        setting_type = "startup",
        default_value = false,
        order = "c",
    },
})