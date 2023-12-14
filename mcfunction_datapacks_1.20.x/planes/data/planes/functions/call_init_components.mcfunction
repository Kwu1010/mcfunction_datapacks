# Initialize Exterior Model
execute as @e[tag=planetemp,tag=model] at @s run item replace entity @s armor.head with structure_void{CustomModelData:8}

# Initialize Propeller Model
execute as @e[tag=planetemp,tag=propeller] at @s if score @s change_counter < misc change_counter run item replace entity @s armor.head with structure_void{CustomModelData:1}

# Initialize New Component Data
execute as @e[tag=planetemp,tag=controller] run scoreboard players set @s vehicle_speed 0
execute as @e[tag=planetemp,tag=!seat,tag=!controller] run data merge entity @s {Pose:{Head:[0f,0.1f,0f]}}
execute as @e[tag=planetemp] run tag @s add plane
execute as @e[tag=planetemp] run tag @s remove planetemp