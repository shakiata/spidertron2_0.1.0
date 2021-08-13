--item.lua
local spidertron2 = table.deepcopy(data.raw["spider-vehicle"]["spidertron"])

spidertron2.name = "spidertron2"
spidertron2.icons = {
    {
        icon = spidertron2.icon,
        tint = {r=1,g=0.5,b=1,a=0.3}
    },
}
spidertron2.equipment_grid = "large-equipment-grid"


local recipe = table.deepcopy(data.raw["recipe"]["spidertron"])

recipe.enabled = true
recipe.name = "spidertron2"
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

recipe.result = "spidertron2"

data:extend{spidertron2,recipe}
