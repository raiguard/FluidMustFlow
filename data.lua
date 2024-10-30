require("prototypes.entities.duct-cross")
require("prototypes.entities.duct-curve")
require("prototypes.entities.duct-end-point-intake")
require("prototypes.entities.duct-end-point-outtake")
require("prototypes.entities.duct-long")
require("prototypes.entities.duct")
require("prototypes.entities.duct-small")
require("prototypes.entities.duct-t-junction")
require("prototypes.entities.duct-underground")
require("prototypes.entities.non-return-duct")

require("prototypes.items")
require("prototypes.recipes")
require("prototypes.technologies")
require("prototypes.tips-and-tricks")

-- Duct joining
if settings.startup["fmf-enable-duct-auto-join"].value then
  data.raw["storage-tank"]["duct"].minable = { mining_time = 0.8, result = "duct-small", count = 2 }
  data.raw["storage-tank"]["duct"].placeable_by = { item = "duct-small", count = 2 }
  data.raw["storage-tank"]["duct-long"].minable = { mining_time = 0.8, result = "duct-small", count = 4 }
  data.raw["storage-tank"]["duct-long"].placeable_by = { item = "duct-small", count = 4 }
end

require("prototypes.compatibility.bobsep")
require("prototypes.compatibility.space-exploration")
require("prototypes.compatibility.SqueakThrough")
