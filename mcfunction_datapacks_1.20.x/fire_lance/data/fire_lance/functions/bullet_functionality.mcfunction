# Missile Lifetime
scoreboard players add @e[tag=fire_lance,tag=bullet] bullet_lifetime 1

# Bullet Increment
execute as @e[tag=fire_lance,tag=bullet] at @s run tp @s ^ ^ ^2 ~ ~0.5

# Impact Conditions
execute as @e[tag=fire_lance,tag=bullet] at @s positioned ~ ~1 ~ if entity @e[type=!#fire_lance:non_targets,tag=!flare,tag=!bullet,distance=..2] run tag @s add impact
execute as @e[tag=fire_lance,tag=bullet] at @s unless block ~ ~1 ~ #fire_lance:non_solid run tag @s add impact
execute as @e[tag=fire_lance,tag=bullet,scores={bullet_lifetime=100..}] run tag @s add impact

# Impact Function
execute as @e[tag=fire_lance,tag=bullet,tag=impact] at @s positioned ~ ~1 ~ as @e[distance=..2,type=!#fire_lance:non_targets,type=!witch] run damage @s 12 minecraft:magic
execute as @e[tag=fire_lance,tag=bullet,tag=impact] at @s positioned ~ ~1 ~ as @e[distance=..2,type=witch] run damage @s 10 minecraft:arrow
execute as @e[tag=fire_lance,tag=bullet,tag=impact] at @s run kill @s

# Bullet Increment
execute as @e[tag=fire_lance,tag=bullet] at @s run tp @s ^ ^ ^2 ~ ~0.5

# Impact Conditions
execute as @e[tag=fire_lance,tag=bullet] at @s positioned ~ ~1 ~ if entity @e[type=!#fire_lance:non_targets,tag=!flare,tag=!bullet,distance=..2] run tag @s add impact
execute as @e[tag=fire_lance,tag=bullet] at @s unless block ~ ~1 ~ #fire_lance:non_solid run tag @s add impact
execute as @e[tag=fire_lance,tag=bullet,scores={bullet_lifetime=100..}] run tag @s add impact

# Impact Function
execute as @e[tag=fire_lance,tag=bullet,tag=impact] at @s positioned ~ ~1 ~ as @e[distance=..2,type=!#fire_lance:non_targets,type=!witch] run damage @s 12 minecraft:magic
execute as @e[tag=fire_lance,tag=bullet,tag=impact] at @s positioned ~ ~1 ~ as @e[distance=..2,type=witch] run damage @s 10 minecraft:arrow
execute as @e[tag=fire_lance,tag=bullet,tag=impact] at @s run kill @s

# Particles And Sound
execute as @e[tag=fire_lance,tag=bullet] at @s run playsound minecraft:block.dispenser.launch voice @a ~ ~ ~ 1 0