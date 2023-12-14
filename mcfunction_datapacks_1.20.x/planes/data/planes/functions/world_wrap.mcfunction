# Store x-pos And z-pos Of Vehicles
execute as @e[tag=plane,tag=controller] store result score @s x-pos run data get entity @s Pos[0]
execute as @e[tag=plane,tag=controller] store result score @s z-pos run data get entity @s Pos[2]

# Set Tags
tag @e[tag=plane,tag=controller] remove off_north_p
tag @e[tag=plane,tag=controller] remove off_south_p
tag @e[tag=plane,tag=controller] remove off_west_p
tag @e[tag=plane,tag=controller] remove off_east_p
tag @e[tag=plane,tag=controller] remove on_map_p
execute as @e[tag=plane,tag=controller] at @s if score @s z-pos < north z-pos run tag @s add off_north_p
execute as @e[tag=plane,tag=controller] at @s if score @s z-pos > south z-pos run tag @s add off_south_p
execute as @e[tag=plane,tag=controller] at @s if score @s x-pos < west x-pos run tag @s add off_west_p
execute as @e[tag=plane,tag=controller] at @s if score @s x-pos > east x-pos run tag @s add off_east_p
tag @e[tag=plane,tag=controller,tag=!off_north_p,tag=!off_south_p,tag=!off_west_p,tag=!off_east_p] add on_map_p

# Warp On Border
execute as @e[tag=plane,tag=controller,tag=!on_map_p] run tag @s add wrap_around
execute as @e[tag=plane,tag=controller,tag=wrap_around] at @s run function planes:call_world_wrap
execute as @e[tag=plane,tag=controller,tag=wrap_around] at @s run function planes:call_new_components
execute as @e[tag=plane,tag=controller,tag=wrap_around] at @s run scoreboard players operation @e[tag=planetemp] change_counter = @p[tag=pilot] change_counter
execute as @e[tag=plane,tag=controller,tag=wrap_around] at @s run function planes:call_init_components
execute as @e[tag=plane,tag=controller,tag=wrap_around] at @s run tag @s remove hover
execute as @e[tag=plane,tag=controller,tag=wrap_around] at @s run tag @s remove wrap_around
