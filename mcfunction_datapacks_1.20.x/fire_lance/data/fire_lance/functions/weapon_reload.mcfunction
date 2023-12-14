# Set Reload Tags
tag @a remove reload_fire_lance_loaded
tag @a[nbt={Inventory:[{id:"minecraft:command_block",Slot:-106b,tag:{display:{Name:"\"Bullet\""}}}]}] add reload_fire_lance_loaded

# Reload Cooldown & Item Replacement
execute as @a[tag=!hold_fire_lance] run tag @s remove reload_fire_lance
execute as @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]}}}}] run tag @s remove reload_fire_lance
execute as @a[tag=hold_fire_lance,scores={dropped_fire_lance=1..}] run tag @s add reload_fire_lance
scoreboard players set @a[tag=!reload_fire_lance] reload_fire_lance 0
scoreboard players add @a[tag=reload_fire_lance] reload_fire_lance 1
execute as @a[tag=reload_fire_lance,tag=!reload_fire_lance_loaded,scores={reload_fire_lance=600..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, equip ammo in your offhand!","color":"yellow"}
execute as @a[tag=reload_fire_lance,tag=reload_fire_lance_loaded,scores={reload_fire_lance=600..}] run clear @s minecraft:command_block{display:{Name:"\"Bullet\""}} 1
execute as @a[tag=reload_fire_lance,tag=reload_fire_lance_loaded,scores={reload_fire_lance=600..}] at @s run playsound minecraft:custom.reload_202 player @a ~ ~ ~ 1 1
execute as @a[tag=reload_fire_lance,tag=reload_fire_lance_loaded,scores={reload_fire_lance=600..}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]},CustomModelData:3}
execute as @a[tag=reload_fire_lance,scores={reload_fire_lance=600..}] run tag @s remove reload_fire_lance_loaded
execute as @a[tag=reload_fire_lance,scores={reload_fire_lance=600..}] run tag @s remove reload_fire_lance