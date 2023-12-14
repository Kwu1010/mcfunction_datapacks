# Initialize programs for Ikea. 
execute in ikea_dimension:ikea as @e[tag=start] at @s run forceload add 0 0
execute in ikea_dimension:ikea as @e[tag=start] at @s run kill @e[tag=ikea,tag=init,type=armor_stand]
execute in ikea_dimension:ikea as @e[tag=start] at @s run scoreboard objectives add startwait dummy
execute in ikea_dimension:ikea as @e[tag=start] at @s run scoreboard players add @e[tag=start] startwait 1
execute if score #global_day do_daylight_cycle matches 0 in ikea_dimension:ikea as @e[tag=start] at @s run execute as @e[tag=start,scores={startwait=100..100}] at @s run summon armor_stand 0 0 0 {CustomName:"\"Ikea\"",Tags:["ikea","init","stop_daycycle"],NoGravity:1,Invisible:1,Invulnerable:1,Small:1}
execute if score #global_day do_daylight_cycle matches 1 in ikea_dimension:ikea as @e[tag=start] at @s run execute as @e[tag=start,scores={startwait=100..100}] at @s run summon armor_stand 0 0 0 {CustomName:"\"Ikea\"",Tags:["ikea","init"],NoGravity:1,Invisible:1,Invulnerable:1,Small:1}
execute as @e[tag=start] at @s run kill @e[tag=start,scores={startwait=100..}]
execute in ikea_dimension:ikea as @e[tag=start] at @s unless block 0 0 0 glowstone run summon endermite 0 35 0 {CustomName:"\"Spawn Ikea\""}
execute in ikea_dimension:ikea as @e[tag=start] at @s unless block 0 0 0 glowstone run setblock 0 0 0 glowstone
execute as @a[nbt=!{Dimension:"ikea_dimension:ikea"},tag=!cc] at @s in ikea_dimension:ikea run tp @s ~ 36 ~