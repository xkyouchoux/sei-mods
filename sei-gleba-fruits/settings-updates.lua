data.raw["string-setting"]["sei-library-spoilage"].default_value = data.raw["string-setting"]["sei-library-spoilage"].default_value .. "," .. "sei-gleba-fruits-enable-spoilage"
data.raw["string-setting"]["sei-library-spoilage"].allowed_values = {data.raw["string-setting"]["sei-library-spoilage"].default_value}

data.raw["bool-setting"]["sei-captive-biters-enable-spoilage"].hidden = true
data.raw["bool-setting"]["sei-captive-biters-enable-spoilage"].forced_value = false