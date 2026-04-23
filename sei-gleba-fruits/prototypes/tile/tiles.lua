local path_util = require("__sei-library__.path_util")

local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local base_sounds = require("__base__/prototypes/entity/sounds")
local base_tile_sounds = require("__base__/prototypes/tile/tile-sounds")

gleba_tile_offset = 65

local landfill_trigger_effect = function()
    return
    {
        {
        type = "create-particle",
        repeat_count = 20,
        repeat_count_deviation = 5,
        probability = 1,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "landfill-stone-particle-small",
        offsets = { { 0, 0 } },
        offset_deviation = { { -0.5, -0.5977 }, { 0.5, 0.5977 } },
        initial_height = 0.2,
        initial_height_deviation = 0.22,
        initial_vertical_speed = 0.1,
        initial_vertical_speed_deviation = 0.041,
        speed_from_center = 0.05,
        speed_from_center_deviation = 0.05,
        frame_speed = 1,
        frame_speed_deviation = 0
        },
        {
        type = "create-particle",
        repeat_count = 7,
        repeat_count_deviation = 2,
        probability = 1,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "landfill-stone-particle-medium",
        offsets = { { 0, 0 } },
        offset_deviation = { { -0.2, -0.2 }, { 0.3, 0.3 } },
        initial_height = 0.2,
        initial_height_deviation = 0.5,
        initial_vertical_speed = 0.125,
        initial_vertical_speed_deviation = 0.042,
        speed_from_center = 0.03,
        speed_from_center_deviation = 0.05,
        frame_speed = 1,
        frame_speed_deviation = 0
        },
        {
        type = "create-particle",
        repeat_count = 7,
        repeat_count_deviation = 2,
        probability = 1,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "landfill-stone-lower-particle-medium",
        offsets = { { 0, 0 } },
        offset_deviation =
        {
            left_top = { -0.3984, -0.7969 },
            right_bottom = { 0.3984, 0.7969 }
        },
        initial_height = 0.2,
        initial_height_deviation = 0.2,
        initial_vertical_speed = 0.125,
        initial_vertical_speed_deviation = 0.042,
        speed_from_center = 0.03,
        speed_from_center_deviation = 0.05,
        frame_speed = 1,
        frame_speed_deviation = 0
        },
        {
        type = "create-particle",
        repeat_count = 15,
        repeat_count_deviation = 4,
        probability = 1,
        affects_target = false,
        show_in_tooltip = false,
        particle_name = "landfill-stone-particle-tiny",
        offsets = { { 0, 0 } },
        offset_deviation = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        initial_height = 0.2,
        initial_height_deviation = 0.5,
        initial_vertical_speed = 0.1,
        initial_vertical_speed_deviation = 0.05,
        speed_from_center = 0.03,
        speed_from_center_deviation = 0.02,
        frame_speed = 1,
        frame_speed_deviation = 0
        }
    }
end

walking_sounds_semi_wet = {
    variations = path_util.sa_sound_variations("sound/walking/semi-wet-rock", 10, 0.7),
    advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}

local landing_sounds_semi_wet = {
    variations = path_util.sa_sound_variations("sound/entity/mech-armor/mech-armor-land-semi-wet", 3, 1.0, volume_multiplier("main-menu", 2.9)),
    advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}

driving_sounds_wetland = {
    sound =
    {
        filename = "__base__/sound/driving/vehicle-surface-water-shallow.ogg", volume = 0.6,
        advanced_volume_control = default_tile_sounds_advanced_volume_control(),
    },
    fade_ticks = 6
}

data:extend({
    {
        type = "tile",
        name = "artificial-yumako-soil",
        order = "d[yumako]-d[artificial-yumako-soil]",
        subgroup = "artificial-tiles",
        minable = {mining_time = 0.5, result = "artificial-yumako-soil"},
        mined_sound = base_sounds.deconstruct_bricks(0.8),
        is_foundation = true,
        collision_mask = tile_collision_masks.ground(),
        layer = gleba_tile_offset + 22,
        searchable = true,

        transitions = data.raw["tile"]["landfill"].transitions,
        transitions_between_transitions = data.raw["tile"]["landfill"].transitions_between_transitions,
        trigger_effect = landfill_trigger_effect(),

        sprite_usage_surface = "any",
        variants = tile_variations_template_with_transitions_and_effect_map(
        path_util.space_age_path.."graphics/terrain/artificial-yumako-soil.png",
        path_util.space_age_path.."graphics/terrain/effect-maps/water-gleba-mask.png",
        {
            max_size = 4,
            [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
            [2] = { probability = 1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
            [4] = { probability = 0.1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
        }
        ),

        walking_sound = walking_sounds_semi_wet,
        landing_steps_sound = landing_sounds_semi_wet,
        driving_sound = driving_sounds_wetland,
        build_sound = base_tile_sounds.building.landfill,
        map_color={204, 183, 6},
        scorch_mark_color = {r = 0.329, g = 0.242*2, b = 0.177, a = 1.000}
    },
    {
        type = "tile",
        name = "overgrowth-yumako-soil",
        order = "d[yumako]-e[overgrowth-yumako-soil]",
        subgroup = "artificial-tiles",
        minable = {mining_time = 0.5, result = "overgrowth-yumako-soil"},
        mined_sound = base_sounds.deconstruct_bricks(0.8),
        is_foundation = true,
        collision_mask = tile_collision_masks.ground(),
        layer = gleba_tile_offset + 24,
        searchable = true,

        transitions = data.raw["tile"]["landfill"].transitions,
        transitions_between_transitions = data.raw["tile"]["landfill"].transitions_between_transitions,
        trigger_effect = landfill_trigger_effect(),

        sprite_usage_surface = "any",
        variants = tile_variations_template_with_transitions_and_effect_map(
        path_util.space_age_path.."graphics/terrain/overgrowth-yumako-soil.png",
        path_util.space_age_path.."graphics/terrain/effect-maps/water-gleba-mask.png",
        {
            max_size = 4,
            [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
            [2] = { probability = 1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
            [4] = { probability = 0.1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
        }
        ),

        walking_sound = walking_sounds_semi_wet,
        landing_steps_sound = landing_sounds_semi_wet,
        driving_sound = driving_sounds_wetland,
        build_sound = base_tile_sounds.building.landfill,
        map_color={204, 183, 6},
        scorch_mark_color = {r = 0.329, g = 0.242*2, b = 0.177, a = 1.000}
    },
    {
        type = "tile",
        name = "artificial-jellynut-soil",
        order = "e[jellynut]-c[artificial-jellynut-soil]",
        subgroup = "artificial-tiles",
        minable = {mining_time = 0.5, result = "artificial-jellynut-soil"},
        mined_sound = base_sounds.deconstruct_bricks(0.8),
        is_foundation = true,
        collision_mask = tile_collision_masks.ground(),
        layer = gleba_tile_offset + 23,
        searchable = true,

        transitions = data.raw["tile"]["landfill"].transitions,
        transitions_between_transitions = data.raw["tile"]["landfill"].transitions_between_transitions,
        trigger_effect = landfill_trigger_effect(),

        sprite_usage_surface = "any",
        variants = tile_variations_template_with_transitions(
        path_util.space_age_path.."graphics/terrain/artificial-jellynut-soil.png",
        {
            max_size = 4,
            [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
            [2] = { probability = 1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
            [4] = { probability = 0.1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
        }
        ),

        walking_sound = walking_sounds_semi_wet,
        landing_steps_sound = landing_sounds_semi_wet,
        driving_sound = driving_sounds_wetland,
        build_sound = base_tile_sounds.building.landfill,
        map_color={204, 6, 183},
        scorch_mark_color = {r = 0.329, g = 0.242*2, b = 0.177, a = 1.000}
    },
    {
        type = "tile",
        name = "overgrowth-jellynut-soil",
        order = "e[jellynut]-d[overgrowth-jellynut-soil]",
        subgroup = "artificial-tiles",
        minable = {mining_time = 0.5, result = "overgrowth-jellynut-soil"},
        mined_sound = base_sounds.deconstruct_bricks(0.8),
        is_foundation = true,
        collision_mask = tile_collision_masks.ground(),
        layer = gleba_tile_offset + 25,
        searchable = true,

        transitions = data.raw["tile"]["landfill"].transitions,
        transitions_between_transitions = data.raw["tile"]["landfill"].transitions_between_transitions,
        trigger_effect = landfill_trigger_effect(),

        sprite_usage_surface = "any",
        variants = tile_variations_template_with_transitions(
        path_util.space_age_path.."graphics/terrain/overgrowth-jellynut-soil.png",
        {
            max_size = 4,
            [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
            [2] = { probability = 1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
            [4] = { probability = 0.1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
        }
        ),

        walking_sound = walking_sounds_semi_wet,
        landing_steps_sound = landing_sounds_semi_wet,
        driving_sound = driving_sounds_wetland,
        build_sound = base_tile_sounds.building.landfill,
        map_color={204, 6, 183},
        scorch_mark_color = {r = 0.329, g = 0.242*2, b = 0.177, a = 1.000}
    },
})