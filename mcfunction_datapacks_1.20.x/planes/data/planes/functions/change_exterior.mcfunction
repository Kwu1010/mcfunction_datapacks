# Register Exterior Change Request
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b}}] at @s run scoreboard players add @p[distance=..6] change_counter 1

# Update Exterior Data
execute as @a[scores={change_counter=4..},name=!Totally_Normal,name=!TwoCanOfTuna] if score setting era_lock < lock_one era_lock run scoreboard players set @s change_counter 0
execute as @a[scores={change_counter=6..},name=!Totally_Normal,name=!TwoCanOfTuna,tag=!cc] if score setting era_lock < lock_two era_lock run scoreboard players set @s change_counter 0
execute as @a[scores={change_counter=7..},name=!Totally_Normal,name=!TwoCanOfTuna] run scoreboard players set @s change_counter 0
execute as @a[scores={change_counter=9..}] run scoreboard players set @s change_counter 0
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b}}] at @s as @e[tag=plane,tag=model] at @s store result score @s change_counter run scoreboard players get @p[distance=..6] change_counter
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b}}] at @s as @e[tag=plane,tag=propeller] at @s store result score @s change_counter run scoreboard players get @p[distance=..6] change_counter

# Initiate Exterior Swap
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b}}] at @s run tag @s add exterior_change
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"leather_horse_armor",Count:1}}
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b}}] at @s run item replace entity @s horse.armor with air

# Clear Armor
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"iron_horse_armor",Count:1}}
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b}}] at @s run item replace entity @s horse.armor with air
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:golden_horse_armor",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"golden_horse_armor",Count:1}}
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:golden_horse_armor",Count:1b}}] at @s run item replace entity @s horse.armor with air
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"diamond_horse_armor",Count:1}}
execute as @e[tag=plane,tag=seat,nbt={ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b}}] at @s run item replace entity @s horse.armor with air

# Exterior Type Rotation
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=0..0}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=model] armor.head with structure_void{CustomModelData:8}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=0..0}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=propeller] armor.head with structure_void{CustomModelData:1}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=0..0}] run data modify entity @e[tag=plane,tag=model,limit=1,sort=nearest,distance=..4] Pose.Head[1] set value 0.1f

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=1..1}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=model] armor.head with structure_void{CustomModelData:5}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=1..1}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=propeller] armor.head with structure_void{CustomModelData:1}

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=2..2}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=model] armor.head with structure_void{CustomModelData:6}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=2..2}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=propeller] armor.head with structure_void{CustomModelData:1}

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=3..3}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=model] armor.head with structure_void{CustomModelData:7}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=3..3}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=propeller] armor.head with structure_void{CustomModelData:1}

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=4..4}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=model] armor.head with structure_void{CustomModelData:9}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=4..4}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=propeller] armor.head with structure_void{CustomModelData:1}

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=5..5}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=model] armor.head with structure_void{CustomModelData:10}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=5..5}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=propeller] armor.head with structure_void{CustomModelData:1}

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=6..6}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=model] armor.head with structure_void{CustomModelData:14}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=6..6}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=propeller] armor.head with air

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=7..7}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=model] armor.head with structure_void{CustomModelData:17}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=7..7}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=propeller] armor.head with air

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=8..8}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=model] armor.head with structure_void{CustomModelData:16}
execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s if entity @p[distance=..6,scores={change_counter=8..8}] run item replace entity @e[limit=1,sort=nearest,tag=plane,tag=propeller] armor.head with air

execute as @e[tag=plane,tag=seat,tag=exterior_change] at @s run tag @s remove exterior_change