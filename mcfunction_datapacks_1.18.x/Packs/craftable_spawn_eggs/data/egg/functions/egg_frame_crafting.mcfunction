# Re-enable recipe after crafting
# Give player crafted item

recipe take @s egg:egg_frame
advancement revoke @s only egg:craft_egg_frame_adv
clear @s minecraft:knowledge_book
give @s minecraft:chain_command_block{display:{Name:"\"Egg Frame\""}}