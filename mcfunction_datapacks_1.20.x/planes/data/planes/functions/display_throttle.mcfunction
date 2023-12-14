####################################################################################################
# 
# Display Current Throttle To Pilots
# 
####################################################################################################

# Set Temporary Variable Range
scoreboard players set max vehicle_speed 4

# Calculate Throttle Percentage
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=5..}] at @s run scoreboard players operation @s throttle_percent = @s vehicle_speed
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=5..}] at @s run scoreboard players operation @s throttle_percent /= max vehicle_speed

# Display Throttle Percent On Pilot Actionbar
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=..4}] at @s run title @p[tag=pilot,tag=!holding_weapon,distance=..4] actionbar ["",{"text":"Use '/trigger manual-plane set #' to open the operator manual, where # is the a page number.","color":"gold","bold":"false"}]
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=5..99}] at @s run title @p[tag=pilot,tag=!holding_weapon,distance=..4] actionbar ["",{"text":"Throttle: ","color":"gold"},{"score":{"name":"@s","objective":"throttle_percent"}},{"text":"% | "},{"text":"Landing Speed","color":"gold","bold":"true"}]
execute as @e[tag=plane,tag=controller,scores={vehicle_speed=100..}] at @s run title @p[tag=pilot,tag=!holding_weapon,distance=..4] actionbar ["",{"text":"Throttle: ","color":"green"},{"score":{"name":"@s","objective":"throttle_percent"}},{"text":"%"}]