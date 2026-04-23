local path_util = require("__sei-library__.path_util")

local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__sei-library__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

local util = require('util')

local rocket_turret_shift = -20
local tesla_turret_shift = -26

local function tesla_turret_rising(inputs)
    return {
        layers =
        {
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-rising",
            {
            priority = "medium",
            direction_count = 4,
            shift = util.by_pixel(0,0+tesla_turret_shift),
            scale = 0.5,
            frame_count = 16,
            line_length = 16,
            run_mode = inputs.run_mode or "forward",
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-rising-mask",
            {
            flags = {"mask"},
            apply_runtime_tint = true,
            priority = "medium",
            direction_count = 4,
            shift = util.by_pixel( 0, 0+tesla_turret_shift),
            scale = 0.5,
            frame_count = 16,
            line_length = 16,
            run_mode = inputs.run_mode or "forward",
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-rising-emit",
            {
            priority = "medium",
            direction_count = 4,
            shift = util.by_pixel(0,0+tesla_turret_shift),
            scale = 0.5,
            draw_as_glow = true,
            blend_mode = "additive",
            frame_count = 16,
            line_length = 16,
            run_mode = inputs.run_mode or "forward",
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-rising-shadow",
            {
            draw_as_shadow = true,
            priority = "medium",
            direction_count = 4,
            shift = util.by_pixel(96,0+tesla_turret_shift),
            scale = 0.5,
            frame_count = 16,
            line_length = 16,
            run_mode = inputs.run_mode or "forward",
            }),
        }
    }
end


local function tesla_turret_ready(inputs)
    return {
        layers =
        {
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-attacking",
            {
            direction_count = 64,
            frame_count = 1,
            repeat_count = 30,
            shift = util.by_pixel(0,0+tesla_turret_shift),
            scale = 0.5
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-attacking-mask",
            {
            flags = {"mask"},
            apply_runtime_tint = true,
            direction_count = 64,
            frame_count = 1,
            repeat_count = 30,
            shift = util.by_pixel( 0, 0+tesla_turret_shift),
            scale = 0.5
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-attacking-emit",
            {
            direction_count = 64,
            frame_count = 1,
            repeat_count = 30,
            shift = util.by_pixel(0,0+tesla_turret_shift),
            scale = 0.5,
            draw_as_glow = true,
            blend_mode = "additive"
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-attacking-shadow",
            {
            draw_as_shadow = true,
            direction_count = 64,
            frame_count = 1,
            repeat_count = 30,
            shift = util.by_pixel(96,0+tesla_turret_shift),
            scale = 0.5
            }),
        }
    }
end

local function tesla_turret_cooldown(inputs)
    return {
        layers =
        {
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-attacking",
            {
            direction_count = 64,
            frame_count = 1,
            repeat_count = 30,
            shift = util.by_pixel(0,0+tesla_turret_shift),
            scale = 0.5
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-attacking-mask",
            {
            flags = {"mask"},
            apply_runtime_tint = true,
            direction_count = 64,
            frame_count = 1,
            repeat_count = 30,
            shift = util.by_pixel( 0, 0+tesla_turret_shift),
            scale = 0.5
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-attacking-emit",
            {
            direction_count = 64,
            frame_count = 1,
            repeat_count = 30,
            shift = util.by_pixel(0,0+tesla_turret_shift),
            scale = 0.5,
            draw_as_glow = true,
            blend_mode = "additive"
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-attacking-facelight",
            {
            direction_count = 64,
            frame_count = 1,
            repeat_count = 30,
            shift = util.by_pixel(0,0+tesla_turret_shift),
            scale = 0.5,
            draw_as_glow = true,
            blend_mode = "additive"
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-head-attacking-shadow",
            {
            draw_as_shadow = true,
            direction_count = 64,
            frame_count = 1,
            repeat_count = 30,
            shift = util.by_pixel(96,0+tesla_turret_shift),
            scale = 0.5
            }),
            path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-sfx-active",
            {
            direction_count = 1,
            duplicate_first_direction = true,
            frame_count = 30,
            shift = util.by_pixel(0,0+tesla_turret_shift),
            scale = 0.5,
            animation_speed = 0.5,
            draw_as_glow = true,
            blend_mode = "additive"
            }),
        }
    }
end

function tesla_turret_LED(inputs)
    return
    {
        layers =
        {
        path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-LED",
        {
            direction_count = 1,
            duplicate_first_direction = true,
            shift = util.by_pixel(0,0+tesla_turret_shift),
            draw_as_glow = true,
            blend_mode = "additive",
            scale = 0.5,
            frame_count = 5
        }),
        }
    }
end

data:extend({
    {
        type = "electric-turret",
        name = "tesla-turret",
        icon = path_util.space_age_path.."graphics/icons/tesla-turret.png",
        flags = {"placeable-player", "placeable-enemy", "player-creation"},
        minable = {mining_time = 0.5, result = "tesla-turret"},
        fast_replaceable_group = "tesla-turret",
        max_health = 1000,
        collision_box = {{-1.7, -1.7 }, {1.7, 1.7}},
        selection_box = {{-2, -2 }, {2, 2}},
        collision_mask = {layers={item=true, object=true, player=true, water_tile=true, is_object=true, is_lower_object=true}},
        damaged_trigger_effect = hit_effects.entity(),
        start_attacking_only_when_can_shoot = true,
        rotation_speed = 0.005,
        preparing_speed = 0.1,
        folding_speed = 0.1,
        ending_attack_speed = 1 / (30 + 1), -- Must be clocked to the beam duration so the face light turns off at the right time
        circuit_connector = circuit_connector_definitions["tesla-turret"], -- TODO: generate points for tesla-turret
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        open_sound = sounds.turret_open,
        close_sound = sounds.turret_close,
        working_sound =
        {
        sound = {filename = path_util.space_age_path.."sound/entity/tesla-turret/tesla-turret-base.ogg", volume = 0.3},
        use_doppler_shift = false,
        fade_in_ticks = 4,
        fade_out_ticks = 20,
        },
        preparing_sound = space_age_sounds.tesla_turret_activate,
        folding_sound = space_age_sounds.tesla_turret_deactivate,
        rotating_sound = space_age_sounds.tesla_turret_rotate,
        corpse = "tesla-turret-remnants",
        dying_explosion = "laser-turret-explosion",
        energy_source =
        {
        type = "electric",
        buffer_capacity = "15MJ",
        input_flow_limit = "7MW",
        drain = "1MW",
        usage_priority = "primary-input"
        },
        folded_animation = tesla_turret_rising({}),
        preparing_animation = tesla_turret_rising({}),
        prepared_animation = tesla_turret_ready({}),
        ending_attack_animation = tesla_turret_cooldown({}),
        folding_animation = tesla_turret_rising({run_mode = "backward"}),
        energy_glow_animation = laser_turret_shooting_glow(),
        resource_indicator_animation = tesla_turret_LED(),
        glow_light_intensity = 0.5, -- defaults to 0
        graphics_set =
        {
        base_visualisation =
        {
            {
            animation =
            {
                layers =
                {
                path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-base",
                        {
                            frame_count = 1,
                            repeat_count=30,
                            shift = util.by_pixel(0, 0+tesla_turret_shift),
                            scale = 0.5,
                            animation_speed = 0.5
                        }),
                path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-base-mask",
                        {
                            flags = {"mask"},
                            apply_runtime_tint = true,
                            frame_count = 1,
                            repeat_count=30,
                            shift = util.by_pixel(0, 0+tesla_turret_shift),
                            scale = 0.5
                        }),
                path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-base-shadow",
                        {
                            frame_count = 1,
                            repeat_count=30,
                            draw_as_shadow = true,
                            shift = util.by_pixel(32, 0+tesla_turret_shift),
                            scale = 0.5
                        }),
                path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-base-emit",
                        {
                            frame_count = 1,
                            repeat_count=30,
                            shift = util.by_pixel(0, 0+tesla_turret_shift),
                            scale = 0.5,
                            draw_as_glow = true,
                            blend_mode = "additive"
                        }),
                }
            }
            },
            {
            enabled_states = { "folded", "preparing", "rotate-for-folding", "folding" },
            draw_when_no_energy = false,
            draw_when_frozen = false,
            animation =
            {
                layers =
                {
                path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-sfx-idle-2",
                        {
                            frame_count = 50,
                            repeat_count = 4,
                            shift = util.by_pixel(0, 0+tesla_turret_shift),
                            scale = 0.5,
                            animation_speed = 0.33,
                            draw_as_glow = true,
                            blend_mode = "additive"
                        }),
                path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-sfx-idle-1",
                        {
                            frame_count = 40,
                            repeat_count = 5,
                            shift = util.by_pixel(0, 0+tesla_turret_shift),
                            scale = 0.5,
                            animation_speed = 0.33,
                            draw_as_glow = true,
                            blend_mode = "additive"
                        }),
                },
            }
            },
            {
            enabled_states = { "prepared", "starting-attack", "attacking", "ending-attack" },
            draw_when_no_energy = false,
            draw_when_frozen = false,
            animation  =
            {
                layers =
                {
                path_util.sa_sprite_load("__sei-tesla-turret__/graphics/entity/tesla-turret/tesla-turret-sfx-passive",
                {
                    frame_count = 30,
                    shift = util.by_pixel(0, 0+tesla_turret_shift),
                    scale = 0.5,
                    animation_speed = 0.5,
                    draw_as_glow = true,
                    blend_mode = "additive"
                })
                }
            }
            }
        }
        },

        attack_parameters =
        {
        type = "beam",
        cooldown = 120,
        range = 30,
        range_mode = "center-to-bounding-box",
        fire_penalty = 0.9,
        source_direction_count = 64,
        source_offset = {0, -0.55},
        ammo_category = Shared.tesla_ammo_category,
        ammo_type =
        {
            energy_consumption = "12MJ",
            action =
            {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                -- Chain effect must go first in case the beam kills the target
                {
                    type = "nested-result",
                    action =
                    {
                    type = "direct",
                    action_delivery =
                    {
                        type = "chain",
                        chain = "chain-tesla-turret-chain",
                    }
                    }
                },
                {
                    type = "nested-result",
                    action =
                    {
                    type = "direct",
                    action_delivery =
                    {
                        type = "beam",
                        beam = "chain-tesla-turret-beam-start",
                        max_length = 40,
                        duration = 30,
                        add_to_shooter = false,
                        destroy_with_source_or_target = false,
                        source_offset = {0, -2.6}
                    }
                    }
                }
                }
            }
            }
        }
        },

        call_for_help_radius = 40,
        water_reflection =
        {
        pictures =
        {
            filename = "__base__/graphics/entity/laser-turret/laser-turret-reflection.png",
            priority = "extra-high",
            width = 20,
            height = 32,
            shift = util.by_pixel(0, 40),
            variation_count = 1,
            scale = 5
        },
        rotate = false,
        orientation_to_variation = false
        }
    },
    {
        type = "sticker",
        name = "tesla-turret-stun",
        flags = {"not-on-map"},
        hidden = true,
        duration_in_ticks = 30,
        target_movement_modifier = 0.05,
        vehicle_speed_modifier = 0.25
    },
    {
        type = "sticker",
        name = "tesla-turret-slow",
        flags = {"not-on-map"},
        hidden = true,
        duration_in_ticks = 120,
        target_movement_modifier = 0.5,
        vehicle_speed_modifier = 0.75
    }
})
