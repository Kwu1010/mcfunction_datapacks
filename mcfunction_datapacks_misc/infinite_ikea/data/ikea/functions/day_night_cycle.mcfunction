# Runs the 5 minute day and 5 minute night cycles inside the Ikea.

# Initialize scoreboards and variables.
scoreboard objectives add ikeacycle dummy
scoreboard players add @e[type=armor_stand,tag=ikea,tag=init,tag=!stop_daycycle] ikeacycle 1

# Day and night sounds and lights.
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=20..20}] as @a at @s run stopsound @s
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=20..20}] as @a at @s run playsound minecraft:block.piston.extend master @s
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=20..20}] at @s run tag @e[tag=employee] remove hit
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=20..20}] at @s run tag @e[tag=employee] remove night
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=6000..6000}] as @a at @s run stopsound @s
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=6000..6000}] as @a at @s run playsound minecraft:ambient.cave master @s
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=6000..11999}] at @s run effect give @a[distance=0..] darkness 2 0 true
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=6000..11999}] at @s run tag @e[tag=employee] add night
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=12000..}] at @s run scoreboard players set @s ikeacycle 0