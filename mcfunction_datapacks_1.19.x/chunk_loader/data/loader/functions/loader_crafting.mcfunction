#####################################################################################################################################################
#
# Custom crafting recipe for the chunk loader
#
# Function activation condition(s):
#	When the chunk loader recipe is crafted by a player
#
# When the chunk loader recipe is crafted: 
# 	Revoke chunk loader recipe
#	Revoke chunk loader advancement
# 	Replace crafted knowledge book placeholder with a chunk loader spawn egg
#
#####################################################################################################################################################

recipe take @s loader:loader
advancement revoke @s only loader:craft_loader_adv
clear @s minecraft:knowledge_book
give @s minecraft:silverfish_spawn_egg{CustomModelData:2,display:{Name:"\"Chunk Loader\""}}