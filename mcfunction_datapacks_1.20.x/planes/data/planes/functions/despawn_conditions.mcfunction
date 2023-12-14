# Spawn Despawner On Click To Despawn
execute as @e[tag=plane,tag=seat] at @s unless entity @s[nbt={SaddleItem:{tag:{display:{Name:"\"Click To Despawn\""}}}}] run tag @s add despawn

# If Plane Impacts Wall At High Speeds, Detonate
execute as @e[tag=plane,tag=controller] at @s if score @s vehicle_speed > flight_threshold vehicle_speed unless block ~ ~1 ~ #planes:non_solid run tag @s add detonate

# If Plane Detects Player In Radius But No Seat, Detonate
execute as @e[tag=plane,tag=controller] at @s if entity @a[distance=..100] unless entity @e[tag=plane,tag=seat,distance=..4] run tag @s add detonate

# If Plane Detects Another In Radius, Detonate
execute as @e[tag=plane,tag=seat] at @s if entity @e[tag=plane,tag=seat,distance=2..6] run tag @s add detonate

# Kill Plane Parts If No Seat With Corrosponding Plane ID Is Nearby
execute as @e[tag=plane,tag=!seat,tag=!controller] at @s if entity @a[distance=..100] unless entity @e[tag=plane,tag=seat,distance=..10] run kill @s

# Despawn If No Player Nearby
execute as @e[tag=plane,tag=seat] at @s unless entity @a[tag=pilot,distance=..20] if entity @a[tag=pilot,distance=..100] run tag @s add despawn

# Despawn If Lifetime Hits 0
execute as @e[tag=plane,tag=controller,scores={lifetime=..0}] at @s as @e[tag=plane,tag=seat,distance=..4,limit=1,sort=nearest] run tag @s add despawn