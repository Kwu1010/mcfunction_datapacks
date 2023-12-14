# Init Spawn Egg
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s run scoreboard players operation @s entity_id = @p[scores={placed_spawn_egg=1..}] entity_id
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s run scoreboard players operation @s lifetime = server_time lifetime

# Fail Spawn If Nearby Vehicle
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s if entity @e[tag=seat,distance=..7] run tag @e[type=endermite,name="Submarine Spawn Egg"] add proximity
execute as @e[type=endermite,name="Submarine Spawn Egg",tag=proximity] at @s run function submarines:call_spawn_egg
execute as @e[type=endermite,name="Submarine Spawn Egg",tag=proximity] at @s run tellraw @a[scores={placed_spawn_egg=1..},tag=!mute_notifications,distance=..6] {"text":"[Server] Unable to spawn a submarine near another vehicle.","color":"yellow"}
execute as @e[type=endermite,name="Submarine Spawn Egg",tag=proximity] at @s run kill @s

# Fail Spawn If On Land
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s unless block ~ ~ ~ #submarines:sea_traversable run function submarines:call_spawn_egg
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s unless block ~ ~ ~ #submarines:sea_traversable run tellraw @p[scores={placed_spawn_egg=1..},distance=..6,tag=!mute_notifications] {"text":"[Server] Unable to spawn a submarine on land/rails.","color":"yellow"}
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s unless block ~ ~ ~ #submarines:sea_traversable run kill @s

# Spawn Submarine Components
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s run summon block_display ~ ~ ~ {CustomName:"\"Submarine\"",Tags:["submarinetemp","controller"],Passengers:[{id:minecart,CustomName:"\"Submarine\"",Tags:["submarinetemp","seat"],NoGravity:1,Silent:1}]}
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s run function submarines:call_new_components

# Initialize Components
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s run function submarines:call_init_components

# End Spawn Function
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s run scoreboard players set @a placed_spawn_egg 0
execute as @e[type=endermite,name="Submarine Spawn Egg"] at @s run kill @s