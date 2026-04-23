local Util = {}

Util.space_age_path = mods["space-age"] and "__space-age__/" or "__base__/../space-age/"

local function fix_path(path)
    local seperator_location = string.find(path, "/") + 1
    return Util.space_age_path..string.sub(path, seperator_location)
end

local function fix_filenames(table)
    if table.filename then
        table.filename = fix_path(table.filename)
    end
    if table.filenames then
        for i,_ in pairs(table.filenames) do
            table.filenames[i] = fix_path(table.filenames[i])
        end
    end
end

function Util.sa_sprite_load(path, table)
    sprite = util.sprite_load(path, table)
    fix_filenames(sprite)
    return sprite
end

function Util.sa_sound_variations(filename, variations, volume, modifiers)
    sounds = sound_variations(filename, variations, volume, modifiers)
    for _,sound in pairs(sounds) do
        sound.filename = Util.space_age_path..sound.filename
    end
    return sounds
end

function Util.sa_sound_variations_with_volume_variations(filename, variations, min_volume, max_volume, modifiers)
    sounds = sound_variations_with_volume_variations(filename, variations, min_volume, max_volume, modifiers)
    for _,sound in pairs(sounds) do
        sound.filename = Util.space_age_path..sound.filename
    end
    return sounds
end

return Util
