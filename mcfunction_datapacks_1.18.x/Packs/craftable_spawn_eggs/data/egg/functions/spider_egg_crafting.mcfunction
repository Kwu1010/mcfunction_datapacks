# Re-enable recipe after crafting
# Give player crafted item

recipe take @s egg:spider_egg
advancement revoke @s only egg:craft_spider_egg_adv
clear @s minecraft:knowledge_book
give @s minecraft:spider_spawn_egg