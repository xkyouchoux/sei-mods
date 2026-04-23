local path_util = require("__sei-library__.path_util")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__sei-library__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

data:extend({
    {
        type = "item",
        name = "tesla-turret",
        icon = path_util.space_age_path.."graphics/icons/tesla-turret.png",
        subgroup = "turret",
        order = "b[turret]-f[tesla-turret]-a[turret]",
        inventory_move_sound = item_sounds.turret_inventory_move,
        pick_sound = item_sounds.turret_inventory_pickup,
        drop_sound = item_sounds.turret_inventory_move,
        place_result = "tesla-turret",
        stack_size = 10,
        weight = 100*kg
    },
})
