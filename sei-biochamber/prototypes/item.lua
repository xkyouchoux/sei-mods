local path_util = require("__sei-library__.path_util")
local data_util = require("__sei-library__.data_util")

local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__sei-library__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "biochamber",
        icon = path_util.space_age_path.."graphics/icons/biochamber.png",
        subgroup = "chemistry",
        order = "f[biochamber]-[biochamber]",
        inventory_move_sound = item_sounds.fluid_inventory_move,
        pick_sound = item_sounds.fluid_inventory_pickup,
        drop_sound = item_sounds.fluid_inventory_move,
        place_result = "biochamber",
        stack_size = 20,
    },
    {
        type = "item",
        name = "nutrients",
        icon = path_util.space_age_path.."graphics/icons/nutrients.png",
        subgroup = "agriculture-processes",
        order = "c[nutrients]-b[nutrients]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "nutrients",
        fuel_value = "2MJ",
        stack_size = 100,
        weight = 0.5 * kg,
    },
})
