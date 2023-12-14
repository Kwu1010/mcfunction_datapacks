#####################################################################################################################################################
#
# World Edit Generate Rectangular Wand Subfunction
# 	Generate a /fill tool which places down rectangular prisms with an inputted size and material.
#	This function takes input and generates a wand (spawn egg) which runs a /fill command with the appropriate parameters, when placed.
#
# Function Usage
#	/function world_edit:input_wand {PX:<length>,X:<length>,PY:<length>,Y:<length>,PZ:<length>,Z:<length>,Material:<block_type>}
#
#####################################################################################################################################################

# Generate the wand, where P_ variables are parsed into the wand name along with Material, and _ variables are parsed into the /fill command as relative distances with Material as the material type
$give @s cod_spawn_egg{display:{Name:'{"text":"Rectangular Wand $(PX):$(PY):$(PZ):$(Material)"}'},EntityTag:{id:"minecraft:falling_block",Time:1,BlockState:{Name:command_block},TileEntityData:{Command:'/fill ~-$(X) ~0 ~-$(Z) ~$(X) ~$(Y) ~$(Z) $(Material)',auto:1},DropItem:0b,Tags:["wand"]}}