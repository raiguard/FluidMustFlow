local constants = require("prototypes.constants")

local circuit_connector = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 26, main_offset = util.by_pixel(0, -3), shadow_offset = util.by_pixel(2, -3), show_shadow = true },
  { variation = 26, main_offset = util.by_pixel(0, 0), shadow_offset = util.by_pixel(2, 0), show_shadow = true },
  { variation = 2, main_offset = util.by_pixel(0, 3), shadow_offset = util.by_pixel(2, 3), show_shadow = true },
  { variation = 26, main_offset = util.by_pixel(0, 0), shadow_offset = util.by_pixel(2, 0), show_shadow = true },
})

data:extend({
  {
    type = "recipe",
    name = "duct-intake",
    enabled = false,
    category = "crafting",
    energy_required = 2.0,
    ingredients = {
      { type = "item", name = "engine-unit", amount = 6 },
      { type = "item", name = "pipe", amount = 6 },
      { type = "item", name = "steel-plate", amount = 6 },
    },
    results = { { type = "item", name = "duct-intake", amount = 1 } },
  },
  {
    type = "item",
    name = "duct-intake",
    icon = "__FluidMustFlow__/graphics/icons/buildings/duct-intake.png",
    subgroup = "ducts",
    order = "d[pipe]-i[duct-intake]",
    place_result = "duct-intake",
    stack_size = 10,
  },
  {
    type = "pump",
    name = "duct-intake",
    icon = "__FluidMustFlow__/graphics/icons/buildings/duct-end-point.png",
    flags = { "placeable-neutral", "player-creation" },
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    minable = { mining_time = 0.4, result = "duct-intake" },
    fast_replaceable_group = "duct-end-points",
    heating_energy = feature_flags.freezing and "100kW" or nil,
    pumping_speed = 120,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW",
    },
    energy_usage = "180kW", -- base 30 x4
    fluid_box = {
      volume = constants.volume * 2,
      pipe_covers = pipecoverspictures(),
      pipe_picture = {
        north = util.empty_sprite(),
        east = util.empty_sprite(),
        south = {
          filename = "__FluidMustFlow__/graphics/buildings/pipe-straight-vertical.png",
          priority = "extra-high",
          width = 45,
          height = 40,
          scale = 0.5,
          shift = { 0, 0.5 },
        },
        west = util.empty_sprite(),
      },
      pipe_connections = {
        {
          direction = defines.direction.north,
          position = { 0, -0.5 },
          flow_direction = "output",
          connection_category = "ducts",
        },
        {
          direction = defines.direction.east,
          position = { 0.5, -0.5 },
          flow_direction = "input",
        },
        {
          direction = defines.direction.east,
          position = { 0.5, 0.5 },
          flow_direction = "input",
        },
        {
          direction = defines.direction.south,
          position = { 0.5, 0.5 },
          flow_direction = "input",
        },
        {
          direction = defines.direction.south,
          position = { -0.5, 0.5 },
          flow_direction = "input",
        },
        {
          direction = defines.direction.west,
          position = { -0.5, -0.5 },
          flow_direction = "input",
        },
        {
          direction = defines.direction.west,
          position = { -0.5, 0.5 },
          flow_direction = "input",
        },
      },
      secondary_draw_orders = { north = -1 },
      max_pipeline_extent = constants.extent,
    },
    max_health = 800,
    resistances = data.raw["pump"]["pump"].resistances,
    corpse = "small-remnants",
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations = {
      north = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/buildings/duct-intake/duct-intake-down.png",
            frame_count = 8,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/buildings/duct-end-points-down-shadow.png",
            frame_count = 8,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
      east = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/buildings/duct-intake/duct-intake-left.png",
            frame_count = 8,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/buildings/duct-end-points-left-shadow.png",
            frame_count = 8,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
      south = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/buildings/duct-intake/duct-intake-up.png",
            frame_count = 8,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/buildings/duct-end-points-up-shadow.png",
            frame_count = 8,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
      west = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/buildings/duct-intake/duct-intake-right.png",
            frame_count = 8,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/buildings/duct-end-points-right-shadow.png",
            frame_count = 8,
            height = 256,
            line_length = 4,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
    },
    fluid_wagon_connector_frame_count = 0,
    circuit_connector = circuit_connector,
    circuit_wire_max_distance = data.raw["storage-tank"]["storage-tank"].circuit_wire_max_distance,
  },
})
