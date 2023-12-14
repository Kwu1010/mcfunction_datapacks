# Test For M202 In Offhand
tag @a remove hold_202_offhand
tag @a remove hold_202_ap_offhand
tag @a remove hold_202_he_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"M202\""}}}]}] add hold_202_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"M202\"",Lore:["\"AP Shell\""]}}}]}] add hold_202_ap_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"M202\"",Lore:["\"HE Shell\""]}}}]}] add hold_202_he_offhand

# Unequip M202 In Offhand
execute as @a[tag=hold_202_offhand] run item replace entity @s weapon.offhand with air
execute as @a[tag=hold_202_offhand,tag=!hold_202_ap_offhand,tag=!hold_202_he_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\""},CustomModelData:1}
execute as @a[tag=hold_202_offhand,tag=hold_202_ap_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\"",Lore:["\"AP Shell\""]},CustomModelData:1}
execute as @a[tag=hold_202_offhand,tag=hold_202_he_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\"",Lore:["\"HE Shell\""]},CustomModelData:1}