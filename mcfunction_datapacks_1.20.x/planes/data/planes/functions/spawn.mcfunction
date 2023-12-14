# Fail Spawn If Nearby Vehicle
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s if entity @e[tag=seat,distance=..10] run tag @e[type=endermite,name="Plane Spawn Egg"] add proximity
execute as @e[type=endermite,name="Plane Spawn Egg",tag=proximity] at @s run function planes:call_spawn_egg
execute as @e[type=endermite,name="Plane Spawn Egg",tag=proximity] at @s run tellraw @a[scores={placed_spawn_egg=1..},tag=!mute_notifications,distance=..6] {"text":"[Server] Unable to spawn a plane near another vehicle.","color":"yellow"}
execute as @e[type=endermite,name="Plane Spawn Egg",tag=proximity] at @s run kill @s

# Spawn Plane Components
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run summon block_display ~ ~ ~ {CustomName:"\"Plane\"",Tags:["planetemp","controller"],Passengers:[{id:horse,CustomName:"\"Plane\"",Tags:["planetemp","seat"],NoGravity:1,NoAI:1,Silent:1,Tame:1,SaddleItem:{id:saddle,Count:1,tag:{display:{Name:"\"Click To Despawn\""}}}}]}
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run function planes:call_new_components

# Set Exterior Data
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run scoreboard players set @e[tag=planetemp,distance=..4] change_counter 0
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s store result score @e[tag=planetemp,distance=..4] change_counter run scoreboard players get @p[distance=..7,scores={placed_spawn_egg=1..}] change_counter

# Init Lifetime
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run scoreboard players set @e[tag=planetemp,tag=controller] lifetime 600

# Initialize Components
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run function planes:call_init_components

# Initialize Exterior
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run tag @e[tag=plane,tag=seat,limit=1,sort=nearest] add exterior_change

# End Spawn Function
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run scoreboard players set @a placed_spawn_egg 0
execute as @e[type=endermite,name="Plane Spawn Egg"] at @s run kill @s