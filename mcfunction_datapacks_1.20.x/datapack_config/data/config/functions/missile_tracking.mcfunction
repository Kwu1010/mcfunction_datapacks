# Init Missile Tracking Scores
scoreboard objectives add missile_tracking dummy
scoreboard players set enabled missile_tracking 1
scoreboard players set disabled missile_tracking -1
execute unless score setting missile_tracking = enabled missile_tracking unless score setting missile_tracking = disabled missile_tracking run scoreboard players set setting missile_tracking -1

# Missile Tracking Trigger
scoreboard objectives add config_missile_tracking trigger
scoreboard players enable @a[tag=op] config_missile_tracking
scoreboard players reset @a[tag=!op] config_missile_tracking
execute as @a[scores={config_missile_tracking=-1..-1}] run scoreboard players set setting missile_tracking -1
execute as @a[scores={config_missile_tracking=1..1}] run scoreboard players set setting missile_tracking 1
execute as @a[scores={config_missile_tracking=1..1}] run scoreboard players set @s config_missile_tracking 0