# wait timer before detonation
scoreboard objectives add kaboom_prime_time dummy

# rotation loop count for clearing area
scoreboard objectives add kaboom_rotation_count dummy

# rotation loop count for mushroom cloud placement
scoreboard objectives add kaboom_cloud_count dummy

# wait timer between mushroom cloud placement and deletion
scoreboard objectives add kaboom_wait_time dummy

# rotation loop count for removing mushroom cloud
scoreboard objectives add kaboom_clear_count dummy

# radiation counter
scoreboard objectives add kaboom_rads dummy

# death count
scoreboard objectives add reset_rads deathCount

# limit to player
clear @a[name=!Totally_Normal] endermite_spawn_egg{display:{Name:"\"Spawn Nuclear Warhead\""}}
clear @a[name=!Totally_Normal] silverfish_spawn_egg{display:{Name:"\"Spawn Compressed TNT\""}}