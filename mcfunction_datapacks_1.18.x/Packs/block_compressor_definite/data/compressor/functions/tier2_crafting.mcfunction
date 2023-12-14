# Re-enable recipe after crafting
# Give player crafted item

recipe take @s compressor:tier2_compressor
advancement revoke @s only compressor:craft_tier2_adv
clear @s minecraft:knowledge_book
give @s minecraft:silverfish_spawn_egg{CustomModelData:1,display:{Name:"\"Tier-2 Compressor\""}}