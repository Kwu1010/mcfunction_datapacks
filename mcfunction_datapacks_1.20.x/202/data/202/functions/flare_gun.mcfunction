# Replenish Duplicate Thrown Weapons (When Holding Weapon & Throwing Out Another, Causing Overwrite And Deletion)
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Flare Gun\""}}}},scores={dropped_flaregun=1..}] add hold_flaregun_duplicate
execute as @a[tag=hold_flaregun_duplicate] run scoreboard players set @s dropped_flaregun 0
execute as @a[tag=hold_flaregun_duplicate] run tag @s remove reload_flaregun
tag @a remove hold_flaregun_duplicate

# Holding Flare Gun In Offhand
tag @a remove hold_flaregun_offhand
tag @a remove hold_flaregun_loaded_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"Flare Gun\"",Lore:["\"Empty\""]}}}]}] add hold_flaregun_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"Flare Gun\"",Lore:["\"Flare\""]}}}]}] add hold_flaregun_loaded_offhand

# Holding Flare In Offhand
tag @a remove holding_flare
tag @a[nbt={Inventory:[{id:"minecraft:snowball",Slot:-106b,tag:{display:{Name:"\"Flare\""}}}]}] add holding_flare

# Unequip Flare Gun From Offhand
execute as @a[tag=hold_flaregun_offhand] run item replace entity @s weapon.offhand with air
execute as @a[tag=hold_flaregun_loaded_offhand] run item replace entity @s weapon.offhand with air
execute as @a[tag=hold_flaregun_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Flare Gun\"",Lore:["\"Empty\""]},CustomModelData:4}
execute as @a[tag=hold_flaregun_loaded_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Flare Gun\"",Lore:["\"Flare\""]},CustomModelData:4}

# Replenish Flare Gun
tag @a remove replenish_flaregun
tag @a[scores={dropped_flaregun=1..},tag=!hold_flaregun_loaded] add reload_flaregun
tag @a[scores={dropped_flaregun=1..}] add replenish_flaregun
execute as @a[tag=replenish_flaregun,tag=hold_flaregun] at @s run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Flare Gun\"",Lore:["\"Empty\""]},CustomModelData:4}
execute as @a[tag=replenish_flaregun,tag=hold_flaregun] at @s run kill @e[type=item,limit=1,sort=nearest,distance=..4,nbt={Item:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:"\"Flare Gun\""}}}}]

# Fail To Reload Loaded Weapon
execute as @a[tag=replenish_flaregun,tag=hold_flaregun_loaded] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, flare gun is already loaded!","color":"yellow"}
execute as @a[tag=replenish_flaregun,tag=hold_flaregun_loaded] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Flare Gun\"",Lore:["\"Flare\""]},CustomModelData:4}
execute as @a[tag=replenish_flaregun,tag=hold_flaregun_loaded,scores={dropped_flaregun=1..}] run tag @s remove replenish_flaregun

# Reload & Cooldown
execute as @a[tag=!hold_flaregun] run tag @s remove reload_flaregun
scoreboard players set @a[tag=!reload_flaregun] reload_flaregun 0
scoreboard players add @a[tag=reload_flaregun] reload_flaregun 1
execute as @a[tag=reload_flaregun,scores={reload_flaregun=200..},tag=!holding_flare] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, equip ammo in your offhand!","color":"yellow"}
execute as @a[tag=reload_flaregun,scores={reload_flaregun=200..},tag=holding_flare] run clear @s minecraft:snowball{display:{Name:"\"Flare\""}} 1
execute as @a[tag=reload_flaregun,scores={reload_flaregun=200..},tag=holding_flare] at @s run playsound minecraft:custom.reload_202 player @a ~ ~ ~ 1 1
execute as @a[tag=reload_flaregun,scores={reload_flaregun=200..},tag=holding_flare] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Flare Gun\"",Lore:["\"Flare\""]},CustomModelData:4}
execute as @a[tag=reload_flaregun,scores={reload_flaregun=200..}] run tag @s remove reload_flaregun

# Fire
execute as @a[tag=hold_flaregun_loaded,scores={fired_flaregun=1..}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Flare\"",Tags:["flaretemp","target"],Invisible:1,NoGravity:1}
execute as @a[tag=hold_flaregun_loaded,scores={fired_flaregun=1..}] at @s run playsound minecraft:custom.fired_202 player @a ~ ~ ~ 1 1
execute as @a[tag=hold_flaregun_loaded,scores={fired_flaregun=1..}] at @s run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Flare Gun\"",Lore:["\"Empty\""]},CustomModelData:4}
execute as @e[tag=flaretemp] at @s at @p[tag=hold_flaregun,scores={fired_flaregun=1..},distance=..4] run tp @s ^ ^ ^-0.1 facing entity @p[tag=hold_flaregun,scores={fired_flaregun=1..},distance=..4]
execute as @e[tag=flaretemp] at @s run tp @s ^ ^ ^2
execute as @e[tag=flaretemp] run tag @s add flare
execute as @e[tag=flaretemp] run tag @s remove flaretemp

# Reset Scoreboards
scoreboard players set @a dropped_flaregun 0
scoreboard players set @a fired_flaregun 0

# Hold Flare Gun In Mainhand
tag @a remove hold_flaregun
tag @a remove hold_flaregun_loaded
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Flare Gun\""}}}}] add hold_flaregun
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Flare Gun\"",Lore:["\"Flare\""]}}}}] add hold_flaregun_loaded

# Flare Gun Load Status
title @a[tag=hold_flaregun] actionbar {"text":"","bold":"true","extra":[{"text":"Empty | ","color":"red"},{"text":"Press Q To Reload","color":"white"}]}
title @a[tag=hold_flaregun_loaded] actionbar {"text":"","bold":"true","extra":[{"text":"Loaded | ","color":"dark_purple"},{"text":"Flare","color":"white"}]}
scoreboard players set divider reload_flaregun_status 2
execute as @a[tag=hold_flaregun,scores={reload_flaregun=1..}] run scoreboard players operation @s reload_flaregun_status = @s reload_flaregun
execute as @a[tag=hold_flaregun,scores={reload_flaregun=1..}] run scoreboard players operation @s reload_flaregun_status /= divider reload_flaregun_status
execute as @a[tag=hold_flaregun,scores={reload_flaregun=1..}] run title @s actionbar {"text":"","bold":"true","extra":[{"text":"Reloading | ","color":"red"},{"score":{"name":"@s","objective":"reload_flaregun_status"}},{"text":"%"}]}