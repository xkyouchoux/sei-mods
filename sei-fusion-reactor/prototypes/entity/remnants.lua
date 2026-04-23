local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "corpse",
        name = "fusion-reactor-remnants",
        icon = path_util.space_age_path.."graphics/icons/fusion-reactor.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "energy-remnants",
        order = "g[fusion-energy]-a[reactor]",
        selection_box = {{-3, -3}, {3, 3}},
        tile_width = 6,
        tile_height = 6,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = path_util.sa_sprite_load("__sei-fusion-reactor__/graphics/entity/fusion-reactor/fusion-reactor-remnants",{
        scale = 0.5,
        direction_count = 1
        })
    },
    {
        type = "corpse",
        name = "fusion-generator-remnants",
        icon = path_util.space_age_path.."graphics/icons/fusion-generator.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "energy-remnants",
        order = "g[fusion-energy]-b[generator]",
        selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
        tile_width = 3,
        tile_height = 5,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = path_util.sa_sprite_load("__sei-fusion-reactor__/graphics/entity/fusion-generator/fusion-generator-remnants",
        {
        scale = 0.5,
        direction_count = 4
        })
    },
})