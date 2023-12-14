# Missile Lifetime
scoreboard players add @e[tag=coilgun,tag=bullet] bullet_lifetime 1

# Bullet Increment
execute as @e[tag=coilgun,tag=bullet] at @s run tp @s ^ ^ ^2 ~ ~0.5

# Impact Conditions
execute as @e[tag=coilgun,tag=bullet] at @s positioned ~ ~1 ~ if entity @e[type=!#coilgun:non_targets,tag=!flare,tag=!bullet,distance=..2] run tag @s add impact
execute as @e[tag=coilgun,tag=bullet] at @s unless block ~ ~1 ~ #coilgun:non_solid run tag @s add impact
execute as @e[tag=coilgun,tag=bullet,scores={bullet_lifetime=100..}] run tag @s add impact

# Impact Function
execute as @e[tag=coilgun,tag=bullet,tag=impact] at @s positioned ~ ~1 ~ as @e[distance=..2,type=!#coilgun:non_targets,type=!witch] run damage @s 6 minecraft:magic
execute as @e[tag=coilgun,tag=bullet,tag=impact] at @s positioned ~ ~1 ~ as @e[distance=..2,type=witch] run damage @s 8 minecraft:arrow
execute as @e[tag=coilgun,tag=bullet,tag=impact] at @s run kill @s

# Bullet Increment
execute as @e[tag=coilgun,tag=bullet] at @s run tp @s ^ ^ ^2 ~ ~0.5

# Impact Conditions
execute as @e[tag=coilgun,tag=bullet] at @s positioned ~ ~1 ~ if entity @e[type=!#coilgun:non_targets,tag=!flare,tag=!bullet,distance=..2] run tag @s add impact
execute as @e[tag=coilgun,tag=bullet] at @s unless block ~ ~1 ~ #coilgun:non_solid run tag @s add impact
execute as @e[tag=coilgun,tag=bullet,scores={bullet_lifetime=100..}] run tag @s add impact

# Impact Function
execute as @e[tag=coilgun,tag=bullet,tag=impact] at @s positioned ~ ~1 ~ as @e[distance=..2,type=!#coilgun:non_targets,type=!witch] run damage @s 6 minecraft:magic
execute as @e[tag=coilgun,tag=bullet,tag=impact] at @s positioned ~ ~1 ~ as @e[distance=..2,type=witch] run damage @s 8 minecraft:arrow
execute as @e[tag=coilgun,tag=bullet,tag=impact] at @s run kill @s

# Particles And Sound
execute as @e[tag=coilgun,tag=bullet] at @s run playsound minecraft:block.dispenser.launch voice @a ~ ~ ~ 1 0