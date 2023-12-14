# Summon Despawner If Despawn Tag Is Added
execute as @e[tag=plane,tag=seat,tag=despawn] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Despawner\"",Tags:["plane_despawner"],NoGravity:1,Invisible:1}

# Despawner Sequence
execute as @e[tag=plane_despawner] at @s run function planes:call_spawn_egg
execute as @e[tag=plane_despawner] at @s run gamerule doMobLoot false
execute as @e[tag=plane_despawner] at @s run kill @e[tag=plane,distance=..4]
execute as @e[tag=plane_despawner] at @s run gamerule doMobLoot true
execute as @e[tag=plane_despawner] at @s run kill @s

# Kill/Clear All Click To Despawn Saddles
clear @a minecraft:saddle{display:{Name:"\"Click To Despawn\""}}
kill @e[type=item,nbt={Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:"\"Click To Despawn\""}}}}]