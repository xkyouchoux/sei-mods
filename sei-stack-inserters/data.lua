data.raw.item["stack-inserter"].order = "g[stack-inserter]"

data.raw.recipe["stack-inserter"].ingredients = {
    {type = "item", name = "low-density-structure", amount = 1},
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "processing-unit", amount = 1},
    {type = "item", name = "bulk-inserter", amount = 1},
}

data.raw.technology["stack-inserter"].prerequisites = {"utility-science-pack", "bulk-inserter"}
data.raw.technology["stack-inserter"].unit.count = 200
data.raw.technology["stack-inserter"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
}

data.raw.technology["transport-belt-capacity-1"].prerequisites = {"se-biological-science-pack-2", "stack-inserter"}
data.raw.technology["transport-belt-capacity-1"].unit.count = 250
data.raw.technology["transport-belt-capacity-1"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-biological-science-pack-2", 1},
}

data.raw.technology["transport-belt-capacity-2"].prerequisites = {"se-biological-science-pack-4", "transport-belt-capacity-1"}
data.raw.technology["transport-belt-capacity-2"].unit.count = 500
data.raw.technology["transport-belt-capacity-2"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-biological-science-pack-4", 1},
}

se_procedural_tech_exclusions = se_procedural_tech_exclusions or {}

table.insert(se_procedural_tech_exclusions, "transport-belt-capacity-1")
table.insert(se_procedural_tech_exclusions, "transport-belt-capacity-2")

data.raw["mining-drill"]["electric-mining-drill"].drops_full_belt_stacks = settings.startup["sei-add-stacking-to-electric-mining-drill"].value
data.raw["mining-drill"]["area-mining-drill"].drops_full_belt_stacks = settings.startup["sei-add-stacking-to-area-mining-drill"].value

require("prototypes.Krastorio2")