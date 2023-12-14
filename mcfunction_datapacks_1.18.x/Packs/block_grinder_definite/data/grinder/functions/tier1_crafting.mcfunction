# Re-enable recipe after crafting
# Give player crafted item

recipe take @s grinder:tier1_grinder
advancement revoke @s only grinder:craft_tier1_adv
clear @s minecraft:knowledge_book
give @s minecraft:endermite_spawn_egg{CustomModelData:1,display:{Name:"\"Tier-1 Grinder\""}}