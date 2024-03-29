local intake_connector_def = circuit_connector_definitions.create(universal_connector_template, {
  { variation = 26, main_offset = util.by_pixel(0, -3), shadow_offset = util.by_pixel(2, -3), show_shadow = true },
  { variation = 26, main_offset = util.by_pixel(0, 0), shadow_offset = util.by_pixel(2, 0), show_shadow = true },
  { variation = 2, main_offset = util.by_pixel(0, 3), shadow_offset = util.by_pixel(2, 3), show_shadow = true },
  { variation = 26, main_offset = util.by_pixel(0, 0), shadow_offset = util.by_pixel(2, 0), show_shadow = true },
})

local outtake_connector_def = circuit_connector_definitions.create(universal_connector_template, {
  { variation = 2, main_offset = util.by_pixel(0, 3), shadow_offset = util.by_pixel(2, 3), show_shadow = true },
  { variation = 26, main_offset = util.by_pixel(0, 0), shadow_offset = util.by_pixel(2, 0), show_shadow = true },
  { variation = 26, main_offset = util.by_pixel(0, -3), shadow_offset = util.by_pixel(2, -3), show_shadow = true },
  { variation = 26, main_offset = util.by_pixel(0, 0), shadow_offset = util.by_pixel(2, 0), show_shadow = true },
})

data:extend({
  {
    type = "pump",
    name = "duct-end-point-intake",
    fast_replace_group = "duct-end-points",
    next_upgrade = nil,
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-end-point.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.4, result = "duct-end-point-intake" },
    max_health = 800,
    resistances = data.raw["pump"]["pump"].resistances,
    corpse = "small-remnants",
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    fluid_box = {
      base_area = BASE_AREA / 4,
      height = HEIGHT,
      base_level = 0,
      pipe_covers = pipecoverspictures(),
      pipe_picture = {
        north = util.empty_sprite(),
        east = util.empty_sprite(),
        south = {
          filename = "__FluidMustFlow__/graphics/entity/other/pipe-straight-vertical.png",
          priority = "extra-high",
          width = 23,
          height = 20,
          scale = 1,
          shift = { 0, 0.5 },
          hr_version = {
            filename = "__FluidMustFlow__/graphics/entity/other/hr_pipe-straight-vertical.png",
            priority = "extra-high",
            width = 45,
            height = 40,
            scale = 0.5,
            shift = { 0, 0.5 },
          },
        },
        west = util.empty_sprite(),
      },
      pipe_connections = {
        { position = { 0.5, 1.5 }, type = "input" },
        { position = { -0.5, 1.5 }, type = "input" },
        { position = { 0, -1.5 }, type = "output" },
        { position = { 1.5, -0.5 }, type = "input" },
        { position = { 1.5, 0.5 }, type = "input" },
        { position = { -1.5, -0.5 }, type = "input" },
        { position = { -1.5, 0.5 }, type = "input" },
      },
      secondary_draw_orders = { north = -1 },
    },
    animations = {
      north = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_intake/duct_end_point_intake_down.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_intake/hr_duct_end_point_intake_down.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_points_down_shadow.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/hr_duct_end_points_down_shadow.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
      east = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_intake/duct_end_point_intake_left.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_intake/hr_duct_end_point_intake_left.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_points_left_shadow.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/hr_duct_end_points_left_shadow.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
      south = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_intake/duct_end_point_intake_up.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_intake/hr_duct_end_point_intake_up.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_points_up_shadow.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/hr_duct_end_points_up_shadow.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
      west = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_intake/duct_end_point_intake_right.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_intake/hr_duct_end_point_intake_right.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_points_right_shadow.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/hr_duct_end_points_right_shadow.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
    },
    fluid_wagon_connector_frame_count = 0,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW",
    },
    energy_usage = "180kW", -- base 30 x4
    pumping_speed = 1200,
    circuit_wire_connection_points = intake_connector_def.points,
    circuit_connector_sprites = intake_connector_def.sprites,
    circuit_wire_max_distance = data.raw["storage-tank"]["storage-tank"].circuit_wire_max_distance,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  },
  {
    type = "pump",
    name = "duct-end-point-outtake",
    fast_replace_group = "duct-end-points",
    next_upgrade = nil,
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-end-point.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.4, result = "duct-end-point-outtake" },
    max_health = 800,
    resistances = data.raw["pump"]["pump"].resistances,
    corpse = "small-remnants",
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    fluid_box = {
      base_area = BASE_AREA / 4,
      height = HEIGHT,
      base_level = 0,
      pipe_covers = pipecoverspictures(),
      pipe_picture = {
        north = util.empty_sprite(),
        east = util.empty_sprite(),
        south = {
          filename = "__FluidMustFlow__/graphics/entity/other/pipe-straight-vertical.png",
          priority = "extra-high",
          width = 23,
          height = 20,
          scale = 1,
          shift = { 0, 0.5 },
          hr_version = {
            filename = "__FluidMustFlow__/graphics/entity/other/hr_pipe-straight-vertical.png",
            priority = "extra-high",
            width = 45,
            height = 40,
            scale = 0.5,
            shift = { 0, 0.5 },
          },
        },
        west = util.empty_sprite(),
      },
      pipe_connections = {
        { position = { 0.5, -1.5 }, type = "output" },
        { position = { -0.5, -1.5 }, type = "output" },
        { position = { 0, 1.5 }, type = "input" },
        { position = { 1.5, -0.5 }, type = "output" },
        { position = { 1.5, 0.5 }, type = "output" },
        { position = { -1.5, -0.5 }, type = "output" },
        { position = { -1.5, 0.5 }, type = "output" },
      },
      secondary_draw_orders = { north = -1 },
    },
    animations = {
      north = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_outtake/duct_end_point_outtake_up.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_outtake/hr_duct_end_point_outtake_up.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_points_up_shadow.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/hr_duct_end_points_up_shadow.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
      east = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_outtake/duct_end_point_outtake_right.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_outtake/hr_duct_end_point_outtake_right.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_points_right_shadow.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/hr_duct_end_points_right_shadow.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
      south = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_outtake/duct_end_point_outtake_down.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_outtake/hr_duct_end_point_outtake_down.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_points_down_shadow.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/hr_duct_end_points_down_shadow.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
      west = {
        layers = {
          {
            animation_speed = 0.8,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_outtake/duct_end_point_outtake_left.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_point_outtake/hr_duct_end_point_outtake_left.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            animation_speed = 0.8,
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/duct_end_points_left_shadow.png",
            frame_count = 8,
            height = 128,
            hr_version = {
              animation_speed = 0.8,
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/ducts_end_points/hr_duct_end_points_left_shadow.png",
              frame_count = 8,
              height = 256,
              line_length = 4,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            line_length = 4,
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
    },
    fluid_wagon_connector_frame_count = 0,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW",
    },
    energy_usage = "180kW", -- base 30 x4
    pumping_speed = 1200,
    circuit_wire_connection_points = outtake_connector_def.points,
    circuit_connector_sprites = outtake_connector_def.sprites,
    circuit_wire_max_distance = data.raw["storage-tank"]["storage-tank"].circuit_wire_max_distance,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  },
})
