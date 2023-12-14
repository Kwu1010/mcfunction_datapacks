#####################################################################################################################################################
#
# Mangrove piano spawn egg, places piano structure, overwrites existing structures
#
# Function activation condition(s):
#	A mangrove piano spawn egg is placed
#
# If a mangrove piano spawn egg is placed:
#	Create piano structure and spawn piano keys
#
#####################################################################################################################################################

execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run setblock ~-1 ~ ~1 minecraft:quartz_slab[type=top]
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run setblock ~ ~ ~1 minecraft:quartz_slab[type=top]
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run setblock ~1 ~ ~1 minecraft:quartz_slab[type=top]
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run fill ~-2 ~ ~ ~2 ~1 ~ minecraft:stripped_mangrove_wood[axis=x]
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run fill ~-2 ~2 ~ ~2 ~2 ~ minecraft:mangrove_slab
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run setblock ~-2 ~ ~1 minecraft:mangrove_stairs[facing=north,half=top]
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run setblock ~2 ~ ~1 minecraft:mangrove_stairs[facing=north,half=top]
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run setblock ~-2 ~1 ~1 minecraft:mangrove_trapdoor[facing=south]
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run setblock ~2 ~1 ~1 minecraft:mangrove_trapdoor[facing=south]
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-1.6 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-1.4 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.95 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.75 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.5 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.3 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.15 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.35 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.6 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~1.05 ~ ~ run function piano:spawn_key
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-1.4 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","g","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-1.25 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","a","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-1.1 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","b","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.95 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","c","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.775 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","d","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.625 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","e","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.475 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","f","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.3 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","g_2","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.15 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","a_2","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","b_2","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.15 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","c_2","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.325 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","d_2","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.475 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","e_2","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.625 ~-0.975 ~1.24 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","f_2","harp","white","white_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]}}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-1.375 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","fs","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-1.175 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","gs","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.975 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","as","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.725 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","cs","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.525 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","ds","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.275 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","fs_2","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-0.075 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","gs_2","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.125 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","as_2","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.375 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","cs_2","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.575 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","ds_2","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~0.825 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","fs_3","harp","black","black_key"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~1.275 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","instrument","chime"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-1.625 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","show_key","show"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s positioned ~-1.825 ~0.05 ~0.95 run summon armor_stand ~ ~ ~ {CustomName:"\"Piano\"",Tags:["piano","key","destroy"],ShowArms:1,NoGravity:1,DisabledSlots:1973790,Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f],Pose:{RightArm:[-60f,0f,0f]},Small:1,HandItems:[{id:"minecraft:stick",tag:{display:{Name:"\"Null\""}},Count:1b}]}
execute as @e[type=endermite,name="Piano Spawn Egg"] at @s run kill @s[type=endermite]