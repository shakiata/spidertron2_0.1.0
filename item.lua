--item.lua
local spidertron2 = table.deepcopy(data.raw["spider-vehicle"]["spidertron"]) --vehicle

local spidertron2e = table.deepcopy(data.raw["item-with-entity-data"]["spidertron"]) --invintory
data:extend(
    {
        {
            type = "equipment-grid",
            name = "extra-large-equipment-grid",
            width = 20,
            height = 20,
            equipment_categories = {"armor"}
        }
    }
)

spidertron2e.name = "spidertron-placed" 
spidertron2e.icons = {
    {
        icon = spidertron2e.icon,
        tint = {r=0,g=1,b=1,a=0.3}
    },
}
spidertron2.minable.results = {
    {
        type = "item",
        name = "spidertron-placed",
        amount_min = 1,
        amount_max = 1
    }
}
spidertron2.max_health = 6000
spidertron2.inventory_size = 150
spidertron2.weight = 0.25
spidertron2.friction_force = 0.25
spidertron2.chunk_exploration_radius = 6
spidertron2.inventory_size = 150
spidertron2.name = "spidertron-placed"
spidertron2.equipment_grid = "extra-large-equipment-grid"
spidertron2e.place_result = "spidertron-placed"


local recipe = table.deepcopy(data.raw["recipe"]["spidertron"])
-- copies recipe and changes it for the new one.... This actually works 
recipe.enabled = true
recipe.name = "spidertron-placed"
    recipe.ingredients = {
    {"exoskeleton-equipment", 16},
    {"fusion-reactor-equipment", 8},
    {"rocket-launcher", 4},
    {"rocket-control-unit", 25},
    {"low-density-structure", 250},
    {"radar", 2},
    {"effectivity-module-3", 2},
    {"raw-fish", 25}
}

recipe.result = "spidertron-placed"

data:extend{spidertron2,recipe,spidertron2e,item}
