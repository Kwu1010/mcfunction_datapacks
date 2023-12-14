#####################################################################################################################################################
#
# World Edit Variable & Scoreboard Declaration & Initialization
#
#####################################################################################################################################################

# Used to temporarily store input until parsed into Parameters dictionary
scoreboard objectives add World_Edit-Parameter dummy

# Create Parameters dictionary/NBT tag to store all parsed input
data merge storage minecraft:world_edit_parameters {Parameters:{PX:0,X:0,PY:0,Y:0,PZ:0,Z:0,Material:null}}

# Create a variable to store the value 1
scoreboard players set World_Edit_1 World_Edit-Parameter 1