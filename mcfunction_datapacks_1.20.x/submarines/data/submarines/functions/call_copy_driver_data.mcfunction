# Set Driver Pointer
tag @s add driver_ptr

# Set Driver ID As Local Variable
scoreboard players operation local_var entity_id = @s entity_id

# Copy Driver Rotation To Controller
execute as @e[tag=submarine,tag=controller,distance=..4] at @s if score @s entity_id = local_var entity_id if block ~ ~ ~ #submarines:sea_traversable run data modify entity @s Rotation[0] set from entity @p[tag=driver_ptr] Rotation[0]

# Store Pitch As current_rotation For Dive/Surface Control
execute as @e[tag=submarine,tag=controller] at @s if score @s entity_id = local_var entity_id store result score @s current_rotation run data get entity @p[tag=driver_ptr] Rotation[1]

# Copy Driver Movement Speed To Components
execute as @e[tag=submarine,distance=..4] if score @s entity_id = local_var entity_id store result score @s vehicle_speed run scoreboard players get @a[tag=driver_ptr,limit=1] vehicle_speed

# Free Pointers
tag @s remove driver_ptr