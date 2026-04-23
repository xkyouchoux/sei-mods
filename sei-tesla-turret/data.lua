require("prototypes.active-triggers")
require("prototypes.entity.turrets")
require("prototypes.entity.remnants")
require("prototypes.entity.beams")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

require("prototypes.compat.Krastorio2")

local data_util = require("__sei-library__.data_util")

if settings.startup["sei-tesla-turret-replace-tesla-gun-beam"].value then
    data.raw["gun"]["se-tesla-gun"].attack_parameters = {
        type = "beam",
        ammo_category = Shared.tesla_ammo_category,
        cooldown = 30,
        movement_slow_down_factor = 0.25,
        source_offset = {0.1, -0.75},
        source_direction_count = 8,
        range = 30
    }
    data.raw["ammo"]["se-tesla-ammo"].ammo_type = {
        target_type = "entity",
        action =
        {
            type = "direct",
            action_delivery =
            {
            type = "instant",
            target_effects =
            {
                -- Chain effect must go first in case the beam kills the target
                {
                type = "nested-result",
                action =
                {
                    type = "direct",
                    action_delivery =
                    {
                    type = "chain",
                    chain = "chain-tesla-gun-chain",
                    }
                }
                },
                {
                type = "nested-result",
                action =
                {
                    type = "direct",
                    action_delivery =
                    {
                    type = "beam",
                    beam = "chain-tesla-gun-beam-start",
                    source_offset = {0, -1.31439 },
                    max_length = 30,
                    duration = 30,
                    add_to_shooter = false,
                    destroy_with_source_or_target = false
                    }
                }
                }
            }
            }
        }
    }
end
