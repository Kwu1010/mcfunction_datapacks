# Replenish Duplicate Thrown Weapons (When Holding Weapon & Throwing Out Another, Causing Overwrite And Deletion)
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"M202\""}}}},scores={dropped_202=1..}] add hold_202_duplicate
execute as @a[tag=hold_202_duplicate] run scoreboard players set @s dropped_202 0
execute as @a[tag=hold_202_duplicate] run tag @s remove reload_202
tag @a remove hold_202_duplicate

# Test If Weapon Fired Or Dropped
tag @a remove replenish_202
tag @a[scores={dropped_202=1..},tag=!hold_202_ap,tag=!hold_202_he] add reload
tag @a[scores={dropped_202=1..}] add replenish_202
tag @a[scores={fired_202=1..}] add replenish_202

# Return Weapon When Dropped Or Fired
execute as @a[tag=replenish_202,tag=hold_202] at @s run kill @e[type=item,limit=1,sort=nearest,distance=..4,nbt={Item:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:"\"M202\""}}}}]
execute as @a[tag=replenish_202,tag=hold_202] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\"",Lore:["\"Empty\""]},CustomModelData:1}

# Fail To Reload Loaded Weapon
execute as @a[tag=replenish_202,tag=hold_202_ap,scores={dropped_202=1..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, weapon is already loaded!","color":"yellow"}
execute as @a[tag=replenish_202,tag=hold_202_ap,scores={dropped_202=1..}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\"",Lore:["\"AP Shell\""]},CustomModelData:1}
execute as @a[tag=replenish_202,tag=hold_202_ap,scores={dropped_202=1..}] run tag @s remove replenish_202
execute as @a[tag=replenish_202,tag=hold_202_he,scores={dropped_202=1..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, weapon is already loaded!","color":"yellow"}
execute as @a[tag=replenish_202,tag=hold_202_he,scores={dropped_202=1..}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\"",Lore:["\"HE Shell\""]},CustomModelData:1}
execute as @a[tag=replenish_202,tag=hold_202_he,scores={dropped_202=1..}] run tag @s remove replenish_202

# Reset Scoreboards
scoreboard players set @a dropped_202 0
scoreboard players set @a fired_202 0

# Store If Player Held An M202 Prior To Fire or Reload
tag @a remove hold_202
tag @a remove hold_202_ap
tag @a remove hold_202_he
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"M202\""}}}}] add hold_202
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"M202\"",Lore:["\"AP Shell\""]}}}}] add hold_202_ap
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"M202\"",Lore:["\"HE Shell\""]}}}}] add hold_202_he