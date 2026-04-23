local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "sprite",
        name = "tooltip-category-fusion-plasma",
        filename = path_util.space_age_path.."graphics/icons/tooltips/tooltip-category-fusion-plasma.png",
        priority = "extra-high-no-scale",
        width = 40,
        height = 40,
        flags = {"gui-icon"},
        mipmap_count = 2,
        scale = 0.5
    },
})