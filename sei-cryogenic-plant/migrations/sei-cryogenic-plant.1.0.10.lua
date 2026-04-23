for _,force in pairs(game.forces) do
    if settings.startup["sei-cryogenic-plant-required-for-progression"].value and force.technologies["se-processing-cryonite"].researched then
        force.technologies["cryogenic-plant"].researched = true
    end
end