require("prototypes.entity.entities")
require("prototypes.entity.explosions")
require("prototypes.entity.remnants")
require("prototypes.utility-sprites")
require("prototypes.categories.fuel-category")
require("prototypes.categories.recipe-category")
require("prototypes.fluid")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

local data_util = require("__sei-library__.data_util")

for _, connection in pairs(data.raw["infinity-pipe"]["infinity-pipe"].fluid_box.pipe_connections) do
    if connection.connection_category then
        table.insert(connection.connection_category, "fusion-plasma") 
    end
end

data_util.add_categories_to_machines({"cryogenic-cooling"}, {"cryogenic-plant"})
