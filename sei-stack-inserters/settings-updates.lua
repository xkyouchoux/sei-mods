if mods["aai-loaders"] then
    data.raw["bool-setting"]["sei-add-stacking-to-aai-loaders"].hidden = false
    data.raw["bool-setting"]["sei-loaders-wait-for-full-stack"].hidden = false
end

if mods["Krastorio2"] then
    data.raw["bool-setting"]["sei-add-stacking-to-kr-electric-mining-drill-mk2"].hidden = false
    data.raw["bool-setting"]["sei-add-stacking-to-kr-electric-mining-drill-mk3"].hidden = false
    data.raw["bool-setting"]["sei-add-stacking-to-kr-loaders"].hidden = false
    data.raw["bool-setting"]["sei-add-stacking-to-kr-inserters"].hidden = false
    data.raw["bool-setting"]["sei-loaders-wait-for-full-stack"].hidden = false
end
