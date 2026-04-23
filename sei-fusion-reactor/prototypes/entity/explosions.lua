local path_util = require("__sei-library__.path_util")

local explosion_animations = require("__base__.prototypes.entity.explosion-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "explosion",
        name = "fusion-reactor-explosion",
        icon = path_util.space_age_path.."graphics/icons/fusion-reactor.png",
        flags = {"not-on-map"},
        hidden = true,
        subgroup = "energy-explosions",
        order = "g[fusion-energy]-a[reactor]",
        height = 0,
        animations = explosion_animations.big_explosion(),
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1,
        sound = sounds.large_explosion(0.7, 1.0),
        created_effect =
        {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            target_effects =
            {
            {
                type = "create-particle",
                repeat_count = 20,
                probability = 1,
                particle_name = "oil-refinery-metal-particle-big",
                offsets = { { 0, 0 }  },
                offset_deviation = { { -1.9805, -1.8867 }, { 1.9805, 1.8867 } },
                initial_height = 0.6,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.138,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.09,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 30,
                probability = 1,
                particle_name = "fusion-reactor-metal-particle-big",
                offset_deviation = { { -2.5, -2.5 }, { 2.5, 2.5 } },
                initial_height = 0.3,
                initial_height_deviation = 0.2,
                initial_vertical_speed = 0.095,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.06,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 35,
                probability = 1,
                particle_name = "fusion-reactor-metal-particle-medium",
                offset_deviation = { { -2.5, -2.5 }, { 2.5, 2.5 } },
                initial_height = 0.4,
                initial_height_deviation = 0.15,
                initial_vertical_speed = 0.1,
                initial_vertical_speed_deviation = 0.047,
                speed_from_center = 0.08,
                speed_from_center_deviation = 0.005
            },
            {
                type = "create-particle",
                repeat_count = 30,
                particle_name = "fusion-reactor-metal-particle-small",
                offset_deviation = { { -2.5, -2.5 }, { 2.5, 2.5 } },
                initial_height = 0.3,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.1,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.06,
                speed_from_center_deviation = 0.05
            },
            }
        }
        }
    },
    {
        type = "explosion",
        name = "fusion-generator-explosion",
        icon = path_util.space_age_path.."graphics/icons/fusion-generator.png",
        flags = {"not-on-map"},
        hidden = true,
        subgroup = "energy-explosions",
        order = "g[fusion-energy]-a[generator]",
        height = 0,
        animations = explosion_animations.big_explosion(),
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1,
        sound = sounds.large_explosion(0.6, 0.8),
        created_effect =
        {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            target_effects =
            {
            {
                type = "create-particle",
                repeat_count = 15,
                probability = 1,
                particle_name = "oil-refinery-metal-particle-big",
                offsets = { { 0, 0 }  },
                offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
                initial_height = 0.3,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.098,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.07,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 20,
                probability = 1,
                particle_name = "fusion-reactor-metal-particle-big",
                offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
                initial_height = 0.2,
                initial_height_deviation = 0.2,
                initial_vertical_speed = 0.075,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 22,
                probability = 1,
                particle_name = "fusion-reactor-metal-particle-medium",
                offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
                initial_height = 0.3,
                initial_height_deviation = 0.15,
                initial_vertical_speed = 0.1,
                initial_vertical_speed_deviation = 0.047,
                speed_from_center = 0.05,
                speed_from_center_deviation = 0.005
            },
            {
                type = "create-particle",
                repeat_count = 22,
                particle_name = "fusion-reactor-metal-particle-small",
                offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
                initial_height = 0.2,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.1,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05
            },
            }
        }
        }
    },
})