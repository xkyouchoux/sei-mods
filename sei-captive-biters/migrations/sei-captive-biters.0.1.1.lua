for _,force in pairs(game.forces) do
    if force.technologies["se-space-catalogue-biological-1"].researched then
        force.technologies["captivity"].researched = true
    end
end