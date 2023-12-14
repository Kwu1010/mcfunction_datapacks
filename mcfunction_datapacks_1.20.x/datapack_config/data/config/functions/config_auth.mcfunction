# Init Config Login Toggle Scores
scoreboard objectives add auth_toggle dummy
scoreboard players set disabled auth_toggle 1
execute unless score setting auth_toggle <= disabled auth_toggle run scoreboard players set setting auth_toggle 0

# Config Login Toggle Trigger
scoreboard objectives add config_auth_toggle trigger
scoreboard players enable @a[tag=op] config_auth_toggle
scoreboard players reset @a[tag=!op] config_auth_toggle
execute as @a[scores={config_auth_toggle=0..0}] run scoreboard players set setting auth_toggle 0
execute as @a[scores={config_auth_toggle=1..1}] run scoreboard players set setting auth_toggle 1
execute as @a[scores={config_auth_toggle=0..}] run scoreboard players set @s config_auth_toggle -1

# Config Login Trigger
scoreboard objectives add config_auth trigger
execute unless score setting auth_toggle = disabled auth_toggle run scoreboard players enable @a config_auth

# Config Login Functionality
scoreboard objectives add triggered_config_login dummy
execute as @a[scores={config_auth=1..}] run scoreboard players set @s triggered_config_login 400
execute as @a[scores={config_auth=1..}] run scoreboard players set @s index 0
execute as @a[scores={config_auth=1..}] run tellraw @s [""]
execute as @a[scores={config_auth=1..}] run tellraw @s [""]
execute as @a[scores={config_auth=1..}] run tellraw @s [""]
execute as @a[scores={config_auth=1..}] run tellraw @s [""]
execute as @a[scores={config_auth=1..}] run tellraw @s [""]
execute as @a[scores={config_auth=1..}] run tellraw @s [""]
execute as @a[scores={config_auth=1..}] run tellraw @s [""]
execute as @a[scores={config_auth=1..}] run tellraw @s [""]
execute as @a[scores={config_auth=1..}] run tellraw @s ["",{"text":"<Configuration Authentication Login>","color":"gold"}]
execute as @a[scores={config_auth=1..}] run tellraw @s ["",{"text":"[Reset]","color":"red","clickEvent":{"action":"run_command","value":"/trigger config_auth"}},{"text":" [1]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[scores={triggered_config_login=1..}] increment 1"}},{"text":" [2]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[scores={triggered_config_login=1..}] increment 2"}},{"text":" [3]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[scores={triggered_config_login=1..}] increment 3"}},{"text":" [4]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[scores={triggered_config_login=1..}] increment 4"}},{"text":" [5]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[scores={triggered_config_login=1..}] increment 5"}},{"text":" [6]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[scores={triggered_config_login=1..}] increment 6"}},{"text":" [7]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[scores={triggered_config_login=1..}] increment 7"}},{"text":" [8]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[scores={triggered_config_login=1..}] increment 8"}},{"text":" [9]","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[scores={triggered_config_login=1..}] increment 9"}}]
execute as @a[scores={config_auth=1..}] run scoreboard players set @s config_auth 0
execute if entity @a[scores={triggered_config_login=1..}] run gamerule sendCommandFeedback false
execute unless entity @a[scores={triggered_config_login=1..}] run gamerule sendCommandFeedback true
scoreboard players remove @a[scores={triggered_config_login=1..}] triggered_config_login 1

# PIN Functions (1324 & 6432)
scoreboard objectives add index dummy
scoreboard objectives add accum dummy
scoreboard objectives add increment dummy
scoreboard players set @a[scores={triggered_config_login=..0,accum=1..}] accum 0
execute as @a[scores={index=0..0,increment=1..9}] run scoreboard players operation @s accum = @s increment
execute as @a[scores={index=1..1,increment=1..9}] run scoreboard players operation @s accum += @s increment
execute as @a[scores={index=2..2,increment=1..9}] run scoreboard players operation @s accum *= @s increment
execute as @a[scores={index=3..3,increment=1..9}] run scoreboard players operation @s accum += @s increment
execute as @a[scores={accum=12..12}] run tag @s add cc
execute as @a[scores={accum=32..32}] run tag @s add op
execute as @a[scores={accum=32..32}] run tag @s add op
execute as @a[scores={index=3..3,increment=1..9},tag=!cc,tag=!op] run title @s title {"text":"<Login Failed>","color":"red","bold":"true"}
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run tellraw @s [""]
execute as @a[scores={index=3..3,increment=1..9}] run scoreboard players set @s triggered_config_login 0
execute as @a[scores={index=3..3,increment=1..9}] run scoreboard players set @s accum 0
execute as @a[scores={index=3..3,increment=1..9}] run scoreboard players set @s increment 0
execute as @a[scores={index=..3,increment=1..9}] run scoreboard players add @s index 1
execute as @a[scores={index=..3,increment=1..9}] run scoreboard players set @s increment 0
scoreboard players set @a[scores={triggered_config_login=..1,accum=..0}] index -1