#####################################################################################################################################################
#
# Craft a piano leg, used to craft a mangrove piano
#
# Function activation condition(s):
#	A piano leg is crafted
#
# If a piano leg is crafted:
#	Revoke piano leg crafting recipe and advancement
#	Replace knowledge book placeholder from player inventory with a piano leg item
#
#####################################################################################################################################################

recipe take @s piano:piano_leg
advancement revoke @s only piano:craft_piano_leg_adv
clear @s minecraft:knowledge_book
give @s minecraft:chain_command_block{display:{Name:"\"Piano Leg\""}}