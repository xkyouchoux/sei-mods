require("prototypes.um-standalone-space-age-lib-final-fixes")

local data_util = require("__sei-library__.data_util")

local split = data_util.string_split(spoilage_string or "", ',')

SEI_FORCE_SPOILAGE = settings.startup["sei-library-force-spoilage"].value
SEI_SPOILAGE_ENABLED = SEI_FORCE_SPOILAGE or SEI_SPACE_AGE

for _,v in pairs(split) do
    if settings.startup[v] and settings.startup[v].value then
        SEI_SPOILAGE_ENABLED = true
    end
end

require("prototypes.spoilage-final-fixes")