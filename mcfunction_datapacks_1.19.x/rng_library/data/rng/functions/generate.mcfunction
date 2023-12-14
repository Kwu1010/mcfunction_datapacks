#####################################################################################################################################################
#
# RNG Library for Minecraft
#
# File: generate.mcfunction
# Author: Kevin Wu
# Description: Generate a random number to object rng every tick
# Usage: ... if entity @s[scores={rng=LOWER_BOUND..UPPER_BOUND}] ...
#
#####################################################################################################################################################



#####################################################################################################################################################
# Generate random number and assign to all players
#####################################################################################################################################################

scoreboard players operation rng rng_seed *= rng a

scoreboard players operation rng rng_seed %= rng m

scoreboard players operation rng rng = rng rng_seed

scoreboard players operation rng rng %= rng rng_range

scoreboard players operation @a rng = rng rng