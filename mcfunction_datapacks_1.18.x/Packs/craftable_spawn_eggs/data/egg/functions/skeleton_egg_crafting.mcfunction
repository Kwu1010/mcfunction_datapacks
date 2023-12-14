# Re-enable recipe after crafting
# Give player crafted item

recipe take @s egg:skeleton_egg
advancement revoke @s only egg:craft_skeleton_egg_adv
clear @s minecraft:knowledge_book
give @s minecraft:skeleton_spawn_egg