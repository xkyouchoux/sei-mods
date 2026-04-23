if settings.startup["sei-add-stacking-to-kr-inserters"].value then
    for _,force in pairs(game.forces) do
        if force.technologies["kr-superior-inserters"] and force.technologies["kr-superior-inserters"].researched then
            force.technologies["stack-inserter"].researched = true
        end
    end
end