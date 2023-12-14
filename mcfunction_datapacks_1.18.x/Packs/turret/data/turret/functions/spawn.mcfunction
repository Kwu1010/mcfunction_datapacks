execute as @e[type=endermite,name="Spawn Turret"] at @s run kill @e[tag=turret,distance=..2]
execute as @e[type=endermite,name="Spawn Turret"] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}},distance=..2]
execute as @e[type=endermite,name="Spawn Turret"] at @s run summon slime ~ ~0.5 ~ {Persistent:1,CustomName:"\"turret\"",Tags:["turret","hitbox"],Size:0,NoAI:1,NoGravity:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute as @e[type=endermite,name="Spawn Turret"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"turret\"",Tags:["turret","control"],Invisible:1,NoBasePlate:1,Small:1,DisabledSlots:4144959,ShowArms:1,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[325f,325f,0f],RightLeg:[325f,35f,0f]},ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{},{}],HandItems:[{},{}]}
execute as @e[type=endermite,name="Spawn Turret"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"turret\"",Tags:["turret","arms"],Invisible:1,NoBasePlate:1,Small:1,DisabledSlots:4144959,ShowArms:1,Pose:{Head:[-90f,0f,0f],Body:[0f,0f,0f],LeftArm:[90f,0f,0f],RightArm:[90f,0f,0f],LeftLeg:[325f,325f,0f],RightLeg:[325f,35f,0f]},ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0}}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0}}}]}
execute as @e[type=endermite,name="Spawn Turret"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"turret\"",Tags:["turret","body"],Invisible:1,NoBasePlate:1,Small:1,DisabledSlots:4144959,Pose:{Head:[90f,90f,0f],Body:[0f,90f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,165f],RightLeg:[45f,0f,0f]},ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{},{id:"minecraft:quartz_slab",Count:1b}],HandItems:[{},{}]}
execute as @e[type=endermite,name="Spawn Turret"] at @s run scoreboard players set @e[type=armor_stand,tag=turret,distance=..1] turretcount 0
execute as @e[type=endermite,name="Spawn Turret"] at @s run scoreboard players set @e[type=armor_stand,tag=turret,distance=..1] bulletspawn 0
execute as @e[type=endermite,name="Spawn Turret"] at @s run scoreboard players add @e[type=armor_stand,tag=turret] turretcount 1
execute as @e[type=endermite,name="Spawn Turret"] at @s as @e[type=armor_stand,tag=turret,tag=arms,distance=..1] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=endermite,name="Spawn Turret"] at @s as @e[type=armor_stand,tag=turret,tag=control,distance=..1] at @s rotated as @e[type=armor_stand,tag=turret,tag=arms,distance=..1,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=endermite,name="Spawn Turret"] at @s as @e[type=armor_stand,tag=turret,tag=body,distance=..1] at @s rotated as @e[type=armor_stand,tag=turret,tag=arms,distance=..1,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=endermite,name="Spawn Turret"] at @s as @e[type=armor_stand,tag=turret,tag=control,distance=..1] at @s run tp @e[type=armor_stand,tag=turret,tag=body,distance=..1] ^0.065 ^ ^-0.2
kill @e[type=endermite,name="Spawn Turret"]
scoreboard players add @e[tag=turret] activation 1