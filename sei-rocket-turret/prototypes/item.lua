local path_util = require("__sei-library__.path_util")
local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "rocket-turret",
        icon = path_util.space_age_path.."graphics/icons/rocket-turret.png",
        subgroup = "turret",
        order = "b[turret]-e[rocket-turret]-a[turret]",
        inventory_move_sound = item_sounds.turret_inventory_move,
        pick_sound = item_sounds.turret_inventory_pickup,
        drop_sound = item_sounds.turret_inventory_move,
        place_result = "rocket-turret",
        stack_size = 10,
        weight = 100*kg
    },
})
