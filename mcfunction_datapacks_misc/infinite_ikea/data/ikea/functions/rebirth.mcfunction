# Close exit and award player.
execute as @e[tag=ikea,tag=exit] at @s as @a[distance=..1] at @s run effect give @s resistance 20 4 true
execute as @e[tag=ikea,tag=exit] at @s as @a[distance=..1] at @s in minecraft:overworld run tp @s ~ 300 ~