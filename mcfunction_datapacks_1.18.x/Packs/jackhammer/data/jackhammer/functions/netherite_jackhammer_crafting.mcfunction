# Re-enable recipe after crafting
# Give player crafted item

recipe take @s jackhammer:netherite_jackhammer
advancement revoke @s only jackhammer:craft_netherite_jackhammer_adv
clear @s minecraft:knowledge_book
give @s minecraft:netherite_pickaxe{CustomModelData:1,display:{Name:"\"Netherite Jackhammer\""}}