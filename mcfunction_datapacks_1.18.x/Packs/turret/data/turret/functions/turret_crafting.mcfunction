# Re-enable recipe after crafting
# Give player crafted item

recipe take @s turret:turret
advancement revoke @s only turret:craft_turret_adv
clear @s minecraft:knowledge_book
give @s minecraft:endermite_spawn_egg{CustomModelData:2,display:{Name:"\"Spawn Turret\""}}