# Replenish Duplicate Thrown Weapons (When Holding Weapon & Throwing Out Another, Causing Overwrite And Deletion)
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Fire Lance\""}}}},scores={dropped_fire_lance=1..}] add hold_fire_lance_duplicate
execute as @a[tag=hold_fire_lance_duplicate] run scoreboard players set @s dropped_fire_lance 0
execute as @a[tag=hold_fire_lance_duplicate] run tag @s remove fire_lance_reload
tag @a remove hold_fire_lance_duplicate

# Test If Weapon Fired Or Dropped
tag @a remove fire_lance_replenish_fire_lance
tag @a[scores={dropped_fire_lance=1..},tag=!hold_fire_lance_loaded] add fire_lance_reload
tag @a[scores={dropped_fire_lance=1..}] add fire_lance_replenish_fire_lance
tag @a[scores={fired_fire_lance=1..}] add fire_lance_replenish_fire_lance

# Return Weapon When Dropped Or Fired
execute as @a[tag=fire_lance_replenish_fire_lance,tag=hold_fire_lance] at @s run kill @e[type=item,limit=1,sort=nearest,distance=..4,nbt={Item:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:"\"Fire Lance\""}}}}]
execute as @a[tag=fire_lance_replenish_fire_lance,tag=hold_fire_lance] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Empty\""]},CustomModelData:3}

# Fail To Reload Loaded Weapon
execute as @a[tag=fire_lance_replenish_fire_lance,tag=hold_fire_lance_loaded,scores={dropped_fire_lance=1..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, weapon is already loaded!","color":"yellow"}
execute as @a[tag=fire_lance_replenish_fire_lance,tag=hold_fire_lance_loaded,scores={dropped_fire_lance=1..}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]},CustomModelData:3}
execute as @a[tag=fire_lance_replenish_fire_lance,tag=hold_fire_lance_loaded,scores={dropped_fire_lance=1..}] run tag @s remove fire_lance_replenish_fire_lance

# Reset Scoreboards
scoreboard players set @a dropped_fire_lance 0
scoreboard players set @a fired_fire_lance 0

# Store If Player Held An Fire Lance Prior To Fire or Reload
tag @a remove hold_fire_lance
tag @a remove hold_fire_lance_loaded
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Fire Lance\""}}}}] add hold_fire_lance
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]}}}}] add hold_fire_lance_loaded