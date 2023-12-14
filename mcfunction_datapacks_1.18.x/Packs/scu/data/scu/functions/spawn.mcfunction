execute as @e[type=endermite,name="SCU"] at @s run setblock ~ ~1 ~ minecraft:tinted_glass
execute as @e[type=endermite,name="SCU"] at @s run summon armor_stand ~ ~1 ~ {CustomName:"\"scu\"",Tags:["scu"],Small:1,Invisible:1,Invulnerable:1,Persistent:1,NoGravity:1}
execute as @e[type=endermite,name="SCU"] at @s run kill @s