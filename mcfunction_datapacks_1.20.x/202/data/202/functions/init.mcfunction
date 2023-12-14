# Initialize Scoreboards
scoreboard objectives add fired_202 minecraft.used:minecraft.knowledge_book
scoreboard objectives add dropped_202 minecraft.dropped:minecraft.knowledge_book
scoreboard objectives add missile_lifetime dummy
scoreboard objectives add reload_202 dummy
scoreboard objectives add reload_202_status dummy
scoreboard objectives add fired_flaregun minecraft.used:minecraft.knowledge_book
scoreboard objectives add fired_flare minecraft.used:minecraft.snowball
scoreboard objectives add dropped_flaregun minecraft.dropped:minecraft.knowledge_book
scoreboard objectives add flare_lifetime dummy
scoreboard objectives add reload_flaregun dummy
scoreboard objectives add reload_flaregun_status dummy

# Duplicate Scoreboards In Case Dependencies Are Not Added
scoreboard objectives add missile_tracking dummy
scoreboard objectives add rng dummy