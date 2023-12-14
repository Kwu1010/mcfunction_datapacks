# Re-enable recipe after crafting
# Give player crafted item

recipe take @s grinder:tier2_grinder
advancement revoke @s only grinder:craft_tier2_adv
clear @s minecraft:knowledge_book
give @s minecraft:silverfish_spawn_egg{CustomModelData:1,display:{Name:"\"Tier-2 Grinder\""}}