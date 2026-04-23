local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "corpse",
        name = "biochamber-remnants",
        icon = path_util.space_age_path.."graphics/icons/biochamber.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "production-machine-remnants",
        order = "b[biochamber]",
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        tile_width = 3,
        tile_height = 3,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-remnants",
        {
        scale = 0.5,
        frame_count = 1,
        direction_count = 1,
        }),
    },
})