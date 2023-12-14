#####################################################################################################################################################
#
# World Edit Generate Rectangular Wand
# 	Generate a /fill tool which places down rectangular prisms with an inputted size and material.
#	This function takes input and divides the lengths by half, passing the result to the input_wand function to generate a wand.
#
# Function Usage
#	/function world_edit:generate_wand {X:<length>,Y:<length>,Z:<length>,Material:<block_type>}
#
#####################################################################################################################################################

# Store input X in temporary variable and parse into Parameters dictionary where PX (Print X) is the original input, and X is floor(input/2)
$scoreboard players set World_Edit World_Edit-Parameter $(X)
execute store result storage minecraft:world_edit_parameters Parameters.PX int 1 run scoreboard players get World_Edit World_Edit-Parameter
execute store result storage minecraft:world_edit_parameters Parameters.X int 0.5 run scoreboard players get World_Edit World_Edit-Parameter

# Store input Y in temporary variable and parse into Parameters dictionary where PY (Print Y) is the original input, and Y -= 1
$scoreboard players set World_Edit World_Edit-Parameter $(Y)
execute store result storage minecraft:world_edit_parameters Parameters.PY int 1 run scoreboard players get World_Edit World_Edit-Parameter
scoreboard players operation World_Edit World_Edit-Parameter -= World_Edit_1 World_Edit-Parameter
execute store result storage minecraft:world_edit_parameters Parameters.Y int 1 run scoreboard players get World_Edit World_Edit-Parameter

# Store input Z in temporary variable and parse into Parameters dictionary where PZ (Print Z) is the original input, and Z is floor(input/2)
$scoreboard players set World_Edit World_Edit-Parameter $(Z)
execute store result storage minecraft:world_edit_parameters Parameters.PZ int 1 run scoreboard players get World_Edit World_Edit-Parameter
execute store result storage minecraft:world_edit_parameters Parameters.Z int 0.5 run scoreboard players get World_Edit World_Edit-Parameter

# Store input Material into Parameters dictionary
$data merge storage minecraft:world_edit_parameters {Parameters:{Material:$(Material)}}

# Call helper function to parse Parameters dictionary as input into the wand /fill command
execute as @s run function world_edit:input_wand with storage minecraft:world_edit_parameters Parameters