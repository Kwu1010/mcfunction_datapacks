execute as @e[type=armor_stand,tag=aaturret,tag=control] at @s positioned ~ ~50 ~ if entity @e[tag=aatarget,distance=..40] run playsound minecraft:block.beacon.ambient master @a ~ ~-50 ~ 1 2
execute as @e[tag=aalock] at @s unless entity @e[type=armor_stand,tag=aaturret,distance=..100] run tag @s remove aalock
execute as @e[type=armor_stand,tag=aaturret,tag=control] at @s positioned ~ ~50 ~ run tag @e[tag=aatarget,distance=..40] add aalock
execute as @e[type=armor_stand,tag=aaturret,tag=control] at @s run tp @s ~ ~ ~ ~10 ~
scoreboard players set @e[type=armor_stand,tag=aaturret,tag=control,scores={aafiretime=100..}] aafiretime 0
execute as @e[type=armor_stand,tag=aaturret,tag=control,scores={aafiretime=0..}] at @s positioned ~ ~50 ~ unless entity @e[tag=aatarget,distance=..40] run scoreboard players set @s aafiretime 0
execute as @e[type=armor_stand,tag=aaturret,tag=control] at @s positioned ~ ~50 ~ if entity @e[tag=aatarget,distance=..40] run scoreboard players add @s aafiretime 1
execute as @e[type=armor_stand,tag=aaturret,tag=control,scores={aafiretime=20..20}] at @s positioned ~ ~50 ~ if entity @e[tag=aatarget,distance=..40] run summon armor_stand ~ ~-50 ~ {Small:1,CustomName:"\"aamissile\"",Tags:["aaturret","aamissile"],Invisible:1,NoGravity:1}
execute as @e[type=armor_stand,tag=aaturret,tag=control,scores={aafiretime=20..20}] at @s positioned ~ ~50 ~ if entity @e[tag=aatarget,distance=..40] run playsound minecraft:block.note_block.bit master @a ~ ~-50 ~ 1 1
execute as @e[type=armor_stand,tag=aaturret,tag=control,scores={aafiretime=70..70}] at @s positioned ~ ~50 ~ if entity @e[tag=aatarget,distance=..40] run summon armor_stand ~ ~-50 ~ {Small:1,CustomName:"\"aamissile\"",Tags:["aaturret","aamissile"],Invisible:1,NoGravity:1}
execute as @e[type=armor_stand,tag=aaturret,tag=control,scores={aafiretime=70..70}] at @s positioned ~ ~50 ~ if entity @e[tag=aatarget,distance=..40] run playsound minecraft:block.note_block.bit master @a ~ ~-50 ~ 1 1
scoreboard players add @e[type=armor_stand,tag=aamissile] aamissiletime 1
execute as @e[type=armor_stand,tag=aaturret,tag=control] at @s run tp @e[type=armor_stand,tag=aamissile,distance=..1,scores={aamissiletime=1..1}] ^ ^ ^-0.001 facing entity @s