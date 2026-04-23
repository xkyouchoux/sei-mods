local path_util = require("__sei-library__.path_util")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "assembling-machine",
        name = "cryogenic-plant",
        icon = path_util.space_age_path.."graphics/icons/cryogenic-plant.png",
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.2, result = "cryogenic-plant"},
        fast_replaceable_group = "cryogenic-plant",
        max_health = 350,
        corpse = "cryogenic-plant-remnants",
        dying_explosion = "cryogenic-plant-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["cryogenic-plant"],
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        heating_energy = "100kW",
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 0.4,
        module_slots = 6,
        icons_positioning =
        {
            {inventory_index = defines.inventory.furnace_modules, shift = {0, 0.95}, max_icons_per_row = 6}
        },
        icon_draw_specification = {scale = 2, shift = {0, -0.3}},
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        crafting_categories = {
            "chemistry",
            "melting",
            "cryogenics",
        },
        crafting_speed = 2,
        energy_source =
        {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 6 }
        },
        energy_usage = "550kW",
        graphics_set = require("__sei-cryogenic-plant__.prototypes.entity.cryogenic-plant-pictures").graphics_set,
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        working_sound =
        {
        sound =
        {
            filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cryogenic-plant.ogg", volume = 0.8
        },
        --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
        fade_in_ticks = 4,
        fade_out_ticks = 30,
        sound_accents =
        {
            {sound = {variations = path_util.sa_sound_variations("sound/entity/cryogenic-plant/cp-smoke-mask-puff", 2, 0.35), audible_distance_modifier = 0.8}, frame = 11},
            {sound = {variations = path_util.sa_sound_variations("sound/entity/cryogenic-plant/cp-smoke-mask-puff", 2, 0.3), audible_distance_modifier = 0.8}, frame = 130},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim3-bubbles-rise.ogg", volume = 0.9, audible_distance_modifier = 0.3}, frame = 14},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim3-bubbles-fall.ogg", volume = 0.7, audible_distance_modifier = 0.3}, frame = 62},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim3-bubbles-rise.ogg", volume = 0.9, audible_distance_modifier = 0.3}, frame = 110},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim3-bubbles-fall.ogg", volume = 0.7, audible_distance_modifier = 0.3}, frame = 158},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim5-gears.ogg", volume = 0.25, audible_distance_modifier = 0.4}, frame = 51},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim5-gears.ogg", volume = 0.2, audible_distance_modifier = 0.4}, frame = 151},
            {sound = {variations = path_util.sa_sound_variations("sound/entity/cryogenic-plant/cp-anim6-open", 2, 0.6), audible_distance_modifier = 0.4}, frame = 3},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim6-close.ogg", volume = 0.7, audible_distance_modifier = 0.4}, frame = 33},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim6-slide-down.ogg", volume = 0.55, audible_distance_modifier = 0.4}, frame = 42},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim6-slide-up.ogg", volume = 0.6, audible_distance_modifier = 0.4}, frame = 126},
            {sound = {filename = path_util.space_age_path.."sound/entity/cryogenic-plant/cp-anim6-slide-stop.ogg", volume = 0.4, audible_distance_modifier = 0.4}, frame = 146},
        },
        max_sounds_per_prototype = 2
        },
        fluid_boxes =
        {
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {-2, 2} }}
        },
        {
            production_type = "input",
            pipe_picture =  require("__sei-cryogenic-plant__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
            pipe_picture_frozen =  require("__sei-cryogenic-plant__.prototypes.entity.cryogenic-plant-pictures").pipe_picture_frozen,
            always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {0, 2} }}
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {2, 2} }}
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {-2, -2} }}
        },
        {
            production_type = "output",
            pipe_picture =  require("__sei-cryogenic-plant__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
            pipe_picture_frozen =  require("__sei-cryogenic-plant__.prototypes.entity.cryogenic-plant-pictures").pipe_picture_frozen,
            always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {0, -2} }}
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {2, -2} }}
        }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        water_reflection =
        {
        pictures = path_util.sa_sprite_load("__sei-cryogenic-plant__/graphics/entity/foundry/foundry-reflection",
        {
            scale = 5,
            shift = {0,2}
        }),
        rotate = false,
        }
    },
})