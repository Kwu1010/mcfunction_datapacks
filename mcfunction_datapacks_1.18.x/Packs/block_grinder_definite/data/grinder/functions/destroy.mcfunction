# Drop grinder spawn egg when destroyed

# Tier 1
execute as @e[type=armor_stand,tag=tier1grinder] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @e[type=item,nbt={Item:{id:"minecraft:chiseled_deepslate"}},distance=..2]
execute as @e[type=armor_stand,tag=tier1grinder] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run summon item ~ ~ ~ {Item:{id:"minecraft:endermite_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:"\"Tier-1 Grinder\""}}}}
execute as @e[type=armor_stand,tag=tier1grinder] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @s

# Tier 2
execute as @e[type=armor_stand,tag=tier2grinder] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @e[type=item,nbt={Item:{id:"minecraft:chiseled_deepslate"}},distance=..2]
execute as @e[type=armor_stand,tag=tier2grinder] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run summon item ~ ~ ~ {Item:{id:"minecraft:silverfish_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:"\"Tier-2 Grinder\""}}}}
execute as @e[type=armor_stand,tag=tier2grinder] at @s unless block ~ ~ ~ minecraft:chiseled_deepslate run kill @s