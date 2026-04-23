for _,force in pairs(game.forces) do
    if force.technologies["spidertron"].researched then
        force.technologies["rocket-turret"].researched = true
    end
    if force.technologies["stronger-explosives-7"].researched then
        force.technologies["rocket-turret"].researched = true
    end
end