#####################################################################################################################################################
#
# Minute duration firework crafting recipes
#
# Function activation condition(s):
#	A minute firework is crafted
#
# Upon activation:
#	Replace knowledge book placeholder with corresponding item
#	Revoke corresponding recipe and advancement
#
#####################################################################################################################################################

recipe take @s minute_fireworks:minute_fireworks
advancement revoke @s only minute_fireworks:craft_minute_fireworks_adv
clear @s minecraft:knowledge_book
give @s minecraft:firework_rocket{Fireworks:{Flight:60}}