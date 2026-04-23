local data_util = require("__sei-foundry__.data_util")
local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "corpse",
        name = data_util.prefix.."foundry-remnants",
        icon = path_util.space_age_path.."graphics/icons/foundry.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "smelting-machine-remnants",
        order = "d[foundry]",
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        tile_width = 5,
        tile_height = 5,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
        filename = path_util.space_age_path.."graphics/entity/foundry/foundry-remnants.png",
        line_length = 1,
        width = 494,
        height = 478,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel( -1.5, -5.5),
        scale = 0.5
        }
    },
})