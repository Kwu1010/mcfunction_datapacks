# Re-enable recipe after crafting
# Give player crafted item

recipe take @s compressor:tier1_compressor
advancement revoke @s only compressor:craft_tier1_adv
clear @s minecraft:knowledge_book
give @s minecraft:endermite_spawn_egg{CustomModelData:1,display:{Name:"\"Tier-1 Compressor\""}}