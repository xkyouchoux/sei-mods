local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "corpse",
        name = "tesla-turret-remnants",
        icon = path_util.space_age_path.."graphics/icons/tesla-turret.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "defensive-structure-remnants",
        order = "a-c-a",
        selection_box = {{-2, -2 }, {2, 2}},
        tile_width = 4,
        tile_height = 4,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet (3,
        {
        layers =
        {
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/remnant/tesla-turret-remnants",
            {
            line_length = 1,
            direction_count = 1,
            shift = util.by_pixel(0, -26),
            scale = 0.5
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/remnant/tesla-turret-remnants-mask",
            {
            priority = "low",
            line_length = 1,
            apply_runtime_tint = true,
            direction_count = 1,
            shift = util.by_pixel(0, -26),
            scale = 0.5
            })
        }
        })
    },
})