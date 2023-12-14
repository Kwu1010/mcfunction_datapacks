# Init Era Lock Scores
scoreboard objectives add era_lock dummy
scoreboard players set lock_one era_lock 1
scoreboard players set lock_two era_lock 2
execute unless score setting era_lock <= lock_two era_lock run scoreboard players set setting era_lock 0

# Era Lock Trigger
scoreboard objectives add config_era_lock trigger
scoreboard players enable @a[tag=op] config_era_lock
scoreboard players reset @a[tag=!op] config_era_lock
execute as @a[scores={config_era_lock=0..0}] run scoreboard players set setting era_lock 0
execute as @a[scores={config_era_lock=1..1}] run scoreboard players set setting era_lock 1
execute as @a[scores={config_era_lock=2..2}] run scoreboard players set setting era_lock 2
execute as @a[scores={config_era_lock=0..}] run scoreboard players set @s config_era_lock -1