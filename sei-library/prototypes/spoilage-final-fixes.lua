if SEI_SPACE_AGE then return end

for _,inserter in pairs(data.raw.inserter) do
    if inserter.wait_for_full_hand then inserter.enter_drop_mode_if_held_stack_spoiled = true end
end

--[[for _,recipe in pairs(data.raw.recipe) do
    for _,cannon in pairs({"se-delivery-cannon", "se-delivery-cannon-weapon"}) do
        for _,category in pairs(data.raw["assembling-machine"][cannon].crafting_categories) do
            if recipe.category == category then
                for _,ingredient in pairs(recipe.ingredients) do
                    if not (ingredient.name == "se-delivery-cannon-capsule" or ingredient.name == "se-delivery-cannon-weapon-capsule") then
                        local item = data.raw.item[ingredient.name]
                        if item and item.spoil_ticks and item.spoil_ticks > 0 then
                            data.raw.recipe[recipe.name] = nil
                            goto next_recipe
                        end
                        local capsule = data.raw.capsule[ingredient.name]
                        if capsule and capsule.spoil_ticks and capsule.spoil_ticks > 0 then
                            data.raw.recipe[recipe.name] = nil
                            goto next_recipe
                        end
                    end
                end
            end
        end
    end
    ::next_recipe::
end]]
