recipe take @s submarines:diamond_submarine
recipe take @s submarines:gold_submarine
recipe take @s submarines:iron_submarine
advancement revoke @s only submarines:craft_diamond_submarine_adv
advancement revoke @s only submarines:craft_gold_submarine_adv
advancement revoke @s only submarines:craft_iron_submarine_adv
clear @s minecraft:barrier 1
give @s minecraft:endermite_spawn_egg{display:{Name:"\"Submarine Spawn Egg\""}}