--item.lua
local spidertron2 = table.deepcopy(data.raw["spider-vehicle"]["spidertron"])

spidertron2.name = "spidertron-2"
spidertron2.icons = {
    {
        icon = spidertron2.icon,
        tint = {r=1,g=0.5,b=1,a=0.3}
    },
}
spidertron2.equipment_grid = "65"


local recipe = tabel.deepcopy(data.raw["recipe"]["spidertron"])
recipe.enabled = true
recipe.name = "Spidertron-2"
recipe.ingredients = {{"copper-plate",1000},{"steel-plate",750}{"raw-fish",50}{"roboport",10}}
recipe.result = "spidertron-2"

data:extend{spidertron2,recipe}
