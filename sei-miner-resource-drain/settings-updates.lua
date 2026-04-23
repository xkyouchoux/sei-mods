if mods["Krastorio2"] then
    data.raw["int-setting"]["sei-kr-electric-mining-drill-mk2-resource-drain-rate"].hidden = false
    data.raw["int-setting"]["sei-kr-electric-mining-drill-mk3-resource-drain-rate"].hidden = false
end

if mods["um-standalone-big-mining-drill"] or mods["space-age"] then
    data.raw["int-setting"]["sei-big-mining-drill-resource-drain-rate"].hidden = false
end

if mods["aai-industry"] then
    data.raw["int-setting"]["sei-area-mining-drill-resource-drain-rate"].hidden = false
end
