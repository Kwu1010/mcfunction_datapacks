# Re-enable recipe after crafting
# Give player crafted item

recipe take @s egg:creeper_egg
advancement revoke @s only egg:craft_creeper_egg_adv
clear @s minecraft:knowledge_book
give @s minecraft:creeper_spawn_egg