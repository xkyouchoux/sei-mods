local path_util = require("__sei-library__.path_util")
local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "captive-biter-spawner",
        category = "space-growth",
        energy_required = 10,
        reset_freshness_on_craft = true,
        ingredients = {
            {type = "item", name = "biter-egg", amount = 10},
            {type = "item", name = "capture-robot-rocket", amount = 1},
            {type = "item", name = "se-self-sealing-gel", amount = 15},
            {type = "fluid", name = "se-space-coolant-supercooled", amount = 100},
        },
        results = {{type="item", name="captive-biter-spawner", amount=1}},
        enabled = false
    },
    {
        type = "recipe",
        name = "bioflux",
        icon = path_util.space_age_path.."graphics/icons/bioflux.png",
        category = "chemistry",
        additional_categories = mods["sei-biochamber"] and {"organic"} or nil,
        enabled = false,
        allow_productivity = true,
        energy_required = 6,
        auto_recycle = false,
        ingredients =
        {
            {type = "item", name = "se-vitamelange-bloom", amount = 7},
            {type = "item", name = "se-vitamelange-nugget", amount = 12},
            {type = "fluid", name = "se-bio-sludge", amount = 5}
        },
        results = {{type="item", name="bioflux", amount=4}},
        crafting_machine_tint =
        {
            primary = {r = 0.3, g = 0.9, b = 0.8, a = 1.000},
            secondary = {r = 0.8, g = 0.5, b = 0.3, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "capture-robot-rocket",
        category = "crafting",
        energy_required = 10,
        ingredients = {
            {type = "item", name = "flying-robot-frame", amount = 1},
            {type = "item", name = "steel-plate", amount = 2},
            {type = "item", name = "bioflux", amount = 20},
            {type = "item", name = "processing-unit", amount = 2},
        },
        results = {{type="item", name="capture-robot-rocket", amount=1}},
        enabled = false
    },
    {
        type = "recipe",
        name = "biter-egg",
        icon = path_util.space_age_path.."graphics/icons/biter-egg.png",
        category = "captive-spawner-process",
        hide_from_player_crafting = true,
        auto_recycle = false,
        preserve_products_in_machine_output = true,
        energy_required = 10,
        ingredients = {},
        results =
        {
            {type = "item", name = "biter-egg", amount = 5}
        },
        enabled = false
    },
})

data_util.make_recipe({
    name = "se-bio-sludge-from-biter-egg",
    ingredients = {
        { type = "item", name = "biter-egg", amount = 1},
        { type = "fluid", name = "se-space-water", amount = 10 },
    },
    results = {
        { type = "fluid", name = "se-bio-sludge", amount = 10 },
    },
    icons = {
        { icon = data.raw.fluid["se-bio-sludge"].icon, scale = 0.5, icon_size = 64  },
        { icon = data.raw.item["biter-egg"].icon, scale = 0.375, icon_size = 64  },
    },
    crafting_machine_tint = require("__space-exploration__.prototypes.recipe-tints").bio_sludge_tint,
    energy_required = 10,
    category = "space-biochemical",
    enabled = false,
    subgroup = "sludge",
    order = "a[sludge]-a[bio-sludge]-c[bio-slidge]",
    always_show_made_in = true,
    hide_from_signal_gui = false,
})

data_util.make_recipe({
    name = "se-nutrient-gel-biter-egg",
    localised_name = {"fluid-name.se-nutrient-gel"},
    ingredients = {
        { type = "item", name = "biter-egg", amount = 10},
        { type = "fluid", name = "se-chemical-gel", amount = 5},
        { type = "fluid", name = "se-bio-sludge", amount = 10},
        { type = "fluid", name = "se-space-water", amount = 25},
    },
    results = {
        { type = "fluid", name = "se-nutrient-gel", amount = 50},
    },
    icons = data_util.sub_icons(data.raw.fluid["se-nutrient-gel"].icon,
                                data.raw.item["biter-egg"].icon),
    crafting_machine_tint = require("__space-exploration__.prototypes.recipe-tints").nutrient_tint,
    energy_required = 10,
    category = "space-biochemical",
    subgroup = "gel",
    order = "a[gel]-b[nutrient-gel]-b[nutrient-gel]",
    enabled = false,
    always_show_made_in = true,
    hide_from_signal_gui = false,
})
