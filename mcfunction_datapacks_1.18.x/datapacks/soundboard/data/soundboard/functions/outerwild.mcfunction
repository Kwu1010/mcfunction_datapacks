#####################################################################################################################################################
#
# Play a song from the Outerwilds OST
#
# Function activation condition(s):
#	A player runs the command /trigger play-outerwild
#
# If a command is entered:
#	Call the outerwildleft and outerwildright function
#
#####################################################################################################################################################

scoreboard objectives add play-outerwild trigger
scoreboard players enable @a play-outerwild
tag @a[scores={play-outerwild=1..}] add outerwildleft
tag @a[scores={play-outerwild=1..}] add outerwildright
scoreboard players set @a play-outerwild 0