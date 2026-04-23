local path_util = require("__sei-library__.path_util")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

local biochamber_pictures = require("__sei-biochamber__.prototypes.entity.biochamber-pictures")

data:extend({
    {
        type = "assembling-machine",
        name = "biochamber",
        icon = path_util.space_age_path.."graphics/icons/biochamber.png",
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "biochamber"},
        fast_replaceable_group = "biochamber",
        max_health = 300,
        corpse = "biochamber-remnants",
        dying_explosion = "biochamber-explosion",
        icon_draw_specification = {shift = {0, -0.3}},
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["biochamber"],
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 0.4,
        module_slots = 4,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = { base_effect = { productivity = settings.startup["sei-biochamber-base-production-bonus"].value / 100 }},

        graphics_set = require("__sei-biochamber__.prototypes.entity.biochamber-pictures").graphics_set,
        impact_category = "metal-large",
        open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
        close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
        working_sound =
        {
        sound = {filename = path_util.space_age_path.."sound/entity/biochamber/biochamber-loop.ogg", volume = 0.4},
        max_sounds_per_prototype = 3,
        fade_in_ticks = 4,
        fade_out_ticks = 20
        },
        crafting_speed = 2,
        energy_source =
        {
        type = "burner",
        fuel_categories = {"nutrients"},
        effectivity = 1,
        burner_usage = "nutrients",
        fuel_inventory_size = 1,
        emissions_per_minute = { pollution = -1 },
        light_flicker = require("__sei-biochamber__.prototypes.entity.biochamber-pictures").light_flicker
        },
        energy_usage = "200kW",
        heating_energy = "100kW",
        crafting_categories = {
            "organic",
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes =
        {
        {
            production_type = "input",
            pipe_picture =                 biochamber_pictures.pipe_pictures_1,
            pipe_picture_frozen =          biochamber_pictures.pipe_pictures_1_frozen,
            mirrored_pipe_picture =        biochamber_pictures.pipe_pictures_2,
            mirrored_pipe_picture_frozen = biochamber_pictures.pipe_pictures_2_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections =
            {
            {
                flow_direction="input",
                direction = defines.direction.north,
                position = {-1, -1}
            }
            }
        },
        {
            production_type = "input",
            pipe_picture =                 biochamber_pictures.pipe_pictures_2,
            pipe_picture_frozen =          biochamber_pictures.pipe_pictures_2_frozen,
            mirrored_pipe_picture =        biochamber_pictures.pipe_pictures_1,
            mirrored_pipe_picture_frozen = biochamber_pictures.pipe_pictures_1_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections =
            {
            {
                flow_direction="input",
                direction = defines.direction.north,
                position = {1, -1}
            }
            }
        },
        {
            production_type = "output",
            pipe_picture =                 biochamber_pictures.pipe_pictures_1,
            pipe_picture_frozen =          biochamber_pictures.pipe_pictures_1_frozen,
            mirrored_pipe_picture =        biochamber_pictures.pipe_pictures_2,
            mirrored_pipe_picture_frozen = biochamber_pictures.pipe_pictures_2_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections =
            {
            {
                flow_direction = "output",
                direction = defines.direction.south,
                position = {1, 1}
            }
            }
        },
        {
            production_type = "output",
            pipe_picture =                 biochamber_pictures.pipe_pictures_2,
            pipe_picture_frozen =          biochamber_pictures.pipe_pictures_2_frozen,
            mirrored_pipe_picture =        biochamber_pictures.pipe_pictures_1,
            mirrored_pipe_picture_frozen = biochamber_pictures.pipe_pictures_1_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections =
            {
            {
                flow_direction = "output",
                direction = defines.direction.south,
                position = {-1, 1}
            }
            }
        }
        },
        water_reflection =
        {
        pictures =
        {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-reflection.png",
            priority = "extra-high",
            width = 28,
            height = 36,
            shift = util.by_pixel(5, 60),
            variation_count = 4,
            scale = 5
        },
        rotate = false,
        orientation_to_variation = true
        },
        production_health_effect = nil
    },
})