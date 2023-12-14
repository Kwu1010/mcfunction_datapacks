gamerule showDeathMessages true
execute as @e[type=armor_stand,tag=bullet] at @s if entity @a[distance=..1] run gamerule showDeathMessages false
execute as @e[type=armor_stand,tag=bullet] at @s if entity @a[distance=..1] run function turret:deathmessage
scoreboard players add @e[type=armor_stand,tag=bullet] bullettime 1
scoreboard players add @a damagecooldown 1
execute as @e[type=armor_stand,tag=bullet] at @s run effect give @e[distance=..1,tag=!turret,tag=!undead,tag=!highhealth] instant_damage 1 0 true
execute as @e[type=armor_stand,tag=bullet] at @s run effect give @e[distance=..1,tag=!turret,tag=!undead,tag=!highhealth,scores={damagecooldown=1..}] regeneration 1 1 true
scoreboard players set @a[scores={damagecooldown=1..}] damagecooldown 0
execute as @e[type=armor_stand,tag=bullet] at @s run effect give @e[distance=..1,tag=!turret,tag=undead] instant_health 1 0 true
execute as @e[type=armor_stand,tag=bullet] at @s run effect give @e[distance=..1,tag=!turret,tag=!undead,type=!player] instant_damage 1 0 true
execute as @e[type=armor_stand,tag=bullet] at @s if entity @e[tag=!notarget,distance=..1,tag=!turret] run kill @s
execute as @e[type=armor_stand,tag=bullet] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ grass unless block ~ ~ ~ tall_grass unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ grass unless block ~ ~1 ~ tall_grass unless block ^ ^ ^1 air unless block ^ ^ ^1 water unless block ^ ^ ^1 grass unless block ^ ^ ^1 tall_grass run kill @s
execute as @e[type=armor_stand,tag=bullet] at @s run tp @s ^ ^ ^1
kill @e[type=armor_stand,tag=bullet,scores={bullettime=15..}]