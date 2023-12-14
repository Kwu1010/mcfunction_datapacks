# Throttle & Copy Player Speed To Plane
execute as @a[tag=pilot,nbt={SelectedItemSlot:0}] at @s run scoreboard players remove @e[tag=plane,tag=controller,scores={vehicle_speed=1..},limit=1,sort=nearest,distance=..4] vehicle_speed 1
execute as @a[tag=pilot,nbt={SelectedItemSlot:2}] at @s run scoreboard players add @e[tag=plane,tag=controller,scores={vehicle_speed=..399},limit=1,sort=nearest,distance=..4] vehicle_speed 1

# Arc Plane Trajectory Unless There Is A Pilot, Or Slow Plane (Based On Speed)
execute as @e[tag=plane,scores={vehicle_speed=1..99}] at @s unless entity @a[tag=pilot,distance=..4] run scoreboard players remove @s vehicle_speed 1
execute as @e[tag=plane,scores={vehicle_speed=100..}] at @s unless entity @a[tag=pilot,distance=..4] run tp @s ~ ~ ~ ~ ~1

# Movement
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=10..19}] at @s if block ^ ^1 ^1 #planes:non_solid run tp @s ^ ^ ^.005
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=20..29}] at @s if block ^ ^1 ^1 #planes:non_solid run tp @s ^ ^ ^.01
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=30..39}] at @s if block ^ ^1 ^1 #planes:non_solid run tp @s ^ ^ ^.025
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=25..29}] at @s if block ^ ^1 ^1 #planes:non_solid run tp @s ^ ^ ^.05
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=30..49}] at @s if block ^ ^1 ^1 #planes:non_solid run tp @s ^ ^ ^.1
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=50..69}] at @s if block ^ ^1 ^1 #planes:non_solid run tp @s ^ ^ ^.2
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=70..89}] at @s if block ^ ^1 ^1 #planes:non_solid run tp @s ^ ^ ^.3
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=90..99}] at @s if block ^ ^1 ^1 #planes:non_solid run tp @s ^ ^ ^.4
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=100..124}] at @s run tp @s ^ ^ ^.5
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=125..149}] at @s run tp @s ^ ^ ^.6
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=150..174}] at @s run tp @s ^ ^ ^.7
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=175..199}] at @s run tp @s ^ ^ ^.8
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=200..224}] at @s run tp @s ^ ^ ^.9
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=225..249}] at @s run tp @s ^ ^ ^1
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=250..274}] at @s run tp @s ^ ^ ^1.1
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=275..299}] at @s run tp @s ^ ^ ^1.2
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=300..324}] at @s run tp @s ^ ^ ^1.4
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=325..349}] at @s run tp @s ^ ^ ^1.6
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=350..399}] at @s run tp @s ^ ^ ^1.8
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=400..}] at @s run tp @s ^ ^ ^2

# Gravity
execute as @e[tag=plane,tag=controller,tag=!hover] at @s if score @s vehicle_speed < flight_threshold vehicle_speed if block ~ ~-.1 ~ #planes:non_solid run tp @s ~ ~-.1 ~
execute as @e[tag=plane,tag=controller,tag=!hover] at @s if score @s vehicle_speed < stall_threshold vehicle_speed if block ~ ~-.1 ~ #planes:non_solid run tp @s ~ ~-.1 ~

# Ground Clipping
execute as @e[tag=plane,tag=controller] at @s if score @s vehicle_speed < flight_threshold vehicle_speed unless block ~ ~ ~ #planes:non_solid run tp @s ~ ~.25 ~