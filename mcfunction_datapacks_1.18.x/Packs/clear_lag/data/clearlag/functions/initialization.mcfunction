scoreboard objectives add clearlag dummy
scoreboard objectives add clearlagtimer dummy
scoreboard objectives add initialize-clearlag trigger
scoreboard objectives add run-clearlag trigger
scoreboard players enable @a[tag=cc] initialize-clearlag
scoreboard players enable @a[tag=cc] run-clearlag