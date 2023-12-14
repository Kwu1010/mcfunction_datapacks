execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=detonate] at @s run tag @s remove primed

execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=detonate] at @s run function kaboom:detonation_sequence_slice
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=detonate] at @s run kill @e[tag=!cc,tag=!warhead,distance=..100]
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=cloud] at @s run function kaboom:cloud_sequence_slice
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=waiting] at @s run scoreboard players add @s kaboom_wait_time 1
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=clear] at @s run function kaboom:clear_sequence_slice

execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=detonate,scores={kaboom_rotation_count=360..}] at @s run tag @s add cloud
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=cloud] at @s run tag @s remove detonate
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=cloud,scores={kaboom_cloud_count=360..}] at @s run tag @s add waiting
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=waiting] at @s run tag @s remove detonate
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=waiting,scores={kaboom_wait_time=200..}] at @s run tag @s add clear
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=clear] at @s run tag @s remove waiting
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=clear,scores={kaboom_clear_count=360..}] at @s run tag @s add detonation_complete

execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=detonation_complete] at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 10 0
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=detonation_complete] at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 10 1
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=detonation_complete] at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 10 2
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=detonation_complete] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 10 0
kill @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=detonation_complete]

execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=!primed] at @s run effect give @e[tag=!cc,tag=!warhead,distance=..100] minecraft:wither 10000 10 true