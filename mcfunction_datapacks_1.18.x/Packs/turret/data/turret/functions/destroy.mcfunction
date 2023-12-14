execute as @e[type=armor_stand,tag=turret,tag=arms] at @s if entity @a[distance=..100] if block ~ ~-1 ~ air run tag @s add drop
execute as @e[type=armor_stand,tag=turret,tag=drop] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:endermite_spawn_egg",Count:1b,tag:{CustomModelData:2,display:{Name:"\"Spawn Turret\""}}}}
execute as @e[type=armor_stand,tag=turret,tag=drop] at @s run kill @e[tag=turret,tag=hitbox,distance=..1]
execute as @e[type=armor_stand,tag=turret,tag=drop] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}},distance=..2]
execute as @e[type=armor_stand,tag=turret,tag=drop] at @s run kill @e[tag=turret,distance=..1]
execute as @e[type=armor_stand,tag=turret,tag=arms,tag=!drop,nbt={Fire:100s}] at @s run kill @e[type=slime,tag=turret,tag=hitbox,distance=..1]
execute as @e[type=armor_stand,tag=turret,tag=arms,tag=!drop] at @s if entity @a[distance=..100] unless entity @e[type=slime,tag=turret,tag=hitbox,distance=..1] run tag @s add detonate
execute as @e[type=armor_stand,tag=turret,tag=control] at @s if entity @a[distance=..100] unless entity @e[type=slime,tag=turret,tag=hitbox,distance=..1] run kill @s
execute as @e[type=armor_stand,tag=turret,tag=body] at @s if entity @a[distance=..100] unless entity @e[type=slime,tag=turret,tag=hitbox,distance=..1] run kill @s
gamerule mobGriefing true
execute as @e[type=armor_stand,tag=turret,tag=detonate] at @s run gamerule mobGriefing false
execute as @e[type=armor_stand,tag=turret,tag=detonate] at @s run summon minecraft:fireball ~ ~ ~ {ExplosionPower:3,Motion:[0.0,-10.0,0.0]}
execute as @e[type=armor_stand,tag=turret,tag=detonate] at @s run kill @s
execute as @e[type=slime,tag=turret,tag=hitbox] at @s if entity @a[distance=..100] unless entity @e[type=armor_stand,tag=turret,tag=arms,distance=..1] run summon armor_stand ~ ~ ~ {CustomName:"\"destroy\"",Tags:["destroy"],Invisible:1}
execute as @e[type=slime,tag=turret,tag=hitbox] at @s if entity @a[distance=..100] unless entity @e[type=armor_stand,tag=turret,tag=arms,distance=..1] run kill @s
execute as @e[type=armor_stand,tag=destroy] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}},distance=..2]
execute as @e[type=armor_stand,tag=destroy] at @s run kill @s