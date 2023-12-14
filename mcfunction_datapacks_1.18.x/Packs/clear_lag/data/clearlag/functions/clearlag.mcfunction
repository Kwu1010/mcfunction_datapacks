# Clear lag function

# Get and update number of items on ground
scoreboard players set @e[type=armor_stand,tag=clearlag,name=clearlag] clearlag 0
execute as @e[type=item] at @s run scoreboard players add @e[type=armor_stand,tag=clearlag,name=clearlag] clearlag 1

# Start clear lag if score of clearlag (number of items) exceeds minimum score (350)
execute as @e[type=armor_stand,tag=clearlag,name=clearlag,scores={clearlag=350..},tag=!start] at @s run tag @s add message
execute as @e[type=armor_stand,tag=clearlag,name=clearlag,scores={clearlag=350..}] at @s run tag @s add start
execute as @e[type=armor_stand,tag=clearlag,name=clearlag,scores={clearlag=350..},tag=start,tag=message] at @s run tellraw @a {"text":"[Clear Lag] Clearing lag in 20 seconds. Items on the ground will be deleted.","color":"yellow","bold":"true"}
execute as @e[type=armor_stand,tag=clearlag,name=clearlag,scores={clearlag=350..},tag=start,tag=message] at @s run tag @s remove message

# Scoreboard clock
# Kill ground items and display message once timer runs out (clearlagtimer set to 400 ticks, 20 seconds)
scoreboard players add @e[type=armor_stand,tag=clearlag,name=clearlag,tag=start] clearlagtimer 1
execute as @e[type=armor_stand,tag=clearlag,name=clearlag,scores={clearlagtimer=400..}] at @s run tellraw @a {"text":"[Clear Lag] Cleared lag.","color":"yellow","bold":"true"}
execute as @e[type=armor_stand,tag=clearlag,name=clearlag,scores={clearlagtimer=400..}] at @s run kill @e[type=item]
execute as @e[type=armor_stand,tag=clearlag,name=clearlag,scores={clearlagtimer=400..}] at @s run tag @s remove start
execute as @e[type=armor_stand,tag=clearlag,name=clearlag,scores={clearlagtimer=400..}] at @s run scoreboard players set @s clearlagtimer 0