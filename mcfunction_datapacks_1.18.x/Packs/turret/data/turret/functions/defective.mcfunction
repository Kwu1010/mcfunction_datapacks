execute as @a[scores={run-defective=1234..1234}] at @s run tag @e[tag=turret,distance=..2] add defective
execute as @a[scores={run-defective=1234..1234}] at @s run item replace entity @e[type=armor_stand,tag=defective,tag=control,distance=..2] armor.legs with netherite_leggings
execute as @a[scores={run-defective=1234..1234}] at @s run item replace entity @e[type=armor_stand,tag=defective,tag=control,distance=..2] armor.feet with netherite_boots
execute as @a[scores={run-defective=1234..1234}] at @s run item replace entity @e[type=armor_stand,tag=defective,tag=arms,distance=..2] weapon.mainhand with shield{BlockEntityTag:{Base:15}}
execute as @a[scores={run-defective=1234..1234}] at @s run item replace entity @e[type=armor_stand,tag=defective,tag=arms,distance=..2] weapon.offhand with shield{BlockEntityTag:{Base:15}}
execute as @a[scores={run-defective=1234..1234}] at @s run item replace entity @e[type=armor_stand,tag=defective,tag=body,distance=..2] armor.legs with netherite_leggings
execute as @a[scores={run-defective=1234..1234}] at @s run item replace entity @e[type=armor_stand,tag=defective,tag=body,distance=..2] armor.feet with netherite_boots
execute as @a[scores={run-defective=1234..1234}] at @s run item replace entity @e[type=armor_stand,tag=defective,tag=body,distance=..2] armor.head with polished_blackstone_slab
scoreboard players set @a run-defective 0