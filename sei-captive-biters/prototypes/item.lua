local path_util = require("__sei-library__.path_util")
local data_util = require("__sei-library__.data_util")

local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__sei-library__.prototypes.item_sounds")

data:extend({
    {
        type = "capsule",
        name = "bioflux",
        localised_name = {"item-name.bioflux"},
        localised_description = {"item-description.bioflux"},
        icon = path_util.space_age_path.."graphics/icons/bioflux.png",
        subgroup = "chemical",
        order = "a[organic-processing]-a[bioflux]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "food",
        fuel_value = "6MJ",
        stack_size = 100,
        weight = 1 * kg,
        capsule_action = {
            attack_parameters = {
                ammo_category = "capsule",
                ammo_type = {
                action = {
                    action_delivery = {
                    target_effects = {
                        damage = {
                        amount = 5,
                        type = "poison"
                        },
                        type = "damage"
                    },
                    type = "instant"
                    },
                    type = "direct"
                },
                category = "capsule",
                target_type = "position"
                },
                cooldown = 1,
                range = 0,
                type = "projectile"
            },
        type = "use-on-self"
        },
    },
    {
        type = "item",
        name = "captive-biter-spawner",
        icon = path_util.space_age_path.."graphics/icons/captive-biter-spawner.png",
        subgroup = "chemistry",
        order = "z-c-biter-nest",
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        place_result = "captive-biter-spawner",
        stack_size = 1,
    },
    {
        type = "ammo",
        name = "capture-robot-rocket",
        icon = path_util.space_age_path.."graphics/icons/capture-bot.png",
        ammo_category = "capture-rocket",
        ammo_type =
        {
        action =
        {
            type = "direct",
            action_delivery =
            {
            type = "projectile",
            projectile = "capture-robot-rocket",
            starting_speed = 0.1
            }
        },
        target_filter = {"biter-spawner", "spitter-spawner"}
        },
        subgroup = "ammo",
        order = "d[rocket-launcher]-d[capture]",
        inventory_move_sound = item_sounds.robotic_inventory_move,
        pick_sound = item_sounds.robotic_inventory_pickup,
        drop_sound = item_sounds.robotic_inventory_move,
        stack_size = 10,
        weight = 100 * kg,
        shoot_protected = true
    },
    {
        type = "item",
        name = "biter-egg",
        icon = path_util.space_age_path.."graphics/icons/biter-egg.png",
        pictures =
        {
        { size = 64, filename = path_util.space_age_path.."graphics/icons/biter-egg.png", scale = 0.5, mipmap_count = 4 },
        { size = 64, filename = path_util.space_age_path.."graphics/icons/biter-egg-1.png", scale = 0.5, mipmap_count = 4 },
        { size = 64, filename = path_util.space_age_path.."graphics/icons/biter-egg-2.png", scale = 0.5, mipmap_count = 4 },
        { size = 64, filename = path_util.space_age_path.."graphics/icons/biter-egg-3.png", scale = 0.5, mipmap_count = 4 },
        },
        fuel_category = "chemical",
        fuel_value = "6MJ",
        subgroup = "agriculture-products",
        order = "c[eggs]-a[biter-egg]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 100,
        weight = 2 * kg,
    },
})
