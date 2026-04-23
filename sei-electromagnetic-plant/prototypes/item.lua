if SEI_SPACE_AGE then return end

local path_util = require("__sei-library__.path_util")
local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "electromagnetic-plant",
        icon = path_util.space_age_path.."graphics/icons/electromagnetic-plant.png",
        subgroup = "assembling",
        order = "g[electromagnetic-plant]",
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        place_result = "electromagnetic-plant",
        stack_size = 20,
        weight = 200 * kg
    },
})