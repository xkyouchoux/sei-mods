local path_util = require("__sei-library__.path_util")

local explosion_animations = require("__base__.prototypes.entity.explosion-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "explosion",
        name = "cryogenic-plant-explosion",
        icon = path_util.space_age_path.."graphics/icons/cryogenic-plant.png",
        flags = {"not-on-map"},
        hidden = true,
        subgroup = "production-machine-explosions",
        order = "i[cryogenic-plant]",
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
                repeat_count = 15,
                probability = 1,
                particle_name = "oil-refinery-metal-particle-big",
                offsets = { { 0, 0 }  },
                offset_deviation = { { -1.9805, -1.8867 }, { 1.9805, 1.8867 } },
                initial_height = 0.6,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.098,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.07,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 25,
                probability = 1,
                particle_name = "cryogenic-plant-metal-particle-big",
                offset_deviation = { { -2.0, -2.0 }, { 2.0, 2.0 } },
                initial_height = 0.3,
                initial_height_deviation = 0.2,
                initial_vertical_speed = 0.075,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 30,
                probability = 1,
                particle_name = "cryogenic-plant-metal-particle-medium",
                offset_deviation = { { -2.0, -2.0 }, { 2.0, 2.0 } },
                initial_height = 0.4,
                initial_height_deviation = 0.15,
                initial_vertical_speed = 0.06,
                initial_vertical_speed_deviation = 0.047,
                speed_from_center = 0.05,
                speed_from_center_deviation = 0.005
            },
            {
                type = "create-particle",
                repeat_count = 25,
                particle_name = "cryogenic-plant-metal-particle-small",
                offset_deviation = { { -2.0, -2.0 }, { 2.0, 2.0 } },
                initial_height = 0.3,
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