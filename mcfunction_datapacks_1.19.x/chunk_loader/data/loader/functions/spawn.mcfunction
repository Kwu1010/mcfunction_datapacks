#####################################################################################################################################################
# 
# Create a chunk loader object, consisting of an chunk loader armor stand and corresponding textured block
#
# Function activation condition(s):
# 	A chunk loader spawn egg is placed
#
# At the location a chunk loader spawn egg is placed:
#	Create a block with the chunk loader texture (full petrified oak slab replaced in a custom texturepack)
#	Summon an armor_stand with the chunk loader tags
#	Remove the silverfish used to create the chunk loader object
#
#####################################################################################################################################################

execute as @e[type=silverfish,name="Chunk Loader"] at @s run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double]
execute as @e[type=silverfish,name="Chunk Loader"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"loader\"",Tags:["loader"],Small:1,Invisible:1,Invulnerable:1,Persistent:1,NoGravity:1}
execute as @e[type=silverfish,name="Chunk Loader"] at @s run kill @s