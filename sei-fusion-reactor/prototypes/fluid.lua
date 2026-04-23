local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "fluid",
        name = "fusion-plasma",
        icon = path_util.space_age_path.."graphics/icons/fluid/fusion-plasma.png",
        subgroup = "stream",
        order = "p-a",
        default_temperature = 1000000,
        max_temperature = 10000000,
        heat_capacity = "20J",
        base_color = {0.0, 0.1, 0.53},
        flow_color = {0.2, 0.68, 0.93},
        auto_barrel = false
    },
})