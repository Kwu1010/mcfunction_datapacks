#####################################################################################################################################################
#
# RNG Library for Minecraft
#
# File: initialize.mcfunction
# Description: Declare variables used in the RNG library and initialize variables for object rng
#
#####################################################################################################################################################



#####################################################################################################################################################
# Declare variables
#####################################################################################################################################################

# multiplier
scoreboard objectives add rng_a dummy				

# maximum positive 32-bit signed integer
scoreboard objectives add rng_m dummy				

# custom range for the random variable
scoreboard objectives add rng_range dummy			

# seed for the random number generator
scoreboard objectives add rng_seed dummy			

# stores the random number
scoreboard objectives add rng dummy					



#####################################################################################################################################################
# Initialize variables for object rng
#####################################################################################################################################################

scoreboard players set rng rng_a 16807

scoreboard players set rng rng_m 2147483647

scoreboard players set rng rng_range 100000

scoreboard players set rng rng_seed 1