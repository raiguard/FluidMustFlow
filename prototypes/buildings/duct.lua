local constants = require("prototypes.constants")

data:extend({
  {
    type = "storage-tank",
    name = "duct",
    icon = "__FluidMustFlow__/graphics/icons/buildings/duct.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "duct" },
    fast_replaceable_group = "ducts",
    max_health = 800,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.79, -0.99 }, { 0.79, 0.99 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    fluid_box = {
      volume = constants.volume / 2,
      pipe_covers = nil,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -0.5 } },
        { direction = defines.direction.south, connection_category = "ducts", position = { 0, 0.5 } },
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
              filename = "__FluidMustFlow__/graphics/buildings/duct/duct-horizontal.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct/duct-horizontal-shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/buildings/duct/duct-vertical.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct/duct-vertical-shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/buildings/duct/duct-horizontal.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct/duct-horizontal-shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/buildings/duct/duct-vertical.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct/duct-vertical-shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
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
