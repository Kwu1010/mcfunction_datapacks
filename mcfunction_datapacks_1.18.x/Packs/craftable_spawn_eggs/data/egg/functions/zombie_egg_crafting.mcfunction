# Re-enable recipe after crafting
# Give player crafted item

recipe take @s egg:zombie_egg
advancement revoke @s only egg:craft_zombie_egg_adv
clear @s minecraft:knowledge_book
give @s minecraft:zombie_spawn_egg