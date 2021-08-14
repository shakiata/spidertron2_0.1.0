--item.lua
local spidertron2 = table.deepcopy(data.raw["spider-vehicle"]["spidertron"])


spidertron2.name = "spidertron-placed"
spidertron2.icons = {
    {
        icon = spidertron2.icon,
        tint = {r=1,g=0.5,b=1,a=0.3}
    },
}
local spidertron2e = table.deepcopy(data.raw["item-with-entity-data"]["spidertron"])

spidertron2e.name = "spidertron-placed"

spidertron2e.equipment_grid = "large-equipment-grid"

spidertron2.place_result = "spidertron-placed"


local recipe = table.deepcopy(data.raw["recipe"]["spidertron"])

recipe.enabled = true
recipe.name = "spidertron-2"
    recipe.ingredients = {
    {"exoskeleton-equipment", 8},
    {"fusion-reactor-equipment", 4},
    {"rocket-launcher", 4},
    {"rocket-control-unit", 26},
    {"low-density-structure", 250},
    {"radar", 2},
    {"effectivity-module-3", 2},
    {"raw-fish", 25}
}

recipe.result = "spidertron-placed"

data:extend{spidertron2,recipe,spidertron2e,item}
