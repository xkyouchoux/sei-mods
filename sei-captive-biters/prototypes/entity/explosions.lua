local path_util = require("__sei-library__.path_util")

local explosion_animations = require("__base__.prototypes.entity.explosion-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "explosion",
        name = "captive-spawner-explosion-1",
        icon = path_util.space_age_path.."graphics/icons/captive-biter-spawner.png",
        flags = {"not-on-map"},
        hidden = true,
        subgroup = "production-machine-explosions",
        order = "d[captive-spawner]",
        height = 0.5,
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1,
        animations = path_util.sa_sprite_load("__sei-captive-biters__/graphics/entity/captive-spawner/captive-explosion-1",
        {
        animation_speed = 0.3,
        scale = 0.5,
        frame_count = 8,
        priority = "high"
        }),
        sound = sounds.small_explosion,
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
                particle_name = "blood-particle",
                offsets = {
                { 0.02344, -0.6016 }
                },
                offset_deviation = {
                left_top = { -0.5, -0.5 },
                right_bottom = { 0.5, 0.5 }
                },
                initial_height = 0.2,
                initial_height_deviation = 0.05,
                initial_vertical_speed = 0.062,
                initial_vertical_speed_deviation = 0.01,
                speed_from_center = 0.1,
                speed_from_center_deviation = 0.047,
                frame_speed = 1,
                frame_speed_deviation = 0,
                tail_length = 25,
                tail_length_deviation = 0,
                tail_width = 1,
                rotate_offsets = false
            },
            {
                type = "create-particle",
                repeat_count = 5,
                repeat_count_deviation = 0,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "blood-particle-carpet",
                offsets = {
                { 0, -0.3594 }
                },
                offset_deviation = {
                left_top = { -1, -1 },
                right_bottom = { 1, 1 }
                },
                initial_height = 0.1,
                initial_height_deviation = 0.05,
                initial_vertical_speed = 0.09,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0,
                frame_speed = 1,
                frame_speed_deviation = 0,
                tail_length = 21,
                tail_length_deviation = 3,
                tail_width = 1,
                rotate_offsets = false
            },
            {
                type = "create-particle",
                repeat_count = 6,
                repeat_count_deviation = 1,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "blood-particle-carpet",
                offsets = {
                { 0, 0 }
                },
                offset_deviation = {
                left_top = { -1, -1 },
                right_bottom = { 1, 1 }
                },
                initial_height = 0.1,
                initial_height_deviation = 0.01,
                initial_vertical_speed = 0.018,
                initial_vertical_speed_deviation = 0.005,
                speed_from_center = 0.19,
                speed_from_center_deviation = 0.041,
                frame_speed = 1,
                frame_speed_deviation = 0,
                tail_length = 11,
                tail_length_deviation = 7,
                tail_width = 1,
                rotate_offsets = false
            },
            {
                type = "create-particle",
                repeat_count = 30,
                repeat_count_deviation = 5,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "internal-fluids-particle",
                offsets = {
                { 0.0, -0.3125 }
                },
                offset_deviation = {
                left_top = { -1, -1 },
                right_bottom = { 1, 1 }
                },
                initial_height = 0.3,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.055,
                initial_vertical_speed_deviation = 0.003,
                speed_from_center = 0.05,
                speed_from_center_deviation = 0.042,
                frame_speed = 1,
                frame_speed_deviation = 0,
                tail_length = 10,
                tail_length_deviation = 12,
                tail_width = 1,
                rotate_offsets = false
            }
            }
        }
        }
    },
    {
        type = "explosion",
        name = "captive-spawner-explosion-2",
        icon = path_util.space_age_path.."graphics/icons/captive-biter-spawner.png",
        flags = {"not-on-map"},
        hidden = true,
        subgroup = "production-machine-explosions",
        order = "d[captive-spawner]",
        height = 0.5,
        smoke = "smoke-fast",
        smoke_count = 1,
        smoke_slow_down_factor = 1,
        animations = path_util.sa_sprite_load("__sei-captive-biters__/graphics/entity/captive-spawner/captive-explosion-2",
        {
        animation_speed = 0.3,
        scale = 0.5,
        frame_count = 8,
        priority = "high"
        }),
        sound = sounds.small_explosion,
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
                repeat_count = 32,
                repeat_count_deviation = 0,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "oil-refinery-metal-particle-big",
                offset_deviation = {
                left_top = { -2.3805, -2.3805 },
                right_bottom = { 2.3805, 2.3805 }
                },
                tile_collision_mask = nil,
                initial_height = 0.5,
                initial_height_deviation = 0.3,
                initial_vertical_speed = 0.058,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.05,
                frame_speed = 1,
                frame_speed_deviation = 0,
                rotate_offsets = false
            },
            {
                type = "create-particle",
                repeat_count = 22,
                repeat_count_deviation = 0,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "oil-refinery-metal-particle-medium",
                offset_deviation = {
                left_top = { -2.3805, -2.3805 },
                right_bottom = { 2.3805, 2.3805 }
                },
                tile_collision_mask = nil,
                initial_height = 0.5,
                initial_height_deviation = 0.3,
                initial_vertical_speed = 0.1,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.05,
                frame_speed = 1,
                frame_speed_deviation = 0,
                rotate_offsets = false
            },
            {
                type = "create-particle",
                repeat_count = 4,
                repeat_count_deviation = 2,
                probability = 1,
                affects_target = false,
                show_in_tooltip = false,
                particle_name = "acid-particle",
                offsets = {
                { 0, 0 }
                },
                offset_deviation = {
                left_top = { -1, -1 },
                right_bottom = { 1, 1 }
                },
                initial_height = 2.6,
                initial_height_deviation = 0.11,
                initial_vertical_speed = 0.053,
                initial_vertical_speed_deviation = 0.005,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.038,
                frame_speed = 1,
                frame_speed_deviation = 0,
                tail_length = 30,
                tail_length_deviation = 7,
                tail_width = 1,
                rotate_offsets = false
            },
            }
        }
        }
    },
    {
        type = "explosion",
        name = "capture-robot-explosion",
        icon = path_util.space_age_path.."graphics/icons/capture-bot.png",
        flags = {"not-on-map"},
        hidden = true,
        subgroup = "capsule-explosions",
        order = "c-d-a",
        height = 0,
        animations = explosion_animations.small_explosion(),
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1,
        sound = sounds.small_explosion,
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
                repeat_count = 32,
                particle_name = "laser-turret-metal-particle-big",
                offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
                initial_height = 2.0,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.1,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 40,
                particle_name = "laser-turret-metal-particle-medium",
                offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
                initial_height = 2.0,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.1,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.05,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 25,
                particle_name = "laser-turret-metal-particle-small",
                offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
                initial_height = 1.8,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.11,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05
            },
            {
                type = "create-particle",
                repeat_count = 18,
                particle_name = "cable-and-electronics-particle-small-medium",
                offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
                initial_height = 1.8,
                initial_height_deviation = 0.5,
                initial_vertical_speed = 0.11,
                initial_vertical_speed_deviation = 0.05,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.05
            }
            }
        }
        }
    },
})