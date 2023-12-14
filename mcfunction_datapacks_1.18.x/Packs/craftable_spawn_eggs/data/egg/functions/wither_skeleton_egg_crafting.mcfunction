# Re-enable recipe after crafting
# Give player crafted item

recipe take @s egg:wither_skeleton_egg
advancement revoke @s only egg:craft_wither_skeleton_egg_adv
clear @s minecraft:knowledge_book
give @s minecraft:wither_skeleton_spawn_egg