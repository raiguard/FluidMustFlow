-- -- Apply compatibility scripts (data stage)
----------------------------------------------------------
require("compatibility-scripts/data-final-fixes/IndustrialRevolution")
----------------------------------------------------------

-- TEMPORARY: Print prototype results to get rid of linver-lib
local entities = {
  ["duct-cross"] = "storage-tank",
  ["duct-small"] = "storage-tank",
  ["duct-underground"] = "pipe-to-ground",
  ["duct"] = "storage-tank",
  ["duct-long"] = "storage-tank",
  ["duct-t-junction"] = "storage-tank",
  ["duct-curve"] = "storage-tank",
}

for entity_name, entity_type in pairs(entities) do
  local prototype = data.raw[entity_type][entity_name]
  if not prototype then
    log(entity_type)
    log(entity_name)
    error("YOU FOOL")
  end

  log(serpent.block(table.deepcopy(prototype)))
end
