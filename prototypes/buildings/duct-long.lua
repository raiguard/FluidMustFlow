local constants = require("prototypes.constants")

data:extend({
  {
    type = "storage-tank",
    name = "duct-long",
    icon = "__FluidMustFlow__/graphics/icons/buildings/duct-long.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "duct-long" },
    fast_replaceable_group = "ducts",
    max_health = 1600,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.79, -1.99 }, { 0.79, 1.99 } },
    selection_box = { { -1, -2 }, { 1, 2 } },
    fluid_box = {
      volume = constants.volume,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -1.5 } },
        { direction = defines.direction.south, connection_category = "ducts", position = { 0, 1.5 } },
      },
      hide_connection_info = true,
      max_pipeline_extent = constants.extent,
    },
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = 360,
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/buildings/duct-long/duct-long-horizontal.png",
              height = 360,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct-long/duct-long-horizontal-shadow.png",
              height = 360,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/buildings/duct-long/duct-long-vertical.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 512,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct-long/duct-long-vertical-shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 512,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/buildings/duct-long/duct-long-horizontal.png",
              height = 360,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct-long/duct-long-horizontal-shadow.png",
              height = 360,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/buildings/duct-long/duct-long-vertical.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 512,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct-long/duct-long-vertical-shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 512,
            },
          },
        },
      },
      gas_flow = util.empty_sprite(),
      fluid_background = util.empty_sprite(),
      window_background = util.empty_sprite(),
      flow_sprite = util.empty_sprite(),
    },
    working_sound = {
      sound = { { filename = "__base__/sound/pipe.ogg", volume = 0.25 } },
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_connector = constants.duct_circuit_connector,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
