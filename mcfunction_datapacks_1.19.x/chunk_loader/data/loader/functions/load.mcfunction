#####################################################################################################################################################
# 
# Chunk loader functionality
#
# Chunk loader armor stands forceload the chunk they inhabit
#
#####################################################################################################################################################

execute as @e[type=armor_stand,tag=loader] at @s if block ~ ~ ~ minecraft:petrified_oak_slab[type=double] run forceload add ~ ~