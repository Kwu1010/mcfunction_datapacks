# 30 Second Despawn Timer Unless Pilot Nearby (On Plane)
execute as @e[tag=plane,tag=controller] at @s if entity @a[tag=pilot,distance=..4] run scoreboard players set @s lifetime 600
execute as @e[tag=plane,tag=controller] at @s unless entity @a[tag=pilot,distance=..4] run scoreboard players remove @s lifetime 1

# Update Pilot Tag
execute as @a[tag=pilot] unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["plane"]}}}] run tag @s remove pilot
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["plane"]}}}] add pilot

# Seats Are Invisible
effect give @e[tag=plane,tag=seat] invisibility 1 255 true
effect give @e[tag=plane,tag=seat] water_breathing 1 255 true

# Tardis Invisible
execute as @e[tag=plane,tag=model,scores={change_counter=8..8}] at @s run effect give @p[tag=pilot] invisibility 1 255 true