# Generate resources after certain amount of cobble is broken

# Counters
execute as @e[type=armor_stand,tag=grinder] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generatesand 1
execute as @e[type=armor_stand,tag=grinder] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generateredsand 1
execute as @e[type=armor_stand,tag=grinder] at @s if block ~ ~-1 ~ minecraft:cobblestone run setblock ~ ~-1 ~ air

# Generate sand
execute as @e[type=armor_stand,tag=grinder,scores={generatesand=16..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:sand",Count:1b}}
execute as @e[type=armor_stand,tag=grinder,scores={generatesand=16..}] at @s run scoreboard players set @s generatesand 0

# Generate red_sand
execute as @e[type=armor_stand,tag=grinder,tag=tier2grinder,scores={generateredsand=16..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:red_sand",Count:1b}}
execute as @e[type=armor_stand,tag=grinder,tag=tier2grinder,scores={generateredsand=16..}] at @s run scoreboard players set @s generateredsand 0