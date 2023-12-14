# Set day or night.
scoreboard objectives add time_set_day trigger
scoreboard objectives add time_set_night trigger
scoreboard players enable @a[tag=cc] time_set_day
scoreboard players enable @a[tag=cc] time_set_night
execute as @a[scores={time_set_day=1..}] at @s run scoreboard players set @e[tag=ikea,tag=init] ikeacycle 0
execute as @a[scores={time_set_day=1..}] at @s run scoreboard players set @s time_set_day 0
execute as @a[scores={time_set_night=1..}] at @s run scoreboard players set @e[tag=ikea,tag=init] ikeacycle 5999
execute as @a[scores={time_set_night=1..}] at @s run scoreboard players set @s time_set_night 0

# Do daylight cycle.
scoreboard objectives add do_daylight_cycle trigger
scoreboard players enable @a[tag=cc] do_daylight_cycle
execute as @a[scores={do_daylight_cycle=1..},tag=!toggle] at @s run tag @s add stop_cycle
execute as @a[scores={do_daylight_cycle=1..},tag=!toggle] at @s run scoreboard players set #global_day do_daylight_cycle 0
execute as @a[scores={do_daylight_cycle=1..},tag=toggle] at @s run tag @s add start_cycle
execute as @a[scores={do_daylight_cycle=1..},tag=toggle] at @s run scoreboard players set #global_day do_daylight_cycle 1
execute as @a[scores={do_daylight_cycle=1..},tag=stop_cycle] at @s run tag @s add toggle
execute as @a[scores={do_daylight_cycle=1..},tag=start_cycle] at @s run tag @s remove toggle
execute as @a[scores={do_daylight_cycle=1..}] at @s run scoreboard players set @s do_daylight_cycle 0
execute as @a[tag=stop_cycle] at @s run tag @e[tag=ikea,tag=init] add stop_daycycle
execute as @a[tag=stop_cycle] at @s run tellraw @s {"text":"[Server] Disabled daylight cycle.","color":"gold"}
execute as @a[tag=start_cycle] at @s run tag @e[tag=ikea,tag=init] remove stop_daycycle
execute as @a[tag=start_cycle] at @s run tellraw @s {"text":"[Server] Enabled daylight cycle.","color":"gold"}
execute as @a[tag=stop_cycle] at @s run tag @s remove stop_cycle
execute as @a[tag=start_cycle] at @s run tag @s remove start_cycle

# Give Employee spawn egg.
scoreboard objectives add get_employee trigger
scoreboard players enable @a[tag=cc] get_employee
execute as @a[scores={get_employee=1..}] at @s run give @s endermite_spawn_egg{display:{Name:"\"Employee Spawn Egg\""}}
execute as @a[scores={get_employee=1..}] at @s run scoreboard players remove @s get_employee 1