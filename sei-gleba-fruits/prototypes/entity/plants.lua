local path_util = require("__sei-library__.path_util")

local util = require('util')
local sounds = require("__base__.prototypes.entity.sounds")

local seconds = 60
local minutes = 60*seconds

local plant_emissions = { pollution = 0.001 }
local plant_harvest_emissions = { pollution = 15 }
local plant_flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"}

local gleba_tree_static_influence = -0.8
local gleba_tree_probability_multiplier = 0.3

local leaf_sound = sounds.tree_leaves

local leaf_sound_trigger =
{
    {
        type = "play-sound",
        sound = leaf_sound,
        damage_type_filters = "fire"
    }
}

local gleba_tree_underwater_things = {}

local gleba_tree_particle_effects =
{
    ["yumako-tree"] =   { crop_2 = "yumako-leaf-particle",
                            trunk_2 = "yumako-branch-particle"
                        },
    ["jellystem"] =     { sap = "jellystem-leaf-particle",
                            jellystem = "jellystem-branch-particle"
                        },
    ["cuttlepop"] =     { crop_4 = "cuttlepop-leaf-particle",
                            spongy = "cuttlepop-branch-particle"
                        },
    ["slipstack"] =     { slime = "slipstack-leaf-particle",
                            spongy = "slipstack-branch-particle"
                        },
    ["funneltrunk"] =   { crop_1 = "funneltrunk-leaf-particle",
                            spongy = "funneltrunk-branch-particle"
                        },
    ["hairyclubnub"] =  { leaf_3 = "hairyclubnub-leaf-particle",
                            trunk_2 = "hairyclubnub-branch-particle"
                        },
    ["teflilly"] =      { leaf_1 = "teflilly-leaf-particle",
                            trunk_1 = "teflilly-branch-particle"
                        },
    ["lickmaw"] =       { crop_1 = "lickmaw-leaf-particle",
                            spongy = "lickmaw-branch-particle"
                        },
    ["stingfrond"] =    { leaf_2 = "stingfrond-leaf-particle",
                            trunk_1 = "stingfrond-branch-particle"
                        },
    ["boompuff"] =      { crop_3 = "boompuff-leaf-particle",
                            trunk_3 = "boompuff-branch-particle"
                        },
    ["sunnycomb"] =     { crop_1 = "sunnycomb-leaf-particle",
                            spongy = "sunnycomb-branch-particle"
                        },
    ["water-cane"] =    { water_cane_top = "water-cane-branch-particle",
                            water_cane = "water-cane-branch-particle"
                        }
}

local function gleba_tree_variations(name, variation_count, per_row, scale_multiplier, width, height, shift, reflection_shift)
    variation_count = variation_count or 5
    per_row = per_row or 5
    scale_multiplier = scale_multiplier or 1
    local width = width or 640
    local height = height or 560
    local variations = {}
    local reflection_shift = reflection_shift or util.by_pixel(52, 80)
    local shift = shift or util.by_pixel(52, -40)
    -- local reflection_shift = {shift[0], shift[1]} --or util.by_pixel(52, 40)

    local sap_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].sap
    local leaf_particle_1 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].leaf_1
    local leaf_particle_2 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].leaf_2
    local leaf_particle_3 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].leaf_3
    local crop_particle_1 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].crop_1
    local crop_particle_2 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].crop_2
    local crop_particle_3 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].crop_3
    local crop_particle_4 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].crop_4
    local slime_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].slime
    local trunk_particle_1 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].trunk_1
    local trunk_particle_2 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].trunk_2
    local trunk_particle_3 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].trunk_3
    local spongy_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].spongy
    local water_cane_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].water_cane
    local water_cane_top_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].water_cane_top
    local jellystem_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].jellystem

    for i = 1, variation_count do
        local x = ((i - 1) % per_row) * width
        local y = math.floor((i-1)/per_row) * height
        local variation = {
        trunk = {
            filename = path_util.space_age_path.."graphics/entity/plant/"..name.."/"..name.."-trunk.png",
            flags = { "mipmap" },
            surface = "gleba",
            width = width,
            height = height,
            x = x,
            y = y,
            frame_count = 1,
            shift = shift,
            scale = 0.33 * scale_multiplier
        },
        leaves = {
            filename = path_util.space_age_path.."graphics/entity/plant/"..name.."/"..name.."-harvest.png",
            flags = { "mipmap" },
            surface = "gleba",
            width = width,
            height = height,
            x = x,
            y = y,
            frame_count = 1,
            shift = shift,
            scale = 0.33 * scale_multiplier
        },
        normal = {
            filename = path_util.space_age_path.."graphics/entity/plant/"..name.."/"..name.."-normal.png",
            surface = "gleba",
            width = width,
            height = height,
            x = x,
            y = y,
            frame_count = 1,
            shift = shift,
            scale = 0.33 * scale_multiplier
        },
        shadow = {
            frame_count = 2,
            lines_per_file = 1,
            line_length = 1,
            flags = { "mipmap", "shadow" },
            surface = "gleba",
            filenames =
            {
            path_util.space_age_path.."graphics/entity/plant/"..name.."/"..name.."-harvest-shadow.png",
            path_util.space_age_path.."graphics/entity/plant/"..name.."/"..name.."-shadow.png"
            },
            width = width,
            height = height,
            x = x,
            y = y,
            shift = shift,
            scale = 0.33 * scale_multiplier
        },

        underwater       = gleba_tree_underwater_things[name] and gleba_tree_underwater_things[name].underwater or nil,
        --water_reflection = gleba_tree_underwater_things[name] and gleba_tree_underwater_things[name].water_reflection or nil,

        water_reflection = {
            pictures = {
            filename = path_util.space_age_path.."graphics/entity/plant/"..name.."/"..name.."-effect-map.png",
            --flags = { "mipmap" },
            surface = "gleba",
            width = width,
            height = height,
            x = x,
            y = y,
            --frame_count = 1,
            shift = reflection_shift,
            scale = 0.33 * scale_multiplier
            }
        } or nil,

        leaf_generation = {},
        branch_generation = {},

        leaves_when_damaged = 100,
        leaves_when_destroyed = 35,
        leaves_when_mined_manually = 40,
        leaves_when_mined_automatically = 16,
        branches_when_damaged = 20,
        branches_when_destroyed = 16,
        branches_when_mined_manually = 15,
        branches_when_mined_automatically = 8
        }

        if sap_particle then -- jellystem
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = sap_particle,
            offset_deviation =
            {
            {-0.8, -1.2},
            {0.8, 1.2}
            },
            initial_height = 1.5,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06 ,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.025 ,
            speed_from_center_deviation = 0.05,
            frame_speed = 1,
            frame_speed_deviation = 0.5,
            tail_length = 10,
            tail_length_deviation = 5,
            tail_width = 5,
            rotate_offsets = false,
            only_when_visible = true
        }
        variation.leaves_when_damaged = 50
        variation.leaves_when_destroyed = 35
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 16
        end

        if slime_particle then -- slipstack
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = slime_particle,
            offset_deviation =
            {
            {-0.6, -0.6},
            {0.6, 0.6}
            },
            initial_height = 2.3,
            initial_height_deviation = 0.05,
            initial_vertical_speed = 0.14 ,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.013 ,
            speed_from_center_deviation = 0.02,
            frame_speed = 1,
            frame_speed_deviation = 0,
            only_when_visible = true
        }
        end

        if leaf_particle_1 then -- teflilly
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = leaf_particle_1,
            offset_deviation = {{-1, -0.8}, {1, 0.8}},
            initial_height = 2.8,
            initial_height_deviation = 0.035,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.13,
            speed_from_center = 0.015,
            speed_from_center_deviation = 0.025,
            frame_speed = 0.6,
            only_when_visible = true
        }
        variation.leaves_when_damaged = 15
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 35
        variation.leaves_when_mined_automatically = 25
        end

        if leaf_particle_2 then -- stingfrond
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = leaf_particle_2,
            offset_deviation = {{-0.8, -0.6}, {0.8, 0.6}},
            initial_height = 2,
            initial_height_deviation = 0.035,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.13,
            speed_from_center = 0.015,
            speed_from_center_deviation = 0.025,
            frame_speed = 0.6,
            only_when_visible = true
        }
        variation.leaves_when_damaged = 20
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 20
        end

        if leaf_particle_3 then -- hairy-clubnub
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = leaf_particle_3,
            offset_deviation = {{-1.2, -1}, {1.2, 1}},
            initial_height = 2.7,
            initial_height_deviation = 0.035,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.13,
            speed_from_center = 0.005,
            speed_from_center_deviation = 0.025,
            frame_speed = 0.6,
            only_when_visible = true
        }
        variation.leaves_when_damaged = 30
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 35
        variation.leaves_when_mined_automatically = 20
        end

        if crop_particle_1 then -- funneltrunk, lickmaw, sunnycomb
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = crop_particle_1,
            repeat_count = 16,
            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
            initial_height = 3,
            initial_height_deviation = 0.035,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.02,
            speed_from_center_deviation = 0.045,
            only_when_visible = true
        }
        if name == "funneltrunk" then
            variation.leaves_when_damaged = 50
        else
            variation.leaves_when_damaged = 30
        end
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 20
        end

        if crop_particle_2 then -- yumako
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = crop_particle_2,
            offset_deviation = {{-1, -1}, {1, 1}},
            initial_height = 2.5,
            initial_height_deviation = 0.035,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.045,
            only_when_visible = true
        }
        variation.leaves_when_damaged = 25
        variation.leaves_when_destroyed = 35
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 16
        end

        if crop_particle_3 then -- boompuff
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = crop_particle_3,
            offset_deviation = {{-0.8, -0.8}, {0.8, 0.8}},
            initial_height = 2,
            initial_height_deviation = 0.035,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.065,
            only_when_visible = true
        }
        variation.leaves_when_damaged = 18
        variation.leaves_when_destroyed = 35
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 16
        end

        if crop_particle_4 then -- cuttlepop
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = crop_particle_4,
            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
            initial_height = 2.2,
            initial_height_deviation = 0.035,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.02,
            speed_from_center_deviation = 0.045,
            only_when_visible = true
        }
        variation.leaves_when_damaged = 30
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 35
        variation.leaves_when_mined_automatically = 25
        end

        if trunk_particle_1 then -- teflilly, stingfrond
        variation.branch_generation = {
            type = "create-particle",
            particle_name = trunk_particle_1,
            offset_deviation = {{-0.4, -0.8}, {0.4, 0.8}},
            initial_height = 1.5,
            initial_height_deviation = 1.5,
            initial_vertical_speed = 0.01,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.035,
            speed_from_center_deviation = 0.015,
            frame_speed = 0.8,
            only_when_visible = true
        }
        variation.branches_when_damaged = 30
        variation.branches_when_destroyed = 40
        variation.branches_when_mined_manually = 35
        variation.branches_when_mined_automatically = 8
        end

        if trunk_particle_2 then -- yumako, hairyclubnub
        variation.branch_generation = {
            type = "create-particle",
            particle_name = trunk_particle_2,
            offset_deviation = {{-0.8, -1.4}, {0.8, 1.4}},
            initial_height = 1.7,
            initial_height_deviation = 1.5,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.035,
            speed_from_center_deviation = 0.02,
            only_when_visible = true
        }
        variation.branches_when_damaged = 40
        variation.branches_when_destroyed = 50
        variation.branches_when_mined_manually = 40
        variation.branches_when_mined_automatically = 20
        end

        if trunk_particle_3 then -- boompuff
        variation.branch_generation = {
            type = "create-particle",
            particle_name = trunk_particle_3,
            offset_deviation = {{-0.8, -0.8}, {0.8, 0.8}},
            initial_height = 1.3,
            initial_height_deviation = 2,
            initial_vertical_speed = 0.01,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.045,
            speed_from_center_deviation = 0.02,
            only_when_visible = true
        }
        variation.branches_when_damaged = 30
        variation.branches_when_destroyed = 30
        variation.branches_when_mined_manually = 30
        variation.branches_when_mined_automatically = 15
        end

        if jellystem_particle then -- jellystem
        variation.branch_generation = {
            type = "create-particle",
            particle_name = jellystem_particle,
            offset_deviation = {{-0.65, -1}, {0.65, 1}},
            initial_height = 1.7,
            initial_height_deviation = 0.8,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.035,
            speed_from_center_deviation = 0.02,
            frame_speed = 0.8,
            only_when_visible = true
        }
        variation.branches_when_damaged = 30
        variation.branches_when_destroyed = 40
        variation.branches_when_mined_manually = 35
        variation.branches_when_mined_automatically = 8
        end

        if spongy_particle then -- cuttlepop, slipstack, funneltrunk, lickmaw, sunnycomb
        variation.branch_generation = {
            type = "create-particle",
            particle_name = spongy_particle,
            offset_deviation = {{-0.8, -1.5}, {0.8, 1.5}},
            initial_height = 1.7,
            initial_height_deviation = 0.6,
            initial_vertical_speed = 0.02,
            initial_vertical_speed_deviation = 0.15,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.04,
            frame_speed = 0.8,
            only_when_visible = true
        }
        if name == "funneltrunk" then
            variation.branches_when_damaged = 60
            variation.branches_when_mined_automatically = 25
        else
            variation.branches_when_damaged = 40
            variation.branches_when_mined_automatically = 16
        end
        variation.branches_when_destroyed = 40
        variation.branches_when_mined_manually = 35
        end

        if water_cane_top_particle then -- water-cane
        variation.leaf_generation = {
            type = "create-particle",
            particle_name = water_cane_top_particle,
            initial_height = 0.6,
            probability = 0.01,
            offset_deviation = {{-0.15, -0.4}, {0.15, 0.4}},
            initial_height = 1,
            initial_height_deviation = 0.01,
            initial_vertical_speed = 0.015,
            initial_vertical_speed_deviation = 0.055,
            speed_from_center = 0.025,
            speed_from_center_deviation = 0.05,
            frame_speed = 0.8,
            only_when_visible = true
        }
        variation.leaves_when_damaged = 4
        variation.leaves_when_destroyed = 2
        variation.leaves_when_mined_manually = 2
        variation.leaves_when_mined_automatically = 1
        end

        if water_cane_particle then -- water-cane
        variation.branch_generation = {
            type = "create-particle",
            particle_name = water_cane_particle,
            initial_height = 0.6,
            only_when_visible = true
        }
        variation.branches_when_damaged = 2
        variation.branches_when_destroyed = 1
        variation.branches_when_mined_manually = 1
        variation.branches_when_mined_automatically = 1
        end

        if(name == "stingfrond") then
        variation.leaves =
        {
            layers =
            {
            variation.leaves,
            {
                filename = path_util.space_age_path.."graphics/entity/plant/"..name.."/"..name.."-harvest-glow.png",
                flags = { "mipmap" },
                surface = "gleba",
                width = width,
                height = height,
                x = x,
                y = y,
                frame_count = 1,
                shift = shift,
                scale = 0.33 * scale_multiplier,
                draw_as_light = true
            }
            }
        }
        end
        table.insert(variations, variation)
    end
    return variations
end

local function minor_tints() -- Only for leaves where most if the colour is baked in.
    return {
        {r = 255, g = 255, b =  255},
        {r = 220, g = 255, b =  255},
        {r = 255, g = 220, b =  255},
        {r = 255, g = 255, b =  220},
        {r = 220, g = 220, b =  255},
        {r = 255, g = 220, b =  220},
        {r = 220, g = 255, b =  220},
    }
end

data:extend({
    {
        type = "plant",
        name = "yumako-tree", -- food
        icon = path_util.space_age_path.."graphics/icons/yumako-tree.png",
        flags = plant_flags,
        minable =
        {
        mining_particle = "yumako-mining-particle",
        mining_time = 0.5,
        results = {{type = "item", name = "yumako", amount = 50}},
        mining_trigger =
        {
            {
            type = "direct",
            action_delivery =
            {
                {
                type = "instant",
                target_effects = leaf_sound_trigger
                }
            }
            }
        }
        },
        mining_sound = path_util.sa_sound_variations("sound/mining/axe-mining-yumako-tree", 5, 0.6),
        mined_sound = path_util.sa_sound_variations("sound/mining/mined-yumako-tree", 6, 0.3),
        growth_ticks = 5 * minutes,
        harvest_emissions = plant_harvest_emissions,
        emissions_per_second = plant_emissions,
        max_health = 50,
        collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
        --collision_mask = {layers={player=true, ground_tile=true, train=true}},
        selection_box = {{-1, -3}, {1, 0.8}},
        drawing_box_vertical_extension = 0.8,
        subgroup = "trees",
        order = "a[tree]-c[gleba]-a[seedable]-a[yumako-tree]",
        impact_category = "tree",
        autoplace =
        {
            probability_expression = 0,
            tile_restriction = {"artificial-yumako-soil", "overgrowth-yumako-soil"}
        },
        variations = gleba_tree_variations("yumako-tree", 8, 4, 1.3, 640, 560, util.by_pixel(52, -73)),
        colors = minor_tints(),
        agricultural_tower_tint =
        {
        primary = {r = 0.552, g = 0.218, b = 0.218, a = 1.000}, -- #8c3737ff
        secondary = {r = 0.561, g = 0.613, b = 0.308, a = 1.000}, -- #8f4f4eff
        },
        -- tile_buildability_rules = { {area = {{-0.55, -0.55}, {0.55, 0.55}}, required_tiles = {"natural-yumako-soil", "artificial-yumako-soil"}, remove_on_collision = true} },
        ambient_sounds =
        {
        sound =
        {
            variations = path_util.sa_sound_variations("sound/world/plants/yumako-tree", 6, 0.5),
            advanced_volume_control =
            {
            fades = {fade_in = {curve_type = "cosine", from = {control = 0.5, volume_percentage = 0.0}, to = {1.5, 100.0}}}
            }
        },
        radius = 7.5,
        min_entity_count = 2,
        max_entity_count = 10,
        entity_to_sound_ratio = 0.2,
        average_pause_seconds = 8
        },
        map_color = {255, 255, 255},
    },
    {
        type = "plant",
        name = "jellystem", -- in water. science
        icon = path_util.space_age_path.."graphics/icons/jellystem.png",
        flags = plant_flags,
        minable =
        {
        mining_particle = "jellystem-mining-particle",
        mining_time = 0.5,
        results = {{type = "item", name = "jellynut", amount = 50}},
        },
        mining_sound = path_util.sa_sound_variations("sound/mining/axe-mining-jellystem", 5, 0.4),
        mined_sound = path_util.sa_sound_variations("sound/mining/mined-jellystem", 6, 0.35),
        growth_ticks = 5 * minutes,
        emissions_per_second = plant_emissions,
        harvest_emissions = plant_harvest_emissions,
        max_health = 50,
        collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
        --collision_mask = {layers={player=true, ground_tile=true, train=true}},
        selection_box = {{-1, -3}, {1, 0.8}},
        drawing_box_vertical_extension = 0.8,
        subgroup = "trees",
        order = "a[tree]-c[gleba]-a[seedable]-b[jellystem]",
        impact_category = "tree",
        autoplace =
        {
            probability_expression = 0,
            tile_restriction = {"artificial-jellynut-soil", "overgrowth-jellynut-soil"}
        },
        variations = gleba_tree_variations("jellystem", 8, 4, 1.3, 640, 560, util.by_pixel(52, -73)),
        colors = {
        {r = 255, g = 255, b =  255},
        {r = 233, g = 218, b =  225},
        --{r = 207, g = 202, b =  235},
        {r = 255, g = 235, b =  235},
        {r = 230, g = 217, b =  235},
        {r = 242, g = 202, b =  235},
        {r = 230, g = 235, b =  235},
        --{r = 194, g = 165, b  =  208},
        --{r = 215, g = 185, b =  208},
        --{r = 194, g = 185, b =  208},
        {r = 252, g = 186, b =  209}
        },
        agricultural_tower_tint =
        {
        primary = {r = 0.620, g = 0.307, b = 0.461, a = 1.000}, -- #eac1f5ff
        secondary = {r = 0.336, g = 0.624, b = 0.340, a = 1.000}, -- #885289ff
        },
        ambient_sounds =
        {
        sound =
        {
            variations = path_util.sa_sound_variations("sound/world/plants/jellystem", 8, 0.5),
            advanced_volume_control =
            {
            fades = {fade_in = {curve_type = "cosine", from = {control = 0.5, volume_percentage = 0.0}, to = {1.5, 100.0}}}
            }
        },
        radius = 7.5,
        min_entity_count = 2,
        max_entity_count = 10,
        entity_to_sound_ratio = 0.5,
        average_pause_seconds = 7
        },
        map_color = {255, 255, 255},
        -- tile_buildability_rules = { {area = {{-0.55, -0.55}, {0.55, 0.55}}, required_tiles = {"natural-jellynut-soil", "artificial-jellynut-soil"}, remove_on_collision = true} },
    },
})