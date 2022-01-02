local simulations = require("prototypes.simulations")

data:extend({
  { type = "tips-and-tricks-item-category", name = "fluid-must-flow", order = "l-[fluid-must-flow]" },
  {
    type = "tips-and-tricks-item",
    name = "fmf-introduction",
    category = "fluid-must-flow",
    order = "a",
    is_title = true,
    trigger = {
      type = "research",
      technology = "Ducts",
    },
    simulation = simulations.introduction,
  },
  {
    type = "tips-and-tricks-item",
    name = "fmf-auto-join",
    category = "fluid-must-flow",
    order = "b",
    indent = 1,
    trigger = {
      type = "build-entity",
      build_by_dragging = false,
      entity = "duct-small",
      count = 1,
    },
    skip_trigger = {
      type = "build-entity",
      build_in_line = true,
      build_by_dragging = true,
      consecutive = true,
      entity = "duct-small",
      count = 2,
    },
    dependencies = { "fmf-introduction" },
    simulation = simulations.auto_join,
  },
})
