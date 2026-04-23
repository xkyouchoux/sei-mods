if not SEI_SPOILAGE_ENABLED then return end

--added from space exploration
se_delivery_cannon_recipes["spoilage"] = {name = "spoilage"}

if SEI_SPACE_AGE then return end

local path_util = require("__sei-library__.path_util")
local data_util = require("__sei-library__.data_util")
local space_age_item_sounds = require("__sei-library__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

data:extend({
    {
        type = "item",
        name = "spoilage",
        icon = path_util.space_age_path.."graphics/icons/spoilage.png",
        pictures =
        {
            { size = 64, filename = path_util.space_age_path.."graphics/icons/spoilage.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/spoilage-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/spoilage-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/spoilage-3.png", scale = 0.5, mipmap_count = 4 },
        },
        fuel_value = "250kJ",
        fuel_category = "chemical",
        fuel_acceleration_multiplier = 0.5,
        fuel_top_speed_multiplier = 0.5,
        subgroup = "agriculture-processes",
        order = "c[nutrients]-a[spoilage]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 200,
        weight = 0.5 * kg,
        random_tint_color = item_tints.organic_green,
        spoil_level = 1,
    },
    {
        type = "recipe",
        name = "spoilage-reprocessing",
        icons = data_util.sub_icons(data.raw.item["se-vitamelange-nugget"].icon, path_util.space_age_path.."graphics/icons/spoilage.png"),
        category = "space-biochemical",
        enabled = false,
        energy_required = 3,
        auto_recycle = false,
        allow_productivity = true,
        ingredients =
        {
            {type = "item", name = "spoilage", amount = 20},
            {type = "fluid", name = "se-bio-sludge", amount = 1}
        },
        results = {{type="item", name="se-vitamelange-nugget", amount=4}},
        crafting_machine_tint =
        {
            primary = {r = 0.1, g = 0.9, b = 0.1, a = 1.000},
            secondary = {r = 0, g = 0.5, b = 0, a = 1.000},
        },
    },
})

local bio_sludge_from_spoilage_recipe = table.deepcopy(data.raw["recipe"]["se-bio-sludge-from-wood"])
bio_sludge_from_spoilage_recipe.name = "se-bio-sludge-from-spoilage"
bio_sludge_from_spoilage_recipe.localised_name = {"recipe-name.se-bio-sludge-from-spoilage"}
bio_sludge_from_spoilage_recipe.localised_description = data.raw["recipe"]["se-bio-sludge-from-wood"].localised_description
bio_sludge_from_spoilage_recipe.ingredients[1] = {type = "item", name = "spoilage", amount = 10}
bio_sludge_from_spoilage_recipe.icons[2].icon = data.raw["item"]["spoilage"].icon

data:extend({bio_sludge_from_spoilage_recipe})

data_util.recipe_require_tech("spoilage-reprocessing", "se-processing-vitamelange")
data_util.recipe_require_tech("se-bio-sludge-from-spoilage", "se-space-growth-facility")

if mods["Krastorio2"] then
    data:extend({
        {
            type = "recipe",
            name = "coke-from-spoilage",
            icons = data_util.sub_icons(data.raw.item["kr-coke"].icon, data.raw.item["spoilage"]),
            category = "kiln",
            order = data.raw.item["kr-coke"].order .. "-spoilage",
            enabled = false,
            energy_required = 16,
            auto_recycle = false,
            allow_productivity = true,
            ingredients =
            {
                {type = "item", name = "wood", amount = 6},
                {type = "item", name = "spoilage", amount = 6}
            },
            results = {{type="item", name="kr-coke", amount=6}},
        },
    })

    data_util.recipe_require_tech("coke-from-spoilage", "se-processing-vitamelange")
end