local constants = require("prototypes.constants")

local circuit_connector = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 0, main_offset = util.by_pixel(5, -32), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -32), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, 2), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, 2), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
})

data:extend({
  {
    type = "recipe",
    name = "duct-curve",
    energy_required = 2.0,
    enabled = false,
    ingredients = { { type = "item", name = "iron-plate", amount = 8 } },
    results = { { type = "item", name = "duct-curve", amount = 1 } },
    category = "crafting",
  },
  {
    type = "item",
    name = "duct-curve",
    icon = "__FluidMustFlow__/graphics/icons/buildings/duct-curve.png",
    place_result = "duct-curve",
    subgroup = "energy-pipe-distribution",
    order = "d[pipe]-f[duct-curve]",
    stack_size = 50,
  },
  {
    type = "storage-tank",
    name = "duct-curve",
    icon = "__FluidMustFlow__/graphics/icons/buildings/duct-curve.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "duct-curve" },
    fast_replaceable_group = "ducts",
    max_health = 400,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.99, -0.99 }, { 0.79, 0.79 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    fluid_box = {
      volume = constants.volume / 4,
      pipe_covers = nil,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -0.5 } },
        { direction = defines.direction.west, connection_category = "ducts", position = { -0.5, 0 } },
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
              filename = "__FluidMustFlow__/graphics/buildings/duct-corner/duct-corner-up-left.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct-corner/duct-corner-up-left-shadow.png",
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
              filename = "__FluidMustFlow__/graphics/buildings/duct-corner/duct-corner-up-right.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct-corner/duct-corner-up-right-shadow.png",
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
              filename = "__FluidMustFlow__/graphics/buildings/duct-corner/duct-corner-down-right.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct-corner/duct-corner-down-right-shadow.png",
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
              filename = "__FluidMustFlow__/graphics/buildings/duct-corner/duct-corner-down-left.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/buildings/duct-corner/duct-corner-down-left-shadow.png",
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
    circuit_connector = circuit_connector,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
