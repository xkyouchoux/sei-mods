local path_util = require("__sei-library__.path_util")
local explosion_animations = require("__base__.prototypes.entity.explosion-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "explosion",
        name = "biochamber-explosion",
        icon = path_util.space_age_path.."graphics/icons/biochamber.png",
        flags = {"not-on-map"},
        hidden = true,
        subgroup = "production-machine-explosions",
        order = "b[biochamber]",
        height = 0,
        animations = explosion_animations.small_explosion(),
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
                repeat_count = 5,
                repeat_count_deviation = 0,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "assembling-machine-3-metal-particle-big",
                offsets = {
                { 0.7734, -0.6484 },
                { -0.7266, 0.5859 }
                },
                offset_deviation = {
                left_top = { -0.6875, -0.6875 },
                right_bottom = { 0.6875, 0.6875 }
                },
                tile_collision_mask = nil,
                initial_height = 0.8,
                initial_height_deviation = 0.49,
                initial_vertical_speed = 0.088,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05,
                frame_speed = 1,
                frame_speed_deviation = 0,
                rotate_offsets = false
            },
            {
                type = "create-particle",
                repeat_count = 200,
                repeat_count_deviation = 100,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "lab-glass-particle-small",
                offsets = {
                { -0.5, 0.0 }
                },
                offset_deviation = {
                left_top = {-0.5, -0.5},
                right_bottom = {0.5, 0.5}
                },
                tile_collision_mask = nil,
                initial_height = 0.5,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.075,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.07,
                speed_from_center_deviation = 0.03,
                frame_speed = 1,
                frame_speed_deviation = 0,
                rotate_offsets = false
            },
            {
                type = "create-particle",
                repeat_count = 45,
                repeat_count_deviation = 0,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "assembling-machine-3-metal-particle-medium",
                offsets = {
                { 0.4219, 0.08594 }
                },
                offset_deviation = {
                left_top = { -0.5, -0.2969 },
                right_bottom = { 0.5, 0.2969 }
                },
                tile_collision_mask = nil,
                initial_height = 1.1,
                initial_height_deviation = 3,
                initial_vertical_speed = 0.1,
                initial_vertical_speed_deviation = 0.07,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.005,
                frame_speed = 1,
                frame_speed_deviation = 0,
                rotate_offsets = false
            },
            {
                type = "create-particle",
                repeat_count = 20,
                repeat_count_deviation = 0,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "selector-combinator-metal-particle-small",
                offsets = {
                { 0.3047, 0.1484 }
                },
                offset_deviation = {
                left_top = { -0.5, -0.5 },
                right_bottom = { 0.5, 0.5 }
                },
                tile_collision_mask = nil,
                initial_height = 1.1,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.06,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.05,
                frame_speed = 1,
                frame_speed_deviation = 0,
                rotate_offsets = false
            }
            }
        }
        }
    },
})