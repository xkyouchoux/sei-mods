local data_util = require('__sei-library__.data_util')

data.raw["reactor"]["heating-tower"].energy_source.effectivity = settings.startup["sei-heating-tower-effectivity"].value

sei_fuel_categories = sei_fuel_categories or {}
for k,v in pairs({
    ["nutrients"] = true,
    ["food"] = true,
    ["processed-chemical"] = true,
    ["kr-vehicle-fuel"] = true,
}) do
    if sei_fuel_categories[k] == nil or sei_fuel_categories[k] then sei_fuel_categories[k] = v end
end

for k,v in pairs(sei_fuel_categories) do
    if k and type(k) == "string" and v == true then
        if data.raw["fuel-category"][k] and not data_util.table_contains(data.raw["reactor"]["heating-tower"].energy_source.fuel_categories, k) then
            table.insert(data.raw["reactor"]["heating-tower"].energy_source.fuel_categories, k)
        end 
    end 
end
