# Spawn grinder using spawn egg

# Tier 1 grinder
execute as @e[type=endermite,name="Tier-1 Grinder"] at @s run setblock ~ ~ ~ minecraft:chiseled_deepslate
execute as @e[type=endermite,name="Tier-1 Grinder"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"tier1grinder\"",Tags:["tier1grinder","grinder"],Small:1,Invisible:1,Invulnerable:1,Persistent:1,NoGravity:1}
execute as @e[type=endermite,name="Tier-1 Grinder"] at @s run kill @s

# Tier 1 grinder
execute as @e[type=silverfish,name="Tier-2 Grinder"] at @s run setblock ~ ~ ~ minecraft:chiseled_deepslate
execute as @e[type=silverfish,name="Tier-2 Grinder"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"tier2grinder\"",Tags:["tier2grinder","grinder"],Small:1,Invisible:1,Invulnerable:1,Persistent:1,NoGravity:1}
execute as @e[type=silverfish,name="Tier-2 Grinder"] at @s run kill @s