# Re-enable recipe after crafting
# Give player crafted item

recipe take @s jackhammer:diamond_jackhammer
advancement revoke @s only jackhammer:craft_diamond_jackhammer_adv
clear @s minecraft:knowledge_book
give @s minecraft:diamond_pickaxe{CustomModelData:1,display:{Name:"\"Diamond Jackhammer\""}}