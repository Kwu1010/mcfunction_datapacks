# Spawn Despawner On Click To Despawn
execute as @e[tag=submarine,tag=controller] at @s unless entity @e[tag=submarine,tag=seat,distance=..4] run tag @s add despawn

# Despawn Oldest Duplicate Vehicle If More Than 1 Exists
execute as @e[tag=submarine,tag=seat] at @s run function submarines:call_despawn_oldest

# Despawn On Submarine-Submarine Collision
execute as @e[tag=submarine,tag=seat] at @s if entity @e[tag=submarine,tag=seat,distance=1..2] run tag @s add despawn

# Kill Submarine Parts If No Seat With Corrosponding Submarine ID Is Nearby
execute as @e[tag=submarine,tag=!seat,tag=!controller] at @s if entity @a[distance=..100] unless entity @e[tag=submarine,tag=seat,distance=..10] run kill @s