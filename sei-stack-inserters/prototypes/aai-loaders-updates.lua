if not mods["aai-loaders"] then return end

if settings.startup["aai-loaders-belt-stacking-mode"] and settings.startup["aai-loaders-belt-stacking-mode"].value ~= "off" then return end

if settings.startup["sei-add-stacking-to-aai-loaders"].value and not (settings.startup["aai-loaders-mode"].value == "graphics-only") then
    for k,v in pairs(data.raw["loader-1x1"]) do
        if k:find("aai-") == 1 then
            v.max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
            v.adjustable_belt_stack_size = true
            v.wait_for_full_stack = settings.startup["sei-loaders-wait-for-full-stack"].value
        end
    end

    if settings.startup["sei-loaders-wait-for-full-stack"].value then
        data.raw["utility-constants"]["default"].minimum_recipe_overload_multiplier = data.raw["utility-constants"]["default"].max_belt_stack_size
    end
end
