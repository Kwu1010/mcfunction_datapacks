execute as @e[type=armor_stand,tag=bullet] at @s if entity @a[distance=..1,scores={death=1..}] run tellraw @a {"text":"","extra":[{"selector":"@p"},{"text":" was turned into swiss cheese"}]}
scoreboard players set @a death 0