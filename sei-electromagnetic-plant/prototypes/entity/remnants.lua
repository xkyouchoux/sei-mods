if SEI_SPACE_AGE then return end

local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "corpse",
        name = "electromagnetic-plant-remnants",
        icon = path_util.space_age_path.."graphics/icons/electromagnetic-plant.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "production-machine-remnants",
        order = "g[electromagnetic-plant]",
        selection_box = {{-2, -2}, {2, 2}},
        tile_width = 4,
        tile_height = 4,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
        path_util.sa_sprite_load("__sei-electromagnetic-plant__/graphics/entity/electromagnetic-plant/remnants/electromagnetic-plant-remnants",
        {
            frame_count = 1,
            direction_count = 1,
            scale = 0.5
        }
        )
        }
    },
})