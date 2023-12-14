# Set Reload Tags
tag @a remove reload_202_ap
tag @a remove reload_202_he
tag @a[nbt={Inventory:[{id:"minecraft:command_block",Slot:-106b,tag:{display:{Name:"\"AP Shell\""}}}]}] add reload_202_ap
tag @a[nbt={Inventory:[{id:"minecraft:command_block",Slot:-106b,tag:{display:{Name:"\"HE Shell\""}}}]}] add reload_202_he

# Reload Cooldown & Item Replacement
execute as @a[tag=!hold_202] run tag @s remove reload_202
execute as @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"M202\"",Lore:["\"AP Shell\""]}}}}] run tag @s remove reload_202
execute as @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"M202\"",Lore:["\"HE Shell\""]}}}}] run tag @s remove reload_202
execute as @a[tag=hold_202,scores={dropped_202=1..}] run tag @s add reload_202
scoreboard players set @a[tag=!reload_202] reload_202 0
scoreboard players add @a[tag=reload_202] reload_202 1
execute as @a[tag=reload_202,tag=!reload_202_ap,tag=!reload_202_he,scores={reload_202=600..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, equip ammo in your offhand!","color":"yellow"}
execute as @a[tag=reload_202,tag=reload_202_ap,scores={reload_202=600..}] run clear @s minecraft:command_block{display:{Name:"\"AP Shell\""}} 1
execute as @a[tag=reload_202,tag=reload_202_ap,scores={reload_202=600..}] at @s run playsound minecraft:custom.reload_202 player @a ~ ~ ~ 1 1
execute as @a[tag=reload_202,tag=reload_202_ap,scores={reload_202=600..}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\"",Lore:["\"AP Shell\""]},CustomModelData:1}
execute as @a[tag=reload_202,tag=reload_202_he,scores={reload_202=600..}] run clear @s minecraft:command_block{display:{Name:"\"HE Shell\""}} 1
execute as @a[tag=reload_202,tag=reload_202_he,scores={reload_202=600..}] at @s run playsound minecraft:custom.reload_202 player @a ~ ~ ~ 1 1
execute as @a[tag=reload_202,tag=reload_202_he,scores={reload_202=600..}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\"",Lore:["\"HE Shell\""]},CustomModelData:1}
execute as @a[tag=reload_202,scores={reload_202=600..}] run tag @s remove reload_202_ap
execute as @a[tag=reload_202,scores={reload_202=600..}] run tag @s remove reload_202_he
execute as @a[tag=reload_202,scores={reload_202=600..}] run tag @s remove reload_202