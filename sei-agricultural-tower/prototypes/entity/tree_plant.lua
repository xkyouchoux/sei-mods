local tree_plant = util.table.deepcopy(data.raw["tree"]["tree-08"])
tree_plant.type = "plant"
tree_plant.name = "tree-plant"
tree_plant.flags = plant_flags
tree_plant.hidden_in_factoriopedia = false
tree_plant.factoriopedia_alternative = nil
tree_plant.map_color = {0.19, 0.39, 0.19, 0.40}
tree_plant.agricultural_tower_tint =
{
    primary = {r = 0.7, g =  1.0, b = 0.2,a =  1},
    secondary = {r = 0.561, g = 0.613, b = 0.308, a = 1.000}, -- #8f4f4eff
}
tree_plant.minable =
{
    mining_particle = "wooden-particle",
    mining_time = 0.5,
    results = {{type = "item", name = "wood", amount = 4}},
}
tree_plant.variation_weights = { 1, 1, 1, 1, 1, 1, 1, 1, 0.3, 0.3, 0.0, 0.0}
tree_plant.growth_ticks = 10 * minute
tree_plant.autoplace =
{
    probability_expression = 0,
    -- required to show agricultural tower plots
    tile_restriction = {
      -- base
      "grass-1", "grass-2", "grass-3", "grass-4",
      "dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
      "red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3",
      -- alient-biomes
      --"vegetation-blue-grass-1", "vegetation-blue-grass-2",
      "vegetation-green-grass-1", "vegetation-green-grass-2", "vegetation-green-grass-3", "vegetation-green-grass-4",
      --"vegetation-mauve-grass-1", "vegetation-mauve-grass-2",
      "vegetation-olive-grass-1", "vegetation-olive-grass-2",
      "vegetation-orange-grass-1", "vegetation-orange-grass-2",
      --"vegetation-purple-grass-1", "vegetation-purple-grass-2",
      --"vegetation-red-grass-1", "vegetation-red-grass-2",
      "vegetation-turquoise-grass-1", "vegetation-turquoise-grass-2",
      --"vegetation-violet-grass-1", "vegetation-violet-grass-2",
      "vegetation-yellow-grass-1", "vegetation-yellow-grass-2",
      --"mineral-aubergine-dirt-1", "mineral-aubergine-dirt-2", "mineral-aubergine-dirt-3", "mineral-aubergine-dirt-4", "mineral-aubergine-dirt-5", "mineral-aubergine-dirt-6", 
      "mineral-beige-dirt-1", "mineral-beige-dirt-2", "mineral-beige-dirt-3", "mineral-beige-dirt-4", "mineral-beige-dirt-5", "mineral-beige-dirt-6", 
      --"mineral-black-dirt-1", "mineral-black-dirt-2", "mineral-black-dirt-3", "mineral-black-dirt-4", "mineral-black-dirt-5", "mineral-black-dirt-6", 
      "mineral-brown-dirt-1", "mineral-brown-dirt-2", "mineral-brown-dirt-3", "mineral-brown-dirt-4", "mineral-brown-dirt-5", "mineral-brown-dirt-6", 
      --"mineral-cream-dirt-1", "mineral-cream-dirt-2", "mineral-cream-dirt-3", "mineral-cream-dirt-4", "mineral-cream-dirt-5", "mineral-cream-dirt-6", 
      "mineral-dustyrose-dirt-1", "mineral-dustyrose-dirt-2", "mineral-dustyrose-dirt-3", "mineral-dustyrose-dirt-4", "mineral-dustyrose-dirt-5", "mineral-dustyrose-dirt-6", 
      --"mineral-grey-dirt-1", "mineral-grey-dirt-2", "mineral-grey-dirt-3", "mineral-grey-dirt-4", "mineral-grey-dirt-5", "mineral-grey-dirt-6", 
      --"mineral-purple-dirt-1", "mineral-purple-dirt-2", "mineral-purple-dirt-3", "mineral-purple-dirt-4", "mineral-purple-dirt-5", "mineral-purple-dirt-6", 
      --"mineral-red-dirt-1", "mineral-red-dirt-2", "mineral-red-dirt-3", "mineral-red-dirt-4", "mineral-red-dirt-5", "mineral-red-dirt-6", 
      "mineral-tan-dirt-1", "mineral-tan-dirt-2", "mineral-tan-dirt-3", "mineral-tan-dirt-4", "mineral-tan-dirt-5", "mineral-tan-dirt-6", 
      --"mineral-violet-dirt-1", "mineral-violet-dirt-2", "mineral-violet-dirt-3", "mineral-violet-dirt-4", "mineral-violet-dirt-5", "mineral-violet-dirt-6", 
      --"mineral-white-dirt-1", "mineral-white-dirt-2", "mineral-white-dirt-3", "mineral-white-dirt-4", "mineral-white-dirt-5", "mineral-white-dirt-6", 
    }
}

if settings.startup["sei-agricultural-tower-allow-landfill"].value then
    table.insert(tree_plant.autoplace.tile_restriction, "landfill")
end

data:extend({tree_plant})
