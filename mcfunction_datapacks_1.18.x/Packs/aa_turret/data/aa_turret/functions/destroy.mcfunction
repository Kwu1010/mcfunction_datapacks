execute as @e[type=armor_stand,tag=aaturret,tag=!aamissile] at @s unless block ~ ~ ~ daylight_detector run tag @s add pack
execute as @e[type=armor_stand,tag=aaturret,tag=control,tag=pack] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:silverfish_spawn_egg",Count:1b,tag:{CustomModelData:3,display:{Name:"\"Spawn AA-Turret\""}}}}
execute as @e[type=armor_stand,tag=aaturret,tag=control,tag=pack] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:daylight_detector"}},distance=..2,limit=1]
execute as @e[type=armor_stand,tag=aaturret,tag=pack] at @s run kill @s