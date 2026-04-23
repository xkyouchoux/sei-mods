if SEI_SPACE_AGE then return end

circuit_connector_definitions["foundry"] = circuit_connector_definitions.create_vector
(
    universal_connector_template,
    {
        { variation = 27, main_offset = util.by_pixel(15, -50.5), shadow_offset = util.by_pixel(115, 32), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel(15, -50.5), shadow_offset = util.by_pixel(115, 32), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel(15, -50.5), shadow_offset = util.by_pixel(115, 32), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel(15, -50.5), shadow_offset = util.by_pixel(115, 32), show_shadow = false }
    }
)

circuit_connector_definitions["biochamber"] = circuit_connector_definitions.create_vector
(
    universal_connector_template,
    {
        { variation = 17, main_offset = util.by_pixel( -37, 24), shadow_offset = util.by_pixel( -29, 28), show_shadow = false },
        { variation = 17, main_offset = util.by_pixel( -37, 24), shadow_offset = util.by_pixel( -29, 28), show_shadow = false },
        { variation = 17, main_offset = util.by_pixel( -37, 24), shadow_offset = util.by_pixel( -29, 28), show_shadow = false },
        { variation = 17, main_offset = util.by_pixel( -37, 24), shadow_offset = util.by_pixel( -29, 28), show_shadow = false },
    }
)

circuit_connector_definitions["electromagnetic-plant"] = circuit_connector_definitions.create_vector
(
    universal_connector_template,
    {
        { variation = 7, main_offset = util.by_pixel(-27, 53), shadow_offset = util.by_pixel(-18, 55), show_shadow = false },
        { variation = 7, main_offset = util.by_pixel(-27, 53), shadow_offset = util.by_pixel(-18, 55), show_shadow = false },
        { variation = 7, main_offset = util.by_pixel(-27, 53), shadow_offset = util.by_pixel(-18, 55), show_shadow = false },
        { variation = 7, main_offset = util.by_pixel(-27, 53), shadow_offset = util.by_pixel(-18, 55), show_shadow = false }
    }
)

circuit_connector_definitions["cryogenic-plant"] = circuit_connector_definitions.create_vector
(
    universal_connector_template,
    {
        { variation = 33, main_offset = util.by_pixel(20, 5), shadow_offset = util.by_pixel(66, 45), show_shadow = false },
        { variation = 33, main_offset = util.by_pixel(20, 5), shadow_offset = util.by_pixel(66, 45), show_shadow = false },
        { variation = 33, main_offset = util.by_pixel(20, 5), shadow_offset = util.by_pixel(66, 45), show_shadow = false },
        { variation = 33, main_offset = util.by_pixel(20, 5), shadow_offset = util.by_pixel(66, 45), show_shadow = false }
    }
)

circuit_connector_definitions["big-mining-drill"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 0, main_offset = util.by_pixel( 73, -58), shadow_offset = util.by_pixel(112, -23), show_shadow = true },
    { variation = 6, main_offset = util.by_pixel( 50.5, 19.5), shadow_offset = util.by_pixel( 77.5, 52.5), show_shadow = false },
    { variation = 4, main_offset = util.by_pixel(-72, 8), shadow_offset = util.by_pixel(-33, 52), show_shadow = false },
    { variation = 2, main_offset = util.by_pixel(-50.5, 12), shadow_offset = util.by_pixel(-33.5, 42), show_shadow = false }
  }
)

circuit_connector_definitions["heating-tower"] = circuit_connector_definitions.create_single
(
    universal_connector_template,
    { variation = 30, main_offset = util.by_pixel(-12, 17), shadow_offset = util.by_pixel(10, 30), show_shadow = false }
)

circuit_connector_definitions["rocket-turret"] = circuit_connector_definitions.create_vector -- TurretPrototype takes vector
(
    universal_connector_template,
    {
        { variation = 17, main_offset = util.by_pixel( -18, 13), shadow_offset = util.by_pixel( -12, 25), show_shadow = false }
    }
)

circuit_connector_definitions["tesla-turret"] = circuit_connector_definitions["rocket-turret"]

circuit_connector_definitions["agricultural-tower"] = circuit_connector_definitions.create_single
(
    universal_connector_template,
    { variation = 30, main_offset = util.by_pixel(-7, 12), shadow_offset = util.by_pixel(-7, 12), show_shadow = true }
)
