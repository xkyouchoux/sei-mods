local path_util = require("__sei-library__.path_util")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "reactor",
        name = "heating-tower",
        icon  = path_util.space_age_path.."graphics/icons/heating-tower.png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = "heating-tower"},
        max_health = 500,
        corpse = "heating-tower-remnants",
        dying_explosion = "heating-tower-explosion",
        consumption = "40MW",
        neighbour_bonus = 0,
        energy_source =
        {
            type = "burner",
            fuel_categories = {"chemical"},
            emissions_per_minute = {pollution = 100},
            effectivity = settings.startup["sei-heating-tower-effectivity"].value,
            fuel_inventory_size = 2,
            light_flicker =
            {
                color = {0,0,0},
                minimum_intensity = 0.7,
                maximum_intensity = 0.95
            }
        },
        collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 1,

        picture =
        {
            layers =
            {
                path_util.sa_sprite_load("__sei-heating-tower__/graphics/entity/heating-tower/heating-tower-main", {
                scale = 0.5
                }),
                path_util.sa_sprite_load("__sei-heating-tower__/graphics/entity/heating-tower/heating-tower-shadow", {
                scale = 0.5,
                draw_as_shadow = true
                })
            }
        },

        working_light_picture =
        {
        layers = {
            path_util.sa_sprite_load("__sei-heating-tower__/graphics/entity/heating-tower/heating-tower-working-fire", {
            frame_count = 24,
            scale = 0.5,
            blend_mode = "additive",
            draw_as_glow = true,
            animation_speed = 0.333
            }),
            path_util.sa_sprite_load("__sei-heating-tower__/graphics/entity/heating-tower/heating-tower-working-light", {
            frame_count = 1,
            repeat_count = 24,
            scale = 0.5,
            blend_mode = "additive",
            draw_as_glow = true
            })
        }
        },

        heat_buffer =
        {
        max_temperature = 1000,
        specific_heat = "5MJ",
        max_transfer = "10GW",
        minimum_glow_temperature = 50,
        connections =
        {
            {
            position = {0, -1},
            direction = defines.direction.north
            },
            {
            position = {1, 0},
            direction = defines.direction.east
            },
            {
            position = {0, 1},
            direction = defines.direction.south
            },
            {
            position = {-1, 0},
            direction = defines.direction.west
            },
        },

        heat_picture = apply_heat_pipe_glow(
        path_util.sa_sprite_load("__sei-heating-tower__/graphics/entity/heating-tower/heating-tower-glow", {
            scale = 0.5,
            blend_mode = "additive"
        }))
        },

        connection_patches_connected =
        {
        sheet = path_util.sa_sprite_load("__sei-heating-tower__/graphics/entity/heating-tower/heating-tower-pipes", {
            scale = 0.5,
            variation_count = 4
        })
        },

        connection_patches_disconnected =
        {
        sheet = path_util.sa_sprite_load("__sei-heating-tower__/graphics/entity/heating-tower/heating-tower-pipes-disconnected", {
            scale = 0.5,
            variation_count = 4
        })
        },

        heat_connection_patches_connected =
        {
        sheet = apply_heat_pipe_glow(
            path_util.sa_sprite_load("__sei-heating-tower__/graphics/entity/heating-tower/heating-tower-pipes-heat", {
            scale = 0.5,
            variation_count = 4
        }))
        },

        heat_connection_patches_disconnected =
        {
        sheet = apply_heat_pipe_glow(
            path_util.sa_sprite_load("__sei-heating-tower__/graphics/entity/heating-tower/heating-tower-pipes-heat-disconnected", {
            scale = 0.5,
            variation_count = 4
        }))
        },

        open_sound = sounds.steam_open,
        close_sound = sounds.steam_close,
        working_sound =
        {
        sound = {filename = path_util.space_age_path.."sound/entity//heating-tower/heating-tower-loop.ogg", volume = 0.5},
        max_sounds_per_prototype = 2,
        fade_in_ticks = 4,
        fade_out_ticks = 20
        },

        default_temperature_signal = {type = "virtual", name = "signal-T"},
        circuit_wire_max_distance = reactor_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["heating-tower"]
    },
})