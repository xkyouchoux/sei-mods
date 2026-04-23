local data_util = require("__sei-foundry__.data_util")
local path_util = require("__sei-library__.path_util")
local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = data_util.prefix.."foundry",
        icon = path_util.space_age_path.."graphics/icons/foundry.png",
        subgroup = "smelting-machine",
        order = "d[foundry]",
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move,
        place_result = data_util.prefix.."foundry",
        stack_size = 20,
        weight = 200 * kg
    },
})