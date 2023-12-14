execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 iron_block
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run setblock ~-1 ~ ~-1 air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run setblock ~-1 ~ ~1 air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run setblock ~1 ~ ~-1 air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run setblock ~1 ~ ~1 air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run setblock ~-1 ~2 ~-1 air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run setblock ~-1 ~2 ~1 air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run setblock ~1 ~2 ~-1 air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run setblock ~1 ~2 ~1 air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run fill ~ ~ ~ ~ ~2 ~ air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run fill ~-1 ~1 ~ ~1 ~1 ~ air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run fill ~ ~1 ~-1 ~ ~1 ~1 air
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run setblock ~ ~1 ~ verdant_froglight
execute as @e[type=endermite,name="Spawn Nuclear Warhead"] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Nuclear Warhead\"",Tags:["nuke","nuclear","warhead","nuclear_warhead","primed"],NoGravity:1,Invisible:1,Persistent:1}
kill @e[type=endermite,name="Spawn Nuclear Warhead"]