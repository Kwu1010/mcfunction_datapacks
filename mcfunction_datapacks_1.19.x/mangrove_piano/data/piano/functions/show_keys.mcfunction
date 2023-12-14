#####################################################################################################################################################
#
# Toggle key visibility to enable or disable hitbox visibility, to allow accurate piano playing
#
# Function activation condition(s):
#	Toggle key visibility key is pressed
#
# If toggle key visibility key is pressed:
#	Toggle invisible tag on piano keys
#
#####################################################################################################################################################

execute as @e[type=armor_stand,tag=piano,tag=show_key,tag=!show] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run tag @s add toggleon
execute as @e[type=armor_stand,tag=piano,tag=show_key,tag=show] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run tag @s add toggleoff
execute as @e[type=armor_stand,tag=piano,tag=show_key,tag=toggleon] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run execute as @e[type=armor_stand,tag=piano,tag=white_key,distance=..3] at @s run data merge entity @s {Invisible:0}
execute as @e[type=armor_stand,tag=piano,tag=show_key,tag=toggleon] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run tag @s add show
execute as @e[type=armor_stand,tag=piano,tag=show_key,tag=toggleoff] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run execute as @e[type=armor_stand,tag=piano,tag=white_key,distance=..3] at @s run data merge entity @s {Invisible:1}
execute as @e[type=armor_stand,tag=piano,tag=show_key,tag=toggleoff] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run tag @s remove show
execute as @e[type=armor_stand,tag=piano,tag=show_key] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run tag @s remove toggleon
execute as @e[type=armor_stand,tag=piano,tag=show_key] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}}}]}] run tag @s remove toggleoff
execute as @e[type=armor_stand,tag=piano,tag=show_key] at @s run item replace entity @s weapon.mainhand with minecraft:stick{display:{Name:"\"Null\""}}