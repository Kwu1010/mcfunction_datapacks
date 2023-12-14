#####################################################################################################################################################
#
# Destroy the piano structure, despawn keys if piano is broken
#
# Function activation condition(s):
#	If the destroy piano key is pressed
#	OR
#	A piano key inhabits the same block as an air block
#
# If the destroy piano key is pressed:
#	Destroy the piano blocks while dropping the destroyed blocks to allow re-crafting
#	Despawn all the piano keys in the radius of 4 blocks
#
# If a piano key inhabits an air block:
#	Despawn itself
#
#####################################################################################################################################################

execute as @e[type=armor_stand,tag=piano,tag=destroy] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run fill ~4 ~2 ~ ~ ~ ~-1 air destroy
execute as @e[type=armor_stand,tag=piano,tag=destroy] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run kill @e[tag=piano,distance=..4]
execute as @e[tag=piano] at @s if block ~ ~0.5 ~ air run kill @s