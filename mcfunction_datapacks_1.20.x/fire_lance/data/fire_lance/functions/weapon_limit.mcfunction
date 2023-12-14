# Test For Fire Lance In Offhand
tag @a remove hold_fire_lance_offhand
tag @a remove hold_fire_lance_loaded_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"Fire Lance\"",Lore:["\"Empty\""]}}}]}] add hold_fire_lance_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]}}}]}] add hold_fire_lance_loaded_offhand

# Unequip Fire Lance In Offhand
execute as @a[tag=hold_fire_lance_offhand] run item replace entity @s weapon.offhand with air
execute as @a[tag=hold_fire_lance_offhand,tag=!hold_fire_lance_loaded_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\""},CustomModelData:3}
execute as @a[tag=hold_fire_lance_offhand,tag=hold_fire_lance_loaded_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]},CustomModelData:3}