####################################################################################################
# 
# Torpedo Movement Functionality & Detonation Conditions
# 
####################################################################################################

# Torpedo Lifetime Clock
scoreboard players add @e[tag=torpedo] torpedo_lifetime 1

# Torpedo Propulsion
execute as @e[tag=torpedo] at @s if block ~ ~0.9 ~ #submarines:sea_traversable run tp @s ^ ^-0.001 ^0.5
execute as @e[tag=torpedo] at @s unless block ~ ~0.9 ~ #submarines:sea_traversable if block ~ ~0.9 ~ #submarines:non_solid run tp @s ^ ^ ^0.5 ~ ~2

# Torpedo Armed Particles
execute as @e[tag=torpedo,scores={torpedo_lifetime=30..}] at @s run particle minecraft:bubble ~ ~.9 ~ .2 .2 .2 0 10 force

# Detonation Conditions
execute as @e[tag=torpedo,scores={torpedo_lifetime=30..}] at @s if entity @e[tag=!torpedo,distance=..1] run tag @s add detonate
execute as @e[tag=torpedo,scores={torpedo_lifetime=30..}] at @s unless block ~ ~.9 ~ #submarines:sea_traversable unless block ~ ~0.9 ~ #submarines:non_solid run tag @s add detonate

# Maximum Travel Time: 140 Ticks
kill @e[tag=torpedo,scores={torpedo_lifetime=200..}]