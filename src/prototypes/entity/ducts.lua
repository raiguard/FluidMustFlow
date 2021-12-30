local util = require("prototypes.util")

local fmf_icons_path = "__FluidMustFlow__/graphics/icon/entities/"

data:extend({
  {
    type = "storage-tank",
    name = "duct-small",
    icon = fmf_icons_path .. "duct-small.png",
    icon_size = 64,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.4, result = "duct-small" },
    fast_replaceable_group = "ducts",
    max_health = 400,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.77, -0.45 }, { 0.77, 0.45 } },
    selection_box = { { -1.2, -0.6 }, { 1.2, 0.6 } },
    fluid_box = {
      base_area = BASE_AREA / 4,
      height = HEIGHT,
      base_level = 0,
      pipe_covers = nil,
      pipe_connections = {
        { position = { -0, -1.1 }, max_underground_distance = 1 },
        { position = { 0, 1.1 }, max_underground_distance = 1 },
      },
    },
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = 360,
    pictures = {
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
      gas_flow = util.empty_sprite,
      fluid_background = util.empty_sprite,
      window_background = util.empty_sprite,
      flow_sprite = util.empty_sprite,
    },
    working_sound = {
      sound = { { filename = "__base__/sound/pipe.ogg", volume = 0.25 } },
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  },
})

-- underground duct
duct_underground = {
  type = "pipe-to-ground",
  name = "duct-underground",
  fast_replaceable_group = "ducts",
  icon = fmf_icons_path .. "duct-to-ground.png",
  icon_size = 64,
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 0.4, result = "duct-underground" },
  max_health = 200 * settings.startup["fmf-duct-health-multiplier"].value,
  corpse = "small-remnants",
  resistances = data.raw["pipe"]["pipe"].resistances,
  collision_box = { { -0.80, -0.95 }, { 0.63, 0.85 } },
  selection_box = { { -1.0, -1.2 }, { 1.1, 0.9 } },
  fluid_box = {
    base_area = BASE_AREA,
    height = HEIGHT,
    base_level = 0,
    pipe_covers = nil,
    pipe_connections = {
      { position = { 0, -1.6 }, max_underground_distance = 1 },
      {
        position = { 0, 0.9 },
        max_underground_distance = settings.startup["fmf-underground-duct-max-length"].value + 3, -- we shifted the positioning a bit so as not to collide with the 1 underground distance we use for 'regular' connections
      },
    },
  },
  underground_sprite = {
    filename = "__core__/graphics/arrows/underground-lines.png",
    priority = "high",
    width = 64,
    height = 64,
    scale = 0.5,
  },
  pictures = duct_underground_picture,
}

-- Duct
duct = util.table.deepcopy(duct_small)
duct.name = "duct"
duct.icon = fmf_icons_path .. "duct.png"
if settings.startup["fmf-enable-duct-auto-join"].value then
  duct.minable = { mining_time = 0.6, result = "duct-small", count = 2 }
  duct.placeable_by = { item = "duct-small", count = 2 }
else
  duct.minable = { mining_time = 0.6, result = "duct", count = 1 }
end

duct.max_health = duct.max_health * 2
-- boxes (collision, selection, fluid)
duct.collision_box = { { -0.77, -0.95 }, { 0.77, 0.95 } }
duct.selection_box = { { -1.1, -1.1 }, { 1.1, 1.1 } }
duct.fluid_box = {
  base_area = BASE_AREA / 2,
  height = HEIGHT,
  base_level = 0,
  pipe_covers = nil, -- for debug: pipecoverspictures()
  pipe_connections = {
    { position = { 0, -1.6 }, max_underground_distance = 1 },
    { position = { 0, 1.6 }, max_underground_distance = 1 },
  },
}
duct.pictures = {
  picture = duct_picture,
  gas_flow = util.empty_sprite,
  fluid_background = util.empty_sprite,
  window_background = util.empty_sprite,
  flow_sprite = util.empty_sprite,
}

-- Duct Long
duct_long = util.table.deepcopy(duct)
duct_long.name = "duct-long"
duct_long.icon = fmf_icons_path .. "duct-long.png"
if settings.startup["fmf-enable-duct-auto-join"].value then
  duct_long.minable = { mining_time = 0.8, result = "duct-small", count = 4 }
  duct_long.placeable_by = { item = "duct-small", count = 4 }
else
  duct_long.minable = { mining_time = 0.8, result = "duct-long", count = 1 }
end
duct_long.max_health = duct_long.max_health * 2
duct_long.collision_box = { { -0.77, -1.95 }, { 0.77, 1.95 } }
duct_long.selection_box = { { -1.1, -2.2 }, { 1.1, 2.2 } }
duct_long.fluid_box = {
  base_area = 2 * BASE_AREA,
  height = HEIGHT,
  base_level = 0,
  pipe_covers = nil, -- for debug pipecoverspictures()
  pipe_connections = {
    { position = { 0, -2.6 }, max_underground_distance = 1 },
    { position = { 0, 2.6 }, max_underground_distance = 1 },
  },
}
duct_long.pictures = {
  picture = duct_long_picture,
  gas_flow = util.empty_sprite,
  fluid_background = util.empty_sprite,
  window_background = util.empty_sprite,
  flow_sprite = util.empty_sprite,
}

-- Duct T junction
duct_t_junction = util.table.deepcopy(duct)
duct_t_junction.name = "duct-t-junction"
duct_t_junction.icon = fmf_icons_path .. "duct-t-junction.png"
duct_t_junction.minable = { mining_time = 0.4, result = "duct-t-junction" }
duct_t_junction.collision_box = { { -0.8, -0.9 }, { 0.8, 0.7 } }
duct_t_junction.fluid_box.pipe_connections = {
  { position = { 0, -1.6 }, max_underground_distance = 1 },
  { position = { 1.6, 0 }, max_underground_distance = 1 },
  { position = { -1.6, 0 }, max_underground_distance = 1 },
}
duct_t_junction.pictures = {
  picture = duct_t_junction_picture,
  gas_flow = util.empty_sprite,
  fluid_background = util.empty_sprite,
  window_background = util.empty_sprite,
  flow_sprite = util.empty_sprite,
}

-- Curved duct
duct_curve = util.table.deepcopy(duct_t_junction)
duct_curve.name = "duct-curve"
duct_curve.icon = fmf_icons_path .. "duct-curve.png"
duct_curve.minable.result = "duct-curve"
duct_curve.collision_box = { { -0.9, -0.9 }, { 0.75, 0.75 } }
duct_curve.fluid_box.pipe_connections = {
  { position = { 0, -1.6 }, max_underground_distance = 1 },
  { position = { -1.6, 0 }, max_underground_distance = 1 },
}
duct_curve.pictures = {
  picture = duct_curve_picture,
  gas_flow = util.empty_sprite,
  fluid_background = util.empty_sprite,
  window_background = util.empty_sprite,
  flow_sprite = util.empty_sprite,
}

-- Cross duct
duct_cross = util.table.deepcopy(duct_t_junction)
duct_cross.name = "duct-cross"
duct_cross.fast_replaceable_group = "ducts"
duct_cross.icon = fmf_icons_path .. "duct-cross.png"
duct_cross.minable.result = "duct-cross"
duct_cross.collision_box = { { -0.85, -0.85 }, { 0.85, 0.85 } }
duct_cross.fluid_box.pipe_connections = {
  { position = { 0, -1.6 }, max_underground_distance = 1 },
  { position = { 0, 1.6 }, max_underground_distance = 1 },
  { position = { 1.6, 0 }, max_underground_distance = 1 },
  { position = { -1.6, 0 }, max_underground_distance = 1 },
}
duct_cross.pictures = {
  picture = duct_cross_picture,
  gas_flow = util.empty_sprite,
  fluid_background = util.empty_sprite,
  window_background = util.empty_sprite,
  flow_sprite = util.empty_sprite,
}

-- Adding entities
data:extend({ duct_small, duct, duct_long, duct_t_junction, duct_curve, duct_cross, duct_underground })
