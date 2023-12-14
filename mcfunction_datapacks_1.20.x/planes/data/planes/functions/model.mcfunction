# Update Plane Rotation
execute as @e[tag=plane,tag=!seat,tag=!controller] at @s run tp @s @e[tag=plane,tag=controller,distance=..4,sort=nearest,limit=1]

# Update Plane Pitch If Speed > Flight Threshold
execute as @e[tag=plane,tag=controller] at @s run data modify entity @s Rotation set from entity @p[tag=pilot,distance=..4] Rotation

# Set Defaults
execute as @e[tag=plane,tag=controller] if score @s vehicle_speed < flight_threshold vehicle_speed run data modify entity @s Rotation[1] set value 0f

# Update Plane Pitch
execute as @e[tag=plane,tag=!seat,tag=!controller] at @s run data modify entity @s Rotation set from entity @e[tag=plane,tag=controller,limit=1,sort=nearest,distance=..4] Rotation

# Copy Component Rotation To Pose
execute as @e[tag=plane,tag=!seat,tag=!controller] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute as @e[tag=plane,tag=!seat,tag=!controller] at @s if score @e[tag=plane,tag=controller,distance=..4,sort=nearest,limit=1] vehicle_speed < flight_threshold vehicle_speed if score @s change_counter = avia change_counter run data modify entity @s Pose.Head[0] set value -3f
execute as @e[tag=plane,tag=!seat,tag=!controller] at @s if score @e[tag=plane,tag=controller,distance=..4,sort=nearest,limit=1] vehicle_speed < flight_threshold vehicle_speed if score @s change_counter > avia change_counter run data modify entity @s Pose.Head[0] set value -4f
execute as @e[tag=plane,tag=!seat,tag=!controller] at @s if score @e[tag=plane,tag=controller,distance=..4,sort=nearest,limit=1] vehicle_speed < flight_threshold vehicle_speed if score @s change_counter >= propplane change_counter run data modify entity @s Pose.Head[0] set value -7.5f
execute as @e[tag=plane,tag=!seat,tag=!controller] at @s if score @e[tag=plane,tag=controller,distance=..4,sort=nearest,limit=1] vehicle_speed < flight_threshold vehicle_speed if score @s change_counter >= misc change_counter run data modify entity @s Pose.Head[0] set value 0f

# Unfold Vehicle Model
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = avia change_counter run tp @s ^ ^-1.25 ^-.6
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter = avia change_counter run tp @s ^ ^-.3 ^3.2
execute as @e[tag=plane,tag=model] at @s if score @s change_counter > avia change_counter run tp @s ^ ^-.8 ^-.8
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter > avia change_counter run tp @s ^ ^ ^3
execute as @e[tag=plane,tag=model] at @s if score @s change_counter >= propplane change_counter run tp @s ^ ^.2 ^
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter >= propplane change_counter run tp @s ^ ^ ^-.7
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = ups change_counter run tp @s ^ ^.6 ^-.5
execute as @e[tag=plane,tag=model] at @s if score @s change_counter = tardis change_counter run tp @s ^ ^-1.3 ^

# UPS Model Swap
execute as @e[tag=plane,tag=model] at @s if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:15}}]}] if score @s change_counter = ups change_counter if score @s vehicle_speed <= flight_threshold vehicle_speed unless entity @a[tag=pilot,distance=..2] run item replace entity @s armor.head with structure_void{CustomModelData:17}
execute as @e[tag=plane,tag=model] at @s if entity @e[tag=plane,tag=seat,tag=mounted,distance=..4] if score @s change_counter = ups change_counter if entity @a[tag=pilot,distance=..2] run item replace entity @s armor.head with structure_void{CustomModelData:15}
execute as @e[tag=plane,tag=model] at @s if score @s vehicle_speed > flight_threshold vehicle_speed if score @s change_counter = ups change_counter run particle minecraft:campfire_cosy_smoke ^ ^1.2 ^-2 0.3 0.3 0.3 0 5 force

# Propeller Spin
scoreboard players set loop4limit loop 4
scoreboard players set var1 loop 1
scoreboard players set var2 loop 2
scoreboard players set var3 loop 3
scoreboard players set var4 loop 4
execute if score loop4 loop > loop4limit loop run scoreboard players set loop4 loop 0
scoreboard players add loop4 loop 1
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter < misc change_counter if score loop4 loop = var1 loop unless block ~ ~2 ~ water run item replace entity @s armor.head with structure_void{CustomModelData:1}
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter < misc change_counter if score loop4 loop = var2 loop unless block ~ ~2 ~ water run item replace entity @s armor.head with structure_void{CustomModelData:2}
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter < misc change_counter if score loop4 loop = var3 loop unless block ~ ~2 ~ water run item replace entity @s armor.head with structure_void{CustomModelData:3}
execute as @e[tag=plane,tag=propeller] at @s if score @s change_counter < misc change_counter if score loop4 loop = var4 loop unless block ~ ~2 ~ water run item replace entity @s armor.head with structure_void{CustomModelData:4}

# Tardis Spin
execute as @e[tag=plane,tag=model,nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:16}}]}] at @s if entity @a[tag=pilot,distance=..4] if score loop4 loop = var1 loop unless block ~ ~2 ~ water run data modify entity @s Pose.Head[1] set value 0.1f
execute as @e[tag=plane,tag=model,nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:16}}]}] at @s if entity @a[tag=pilot,distance=..4] if score loop4 loop = var2 loop unless block ~ ~2 ~ water run data modify entity @s Pose.Head[1] set value 45.1f
execute as @e[tag=plane,tag=model,nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:16}}]}] at @s if entity @a[tag=pilot,distance=..4] if score loop4 loop = var3 loop unless block ~ ~2 ~ water run data modify entity @s Pose.Head[1] set value 90.1f
execute as @e[tag=plane,tag=model,nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:16}}]}] at @s if entity @a[tag=pilot,distance=..4] if score loop4 loop = var4 loop unless block ~ ~2 ~ water run data modify entity @s Pose.Head[1] set value 135.1f