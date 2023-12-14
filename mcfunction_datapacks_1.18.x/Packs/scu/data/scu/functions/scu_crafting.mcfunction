# Re-enable recipe after crafting
# Give player crafted item

recipe take @s scu:scu
advancement revoke @s only scu:craft_scu_adv
clear @s minecraft:knowledge_book
give @s minecraft:endermite_spawn_egg{CustomModelData:3,display:{Name:"\"SCU\""}}