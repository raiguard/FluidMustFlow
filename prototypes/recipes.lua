data:extend({
  {
    type = "recipe",
    name = "duct-small",
    energy_required = 2.0,
    enabled = false,
    ingredients = { { type = "item", name = "iron-plate", amount = 4 } },
    results = { { type = "item", name = "duct-small", amount = 1 } },
    category = "crafting",
  },
  {
    type = "recipe",
    name = "duct-t-junction",
    energy_required = 2.0,
    enabled = false,
    ingredients = { { type = "item", name = "iron-plate", amount = 8 } },
    results = { { type = "item", name = "duct-t-junction", amount = 1 } },
    category = "crafting",
  },
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
    type = "recipe",
    name = "duct-cross",
    energy_required = 2.0,
    enabled = false,
    ingredients = { { type = "item", name = "iron-plate", amount = 8 } },
    results = { { type = "item", name = "duct-cross", amount = 1 } },
    category = "crafting",
  },
  {
    type = "recipe",
    name = "duct-underground",
    energy_required = 6.0,
    enabled = false,
    ingredients = { { type = "item", name = "iron-plate", amount = 60 } },
    results = { { type = "item", name = "duct-underground", amount = 2 } },
    category = "crafting",
  },
  {
    type = "recipe",
    name = "non-return-duct",
    energy_required = 2.0,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 8 },
      { type = "item", name = "iron-gear-wheel", amount = 4 },
    },
    results = { { type = "item", name = "non-return-duct", amount = 1 } },
    category = "crafting",
  },
  {
    type = "recipe",
    name = "duct-intake",
    energy_required = 2.0,
    enabled = false,
    ingredients = {
      { type = "item", name = "engine-unit", amount = 6 },
      { type = "item", name = "pipe", amount = 6 },
      { type = "item", name = "steel-plate", amount = 6 },
    },
    results = { { type = "item", name = "duct-intake", amount = 1 } },
    category = "crafting",
  },
  {
    type = "recipe",
    name = "duct-end-point-outtake",
    energy_required = 2.0,
    enabled = false,
    ingredients = {
      { type = "item", name = "engine-unit", amount = 6 },
      { type = "item", name = "pipe", amount = 6 },
      { type = "item", name = "steel-plate", amount = 6 },
    },
    results = { { type = "item", name = "duct-end-point-outtake", amount = 1 } },
    category = "crafting",
  },
})

if settings.startup["fmf-enable-duct-auto-join"].value then
  return
end

data:extend({
  {
    type = "recipe",
    name = "duct",
    energy_required = 2.0,
    enabled = false,
    ingredients = { { type = "item", name = "iron-plate", amount = 8 } },
    results = { { type = "item", name = "duct", amount = 1 } },
    category = "crafting",
  },
  {
    type = "recipe",
    name = "duct-long",
    energy_required = 2.0,
    enabled = false,
    ingredients = { { type = "item", name = "iron-plate", amount = 16 } },
    results = { { type = "item", name = "duct-long", amount = 1 } },
    category = "crafting",
  },
})
