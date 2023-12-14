recipe take @s fire_lance:fire_lance_bullet
advancement revoke @s only fire_lance:craft_fire_lance_bullet_adv
clear @s minecraft:barrier 1
give @s minecraft:command_block{display:{Name:"\"Bullet\"",Lore:["\"Hold In Offhand And Press Q To Reload Weapons\""]},CustomModelData:3} 4