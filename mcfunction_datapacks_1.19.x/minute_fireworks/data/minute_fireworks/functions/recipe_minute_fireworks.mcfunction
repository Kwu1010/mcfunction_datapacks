#####################################################################################################################################################
#
# Display the minute firework crafting recipe using the tellraw command
#
# Function activation condition(s):
#	A player uses the command /trigger recipes-minute-fireworks
#
# Upon activation:
#	Display the corresponding recipes to the player calling the function
#
#####################################################################################################################################################

scoreboard objectives add recipe-minute-fireworks trigger
scoreboard players enable @a recipe-minute-fireworks
tellraw @a[scores={recipe-minute-fireworks=1..}] {"text":"[Minute Firework Recipe]","color":"red","bold":"true","italic":"true"}
tellraw @a[scores={recipe-minute-fireworks=1..}] {"text":"Shapeless Recipe:","color":"white"}
tellraw @a[scores={recipe-minute-fireworks=1..}] [{"text":"  Paper","color":"white"},{"text":", ","color":"white"},{"text":"Gunpowder x8","color":"gray"}]
scoreboard players set @a recipe-minute-fireworks 0