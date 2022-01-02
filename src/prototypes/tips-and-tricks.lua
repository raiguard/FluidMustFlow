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
})
