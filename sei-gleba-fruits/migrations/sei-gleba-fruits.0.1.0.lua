for _,force in pairs(game.forces) do
    if force.technologies["captivity"].researched then
        force.technologies["fruits-processing"].researched = true
        force.technologies["agriculture"].researched = true
    end
    local carbon_fiber_techs = {
        "stack-inserter",
        "spidertron",
        "se-biogun",
        "se-bioscrubber"
    }
    for _,name in pairs(carbon_fiber_techs) do
        if force.technologies[name] and force.technologies[name].researched then
            force.technologies["carbon-fiber"].researched = true
        end
    end
end