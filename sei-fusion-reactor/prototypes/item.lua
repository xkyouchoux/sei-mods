local path_util = require("__sei-library__.path_util")
local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "fusion-power-cell",
        icon = path_util.space_age_path.."graphics/icons/fusion-power-cell.png",
        subgroup = "chemical",
        order = "a[chemical]-g[fusion-power-cell]",
        inventory_move_sound = item_sounds.reactor_inventory_move,
        pick_sound = item_sounds.reactor_inventory_pickup,
        drop_sound = item_sounds.reactor_inventory_move,
        fuel_value = "20GJ",
        fuel_category = "fusion",
        stack_size = 50,
        weight = 20*kg
    },
    {
        type = "item",
        name = "fusion-reactor",
        icon = path_util.space_age_path.."graphics/icons/fusion-reactor.png",
        subgroup = "energy",
        order = "g[fusion-energy]-a[reactor]",
        inventory_move_sound = item_sounds.reactor_inventory_move,
        pick_sound = item_sounds.reactor_inventory_pickup,
        drop_sound = item_sounds.reactor_inventory_move,
        place_result = "fusion-reactor",
        weight = 1 * tons,
        stack_size = 1,
    },
    {
        type = "item",
        name = "fusion-generator",
        icon = path_util.space_age_path.."graphics/icons/fusion-generator.png",
        subgroup = "energy",
        order = "g[fusion-energy]-b[generator]",
        inventory_move_sound = item_sounds.reactor_inventory_move,
        pick_sound = item_sounds.reactor_inventory_pickup,
        drop_sound = item_sounds.reactor_inventory_move,
        place_result = "fusion-generator",
        weight = 200 * kg,
        stack_size = 5,
    },
})
