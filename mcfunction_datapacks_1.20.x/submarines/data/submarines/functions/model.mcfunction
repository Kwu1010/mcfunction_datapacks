# Copy Driver Data To Controller
execute as @a[tag=driver] at @s run function submarines:call_copy_driver_data

# Teleport All Components To Controller
execute as @e[tag=submarine,tag=controller] at @s run function submarines:call_copy_rotation

# Ice Break
execute as @e[tag=submarine,tag=controller] at @s if block ~ ~ ~ #ice run setblock ~ ~ ~ water

# Unfold Vehicle Model
execute as @e[tag=submarine,tag=model] at @s run tp @s ^ ^-1.3 ^