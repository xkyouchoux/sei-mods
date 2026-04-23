local data_util = require("__sei-foundry__.data_util")
local path_util = require("__sei-library__.path_util")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "assembling-machine",
        name = data_util.prefix.."foundry",
        localised_name = data_util.prefix == "sei-" and {"technology-name.sei-foundry-bzfoundry"} or {"technology-name.sei-foundry"},
        localised_description = {"entity-description.sei-foundry"},
        icon = path_util.space_age_path.."graphics/icons/foundry.png",
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.2, result = data_util.prefix.."foundry"},
        fast_replaceable_group = data_util.prefix.."foundry",
        max_health = 350,
        corpse = data_util.prefix.."foundry-remnants",
        dying_explosion = data_util.prefix.."foundry-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["foundry"],
        collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        heating_energy = "300kW",
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 1.3,
        effect_receiver = { base_effect = { productivity = settings.startup["sei-foundry-base-production-bonus"].value / 100 }},
        module_slots = 4,
        icon_draw_specification = {scale = 2, shift = {0, -0.3}},
        icons_positioning =
        {
        {inventory_index = defines.inventory.assembling_machine_modules, shift = {0, 1.25}}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        crafting_categories = {
            "casting",
            "metallurgy", 
        },
        crafting_speed = 4,
        energy_source =
        {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 6 }
        },
        energy_usage = "1350kW",
        perceived_performance = {minimum = 0.25, maximum = 20},
        graphics_set = require("__sei-foundry__.prototypes.entity.foundry-pictures").graphics_set,
        open_sound = sounds.steam_open,
        close_sound = sounds.steam_close,
        working_sound =
        {
        sound =
        {
            filename = path_util.space_age_path.."sound/entity/foundry/foundry.ogg",
            volume = 0.5,
            audible_distance_modifier = 0.6
        },
        fade_in_ticks = 4,
        fade_out_ticks = 20,
        sound_accents =
        {
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-pipe-out.ogg", volume = 0.9, audible_distance_modifier = 0.4}, frame = 2},
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-slide-close.ogg", volume = 0.65, audible_distance_modifier = 0.3}, frame = 18},
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-clamp.ogg", volume = 0.45, audible_distance_modifier = 0.3}, frame = 39},
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-slide-stop.ogg", volume = 0.7, audible_distance_modifier = 0.4}, frame = 43},
            {sound = {variations = path_util.sa_sound_variations("sound/entity/foundry/foundry-fire-whoosh", 3, 0.8), audible_distance_modifier = 0.3}, frame = 64},
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-metal-clunk.ogg", volume = 0.65, audible_distance_modifier = 0.4}, frame = 64},
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-slide-open.ogg", volume = 0.65, audible_distance_modifier = 0.3}, frame = 74},
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-pipe-in.ogg", volume = 0.75, audible_distance_modifier = 0.4}, frame = 106},
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-smoke-puff.ogg", volume = 0.8, audible_distance_modifier = 0.3}, frame = 106},
            {sound = {variations = path_util.sa_sound_variations("sound/entity/foundry/foundry-pour", 2, 0.7)}, frame = 110},
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-rocks.ogg", volume = 0.65, audible_distance_modifier = 0.3}, frame = 120},
            {sound = {filename = path_util.space_age_path.."sound/entity/foundry/foundry-blade.ogg", volume = 0.7}, frame = 126},
        },
        max_sounds_per_prototype = 2
        },
        fluid_boxes =
        {
        {
            production_type = "input",
            pipe_picture = util.empty_sprite(),
            pipe_picture_frozen = require("__sei-foundry__.prototypes.entity.foundry-pictures").pipe_picture_frozen,
            pipe_covers = pipecoverspictures(),
            always_draw_covers = false,
            enable_working_visualisations = { "input-pipe" },
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {-1, 2} }}
        },
        {
            production_type = "input",
            pipe_picture = util.empty_sprite(),
            --pipe_picture_frozen = require("__sei-foundry__.prototypes.entity.foundry-pictures").pipe_picture_frozen,
            pipe_covers = pipecoverspictures(),
            always_draw_covers = false,
            enable_working_visualisations = { "input-pipe" },
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {1, 2} }}
        },
        {
            production_type = "output",
            pipe_picture = util.empty_sprite(),
            --pipe_picture_frozen = require("__sei-foundry__.prototypes.entity.foundry-pictures").pipe_picture_frozen,
            pipe_covers = pipecoverspictures(),
            always_draw_covers = false,
            enable_working_visualisations = { "output-pipe" },
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {-1, -2} }}
        },
        {
            production_type = "output",
            pipe_picture = util.empty_sprite(),
            pipe_picture_frozen = require("__sei-foundry__.prototypes.entity.foundry-pictures").pipe_picture_frozen,
            pipe_covers = pipecoverspictures(),
            always_draw_covers = false,
            enable_working_visualisations = { "output-pipe" },
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {1, -2} }}
        }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        water_reflection =
        {
        pictures = path_util.sa_sprite_load("__sei-foundry__/graphics/entity/foundry/foundry-reflection",
        {
            scale = 5,
            shift = {0,2}
        }),
        rotate = false
        }
    },
})