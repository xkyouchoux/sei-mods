data:extend({
    {
        type = "string-setting",
        name = "sei-library-spoilage",
        setting_type = "startup",
        allowed_values = {""},
        default_value = "",
        allow_blank = true,
        hidden = true,
    },
    {
        type = "bool-setting",
        name = "sei-library-force-spoilage",
        setting_type = "startup",
        default_value = false,
        forced_value = false,
        hidden = true,
    }
})