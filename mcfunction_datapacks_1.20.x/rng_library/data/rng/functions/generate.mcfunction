#####################################################################################################################################################
#
# RNG Library for Minecraft
#
# File: generate.mcfunction
# Description: Generate a random number to object rng every tick
# Usage: ... if entity @s[scores={rng=LOWER_BOUND..UPPER_BOUND}] ...
# 		 ... if score rng rng > lower_bound rng if score rng rng < upper_bound rng ...
#
#####################################################################################################################################################



#####################################################################################################################################################
# Generate random number and assign to all players, range: 0 - 100000
#####################################################################################################################################################

scoreboard players operation rng rng_seed *= rng rng_a

scoreboard players operation rng rng_seed %= rng rng_m

scoreboard players operation rng rng = rng rng_seed

scoreboard players operation rng rng %= rng rng_range

scoreboard players operation @a rng = rng rng