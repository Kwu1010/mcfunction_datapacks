#####################################################################################################################################################
#
# Dynamic Warps Destroy Warp Point
# 	Designate all warp points with an input name for destruction, and destroyed in next warp_tick.mcfunction loop.
#	Remove warp trigger.
#
# Function Usage
#	/function dynamic_warps:warp_destroy {Name:WARP_NAME}
#
#####################################################################################################################################################

$tag @e[tag=warp_point,tag=$(Name)] add destroy
$scoreboard objectives remove Warp-$(Name)