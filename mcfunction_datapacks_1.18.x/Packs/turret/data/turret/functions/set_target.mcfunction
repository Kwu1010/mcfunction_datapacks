execute as @s at @s run tag @e remove lock
execute as @s at @s at @e[type=armor_stand,tag=turret,tag=control,distance=..1] positioned ^ ^ ^7 run tag @e[distance=..7,sort=nearest,limit=1,tag=!notarget] add lock
execute as @s at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,tag=lock]
scoreboard players add @s bulletspawn 1
execute as @s[scores={bulletspawn=2..2,activation=100..}] at @s at @e[type=armor_stand,tag=turret,tag=control,distance=..1] positioned ^ ^ ^7 if entity @e[distance=..7,tag=lock] at @s run summon armor_stand ~ ~ ~ {Small:1,CustomName:"\"bullet\"",Tags:["turret","bullet"],Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
execute as @s[scores={bulletspawn=2..2,activation=100..}] at @s at @e[type=armor_stand,tag=turret,tag=control,distance=..1] positioned ^ ^ ^7 if entity @e[distance=..7,tag=lock] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1
execute as @s[scores={bulletspawn=2..2,activation=100..}] at @s at @e[type=armor_stand,tag=turret,tag=defective,tag=control,distance=..1] positioned ^ ^ ^7 if entity @e[distance=..7,tag=lock] at @s run playsound minecraft:music_disc.11 master @a ~ ~ ~ 1 1
execute as @s[scores={bulletspawn=2..2}] at @s run tp @e[type=armor_stand,tag=bullet,distance=..1] ^ ^ ^-0.01 facing entity @s
execute as @s[scores={bulletspawn=2..2}] at @s run scoreboard players set @e[type=armor_stand,tag=bullet,distance=..1] bullettime 0
scoreboard players set @s[scores={bulletspawn=2..}] bulletspawn 0
execute as @s at @s run tag @e remove lock