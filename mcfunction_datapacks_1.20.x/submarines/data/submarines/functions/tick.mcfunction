# Used To Store Spawn Order Of Vehicles
scoreboard players add server_time lifetime 1

# Update Driver Tag
execute as @a[tag=driver] unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["submarine"]}}}] run tag @s remove driver
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:block_display",Tags:["submarine"]}}}] add driver

# Grant Invis & Water Breathing To Driver
effect give @a[tag=driver] invisibility 1 255 true
effect give @a[tag=driver] water_breathing 1 255 true