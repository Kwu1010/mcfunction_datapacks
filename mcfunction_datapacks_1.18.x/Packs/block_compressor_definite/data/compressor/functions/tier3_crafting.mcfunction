# Re-enable recipe after crafting
# Give player crafted item

recipe take @s compressor:tier3_compressor
advancement revoke @s only compressor:craft_tier3_adv
clear @s minecraft:knowledge_book
give @s minecraft:endermite_spawn_egg{CustomModelData:1,display:{Name:"\"Tier-3 Compressor\""}}