scoreboard objectives add recipe-submarine trigger
scoreboard players enable @a recipe-submarine

tellraw @a[scores={recipe-submarine=1..}] {"text":"[Submarine Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"Top Speed: 10 BPS","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"Limit: 1 Vehicle","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"Instruction Manual: /trigger manual-submarine set PAGE_NUMBER","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"EPILEPSY WARNING: FLASHING SCREEN MAY TRIGGER SEIZURES DURING FLIGHT","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-submarine=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-submarine=1..}] [{"text":"Iron Block      ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Copper Ingot   ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Iron Block","color":"gold"}]
tellraw @a[scores={recipe-submarine=1..}] [{"text":"Copper Ingot   ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Horse Armor   ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Copper Ingot","color":"gold"}]
tellraw @a[scores={recipe-submarine=1..}] [{"text":"Polished Diorite","color":"gold"},{"text":" | ","color":"gold"},{"text":"Polished Diorite","color":"gold"},{"text":" | ","color":"gold"},{"text":"Polished Diorite","color":"gold"}]

scoreboard players set @a recipe-submarine 0