#####################################################################################################################################################
#
# Craft a piano wall, used to craft a mangrove piano
#
# Function activation condition(s):
#	A piano wall is crafted
#
# If a piano wall is crafted:
#	Revoke piano wall crafting recipe and advancement
#	Replace knowledge book placeholder from player inventory with a piano wall item
#
#####################################################################################################################################################

recipe take @s piano:piano_wall
advancement revoke @s only piano:craft_piano_wall_adv
clear @s minecraft:knowledge_book
give @s minecraft:command_block{display:{Name:"\"Piano Wall\""}}