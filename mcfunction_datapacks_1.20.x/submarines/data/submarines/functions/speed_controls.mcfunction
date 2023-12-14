# Throttle & Copy Player Speed To Submarine
scoreboard players set @a[tag=!driver,tag=!pilot] vehicle_speed 0
scoreboard players remove @a[tag=driver,nbt={SelectedItemSlot:0},scores={vehicle_speed=1..}] vehicle_speed 1
scoreboard players add @a[tag=driver,nbt={SelectedItemSlot:2},scores={vehicle_speed=..99}] vehicle_speed 1

# Nullify Speed If Wall
execute as @e[tag=submarine,tag=controller,tag=on_map_s] at @s unless block ^ ^.5 ^2 #submarines:sea_traversable run scoreboard players set @p[tag=driver,distance=..4] vehicle_speed 0

# Decrease Submarine Speed Unless There Is A Driver
execute as @e[tag=submarine,scores={vehicle_speed=1..}] at @s unless entity @a[tag=driver,distance=..4] run scoreboard players remove @s vehicle_speed 1

# Movement
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=5..9},tag=on_map_s] at @s if block ^ ^ ^.025 #submarines:sea_traversable run tp @s ^ ^ ^.025
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=10..19},tag=on_map_s] at @s if block ^ ^ ^.05 #submarines:sea_traversable run tp @s ^ ^ ^.05
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=20..29},tag=on_map_s] at @s if block ^ ^ ^.1 #submarines:sea_traversable run tp @s ^ ^ ^.1
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=30..39},tag=on_map_s] at @s if block ^ ^ ^.15 #submarines:sea_traversable run tp @s ^ ^ ^.15
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=40..49},tag=on_map_s] at @s if block ^ ^ ^.2 #submarines:sea_traversable run tp @s ^ ^ ^.2
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=50..59},tag=on_map_s] at @s if block ^ ^ ^.25 #submarines:sea_traversable run tp @s ^ ^ ^.25
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=60..69},tag=on_map_s] at @s if block ^ ^ ^.3 #submarines:sea_traversable run tp @s ^ ^ ^.3
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=70..79},tag=on_map_s] at @s if block ^ ^ ^.35 #submarines:sea_traversable run tp @s ^ ^ ^.35
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=80..89},tag=on_map_s] at @s if block ^ ^ ^.4 #submarines:sea_traversable run tp @s ^ ^ ^.4
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=90..99},tag=on_map_s] at @s if block ^ ^ ^.45 #submarines:sea_traversable run tp @s ^ ^ ^.45
execute as @e[tag=submarine,tag=controller,scores={vehicle_speed=100..},tag=on_map_s] at @s if block ^ ^ ^.5 #submarines:sea_traversable run tp @s ^ ^ ^.5

# Elevation Control
scoreboard players set up current_rotation -30
scoreboard players set down current_rotation 30
tag @a remove dive_control
tag @a[nbt={SelectedItemSlot:0}] add dive_control
tag @a[nbt={SelectedItemSlot:1}] add dive_control
tag @a[nbt={SelectedItemSlot:2}] add dive_control
execute as @e[tag=submarine,tag=controller,tag=on_map_s] at @s if entity @a[tag=driver,distance=..4,tag=dive_control] if score @s current_rotation < up current_rotation if block ~ ~1.6 ~ #submarines:sea_traversable run tp @s ~ ~0.1 ~
execute as @e[tag=submarine,tag=controller,tag=on_map_s] at @s if entity @a[tag=driver,distance=..4,tag=dive_control] if score @s current_rotation < up current_rotation if block ~ ~.7 ~ #submarines:sea_traversable if block ~ ~1.6 ~ #submarines:non_solid run tp @s ~ ~.1 ~
execute as @e[tag=submarine,tag=controller,tag=on_map_s] at @s if entity @a[tag=driver,distance=..4,tag=dive_control] if score @s current_rotation > down current_rotation if block ~ ~-.1 ~ #submarines:sea_traversable run tp @s ~ ~-0.1 ~

# Buoyancy
execute as @e[tag=submarine,tag=controller,tag=on_map_s] at @s unless entity @a[tag=driver,distance=..4] if block ~ ~1.6 ~ #submarines:sea_traversable run tp @s ~ ~.2 ~
execute as @e[tag=submarine,tag=controller,tag=on_map_s] at @s unless entity @a[tag=driver,distance=..4] if block ~ ~.7 ~ #submarines:sea_traversable if block ~ ~1.6 ~ #submarines:non_solid run tp @s ~ ~.2 ~

# Forceably Surface On World Border
execute as @e[tag=submarine,tag=controller,tag=!on_map_s] run scoreboard players set @p[tag=driver,distance=..4] vehicle_speed 0
execute as @e[tag=submarine,tag=controller,tag=!on_map_s] run scoreboard players set @s vehicle_speed 0
execute as @e[tag=submarine,tag=controller,tag=!on_map_s] at @s if block ~ ~1.6 ~ #submarines:sea_traversable run tp @s ~ ~.2 ~
execute as @e[tag=submarine,tag=controller,tag=!on_map_s] at @s if block ~ ~.7 ~ #submarines:sea_traversable if block ~ ~1.6 ~ #submarines:non_solid run tp @s ~ ~.2 ~

# Gravity On Land
execute as @e[tag=submarine,tag=controller,tag=on_map_s] at @s unless block ~ ~ ~ #submarines:sea_traversable if block ~ ~-.1 ~ #submarines:non_solid run tp @s ~ ~-.2 ~