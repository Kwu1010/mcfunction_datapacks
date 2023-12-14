####################################################################################################
# 
# Spawn Torpedo
# 
####################################################################################################

# Spawn Torpedo On TNT Minecart Drop, Play Ping & Launch Sound On Torpedo Spawn, Fail To Spawn If Block Is Not Water
execute as @a[scores={fire_torpedo=1..,vehicle_speed=..29},tag=driver] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Torpedo\"",Tags:["torpedo"],ArmorItems:[{},{},{},{id:lightning_rod,Count:1}],Pose:{Head:[0f,0f,-90f]},Invisible:1,Invulnerable:1,NoGravity:1}
execute as @a[scores={fire_torpedo=1..},tag=driver] at @s run data modify entity @e[tag=torpedo,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @a[scores={fire_torpedo=1..},tag=driver] at @s run data modify entity @e[tag=torpedo,sort=nearest,limit=1] Pose.Head[0] set from entity @s Rotation[0]
execute as @a[scores={fire_torpedo=1..},tag=driver] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:tnt_minecart",Count:1b}},distance=..4,sort=nearest]
execute as @a[scores={fire_torpedo=1..,vehicle_speed=30..},tag=driver] at @s run tellraw @a[scores={fire_torpedo=1..},tag=driver,distance=..4,limit=1,sort=nearest] {"text":"[Server] Failed to fire torpedo, set throttle below 30%.","color":"yellow"}
execute as @a[scores={fire_torpedo=1..,vehicle_speed=30..},tag=driver] at @s run give @a[scores={fire_torpedo=1..},tag=driver,distance=..4,limit=1,sort=nearest] tnt_minecart
execute as @a[scores={fire_torpedo=1..},tag=driver] at @s run playsound minecraft:block.note_block.snare player @a ~ ~ ~ 1 0
execute as @a[scores={fire_torpedo=1..},tag=driver] at @s run playsound minecraft:block.note_block.cow_bell player @a ~ ~ ~ 1 0
execute as @a[scores={fire_torpedo=1..},tag=driver] at @s run playsound minecraft:block.note_block.pling player @a ~ ~ ~ 1 0
execute as @e[tag=torpedo,tag=!torp_init] at @s unless block ~ ~.9 ~ #submarines:sea_traversable run tellraw @a[scores={fire_torpedo=1..},tag=driver,distance=..4,limit=1,sort=nearest] {"text":"[Server] Failed to fire torpedo, cannot fire outside water.","color":"yellow"}
execute as @e[tag=torpedo,tag=!torp_init] at @s unless block ~ ~.9 ~ #submarines:sea_traversable run give @a[scores={fire_torpedo=1..},tag=driver,distance=..4,limit=1,sort=nearest] tnt_minecart
execute as @e[tag=torpedo,tag=!torp_init] at @s unless block ~ ~.9 ~ #submarines:sea_traversable run kill @s
execute as @e[tag=torpedo,tag=!torp_init] at @s if block ~ ~.9 ~ #submarines:sea_traversable run tag @s add torp_init
scoreboard players set @a fire_torpedo 0