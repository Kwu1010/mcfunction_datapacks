# Missile Spawn
execute as @a[tag=hold_202_ap,scores={fired_202=1..}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Missile\"",Tags:["missiletemp","ap_shell"],ArmorItems:[{},{},{},{id:"structure_void",Count:1b,tag:{CustomModelData:23}}],Invisible:1,NoGravity:1,Pose:{Head:[0f,0.1f,0f]}}
execute as @a[tag=hold_202_he,scores={fired_202=1..}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Missile\"",Tags:["missiletemp","he_shell"],ArmorItems:[{},{},{},{id:"structure_void",Count:1b,tag:{CustomModelData:23}}],Invisible:1,NoGravity:1,Pose:{Head:[0f,0.1f,0f]}}
execute as @a[tag=hold_202_ap,scores={fired_202=1..}] at @s run playsound minecraft:custom.fired_202 player @a ~ ~ ~ 1 1
execute as @a[tag=hold_202_he,scores={fired_202=1..}] at @s run playsound minecraft:custom.fired_202 player @a ~ ~ ~ 1 1

# Missile Init
execute as @e[tag=missiletemp,tag=ap_shell] at @s at @p[tag=hold_202_ap,scores={fired_202=1..},distance=..4] run tp @s ^ ^ ^-0.1 facing entity @p[tag=hold_202_ap,scores={fired_202=1..},distance=..4]
execute as @e[tag=missiletemp,tag=he_shell] at @s at @p[tag=hold_202_he,scores={fired_202=1..},distance=..4] run tp @s ^ ^ ^-0.1 facing entity @p[tag=hold_202_he,scores={fired_202=1..},distance=..4]
execute as @e[tag=missiletemp] at @s run tp @s ^ ^ ^4
execute as @e[tag=missiletemp] run tag @s add missile
execute as @e[tag=missiletemp] run tag @s remove missiletemp

# Missile Visual Set
execute as @e[tag=missile] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]