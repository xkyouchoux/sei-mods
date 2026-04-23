if not mods["aai-industry"] then return end

if data.raw["mining-drill"]["area-mining-drill"] then
    data.raw["mining-drill"]["area-mining-drill"].resource_drain_rate_percent = settings.startup["sei-area-mining-drill-resource-drain-rate"].value
end
