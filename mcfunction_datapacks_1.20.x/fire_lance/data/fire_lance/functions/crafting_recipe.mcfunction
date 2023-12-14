# Fire Lance Recipe
scoreboard objectives add recipe-fire_lance trigger
scoreboard players enable @a recipe-fire_lance
tellraw @a[scores={recipe-fire_lance=1..}] {"text":"[Fire Lance Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-fire_lance=1..}] {"text":"Ammo Type: Bullet","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-fire_lance=1..}] {"text":"Capacity: 1 Ammo ","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-fire_lance=1..}] {"text":"Reload: 30 Seconds","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-fire_lance=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-fire_lance=1..}] {"text":"EPILEPSY WARNING: FLASHING LIGHTS MAY TRIGGER SEIZURES DURING USE.","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-fire_lance=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-fire_lance=1..}] [{"text":"Iron Block   ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Copper Ingot","color":"gold"},{"text":" | ","color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={recipe-fire_lance=1..}] [{"text":"Copper Ingot","color":"gold"},{"text":" | ","color":"gold"},{"text":"Iron Block   ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Gold Ingot   ","color":"gold"}]
tellraw @a[scores={recipe-fire_lance=1..}] [{"text":"                 ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Gold Ingot   ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Lightning Rod","color":"gold"}]
scoreboard players set @a recipe-fire_lance 0

# Bullet Recipe
scoreboard objectives add recipe-bullet trigger
scoreboard players enable @a recipe-bullet
tellraw @a[scores={recipe-bullet=1..}] {"text":"[Bullet Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-bullet=1..}] {"text":"Ammo Type: Bullet","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-bullet=1..}] {"text":"Entity Damage: Medium","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-bullet=1..}] {"text":"Terrain Damage: None","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-bullet=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-bullet=1..}] {"text":"EPILEPSY WARNING: FLASHING LIGHTS MAY TRIGGER SEIZURES DURING USE.","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-bullet=1..}] {"text":"Shapeless Crafting:","color":"gold"}
tellraw @a[scores={recipe-bullet=1..}] [{"text":"Copper Ingot","color":"gold"}]
tellraw @a[scores={recipe-bullet=1..}] [{"text":"Firework Star","color":"gold"}]
tellraw @a[scores={recipe-bullet=1..}] [{"text":"Iron Ingot","color":"gold"}]
scoreboard players set @a recipe-bullet 0