# Copy Calling Entity's ID And Lifetime As Local Variables
scoreboard players operation local_var entity_id = @s entity_id
scoreboard players operation local_var lifetime = @s lifetime

# Compare All Other Vehicles' And Lifetimes, Despawn Oldest Vehicles With Matching ID's
execute as @e[tag=seat,distance=2..] if score @s entity_id = local_var entity_id if score @s lifetime < local_var lifetime run tag @s add despawn