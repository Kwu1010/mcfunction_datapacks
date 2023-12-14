####################################################################################################
# 
# Plane Engine Sound
# 
####################################################################################################

stopsound @a[nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["plane"]}}}] voice minecraft:entity.bee.loop_aggressive
stopsound @a[nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["plane"]}}}] voice minecraft:entity.bee.loop
execute as @e[tag=plane,tag=model] at @s if score @s change_counter < misc change_counter unless block ~ ~1 ~ water if score @s entity_id = @a[sort=random,distance=..4,nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["plane"]}}},limit=1] entity_id run playsound minecraft:entity.bee.loop_aggressive voice @a ~ ~ ~ 3 0
execute as @e[tag=plane,tag=model] at @s if score @s change_counter < misc change_counter unless block ~ ~1 ~ water if score @s entity_id = @a[sort=random,distance=..4,nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["plane"]}}},limit=1] entity_id run playsound minecraft:entity.bee.loop voice @a ~ ~ ~ 7 1
execute as @e[tag=plane,tag=model] at @s if score @s change_counter < misc change_counter unless block ~ ~2 ~ water run playsound minecraft:entity.bee.loop_aggressive voice @a ~ ~ ~ 0.2 0

# Custom Sound Loops Mount/Dismount Tags
execute as @e[tag=plane,tag=model,tag=!mounted] at @s if entity @a[tag=pilot,distance=..4] run tag @s remove dismounted
execute as @e[tag=plane,tag=model,tag=!mounted] at @s if entity @a[tag=pilot,distance=..4] run tag @s add start_up
execute as @e[tag=plane,tag=model,tag=!mounted] at @s if entity @a[tag=pilot,distance=..4] run tag @s add mounted
execute as @e[tag=plane,tag=model,tag=!dismounted] at @s unless entity @a[tag=pilot,distance=..4] run tag @s remove mounted
execute as @e[tag=plane,tag=model,tag=!dismounted] at @s unless entity @a[tag=pilot,distance=..4] run tag @s add power_down
execute as @e[tag=plane,tag=model,tag=!dismounted] at @s unless entity @a[tag=pilot,distance=..4] run tag @s add dismounted

# Playsound Clock
scoreboard players add server_hum hum_timer 1
scoreboard players set player hum_timer 10
scoreboard players set limit hum_timer 280
scoreboard players set limit25 hum_timer 25
scoreboard players operation divider25 hum_timer = server_hum hum_timer
scoreboard players operation divider25 hum_timer %= limit25 hum_timer
execute if score server_hum hum_timer > limit hum_timer run scoreboard players set server_hum hum_timer 0

# UPS Truck
execute as @e[tag=plane,tag=model,tag=start_up,scores={change_counter=7..7}] at @s run playsound minecraft:custom.engine_startup voice @a ~ ~ ~ 1 2
execute as @e[tag=plane,tag=model,tag=mounted,scores={change_counter=7..7}] at @s if score divider25 hum_timer = player hum_timer run playsound minecraft:custom.engine_fire voice @a ~ ~ ~ 1 1
execute as @e[tag=plane,tag=model,tag=dismounted,scores={change_counter=7..7}] unless entity @e[tag=plane,tag=seat,tag=mounted,scores={change_counter=6..10}] at @s run stopsound @a player minecraft:custom.engine_fire

# Tardis
execute as @e[tag=plane,tag=model,tag=mounted,scores={change_counter=8..8}] at @s unless block ~ ~1 ~ water if score server_hum hum_timer = player hum_timer run playsound minecraft:custom.stutter voice @a ~ ~ ~ 1 1
execute as @e[tag=plane,tag=model,tag=mounted,scores={change_counter=8..8}] unless entity @e[tag=plane,tag=seat,tag=dismounted,scores={change_counter=8..8}] at @s run stopsound @a player minecraft:custom.hum
execute as @e[tag=plane,tag=model,tag=dismounted,scores={change_counter=8..8}] at @s unless block ~ ~1 ~ water if score server_hum hum_timer = player hum_timer run playsound minecraft:custom.hum voice @a ~ ~ ~ 1 1
execute as @e[tag=plane,tag=model,tag=dismounted,scores={change_counter=8..8}] unless entity @e[tag=plane,tag=seat,tag=mounted,scores={change_counter=8..8}] at @s run stopsound @a player minecraft:custom.stutter
execute as @e[tag=plane,tag=model,tag=start_up,scores={change_counter=8..8}] at @s unless block ~ ~1 ~ water run playsound minecraft:custom.stutter voice @a ~ ~ ~ 1 1
execute as @e[tag=plane,tag=model,tag=power_down,scores={change_counter=8..8}] at @s unless block ~ ~1 ~ water run playsound minecraft:custom.hum voice @a ~ ~ ~ 1 1

# Reset Tags
execute as @e[tag=plane,tag=model,tag=start_up] run tag @s remove start_up
execute as @e[tag=plane,tag=model,tag=power_down] run tag @s remove power_down