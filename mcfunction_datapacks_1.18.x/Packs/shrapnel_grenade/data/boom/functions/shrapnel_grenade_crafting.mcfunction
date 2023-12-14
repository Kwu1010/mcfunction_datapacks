# Re-enable recipe after crafting
# Give player crafted item

recipe take @s boom:shrapnel_grenade
advancement revoke @s only boom:craft_shrapnel_grenade_adv
clear @s minecraft:knowledge_book
give @s minecraft:snowball{CustomModelData:1,display:{Name:"\"Shrapnel Grenade\""}}