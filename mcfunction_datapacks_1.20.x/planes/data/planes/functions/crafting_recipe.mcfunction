scoreboard objectives add recipe-plane trigger
scoreboard players enable @a recipe-plane

tellraw @a[scores={recipe-plane=1..}] {"text":"[Propeller Plane Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-plane=1..}] {"text":"Top Speed: 40 BPS","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"Limit: 1 Vehicle","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"Instruction Manual: /trigger manual-plane set PAGE_NUMBER","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"EPILEPSY WARNING: FLASHING SCREEN MAY TRIGGER SEIZURES DURING FLIGHT","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-plane=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-plane=1..}] [{"text":"Iron Block   ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Redstone Block","color":"gold"},{"text":" | ","color":"gold"},{"text":"Iron Block","color":"gold"}]
tellraw @a[scores={recipe-plane=1..}] [{"text":"Copper Ingot","color":"gold"},{"text":" | ","color":"gold"},{"text":"Saddle          ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Copper Ingot","color":"gold"}]
tellraw @a[scores={recipe-plane=1..}] [{"text":"Copper Ingot","color":"gold"},{"text":" | ","color":"gold"},{"text":"Copper Ingot  ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Copper Ingot","color":"gold"}]

scoreboard players set @a recipe-plane 0