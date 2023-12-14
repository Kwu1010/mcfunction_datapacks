# Wrap Over Coordinates
execute as @e[tag=warp_over,tag=off_north] at @s run tp @s ~ ~ 6140
execute as @e[tag=warp_over,tag=off_south] at @s run tp @s ~ ~ -6141
execute as @e[tag=warp_over,tag=off_west] at @s run tp @s 12284 ~ ~
execute as @e[tag=warp_over,tag=off_east] at @s run tp @s -12285 ~ ~

# Temporary Damage Immunity
effect give @e[tag=warp_over,tag=!on_map] minecraft:resistance 4 255 true
execute as @e[tag=warp_over,tag=!on_map] at @s run effect give @a[tag=warp_over_entity,distance=..2] minecraft:resistance 4 255 true

# Fill Wrap Over Location With Air
tag @e[tag=warp_over,tag=!on_map] add air_pocket
execute as @e[tag=warp_over,tag=air_pocket,scores={delay_clock=0..5}] at @s run effect give @s slowness 1 255 true
execute as @e[tag=warp_over,tag=air_pocket,scores={delay_clock=20..}] at @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air destroy
execute as @e[tag=warp_over,tag=air_pocket,scores={delay_clock=20..}] at @s run fill ~2 ~3 ~2 ~-2 ~-1 ~-2 cobblestone replace lava
execute as @e[tag=warp_over,tag=air_pocket,scores={delay_clock=10..}] at @s unless data entity @s {Fire:-20s} run setblock ~ ~ ~ water
execute as @e[tag=warp_over,tag=air_pocket,scores={delay_clock=12..}] at @s unless data entity @s {Fire:-20s} run setblock ~ ~ ~ air
tag @e[tag=warp_over,scores={delay_clock=20..}] remove air_pocket

# Player Wrap Over Detection
tag @e[tag=warp_over] remove off_north
tag @e[tag=warp_over] remove off_south
tag @e[tag=warp_over] remove off_west
tag @e[tag=warp_over] remove off_east
tag @e[tag=warp_over] remove on_map
execute as @e[tag=warp_over] at @s if dimension minecraft:overworld if entity @s[z=-6144,dz=-100] at @s run tag @s add off_north
execute as @e[tag=warp_over] at @s if dimension minecraft:overworld if entity @s[z=6143,dz=100] at @s run tag @s add off_south
execute as @e[tag=warp_over] at @s if dimension minecraft:overworld if entity @s[x=-12288,dx=-100] at @s run tag @s add off_west
execute as @e[tag=warp_over] at @s if dimension minecraft:overworld if entity @s[x=12287,dx=100] at @s run tag @s add off_east
tag @e[tag=warp_over,tag=!off_north,tag=!off_south,tag=!off_west,tag=!off_east] add on_map

# TODO: Test If Server Crash Threshold Is Reached VIA Boat Teleport W/ Player & Entity