kill @e[type=armor_stand,tag=aamissile,scores={aamissiletime=200..}]
execute as @e[type=armor_stand,tag=aamissile] at @s unless entity @e[tag=aalock,distance=..100] run kill @s
execute as @e[type=armor_stand,tag=aamissile] at @s anchored eyes facing entity @e[tag=aalock,sort=nearest,limit=1] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~
execute as @e[type=armor_stand,tag=aamissile] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=aamissile] at @s if entity @e[tag=aalock,distance=..1] run tag @s add aadetonate
execute as @e[type=armor_stand,tag=aamissile] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 grass unless block ^ ^ ^1 tall_grass unless block ^ ^ ^1 #tall_flowers unless block ^ ^ ^1 #flowers unless block ^ ^ ^1 water run tag @s add aadetonate
execute as @e[type=armor_stand,tag=aamissile,tag=aadetonate] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;14602026,15435844],FadeColors:[I;1973019,11250603,4408131]}]}}}}
execute as @e[type=armor_stand,tag=aamissile,tag=aadetonate] at @s run kill @s