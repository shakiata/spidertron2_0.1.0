--item.lua
local spidertron2 = table.deepcopy(data.raw["spider-vehicle"]["spidertron"]) --vehicle

local spidertron2e = table.deepcopy(data.raw["item-with-entity-data"]["spidertron"]) --invintory

spidertron2e.name = "spidertron-placed" 
spidertron2e.icons = {
    {
        icon = spidertron2e.icon,
        tint = {r=0,g=1,b=1,a=0.3}
    },
}

spidertron2.name = "spidertron-placed"

spidertron2.equipment_grid = "large-equipment-grid"

spidertron2e.place_result = "spidertron-placed"


local recipe = table.deepcopy(data.raw["recipe"]["spidertron"])
-- copies recipe and changes it for the new one.... This actually works 
recipe.enabled = true
recipe.name = "spidertron-placed"
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
