execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=primed] at @s run playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 1 0
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=primed] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=primed] at @s run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=primed] at @s run particle minecraft:glow ~ ~ ~ 1.5 1.5 1.5 1 20 force
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=primed] at @s run scoreboard players add @s kaboom_prime_time 1
execute as @e[type=armor_stand,name="Nuclear Warhead",tag=warhead,tag=primed,scores={kaboom_prime_time=400..}] at @s run tag @s add detonate