#####################################################################################################################################################
#
# Dynamic Warps Set Warp Point
# 	Creates a warp point with an input name, and places the command blocks needed to keep the warp point trigger enabled.
#	Oldest warp with duplicate name is destroyed.
#
# Function Usage
#	/function dynamic_warps:warp_set {Name:WARP_NAME}
#
#####################################################################################################################################################

$tag @e[tag=warp_point,tag=$(Name)] add destroy
$execute at @s run summon armor_stand ~ ~ ~ {CustomName:"\"$(Name)\"",Tags:["warp","point","warp_point","$(Name)"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1b}
$execute at @s run setblock ~ -64 ~ minecraft:repeating_command_block{auto:1,Command:"scoreboard objectives add Warp-$(Name) trigger"}
$execute at @s run setblock ~ -63 ~ minecraft:repeating_command_block{auto:1,Command:"scoreboard players enable @a[tag=warp-enabled] Warp-$(Name)"}
$execute at @s run setblock ~ -62 ~ minecraft:repeating_command_block{auto:1,Command:"execute as @a[scores={Warp-$(Name)=1..}] run tp @s @e[tag=warp_point,tag=$(Name),sort=nearest,limit=1]"}
$execute at @s run setblock ~ -61 ~ minecraft:repeating_command_block{auto:1,Command:"execute as @a[scores={Warp-$(Name)=1..}] run scoreboard players set @s Warp-$(Name) 0"}