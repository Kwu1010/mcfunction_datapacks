# Set Temporary Variable Range
scoreboard players set max vehicle_speed 1

# Calculate Throttle Percentage
execute as @a[tag=driver] at @s run scoreboard players operation @s throttle_percent = @s vehicle_speed
execute as @a[tag=driver] at @s run scoreboard players operation @s throttle_percent /= max vehicle_speed

# Display Throttle Percent On Driver Actionbar
execute as @a[tag=driver,scores={vehicle_speed=..4},tag=!holding_weapon] at @s run title @s actionbar ["",{"text":"Use '/trigger manual-submarine set #' to open the operator manual, where # is the page number.","color":"gold","bold":"false"}]
execute as @a[tag=driver,scores={vehicle_speed=5..},tag=!holding_weapon] at @s run title @s actionbar ["",{"text":"Throttle: ","color":"gold"},{"score":{"name":"@s","objective":"throttle_percent"}},{"text":"%"}]
execute as @a[tag=driver,tag=!holding_weapon] at @s if entity @e[distance=..4,tag=controller,tag=!on_map_s] run title @s actionbar ["",{"text":"Throttle: ","color":"red"},{"text":"Stuck | "},{"text":"World Border","color":"red","bold":"true"}]
execute as @a[tag=driver,tag=!holding_weapon] at @s at @e[tag=submarine,tag=controller,distance=..4,sort=nearest,limit=1] unless block ~ ~ ~ #submarines:sea_traversable run title @s actionbar ["",{"text":"Throttle: ","color":"red"},{"text":"Stuck | "},{"text":"Ship Beached","color":"red","bold":"true"}]