local path_util = require("__sei-library__.path_util")
local data_util = require("__sei-library__.data_util")

local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__sei-library__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "agricultural-tower",
        icon = path_util.space_age_path.."graphics/icons/agricultural-tower.png",
        subgroup = "extraction-machine",
        order = "a[items]-c[agricultural-tower]-a",
        inventory_move_sound = item_sounds.mechanical_large_inventory_move,
        pick_sound = item_sounds.mechanical_large_inventory_pickup,
        drop_sound = item_sounds.mechanical_large_inventory_move,
        place_result = "agricultural-tower",
        stack_size = 20,
    },
    {
        type = "item",
        name = "tree-seed",
        localised_name = {"item-name.tree-seed"},
        icon = path_util.space_age_path.."graphics/icons/tree-seed.png",
        pictures =
        {
            { size = 64, filename = path_util.space_age_path.."graphics/icons/tree-seed-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/tree-seed-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/tree-seed-3.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/tree-seed-4.png", scale = 0.5, mipmap_count = 4 },
        },
        subgroup = "agriculture-seeds",
        order = "a[seeds]-a[tree-seed]",
        plant_result = "tree-plant",
        place_result = "tree-plant",
        inventory_move_sound = item_sounds.wood_inventory_move,
        pick_sound = item_sounds.wood_inventory_pickup,
        drop_sound = item_sounds.wood_inventory_move,
        stack_size = 10,
        weight = 10 * kg,
        fuel_category = "chemical",
        fuel_value = "100kJ"
    },
})