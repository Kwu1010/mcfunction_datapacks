#####################################################################################################################################################
#
# Dynamic Warps Background Clock
# 	Forceloads warp point chunks unless they are designated to be destroyed by warp_destroy.mcfunction.
#	Runs destroy commands for designated warps under forceload add to ensure chunk is properly unloaded.
#
# Function Usage
#	Always Active
#
#####################################################################################################################################################

execute as @e[tag=warp,tag=!destroy] at @s run forceload add ~ ~
execute as @e[tag=warp,tag=destroy] at @s run fill ~ -64 ~ ~ -61 ~ bedrock replace repeating_command_block
execute as @e[tag=warp,tag=destroy] at @s run forceload remove ~ ~
execute as @e[tag=warp,tag=destroy] at @s run kill @s