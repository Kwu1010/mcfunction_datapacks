# Store x-pos And z-pos Of Vehicles
execute as @e[tag=submarine,tag=controller] store result score @s x-pos run data get entity @s Pos[0]
execute as @e[tag=submarine,tag=controller] store result score @s z-pos run data get entity @s Pos[2]

# Set Tags
tag @e[tag=submarine,tag=controller] remove off_north_s
tag @e[tag=submarine,tag=controller] remove off_south_s
tag @e[tag=submarine,tag=controller] remove off_west_s
tag @e[tag=submarine,tag=controller] remove off_east_s
tag @e[tag=submarine,tag=controller] remove on_map_s
execute as @e[tag=submarine,tag=controller] at @s if score @s z-pos < north z-pos run tag @s add off_north_s
execute as @e[tag=submarine,tag=controller] at @s if score @s z-pos > south z-pos run tag @s add off_south_s
execute as @e[tag=submarine,tag=controller] at @s if score @s x-pos < west x-pos run tag @s add off_west_s
execute as @e[tag=submarine,tag=controller] at @s if score @s x-pos > east x-pos run tag @s add off_east_s
tag @e[tag=submarine,tag=controller,tag=!off_north_s,tag=!off_south_s,tag=!off_west_s,tag=!off_east_s] add on_map_s