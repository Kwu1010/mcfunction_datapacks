#####################################################################################################################################################
#
# Show crafting recipes using the tellraw command
#
# Function activation condition(s):
#	A player uses the command /trigger recipe-armored-elytras
#
# Upon activation:
#	Display elytra crafting recipes for the player calling the function
#
#####################################################################################################################################################

scoreboard objectives add recipe-armored-elytras trigger
scoreboard players enable @a recipe-armored-elytras
tellraw @a[scores={recipe-armored-elytras=1..}] {"text":"[Armored Elytra Recipes]","color":"red","bold":"true","italic":"true"}
tellraw @a[scores={recipe-armored-elytras=1..}] {"text":"Iron Shapeless Recipe:","color":"white"}
tellraw @a[scores={recipe-armored-elytras=1..}] [{"text":"  Elytra","color":"gray"},{"text":", ","color":"white"},{"text":"Iron x8","color":"white"}]
tellraw @a[scores={recipe-armored-elytras=1..}] {"text":"Gold Shapeless Recipe:","color":"gold"}
tellraw @a[scores={recipe-armored-elytras=1..}] [{"text":"  Elytra","color":"gray"},{"text":", ","color":"white"},{"text":"Gold x8","color":"gold"}]
tellraw @a[scores={recipe-armored-elytras=1..}] {"text":"Diamond Shapeless Recipe:","color":"aqua"}
tellraw @a[scores={recipe-armored-elytras=1..}] [{"text":"  Elytra","color":"gray"},{"text":", ","color":"white"},{"text":"Diamond x8","color":"aqua"}]
tellraw @a[scores={recipe-armored-elytras=1..}] {"text":"Netherite Shapeless Recipe:","color":"dark_purple"}
tellraw @a[scores={recipe-armored-elytras=1..}] [{"text":"  Elytra","color":"gray"},{"text":", ","color":"white"},{"text":"Netherite Ingot","color":"dark_purple"}]
scoreboard players set @a recipe-armored-elytras 0