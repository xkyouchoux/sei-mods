if SEI_SPACE_AGE then return end

local path_util = require("__sei-library__.path_util")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require ("__sei-library__.prototypes.entity.sounds")

data:extend({
    {
        type = "assembling-machine",
        name = "electromagnetic-plant",
        localised_name = {"entity-name.sei-electromagnetic-plant"},
        localised_description = {"entity-description.sei-electromagnetic-plant"},
        icon = path_util.space_age_path.."graphics/icons/electromagnetic-plant.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "electromagnetic-plant"},
        fast_replaceable_group = "electromagnetic-plant",
        max_health = 350,
        corpse = "electromagnetic-plant-remnants",
        dying_explosion = "electromagnetic-plant-explosion",
        icon_draw_specification = {shift = {0, -0.25}},
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["electromagnetic-plant"],
        heating_energy = "100kW",
        effect_receiver = { base_effect = { productivity = settings.startup["sei-electromagnetic-plant-base-production-bonus"].value / 100 }},
        resistances =
        {
        {
            type = "fire",
            percent = 70
        }
        },
        collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
        selection_box = {{-2, -2}, {2, 2}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 0.7,
        fluid_boxes =
        {
        {
            production_type = "input",
            pipe_picture = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
            pipe_picture_frozen = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 200,
            secondary_draw_orders = { north = -1 },
            pipe_connections = {{ flow_direction="input-output", direction = defines.direction.west, position = {-1.5, 0.5} }}
        },
        {
            production_type = "input",
            pipe_picture = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
            pipe_picture_frozen = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 200,
            secondary_draw_orders = { north = -1 },
            pipe_connections = {{ flow_direction="input-output", direction = defines.direction.east, position = {1.5, -0.5} }}
        },
        {
            production_type = "output",
            pipe_picture = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
            pipe_picture_frozen = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 100,
            secondary_draw_orders = { north = -1 },
            pipe_connections = {{ flow_direction="input-output", direction = defines.direction.south, position = {0.5, 1.5} }}
        },
        {
            production_type = "output",
            pipe_picture = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
            pipe_picture_frozen = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 100,
            secondary_draw_orders = { north = -1 },
            pipe_connections = {{ flow_direction="input-output", direction = defines.direction.north, position = {-0.5, -1.5} }}
        }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        forced_symmetry = "horizontal",
        perceived_performance = {minimum = 0.25, maximum = 10},
        graphics_set = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").graphics_set,
        open_sound = sounds.electric_large_open,
        close_sound = sounds.electric_large_close,
        working_sound = space_age_sounds.electromagnetic_plant,
        crafting_speed = 2,
        crafting_categories = {
            "electromagnetics", 
            "crafting-or-electromagnetics",
        },
        energy_source =
        {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 4 }
        },
        energy_usage = "1250kW",
        module_slots = 5,
        icons_positioning =
        {
        {inventory_index = defines.inventory.furnace_modules, shift = {0, 1}}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        water_reflection = require("__sei-electromagnetic-plant__.prototypes.entity.electromagnetic-plant-pictures").water_reflection,
    },
})