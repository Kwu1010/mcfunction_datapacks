# Re-enable recipe after crafting
# Give player crafted item

recipe take @s egg:MOB_egg
advancement revoke @s only egg:craft_MOB_egg_adv
clear @s minecraft:knowledge_book
give @s minecraft:MOB_spawn_egg