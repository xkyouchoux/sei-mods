local data_util = require("__sei-foundry__.data_util")
local path_util = require("__sei-library__.path_util")
local explosion_animations = require("__base__.prototypes.entity.explosion-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "explosion",
        name = data_util.prefix.."foundry-explosion",
        icon = path_util.space_age_path.."graphics/icons/foundry.png",
        flags = {"not-on-map"},
        hidden = true,
        subgroup = "smelting-machine-explosions",
        order = "d[foundry]",
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
                repeat_count = 10,
                probability = 1,
                particle_name = "oil-refinery-metal-particle-big",
                offsets =
                {
                { 0.7734, -0.6484 },
                { -0.7266, 0.5859 }
                },
                offset_deviation = { { -0.6875, -0.6875 }, { 0.6875, 0.6875 } },
                initial_height = 0.8,
                initial_height_deviation = 0.49,
                initial_vertical_speed = 0.088,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 38,
                probability = 1,
                particle_name = "oil-refinery-metal-particle-medium",
                offsets = { { 0, 0 }  },
                offset_deviation = { { -0.9805, -0.8867 }, { 0.9805, 0.8867 } },
                initial_height = 0.6,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.098,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.07,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 10,
                probability = 1,
                particle_name = "foundry-metal-particle-big",
                offsets =
                {
                { -1.492, -1.453 },
                { 1.555, -1.469 },
                { 1.477, 1.469 },
                { -0.6172, 0.3281 }
                },
                offset_deviation = { { -0.9961, -0.5938 }, { 0.9961, 0.5938 } },
                initial_height = 0.4,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.075,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 35,
                probability = 1,
                particle_name = "foundry-metal-particle-medium",
                offsets =
                {
                { -0.02344, -0.8984 }
                },
                offset_deviation = { { -0.5, -0.2969 }, { 0.5, 0.2969 } },
                initial_height = 0.7,
                initial_height_deviation = 0.15,
                initial_vertical_speed = 0.166,
                initial_vertical_speed_deviation = 0.047,
                speed_from_center = 0.05,
                speed_from_center_deviation = 0.005
            },
            {
                type = "create-particle",
                repeat_count = 20,
                particle_name = "foundry-metal-particle-small",
                offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
                initial_height = 0.5,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.06,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.05
            },
            }
        }
        }
    },
})