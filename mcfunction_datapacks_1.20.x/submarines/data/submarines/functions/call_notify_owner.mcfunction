# Store ID Of Calling Entity
scoreboard players operation local_var entity_id = @s entity_id

execute as @a if score @s entity_id = local_var entity_id run tellraw @s[tag=!mute_notifications] {"text":"[Server] Your submarine has been despawned.","color":"yellow"}