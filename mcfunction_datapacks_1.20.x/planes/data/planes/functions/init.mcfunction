# Initalize Datapack Scoreboards
# TODO: Test If Dependency entity_id Scoreboard Exists
scoreboard objectives add placed_spawn_egg minecraft.used:minecraft.endermite_spawn_egg
scoreboard objectives add lifetime dummy
scoreboard objectives add vehicle_speed dummy
scoreboard objectives add current_rotation dummy
scoreboard objectives add last_rotation dummy
scoreboard objectives add rotation_difference dummy
scoreboard objectives add throttle_percent dummy
scoreboard objectives add change_counter dummy
scoreboard objectives add loop dummy
scoreboard objectives add hum_timer dummy
scoreboard objectives add x-pos dummy
scoreboard objectives add z-pos dummy
scoreboard objectives add mute_notifications trigger
scoreboard players enable @a mute_notifications

# Duplicate Scoreboards In Case Dependencies Are Not Added
scoreboard objectives add era_lock dummy