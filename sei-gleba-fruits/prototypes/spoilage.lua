if not (settings.startup["sei-gleba-fruits-enable-spoilage"].value or SEI_FORCE_SPOILAGE) then return end

local data_util = require("__sei-library__.data_util")

data_util.conditional_modify{
    type = "capsule",
    name = "yumako",
    spoil_ticks = 60 * minute,
    spoil_result = "spoilage",
}

data_util.conditional_modify{
    type = "capsule",
    name = "jellynut",
    spoil_ticks = 60 * minute,
    spoil_result = "spoilage",
}

data_util.conditional_modify{
    type = "capsule",
    name = "yumako-mash",
    spoil_ticks = 3 * minute,
    spoil_result = "spoilage",
}

data_util.conditional_modify{
    type = "capsule",
    name = "jelly",
    spoil_ticks = 4 * minute,
    spoil_result = "spoilage",
}

data_util.conditional_modify{
    type = "capsule",
    name = "bioflux",
    spoil_ticks = 2 * hour,
    spoil_result = "spoilage",
}
