# Generate resources after certain amount of cobble is broken

# Counters
execute as @e[type=armor_stand,tag=compressor] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generatecoal 1
execute as @e[type=armor_stand,tag=compressor] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generatecopper 1
execute as @e[type=armor_stand,tag=compressor] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generateiron 1
execute as @e[type=armor_stand,tag=compressor] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generategold 1
execute as @e[type=armor_stand,tag=compressor] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generateredstone 1
execute as @e[type=armor_stand,tag=compressor] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generatelapis 1
execute as @e[type=armor_stand,tag=compressor] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generatediamond 1
execute as @e[type=armor_stand,tag=compressor] at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s generateemerald 1
execute as @e[type=armor_stand,tag=compressor] at @s if block ~ ~-1 ~ minecraft:cobblestone run setblock ~ ~-1 ~ air

# Generate coal
execute as @e[type=armor_stand,tag=compressor,scores={generatecoal=64..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:coal",Count:1b}}
execute as @e[type=armor_stand,tag=compressor,scores={generatecoal=64..}] at @s run scoreboard players set @s generatecoal 0

# Generate copper
execute as @e[type=armor_stand,tag=compressor,scores={generatecopper=128..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:raw_copper",Count:1b}}
execute as @e[type=armor_stand,tag=compressor,scores={generatecopper=128..}] at @s run scoreboard players set @s generatecopper 0

# Generate iron
execute as @e[type=armor_stand,tag=compressor,tag=!tier1compressor,scores={generateiron=256..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:raw_iron",Count:1b}}
execute as @e[type=armor_stand,tag=compressor,tag=!tier1compressor,scores={generateiron=256..}] at @s run scoreboard players set @s generateiron 0

# Generate gold
execute as @e[type=armor_stand,tag=compressor,tag=!tier1compressor,scores={generategold=256..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:raw_gold",Count:1b}}
execute as @e[type=armor_stand,tag=compressor,tag=!tier1compressor,scores={generategold=256..}] at @s run scoreboard players set @s generategold 0

# Generate redstone
execute as @e[type=armor_stand,tag=compressor,tag=!tier1compressor,scores={generateredstone=128..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:redstone",Count:1b}}
execute as @e[type=armor_stand,tag=compressor,tag=!tier1compressor,scores={generateredstone=128..}] at @s run scoreboard players set @s generateredstone 0

# Generate lapis
execute as @e[type=armor_stand,tag=compressor,tag=tier3compressor,scores={generatelapis=256..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:lapis_lazuli",Count:1b}}
execute as @e[type=armor_stand,tag=compressor,tag=tier3compressor,scores={generatelapis=256..}] at @s run scoreboard players set @s generatelapis 0

# Generate diamond
execute as @e[type=armor_stand,tag=compressor,tag=tier3compressor,scores={generatediamond=1024..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[type=armor_stand,tag=compressor,tag=tier3compressor,scores={generatediamond=1024..}] at @s run scoreboard players set @s generatediamond 0

# Generate emerald
execute as @e[type=armor_stand,tag=compressor,tag=tier3compressor,scores={generateemerald=512..}] at @s run summon minecraft:item ~ ~-1 ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute as @e[type=armor_stand,tag=compressor,tag=tier3compressor,scores={generateemerald=512..}] at @s run scoreboard players set @s generateemerald 0