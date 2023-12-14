# Bullet Spawn
execute as @a[tag=hold_coilgun_loaded,scores={fired_coilgun=1..},tag=!reload_coilgun] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Bullet\"",Tags:["coilgun","bullettemp"],ArmorItems:[{},{},{},{id:"acacia_button",Count:1b}],Invisible:1,NoGravity:1,Pose:{Head:[0f,0.1f,0f]}}
execute as @a[tag=hold_coilgun_loaded,scores={fired_coilgun=1..},tag=!reload_coilgun] at @s run playsound minecraft:custom.fired_202 player @a ~ ~ ~ 1 2

# Bullet Init
execute as @e[tag=bullettemp,tag=coilgun] at @s at @p[tag=hold_coilgun_loaded,scores={fired_coilgun=1..},distance=..4] run tp @s ^ ^ ^-0.1 facing entity @p[tag=hold_coilgun_loaded,scores={fired_coilgun=1..},distance=..4]
execute as @e[tag=bullettemp] at @s run tp @s ^ ^ ^2.5
execute as @e[tag=bullettemp] at @s if entity @e[tag=plane,distance=..2] run tp @s ^ ^ ^2.5
execute as @e[tag=bullettemp] run tag @s add bullet
execute as @e[tag=bullettemp] run tag @s remove bullettemp

# Bullet Visual Set
execute as @e[tag=bullet] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]