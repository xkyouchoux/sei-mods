local path_util = require("__sei-library__.path_util")

require("util")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "assembling-machine",
        name = "captive-biter-spawner",
        icon = path_util.space_age_path.."graphics/icons/captive-biter-spawner.png",
        subgroup = "chemistry",
        flags = {"placeable-neutral", "placeable-player", "player-creation", "not-repairable", "not-deconstructable"},
        collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        create_ghost_on_death = false,
        max_health = 350,
        show_recipe_icon = false,
        impact_category = "organic",
        production_health_effect =
        {
        not_producing = -1 / 60, -- 5 hp per second
        producing = 1 / 60 -- 5 hp per second
        },
        ignore_output_full = true,
        alert_icon_shift = util.by_pixel(0, -12),
        icon_draw_specification = {shift = {0, -0.3}},
        created_effect =
        {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            source_effects =
            {
            type = "create-explosion",
            entity_name = "captive-spawner-explosion-1"
            }
        }
        },
        dying_explosion = "captive-spawner-explosion-2",
        dying_trigger_effect =
        {
        type = "create-entity",
        entity_name = "biter-spawner",
        as_enemy = true,
        ignore_no_enemies_mode = true,
        protected = true
        },
        resistances =
        {
        {
            type = "fire",
            percent = 70
        }
        },
        fast_replaceable_group = "captive-biter-spawner",
        graphics_set =
        {
        animation = {
            layers = {
            path_util.sa_sprite_load("__sei-captive-biters__/graphics/entity/captive-spawner/captive-anim",{
                frame_count = 32,
                scale = 0.5,
                animation_speed = 0.4,
            }),
            path_util.sa_sprite_load("__sei-captive-biters__/graphics/entity/captive-spawner/captive-shadow",{
                frame_count = 32,
                scale = 0.5,
                animation_speed = 0.4,
                draw_as_shadow = true,
            })
            }
        },
        working_visualisations = {
            {
            fadeout = true,
            animation = path_util.sa_sprite_load("__sei-captive-biters__/graphics/entity/captive-spawner/captive-fluids",{
                frame_count = 32,
                scale = 0.5,
                tint = {0.25,0.44,0,1},
                animation_speed = 0.4,
            })
            },
        }
        },
        open_sound = sounds.mech_small_open,
        close_sound = sounds.mech_small_close,
        working_sound =
        {
        sound = {category = "enemy", filename = "__base__/sound/creatures/spawner.ogg", volume = 0.6 },
        sound_accents =
        {
            {sound = {variations = path_util.sa_sound_variations("sound/entity/spawner/spawner-respirator-push", 3, 0.3), audible_distance_modifier = 0.6}, frame = 1},
            {sound = {variations = path_util.sa_sound_variations("sound/entity/spawner/spawner-respirator-pull", 3, 0.3), audible_distance_modifier = 0.6}, frame = 17},
        },
        },
        crafting_categories = {"captive-spawner-process"},
        fixed_recipe = "biter-egg",
        crafting_speed = 1,
        energy_source =
        {
        type = "burner",
        fuel_categories = {"food"},
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = { pollution = -1 },
        burner_usage = "food",
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            derivation_change_frequency = 0,
            derivation_change_deviation = 0,
            border_fix_speed = 0,
            minimum_light_size = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0, 0, 0, 1}
        }
        },
        energy_usage = "100kW",
        module_slots = 0,
        allowed_effects = {},
        enable_logistic_control_behavior = false
    },
})