if not mods["Krastorio2"] then return end

local data_util = require("__sei-library__.data_util")

if settings.startup["sei-add-stacking-to-kr-loaders"].value and settings.startup["kr-loaders"].value then
    for k,v in pairs(data.raw["loader-1x1"]) do
        if k:find("kr-") == 1 then
            v.max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
            v.adjustable_belt_stack_size = true
            v.wait_for_full_stack = settings.startup["sei-loaders-wait-for-full-stack"].value
        end
    end

    if settings.startup["sei-loaders-wait-for-full-stack"].value then
        data.raw["utility-constants"]["default"].minimum_recipe_overload_multiplier = data.raw["utility-constants"]["default"].max_belt_stack_size
    end
end

if settings.startup["sei-add-stacking-to-kr-inserters"].value then
    data_util.tech_remove_prerequisites("kr-superior-inserters", {"bulk-inserter"})
    data_util.tech_add_prerequisites("kr-superior-inserters", {"stack-inserter"})

    data_util.conditional_modify({
        type = "inserter",
        name = "kr-superior-inserter",
        wait_for_full_stack = true,
        wait_for_full_hand = true,
        max_belt_stack_size = 4,
        stack_size_bonus = 4,
        energy_per_movement = "53kJ",
        energy_per_rotation = "53kJ",
    })
    data_util.conditional_modify({
        type = "inserter",
        name = "kr-superior-long-inserter",
        wait_for_full_stack = true,
        wait_for_full_hand = true,
        max_belt_stack_size = 4,
        stack_size_bonus = 4,
        energy_per_movement = "59kJ",
        energy_per_rotation = "59kJ",
    })
end
