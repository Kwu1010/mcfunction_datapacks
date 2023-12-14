#####################################################################################################################################################
#
# Chunk loader destruction sequence
#
# Function activation condition(s):
#	The texture block of a chunk loader object does not inhabit the same block as the corresponding chunk loader armor stand
#
# If there is not a chunk loader texture block in the same block as the chunk loader armor stand:
#	Un-load the chunk
#	Remove any chunk loader texture block item drops
#	Remove the chunk loader armor stand
#	Drop the chunk loader spawn egg
#
#####################################################################################################################################################

execute as @e[type=armor_stand,tag=loader] at @s unless block ~ ~ ~ minecraft:petrified_oak_slab[type=double] run forceload remove ~ ~
execute as @e[type=armor_stand,tag=loader] at @s unless block ~ ~ ~ minecraft:petrified_oak_slab[type=double] run kill @e[type=item,nbt={Item:{id:"minecraft:petrified_oak_slab"}},distance=..2]
execute as @e[type=armor_stand,tag=loader] at @s unless block ~ ~ ~ minecraft:petrified_oak_slab[type=double] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:silverfish_spawn_egg",Count:1b,tag:{CustomModelData:2,display:{Name:"\"Chunk Loader\""}}}}
execute as @e[type=armor_stand,tag=loader] at @s unless block ~ ~ ~ minecraft:petrified_oak_slab[type=double] run kill @s