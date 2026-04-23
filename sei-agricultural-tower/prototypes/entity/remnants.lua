local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "corpse",
        name = "agricultural-tower-remnants",
        icon = path_util.space_age_path.."graphics/icons/agricultural-tower.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "production-machine-remnants",
        order = "a[agricultural-tower]",
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        tile_width = 3,
        tile_height = 3,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
        filename = path_util.space_age_path.."graphics/entity/agricultural-tower/agricultural-tower-remnants.png",
        line_length = 1,
        width = 250,
        height = 250,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel( 0, 0),
        scale = 0.5
        }
    },
})