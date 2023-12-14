scoreboard objectives add reloader-missiles trigger
scoreboard objectives add reloader-flaregun trigger
scoreboard objectives add reloader-gun trigger
scoreboard players enable @a[tag=op] reloader-missiles
scoreboard players enable @a[tag=op] reloader-flaregun
scoreboard players enable @a[tag=op] reloader-gun
item replace entity @a[scores={reloader-missiles=1..1}] hotbar.8 with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\"",Lore:["\"AP Shell\""]},CustomModelData:1}
item replace entity @a[scores={reloader-missiles=2..2}] hotbar.8 with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"M202\"",Lore:["\"HE Shell\""]},CustomModelData:1}
item replace entity @a[scores={reloader-flaregun=1..1}] hotbar.7 with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Flare Gun\"",Lore:["\"Flare\""]},CustomModelData:4}
item replace entity @a[scores={reloader-gun=1..1}] hotbar.6 with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]},CustomModelData:3}
item replace entity @a[scores={reloader-gun=2..2}] hotbar.6 with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:30}