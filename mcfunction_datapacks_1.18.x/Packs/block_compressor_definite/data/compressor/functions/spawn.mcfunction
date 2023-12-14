# Spawn compressor using spawn egg

# Tier 1 compressor
execute as @e[type=endermite,name="Tier-1 Compressor"] at @s run setblock ~ ~ ~ minecraft:chiseled_deepslate
execute as @e[type=endermite,name="Tier-1 Compressor"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"tier1compressor\"",Tags:["tier1compressor","compressor"],Small:1,Invisible:1,Invulnerable:1,Persistent:1,NoGravity:1}
execute as @e[type=endermite,name="Tier-1 Compressor"] at @s run kill @s

# Tier 1 compressor
execute as @e[type=silverfish,name="Tier-2 Compressor"] at @s run setblock ~ ~ ~ minecraft:chiseled_deepslate
execute as @e[type=silverfish,name="Tier-2 Compressor"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"tier2compressor\"",Tags:["tier2compressor","compressor"],Small:1,Invisible:1,Invulnerable:1,Persistent:1,NoGravity:1}
execute as @e[type=silverfish,name="Tier-2 Compressor"] at @s run kill @s

# Tier 1 compressor
execute as @e[type=endermite,name="Tier-3 Compressor"] at @s run setblock ~ ~ ~ minecraft:chiseled_deepslate
execute as @e[type=endermite,name="Tier-3 Compressor"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"tier3compressor\"",Tags:["tier3compressor","compressor"],Small:1,Invisible:1,Invulnerable:1,Persistent:1,NoGravity:1}
execute as @e[type=endermite,name="Tier-3 Compressor"] at @s run kill @s