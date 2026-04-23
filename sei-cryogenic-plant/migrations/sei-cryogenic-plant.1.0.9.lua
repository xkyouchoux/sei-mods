for _,force in pairs(game.forces) do
    if force.technologies["kr-advanced-chemical-plant"] and force.technologies["kr-advanced-chemical-plant"].researched then
        force.technologies["cryogenic-plant"].researched = true
    end
end