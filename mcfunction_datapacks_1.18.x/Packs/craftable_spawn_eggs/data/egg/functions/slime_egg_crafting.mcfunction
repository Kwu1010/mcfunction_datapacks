# Re-enable recipe after crafting
# Give player crafted item

recipe take @s egg:slime_egg
advancement revoke @s only egg:craft_slime_egg_adv
clear @s minecraft:knowledge_book
give @s minecraft:slime_spawn_egg