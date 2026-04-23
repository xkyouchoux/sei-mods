sei_capture_robot_categories = sei_capture_robot_categories or {}

for _,type in pairs({"gun", "ammo-turret"}) do 
    for _,prototype in pairs(data.raw[type]) do
        local attack_parameters = prototype.attack_parameters
        if attack_parameters and attack_parameters.type == "projectile" then
            local add_category = false
            if sei_capture_robot_categories[attack_parameters.ammo_category] then
                add_category = true
            end
            if attack_parameters.ammo_categories then
                for _,category in pairs(attack_parameters.ammo_categories) do
                    if sei_capture_robot_categories[category] then
                        add_category = true
                        break
                    end
                end
            end
            if add_category then
                local categories = attack_parameters.ammo_categories or {}
                if attack_parameters.ammo_category then
                    table.insert(categories, attack_parameters.ammo_category)
                end
                table.insert(categories, "capture-rocket")
                attack_parameters.ammo_category = nil
                attack_parameters.ammo_categories = categories
            end
        end
    end
end
