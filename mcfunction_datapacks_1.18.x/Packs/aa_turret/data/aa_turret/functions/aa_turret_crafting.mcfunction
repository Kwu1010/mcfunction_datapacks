# Re-enable recipe after crafting
# Give player crafted item

recipe take @s aa_turret:aa_turret
advancement revoke @s only aa_turret:craft_aa_turret_adv
clear @s minecraft:knowledge_book
give @s minecraft:silverfish_spawn_egg{CustomModelData:3,display:{Name:"\"Spawn AA-Turret\""}}