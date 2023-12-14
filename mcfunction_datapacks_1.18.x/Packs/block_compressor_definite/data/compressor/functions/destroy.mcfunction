# Drop compressor spawn egg when destroyed

# Tier 1
execute as @e[type=armor_stand,tag=tier1compressor] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @e[type=item,nbt={Item:{id:"minecraft:chiseled_deepslate"}},distance=..2]
execute as @e[type=armor_stand,tag=tier1compressor] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run summon item ~ ~ ~ {Item:{id:"minecraft:endermite_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:"\"Tier-1 Compressor\""}}}}
execute as @e[type=armor_stand,tag=tier1compressor] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @s

# Tier 2
execute as @e[type=armor_stand,tag=tier2compressor] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @e[type=item,nbt={Item:{id:"minecraft:chiseled_deepslate"}},distance=..2]
execute as @e[type=armor_stand,tag=tier2compressor] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run summon item ~ ~ ~ {Item:{id:"minecraft:silverfish_spawn_egg",Count:1b,tag:{CustomModelData:2,display:{Name:"\"Tier-2 Compressor\""}}}}
execute as @e[type=armor_stand,tag=tier2compressor] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @s

# Tier 3
execute as @e[type=armor_stand,tag=tier3compressor] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @e[type=item,nbt={Item:{id:"minecraft:chiseled_deepslate"}},distance=..2]
execute as @e[type=armor_stand,tag=tier3compressor] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run summon item ~ ~ ~ {Item:{id:"minecraft:endermite_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:"\"Tier-3 Compressor\""}}}}
execute as @e[type=armor_stand,tag=tier3compressor] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @s