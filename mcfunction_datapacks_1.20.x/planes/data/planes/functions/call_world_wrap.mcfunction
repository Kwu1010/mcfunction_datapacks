# Add Tag To Controller
tag @s add controller_ptr

# Store Controller ID And Lifetime As Local Variables
scoreboard players operation local_var entity_id = @s entity_id

# Delete Plane Components
execute at @s as @e[tag=plane,tag=!controller,tag=!seat,distance=..4] if score @s entity_id = local_var entity_id run kill @s

# Prepare To Respawn Components
tag @s add hover
scoreboard players set @a[tag=pilot,distance=..4,limit=1] vehicle_speed 0
execute as @e[tag=plane,distance=..4] if score @s entity_id = local_var entity_id run scoreboard players set @s vehicle_speed 0

# Warp
execute as @s[tag=plane,tag=controller,tag=off_north_p] as @e[tag=plane,distance=..4] if score @s entity_id = local_var entity_id at @s run tp @s ~ 200 6131
execute as @s[tag=plane,tag=controller,tag=off_south_p] as @e[tag=plane,distance=..4] if score @s entity_id = local_var entity_id at @s run tp @s ~ 200 -6132
execute as @s[tag=plane,tag=controller,tag=off_west_p] as @e[tag=plane,distance=..4] if score @s entity_id = local_var entity_id at @s run tp @s 12275 200 ~
execute as @s[tag=plane,tag=controller,tag=off_east_p] as @e[tag=plane,distance=..4] if score @s entity_id = local_var entity_id at @s run tp @s -12276 200 ~

# Remove Tag From Controller
tag @s remove controller_ptr