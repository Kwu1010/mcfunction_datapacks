# Missile Lifetime
scoreboard players add @e[tag=missile] missile_lifetime 1

# Impact Conditions
execute as @e[tag=missile,tag=ap_shell] at @s if entity @e[type=!#202:non_targets,tag=!flare,tag=!missile,distance=..2] run tag @s add impact
execute as @e[tag=missile,tag=ap_shell] at @s if entity @e[tag=flare,tag=target,distance=..3] run tag @s add impact
execute as @e[tag=missile,tag=ap_shell] at @s unless block ^ ^1 ^ #202:non_solid run tag @s add impact
execute as @e[tag=missile,tag=ap_shell] at @s unless block ^ ^1 ^1 #202:non_solid run tag @s add impact
execute as @e[tag=missile,tag=ap_shell] at @s if block ^ ^1 ^ water run tag @s add impact
execute as @e[tag=missile,tag=ap_shell] at @s if block ^ ^1 ^ lava run tag @s add impact
execute as @e[tag=missile,tag=ap_shell,scores={missile_lifetime=100..}] run tag @s add impact

# Impact Function
execute as @e[tag=missile,tag=impact] at @s as @e[distance=..2,type=!#202:non_targets] run damage @s 25 minecraft:arrow
execute as @e[tag=missile,tag=impact] at @s run kill @s

# Detonation Conditions: In Ground Or On Entity
execute as @e[tag=missile,tag=he_shell] at @s if entity @e[type=!#202:non_targets,tag=!flare,tag=!missile,distance=..3] run tag @s add detonate
execute as @e[tag=missile,tag=he_shell] at @s if entity @e[tag=flare,tag=target,distance=..3] run tag @s add detonate
execute as @e[tag=missile,tag=he_shell] at @s unless block ^ ^1 ^ #202:non_solid run tag @s add detonate
execute as @e[tag=missile,tag=he_shell] at @s unless block ^ ^1 ^1 #202:non_solid run tag @s add detonate
execute as @e[tag=missile,tag=he_shell] at @s if block ^ ^1 ^ water run tag @s add detonate
execute as @e[tag=missile,tag=he_shell] at @s if block ^ ^1 ^ lava run tag @s add detonate
execute as @e[tag=missile,tag=he_shell,scores={missile_lifetime=100..}] run tag @s add detonate

# Detonation Function
execute as @e[tag=missile,tag=detonate] at @s run summon creeper ~ ~1 ~ {ExplosionRadius:5,ignited:1b,Fuse:0s}
execute as @e[tag=missile,tag=detonate] at @s run kill @s