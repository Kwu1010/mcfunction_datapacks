# Pointers
tag @s add initializer

# Set Caller Lifetime As Local Variable
scoreboard players operation local_var lifetime = @s lifetime

# Initialize Exterior Model
execute as @e[tag=submarinetemp,tag=model] at @s run item replace entity @s armor.head with structure_void{CustomModelData:30}

# Initialize New Component Data
execute as @e[tag=submarinetemp] run scoreboard players operation @s entity_id = @e[tag=initializer,limit=1] entity_id
execute as @e[tag=submarinetemp] run scoreboard players operation @s lifetime = local_var lifetime
execute as @e[tag=submarinetemp] run scoreboard players set @s vehicle_speed 0
execute as @e[tag=submarinetemp] run data merge entity @s {Pose:{Head:[0f,0.1f,0f]}}
execute as @e[tag=submarinetemp] run tag @s add submarine
execute as @e[tag=submarinetemp] run tag @s remove submarinetemp

# Free Pointers
tag @s remove initializer