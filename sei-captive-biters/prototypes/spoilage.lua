local data_util = require("__sei-library__.data_util")

if settings.startup["sei-captive-biters-enable-biter-egg-spoil"].value or SEI_FORCE_SPOILAGE then
    data_util.conditional_modify({
        type = "item",
        name = "captive-biter-spawner",
        spoil_ticks = 1 * hour,
        spoil_to_trigger_result =
        {
            items_per_trigger = 1,
            trigger =
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    source_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "behemoth-biter",
                            affects_target = true,
                            show_in_tooltip = true,
                            as_enemy = true,
                            find_non_colliding_position = true,
                            offset_deviation = {{-1, -1}, {1, 1}},
                            non_colliding_fail_result =
                            {
                                type = "direct",
                                action_delivery =
                                {
                                    type = "instant",
                                    source_effects =
                                    {
                                        {
                                            type = "create-entity",
                                            entity_name = "behemoth-biter",
                                            affects_target = true,
                                            show_in_tooltip = false,
                                            as_enemy = true,
                                            offset_deviation = {{-1, -1}, {1, 1}},
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    })

    data_util.conditional_modify({
        type = "item",
        name = "biter-egg",
        spoil_ticks = 1 * hour,
        spoil_to_trigger_result =
        {
            items_per_trigger = 10,
            trigger =
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    source_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "big-biter",
                            affects_target = true,
                            show_in_tooltip = true,
                            as_enemy = true,
                            find_non_colliding_position = true,
                            abort_if_over_space = true,
                            offset_deviation = {{-1, -1}, {1, 1}},
                            non_colliding_fail_result =
                            {
                                type = "direct",
                                action_delivery =
                                {
                                    type = "instant",
                                    source_effects =
                                    {
                                        {
                                            type = "create-entity",
                                            entity_name = "big-biter",
                                            affects_target = true,
                                            show_in_tooltip = false,
                                            as_enemy = true,
                                            offset_deviation = {{-1, -1}, {1, 1}},
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    })
end


if settings.startup["sei-captive-biters-enable-spoilage"].value or SEI_FORCE_SPOILAGE then
    data_util.conditional_modify({
        type = "capsule",
        name = "bioflux",
        spoil_ticks = 2 * hour,
        spoil_result = "spoilage",
    })
end
