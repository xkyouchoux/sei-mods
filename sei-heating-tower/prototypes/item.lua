local path_util = require("__sei-library__.path_util")
local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "heating-tower",
        icon = path_util.space_age_path.."graphics/icons/heating-tower.png",
        subgroup = "energy",
        order = "c[heating-tower]",
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move,
        place_result = "heating-tower",
        stack_size = 20,
        weight = 100 * kg
    }
})
