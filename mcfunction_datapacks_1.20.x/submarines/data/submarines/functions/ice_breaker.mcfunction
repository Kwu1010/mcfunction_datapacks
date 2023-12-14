####################################################################################################
# 
# Break Ice When Surfacing
# 
####################################################################################################

# Fill Ice With Water
execute as @e[tag=submarine,tag=controller] at @s run fill ~1 ~1 ~1 ~-1 ~ ~-1 water replace ice
execute as @e[tag=submarine,tag=controller] at @s run fill ~1 ~1 ~1 ~-1 ~ ~-1 water replace packed_ice
execute as @e[tag=submarine,tag=controller] at @s run fill ~1 ~1 ~1 ~-1 ~ ~-1 water replace blue_ice