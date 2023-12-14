# Lock Tags
tag @e[tag=target] remove target_lock
tag @e[tag=missile] remove lock

# Lock In Target In Range
execute as @e[tag=missile] at @s positioned ^ ^ ^ run tag @e[tag=target,distance=..1] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^1 run tag @e[tag=target,distance=..1] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^2 run tag @e[tag=target,distance=..1] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^3 run tag @e[tag=target,distance=..1] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^6 run tag @e[tag=target,distance=..2] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^9 run tag @e[tag=target,distance=..3] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^12 run tag @e[tag=target,distance=..4] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^24 run tag @e[tag=target,distance=..8] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^36 run tag @e[tag=target,distance=..12] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^48 run tag @e[tag=target,distance=..16] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^60 run tag @e[tag=target,distance=..20] add target_lock
execute as @e[tag=missile] at @s positioned ^ ^ ^72 run tag @e[tag=target,distance=..24] add target_lock

# Enable Missile Locking Mode
execute as @e[tag=missile] at @s positioned ^ ^ ^ if entity @e[tag=target,distance=..1] if score setting missile_tracking = enabled missile_tracking run tag @s add lock
execute as @e[tag=missile] at @s positioned ^ ^ ^1 if entity @e[tag=target,distance=..1] if score setting missile_tracking = enabled missile_tracking run tag @s add lock
execute as @e[tag=missile] at @s positioned ^ ^ ^2 if entity @e[tag=target,distance=..1] if score setting missile_tracking = enabled missile_tracking run tag @s add lock
execute as @e[tag=missile] at @s positioned ^ ^ ^4 if entity @e[tag=target,distance=..2] if score setting missile_tracking = enabled missile_tracking run tag @s add lock
execute as @e[tag=missile] at @s positioned ^ ^ ^8 if entity @e[tag=target,distance=..4] if score setting missile_tracking = enabled missile_tracking run tag @s add lock
execute as @e[tag=missile] at @s positioned ^ ^ ^16 if entity @e[tag=target,distance=..8] if score setting missile_tracking = enabled missile_tracking run tag @s add lock
execute as @e[tag=missile] at @s positioned ^ ^ ^32 if entity @e[tag=target,distance=..16] if score setting missile_tracking = enabled missile_tracking run tag @s add lock
execute as @e[tag=missile] at @s positioned ^ ^ ^64 if entity @e[tag=target,distance=..32] if score setting missile_tracking = enabled missile_tracking run tag @s add lock
execute as @e[tag=missile,tag=lock] at @s run function 202:call_lock_increment

# Increment If No Target Lock
execute as @e[tag=missile,tag=!lock] at @s run tp @s ^ ^ ^3

# Particles And Sound
execute as @e[tag=missile] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=missile] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 0.5 0.5 0 10 force
execute as @e[tag=missile] at @s run playsound minecraft:entity.firework_rocket.launch voice @a ~ ~ ~ 1 0
