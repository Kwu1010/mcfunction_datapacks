# Set Reload Tags
tag @a remove reload_coilgun_loaded
tag @a[nbt={Inventory:[{id:"minecraft:command_block",Slot:-106b,tag:{display:{Name:"\"Bullet\""}}}]}] add reload_coilgun_loaded

# Reload Cooldown & Item Replacement
execute as @a[tag=!hold_coilgun] run tag @s remove reload_coilgun
execute as @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]}},Damage:30}}] run tag @s remove reload_coilgun
execute as @a[tag=hold_coilgun,scores={dropped_coilgun=1..}] run tag @s add reload_coilgun
scoreboard players set @a[tag=!reload_coilgun] reload_coilgun 0
scoreboard players add @a[tag=reload_coilgun] reload_coilgun 1
execute as @a[tag=reload_coilgun,tag=!reload_coilgun_loaded,scores={reload_coilgun=600..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, equip ammo in your offhand!","color":"yellow"}
scoreboard players set coilgun bullet_count 30
execute as @a[tag=reload_coilgun,tag=reload_coilgun_loaded,scores={reload_coilgun=600..}] run scoreboard players operation @s bullet_replenish_count = coilgun bullet_count
execute as @a[tag=reload_coilgun,tag=reload_coilgun_loaded,scores={reload_coilgun=600..}] run scoreboard players operation @s bullet_replenish_count -= @s bullet_count
execute as @a[scores={bullet_replenish_count=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Coilgun\""}}}}] run scoreboard players set @s bullet_replenish_count 0
execute as @a[scores={bullet_replenish_count=1..},nbt={Inventory:[{id:"minecraft:command_block",tag:{display:{Name:"\"Bullet\""}}}]}] run function coilgun:call_weapon_ammo_increase
execute as @a[scores={bullet_replenish_count=1..}] run clear @s minecraft:command_block{display:{Name:"\"Bullet\""}} 1
execute as @a[scores={bullet_replenish_count=1..}] run scoreboard players remove @s bullet_replenish_count 1
execute as @a[tag=reload_coilgun,tag=reload_coilgun_loaded,scores={reload_coilgun=600..}] at @s run playsound minecraft:custom.reload_202 player @a ~ ~ ~ 1 1
execute as @a[tag=reload_coilgun,scores={reload_coilgun=600..}] run tag @s remove reload_coilgun_loaded
execute as @a[tag=reload_coilgun,scores={reload_coilgun=600..}] run tag @s remove reload_coilgun