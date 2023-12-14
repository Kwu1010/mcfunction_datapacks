# Initialize variables.
scoreboard objectives add modulo dummy
scoreboard objectives add prime dummy
scoreboard objectives add ikeaseed dummy
scoreboard objectives add structurecount dummy
scoreboard objectives add ikearng dummy

# Assign values to the variables.
scoreboard players set @a[tag=ikearng] modulo 48271
scoreboard players set @a[tag=ikearng] prime 2147483647
scoreboard players set @a[tag=ikearng] structurecount 100000

# RNG algorithm.
execute as @a[tag=ikearng] at @s run scoreboard players operation @s ikeaseed *= @s modulo
execute as @a[tag=ikearng] at @s run scoreboard players operation @s ikeaseed %= @s prime
execute as @a[tag=ikearng] at @s run scoreboard players operation @s ikearng = @s ikeaseed
execute as @a[tag=ikearng] at @s run scoreboard players operation @s ikearng %= @s structurecount
#execute as @a[tag=ikearng] at @s run scoreboard players set @s ikearng 1999

# Initialize players to run RNG algorithm. Connects to generate_interior.mcfunction to randomly pick a structure for an empty chunk.
execute as @a[tag=!ikearng] at @s run scoreboard players add @a ikeaseed 10
execute as @a[tag=!ikearng] at @s run tag @s add ikearng
execute as @a[tag=ikearng] at @s run tag @e[tag=ikeachunk,distance=..64,limit=1,sort=nearest] add queue