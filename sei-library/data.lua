SEI_SPACE_AGE = mods["space-age"] ~= nil

require("prototypes.particles")
require("prototypes.smoke")
require("prototypes.entity.circuit-network")
require("prototypes.item-groups")

-- Required to load space-travel feature flag without space age
if not data.raw.tile["empty-space"] then
    local empty_space = table.deepcopy(data.raw.tile["out-of-map"])
    empty_space.name = "empty-space"
    data:extend{empty_space}
end

local data_util = require("__sei-library__.data_util")

local spoilage_string = settings.startup["sei-library-spoilage"].value

local split = data_util.string_split(spoilage_string or "", ',')

SEI_FORCE_SPOILAGE = settings.startup["sei-library-force-spoilage"].value
SEI_SPOILAGE_ENABLED = SEI_FORCE_SPOILAGE or SEI_SPACE_AGE

for _,v in pairs(split) do
    if settings.startup[v] and settings.startup[v].value then
        SEI_SPOILAGE_ENABLED = true
    end
end

require("prototypes.spoilage")
