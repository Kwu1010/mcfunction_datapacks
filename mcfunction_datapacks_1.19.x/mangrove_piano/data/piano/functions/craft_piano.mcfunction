#####################################################################################################################################################
#
# Craft a mangrove piano
#
# Function activation condition(s):
#	A mangrove piano is crafted
#
# If a mangrove piano is crafted:
#	Revoke piano crafting recipe and advancement
#	Replace knowledge book placeholder from player inventory with a piano spawn egg
#
#####################################################################################################################################################

recipe take @s piano:piano
advancement revoke @s only piano:craft_piano_adv
clear @s minecraft:knowledge_book
give @s minecraft:endermite_spawn_egg{CustomModelData:1,display:{Name:"\"Piano Spawn Egg\""}}