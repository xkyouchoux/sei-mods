local path_util = require("__sei-library__.path_util")

require ("__base__.prototypes.entity.pipecovers")
local animation_speed = 0.75
return
{
    graphics_set =
    {
        animation =
        {
        layers =
        {
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber",
            {
            animation_speed = animation_speed,
            frame_count = 1,
            repeat_count = 64,
            scale = 0.5,
            }),
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-animation",
            {
            animation_speed = animation_speed,
            frame_count = 64,
            scale = 0.5,
            }),
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-shadow",
            {
            draw_as_shadow = true,
            animation_speed = animation_speed,
            frame_count = 1,
            repeat_count = 64,
            scale = 0.5,
            })
        }
        },
        frozen_patch = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-frozen", {scale = 0.5}),
        working_visualisations =
        {
        {
            fadeout = true,
            animation = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-animation-dome",
            {
            animation_speed = animation_speed,
            frame_count = 64,
            scale = 0.5,
            }),
        },
        {
            animation = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-status-lamp",
            {
                priority = "extra-high",
                frame_count = 1,
                repeat_count = 64,
                animation_speed = animation_speed,
                blend_mode = "additive",
                draw_as_glow = true,
                scale = 0.5
            }
            )
        },
        {
            fadeout = true,
            apply_recipe_tint = "primary",
            effect = "flicker",
            animation = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-glow",
            {
                priority = "extra-high",
                frame_count = 64,
                animation_speed = animation_speed,
                blend_mode = "additive",
                draw_as_glow = true,
                scale = 0.5
            }
            )
        },
        {
            fadeout = true,
            apply_recipe_tint = "secondary",
            effect = "flicker",
            animation = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-glow-2",
            {
                priority = "extra-high",
                frame_count = 64,
                animation_speed = animation_speed,
                blend_mode = "additive",
                draw_as_glow = true,
                scale = 0.5
            }
            )
        },
        {
            effect = "flicker",
            fadeout = true,
            apply_recipe_tint = "primary",
            light = {intensity = 0.5, size = 17, shift = {-0.5, 0}, color = {r = 1, g = 1, b = 1}}
        }
        }
    },
    pipe_pictures_1 =
    {
        north =
        {
        layers = {
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-north-1",
            {
            scale = 0.5,
            shift = {1,2},
            }),
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-north-shadow",
            {
            draw_as_shadow = true,
            scale = 0.5,
            shift = {1,2}
            })
        }
        },
        east = {
        layers = {
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-east-1",
            {
            scale = 0.5,
            shift = {-2,1},
            }),
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-east-shadow",
            {
            draw_as_shadow = true,
            scale = 0.5,
            shift = {-2,1}
            })
        }
        },
        south = {
        layers = {
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-south-1",
            {
            scale = 0.5,
            shift = {-1,-2},
            }),
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-south-shadow",
            {
            draw_as_shadow = true,
            scale = 0.5,
            shift = {-1,-2}
            })
        }
        },
        west = {
        layers = {
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-west-1",
            {
            scale = 0.5,
            shift = {2,-1},
            })
        }
        }
    },
    pipe_pictures_1_frozen =
    {
        north = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-north-1-frozen",
        {
        scale = 0.5,
        shift = {1,2},
        }),
        east = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-east-1-frozen",
        {
        scale = 0.5,
        shift = {-2,1},
        }),
        south = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-south-1-frozen",
        {
        scale = 0.5,
        shift = {-1,-2},
        }),
        west = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-west-1-frozen",
        {
        scale = 0.5,
        shift = {2,-1},
        })
    },
    pipe_pictures_2 =
    {
        north =
        {
        layers = {
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-north-2",
            {
            scale = 0.5,
            shift = {-1,2},
            })
        }
        },
        east = {
        layers = {
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-east-2",
            {
            scale = 0.5,
            shift = {-2,-1},
            })
        }
        },
        south = {
        layers = {
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-south-2",
            {
            scale = 0.5,
            shift = {1,-2},
            }),
        }
        },
        west = {
        layers = {
            path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-west-2",
            {
            scale = 0.5,
            shift = {2,1},
            })
        }
        }
    },
    pipe_pictures_2_frozen =
    {
        north = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-north-2-frozen",
        {
        scale = 0.5,
        shift = {-1,2},
        }),
        east = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-east-2-frozen",
        {
        scale = 0.5,
        shift = {-2,-1},
        }),
        south = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-south-2-frozen",
        {
        scale = 0.5,
        shift = {1,-2},
        }),
        west = path_util.sa_sprite_load("__sei-biochamber__/graphics/entity/biochamber/biochamber-pipes-west-2-frozen",
        {
        scale = 0.5,
        shift = {2,1},
        })
    },
    light_flicker =
    {
        minimum_intensity = 0,
        maximum_intensity = 0,
        derivation_change_frequency = 0,
        derivation_change_deviation = 0.,
        border_fix_speed = 0,
        minimum_light_size = 0,
        light_intensity_to_size_coefficient = 0.0,
        color = {0, 0, 0, 1}
    }
}