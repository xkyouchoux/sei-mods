local Util = require("__space-exploration__.data_util")

function Util.remove_category_from_machines(category, machines)
    for _,machine in pairs(machines) do
        if data.raw["assembling-machine"][machine] then
            Util.remove_from_table(data.raw["assembling-machine"][machine].crafting_categories, category)
        end
    end
end

function Util.add_additional_category_to_recipes(category, recipes)
    if not (category and data.raw["recipe-category"][category]) then return end
    for _,name in pairs(recipes) do
        local recipe = data.raw["recipe"][name]
        if recipe then
            local additional_categories = recipe.additional_categories or {}
            if not Util.table_contains(additional_categories, category) then
                table.insert(additional_categories, category)
            end
            recipe.additional_categories = additional_categories
        end
    end
end

function Util.add_categories_to_machines(categories, machines)
    for _,name in pairs(machines) do
        if data.raw["assembling-machine"][name] then
            machine = data.raw["assembling-machine"][name]
            for _,category in pairs(categories) do
                if not Util.table_contains(machine.crafting_categories, category) then
                    table.insert(machine.crafting_categories, category)
                end
            end
        end
    end
end

function Util.add_categories_to_machines_with_category(categories, category_to_match)
    for _,machine in pairs(data.raw["assembling-machine"]) do
        if Util.table_contains(machine.crafting_categories, category_to_match) then
            Util.add_categories_to_machines(categories, {machine.name})
        end
    end
end

function Util.add_categories_to_character(categories)
    for _,category in pairs(categories) do
        if not Util.table_contains(data.raw.character.character.crafting_categories, category) then
            table.insert(data.raw.character.character.crafting_categories, category)
        end
    end
end

function Util.add_categories_to_god_controller(categories)
    for _,category in pairs(categories) do
        if not Util.table_contains(data.raw["god-controller"].default.crafting_categories) then
            table.insert(data.raw["god-controller"].default.crafting_categories, category)
        end
    end
end

function Util.set_category_for_recipes(category, recipes)
    for _,recipe in pairs(recipes) do
        if data.raw.recipe[recipe] then data.raw.recipe[recipe].category = category end
    end
end

function Util.get_glass()
    return mods["Krastorio2"] and "kr-glass" or "glass"
end

function Util.get_sand()
    return mods["Krastorio2"] and "kr-sand" or "sand"
end

function Util.add_recipes_to_recipe_productivity(recipe_to_match, recipes)
    for _,tech in pairs(data.raw["technology"]) do
        if tech.effects then
            for _,effect in pairs(tech.effects) do
                if effect.type == "change-recipe-productivity" and effect.recipe == recipe_to_match then
                    for _,recipe in pairs(recipes) do
                        if data.raw["recipe"][recipe] then
                            table.insert(tech.effects, {
                            type = "change-recipe-productivity",
                            recipe = recipe,
                            change = effect.change,
                        })
                        end
                    end
                    break
                end
            end
        end
    end
end

return Util