local foo = {
  {
    collision_box = {
      {
        -0.85,
        -0.85,
      },
      {
        0.85,
        0.85,
      },
    },
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    fast_replaceable_group = "ducts",
    flags = {
      "placeable-player",
      "player-creation",
    },
    flow_length_in_ticks = 360,
    fluid_box = {
      base_area = 0.25,
      base_level = 0,
      height = 48,
      pipe_connections = {
        {
          max_underground_distance = 1,
          position = {
            0,
            -1.6000000000000001,
          },
        },
        {
          max_underground_distance = 1,
          position = {
            0,
            1.6000000000000001,
          },
        },
        {
          max_underground_distance = 1,
          position = {
            1.6000000000000001,
            0,
          },
        },
        {
          max_underground_distance = 1,
          position = {
            -1.6000000000000001,
            0,
          },
        },
      },
    },
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-cross.png",
    icon_size = 64,
    max_health = 800,
    minable = {
      mining_time = 0.4,
      result = "duct-cross",
    },
    name = "duct-cross",
    pictures = {
      flow_sprite = {
        filename = "__core__/graphics/empty.png",
        frame_count = 1,
        height = 1,
        priority = "extra-high",
        width = 1,
      },
      fluid_background = 0,
      gas_flow = 0,
      picture = {
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/duct_cross.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/duct_cross_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        north = 0,
        south = 0,
        west = 0,
      },
      window_background = 0,
    },
    placeable_by = {
      count = 2,
      item = "duct-small",
    },
    resistances = {
      {
        percent = 80,
        type = "fire",
      },
      {
        percent = 30,
        type = "impact",
      },
    },
    selection_box = {
      {
        -1.1000000000000001,
        -1.1000000000000001,
      },
      {
        1.1000000000000001,
        1.1000000000000001,
      },
    },
    type = "storage-tank",
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65,
    },
    window_bounding_box = {
      {
        0,
        0,
      },
      {
        0,
        0,
      },
    },
    working_sound = {
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.25,
        },
      },
    },
  },
  {
    collision_box = {
      {
        -0.77000000000000002,
        -0.45,
      },
      {
        0.77000000000000002,
        0.45,
      },
    },
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    fast_replaceable_group = "ducts",
    flags = {
      "placeable-player",
      "player-creation",
    },
    flow_length_in_ticks = 360,
    fluid_box = {
      base_area = 0.125,
      base_level = 0,
      height = 48,
      pipe_connections = {
        {
          max_underground_distance = 1,
          position = {
            -0,
            -1.1000000000000001,
          },
        },
        {
          max_underground_distance = 1,
          position = {
            0,
            1.1000000000000001,
          },
        },
      },
    },
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-small.png",
    icon_size = 64,
    max_health = 400,
    minable = {
      mining_time = 0.4,
      result = "duct-small",
    },
    name = "duct-small",
    pictures = {
      flow_sprite = {
        filename = "__core__/graphics/empty.png",
        frame_count = 1,
        height = 1,
        priority = "extra-high",
        width = 1,
      },
      fluid_background = 0,
      gas_flow = 0,
      picture = {
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/duct_small_straight_horizontal.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_horizontal.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 128,
              },
              priority = "high",
              scale = 1,
              width = 64,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/duct_small_straight_horizontal_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_horizontal_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = {
                  0.5,
                  0,
                },
                width = 128,
              },
              priority = "high",
              scale = 1,
              shift = {
                0.5,
                0,
              },
              width = 64,
            },
          },
        },
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/duct_small_straight_vertical.png",
              height = 80,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_vertical.png",
                height = 160,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/duct_small_straight_vertical_shadow.png",
              height = 80,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_vertical_shadow.png",
                height = 160,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        south = 0,
        west = 0,
      },
      window_background = 0,
    },
    resistances = {
      {
        percent = 80,
        type = "fire",
      },
      {
        percent = 30,
        type = "impact",
      },
    },
    selection_box = {
      {
        -1.2,
        -0.6,
      },
      {
        1.2,
        0.6,
      },
    },
    type = "storage-tank",
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65,
    },
    window_bounding_box = {
      {
        0,
        0,
      },
      {
        0,
        0,
      },
    },
    working_sound = {
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.25,
        },
      },
    },
  },
  {
    collision_box = {
      {
        -0.8,
        -0.95,
      },
      {
        0.62999999999999998,
        0.85,
      },
    },
    corpse = "small-remnants",
    fast_replaceable_group = "ducts",
    flags = {
      "placeable-neutral",
      "player-creation",
    },
    fluid_box = {
      base_area = 0.5,
      base_level = 0,
      height = 48,
      pipe_connections = {
        {
          max_underground_distance = 1,
          position = {
            0,
            -1.6000000000000001,
          },
        },
        {
          max_underground_distance = 33,
          position = {
            0,
            0.9,
          },
        },
      },
    },
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-to-ground.png",
    icon_size = 64,
    max_health = 800,
    minable = {
      mining_time = 0.4,
      result = "duct-underground",
    },
    name = "duct-underground",
    pictures = {
      down = {
        layers = {
          {
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_down.png",
            height = 128,
            hr_version = {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct_ground_down.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_down_shadow.png",
            height = 128,
            hr_version = {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct_ground_down_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
      left = {
        layers = {
          {
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct-ground-left.png",
            height = 128,
            hr_version = {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct-ground-left.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct-ground-left_shadow.png",
            height = 128,
            hr_version = {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct-ground-left_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
      right = {
        layers = {
          {
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_right.png",
            height = 128,
            hr_version = {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct_ground_right.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_right_shadow.png",
            height = 128,
            hr_version = {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct_ground_right_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
      up = {
        layers = {
          {
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct-ground-up.png",
            height = 128,
            hr_version = {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct-ground-up.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            priority = "high",
            scale = 1,
            width = 128,
          },
          {
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct-ground-up_shadow.png",
            height = 128,
            hr_version = {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct-ground-up_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            priority = "high",
            scale = 1,
            width = 128,
          },
        },
      },
    },
    resistances = {
      {
        percent = 80,
        type = "fire",
      },
      {
        percent = 30,
        type = "impact",
      },
    },
    selection_box = {
      {
        -1,
        -1.2,
      },
      {
        1.1000000000000001,
        0.9,
      },
    },
    type = "pipe-to-ground",
    underground_sprite = {
      filename = "__core__/graphics/arrows/underground-lines.png",
      height = 64,
      priority = "high",
      scale = 0.5,
      width = 64,
    },
  },
  {
    collision_box = {
      {
        -0.77000000000000002,
        -0.95,
      },
      {
        0.77000000000000002,
        0.95,
      },
    },
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    fast_replaceable_group = "ducts",
    flags = {
      "placeable-player",
      "player-creation",
    },
    flow_length_in_ticks = 360,
    fluid_box = {
      base_area = 0.25,
      base_level = 0,
      height = 48,
      pipe_connections = {
        {
          max_underground_distance = 1,
          position = {
            0,
            -1.6000000000000001,
          },
        },
        {
          max_underground_distance = 1,
          position = {
            0,
            1.6000000000000001,
          },
        },
      },
    },
    icon = "__FluidMustFlow__/graphics/icon/entities/duct.png",
    icon_size = 64,
    max_health = 800,
    minable = {
      count = 2,
      mining_time = 0.6,
      result = "duct-small",
    },
    name = "duct",
    pictures = {
      flow_sprite = {
        filename = "__core__/graphics/empty.png",
        frame_count = 1,
        height = 1,
        priority = "extra-high",
        width = 1,
      },
      fluid_background = 0,
      gas_flow = 0,
      picture = {
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/duct_vertical.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_vertical.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/duct_vertical_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_vertical_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/duct_horizontal.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_horizontal.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/duct_horizontal_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_horizontal_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        south = 0,
        west = 0,
      },
      window_background = 0,
    },
    placeable_by = {
      count = 2,
      item = "duct-small",
    },
    resistances = {
      {
        percent = 80,
        type = "fire",
      },
      {
        percent = 30,
        type = "impact",
      },
    },
    selection_box = {
      {
        -1.1000000000000001,
        -1.1000000000000001,
      },
      {
        1.1000000000000001,
        1.1000000000000001,
      },
    },
    type = "storage-tank",
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65,
    },
    window_bounding_box = {
      {
        0,
        0,
      },
      {
        0,
        0,
      },
    },
    working_sound = {
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.25,
        },
      },
    },
  },
  {
    collision_box = {
      {
        -0.77000000000000002,
        -1.95,
      },
      {
        0.77000000000000002,
        1.95,
      },
    },
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    fast_replaceable_group = "ducts",
    flags = {
      "placeable-player",
      "player-creation",
    },
    flow_length_in_ticks = 360,
    fluid_box = {
      base_area = 1,
      base_level = 0,
      height = 48,
      pipe_connections = {
        {
          max_underground_distance = 1,
          position = {
            0,
            -2.6000000000000001,
          },
        },
        {
          max_underground_distance = 1,
          position = {
            0,
            2.6000000000000001,
          },
        },
      },
    },
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-long.png",
    icon_size = 64,
    max_health = 1600,
    minable = {
      count = 4,
      mining_time = 0.8,
      result = "duct-small",
    },
    name = "duct-long",
    pictures = {
      flow_sprite = {
        filename = "__core__/graphics/empty.png",
        frame_count = 1,
        height = 1,
        priority = "extra-high",
        width = 1,
      },
      fluid_background = 0,
      gas_flow = 0,
      picture = {
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/duct_long_vertical.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_vertical.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 512,
              },
              priority = "high",
              scale = 1,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/duct_long_vertical_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_vertical_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 512,
              },
              priority = "high",
              scale = 1,
              width = 256,
            },
          },
        },
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/duct_long_horizontal.png",
              height = 180,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_horizontal.png",
                height = 360,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/duct_long_horizontal_shadow.png",
              height = 180,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_horizontal_shadow.png",
                height = 360,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        south = 0,
        west = 0,
      },
      window_background = 0,
    },
    placeable_by = {
      count = 4,
      item = "duct-small",
    },
    resistances = {
      {
        percent = 80,
        type = "fire",
      },
      {
        percent = 30,
        type = "impact",
      },
    },
    selection_box = {
      {
        -1.1000000000000001,
        -2.2000000000000002,
      },
      {
        1.1000000000000001,
        2.2000000000000002,
      },
    },
    type = "storage-tank",
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65,
    },
    window_bounding_box = {
      {
        0,
        0,
      },
      {
        0,
        0,
      },
    },
    working_sound = {
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.25,
        },
      },
    },
  },
  {
    collision_box = {
      {
        -0.8,
        -0.9,
      },
      {
        0.8,
        0.7,
      },
    },
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    fast_replaceable_group = "ducts",
    flags = {
      "placeable-player",
      "player-creation",
    },
    flow_length_in_ticks = 360,
    fluid_box = {
      base_area = 0.25,
      base_level = 0,
      height = 48,
      pipe_connections = {
        {
          max_underground_distance = 1,
          position = {
            0,
            -1.6000000000000001,
          },
        },
        {
          max_underground_distance = 1,
          position = {
            1.6000000000000001,
            0,
          },
        },
        {
          max_underground_distance = 1,
          position = {
            -1.6000000000000001,
            0,
          },
        },
      },
    },
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-t-junction.png",
    icon_size = 64,
    max_health = 800,
    minable = {
      mining_time = 0.4,
      result = "duct-t-junction",
    },
    name = "duct-t-junction",
    pictures = {
      flow_sprite = {
        filename = "__core__/graphics/empty.png",
        frame_count = 1,
        height = 1,
        priority = "extra-high",
        width = 1,
      },
      fluid_background = 0,
      gas_flow = 0,
      picture = {
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/duct_T_right.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_right.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/duct_T_right_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_right_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/duct_T_up.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_up.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/duct_T_up_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_up_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/duct_T_down.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_down.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/duct_T_down_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_down_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/duct_T_left.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_left.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/duct_T_left_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_left_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
      },
      window_background = 0,
    },
    placeable_by = {
      count = 2,
      item = "duct-small",
    },
    resistances = {
      {
        percent = 80,
        type = "fire",
      },
      {
        percent = 30,
        type = "impact",
      },
    },
    selection_box = {
      {
        -1.1000000000000001,
        -1.1000000000000001,
      },
      {
        1.1000000000000001,
        1.1000000000000001,
      },
    },
    type = "storage-tank",
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65,
    },
    window_bounding_box = {
      {
        0,
        0,
      },
      {
        0,
        0,
      },
    },
    working_sound = {
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.25,
        },
      },
    },
  },
  {
    collision_box = {
      {
        -0.9,
        -0.9,
      },
      {
        0.75,
        0.75,
      },
    },
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    fast_replaceable_group = "ducts",
    flags = {
      "placeable-player",
      "player-creation",
    },
    flow_length_in_ticks = 360,
    fluid_box = {
      base_area = 0.25,
      base_level = 0,
      height = 48,
      pipe_connections = {
        {
          max_underground_distance = 1,
          position = {
            0,
            -1.6000000000000001,
          },
        },
        {
          max_underground_distance = 1,
          position = {
            -1.6000000000000001,
            0,
          },
        },
      },
    },
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-curve.png",
    icon_size = 64,
    max_health = 800,
    minable = {
      mining_time = 0.4,
      result = "duct-curve",
    },
    name = "duct-curve",
    pictures = {
      flow_sprite = {
        filename = "__core__/graphics/empty.png",
        frame_count = 1,
        height = 1,
        priority = "extra-high",
        width = 1,
      },
      fluid_background = 0,
      gas_flow = 0,
      picture = {
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/duct_corner_up_right.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_up_right.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/duct_corner_up_right_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_up_right_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/duct_corner_up_left.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_up_left.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/duct_corner_up_left_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_up_left_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/duct_corner_down_right.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_down_right.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/duct_corner_down_right_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_down_right_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/duct_corner_down_left.png",
              height = 128,
              hr_version = {
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_down_left.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/duct_corner_down_left_shadow.png",
              height = 128,
              hr_version = {
                draw_as_shadow = true,
                filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_down_left_shadow.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                width = 256,
              },
              priority = "high",
              scale = 1,
              width = 128,
            },
          },
        },
      },
      window_background = 0,
    },
    placeable_by = {
      count = 2,
      item = "duct-small",
    },
    resistances = {
      {
        percent = 80,
        type = "fire",
      },
      {
        percent = 30,
        type = "impact",
      },
    },
    selection_box = {
      {
        -1.1000000000000001,
        -1.1000000000000001,
      },
      {
        1.1000000000000001,
        1.1000000000000001,
      },
    },
    type = "storage-tank",
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65,
    },
    window_bounding_box = {
      {
        0,
        0,
      },
      {
        0,
        0,
      },
    },
    working_sound = {
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.25,
        },
      },
    },
  },
}
