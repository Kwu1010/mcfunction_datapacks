# Summon Despawner If Despawn Tag Is Added
execute as @e[tag=submarine,tag=despawn] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Despawner\"",Tags:["submarine_despawner"],NoGravity:1,Invisible:1}
execute as @e[tag=submarine,tag=despawn] at @s run function submarines:call_notify_owner

# Despawner Sequence
execute as @e[tag=submarine_despawner] at @s run function submarines:call_spawn_egg
execute as @e[tag=submarine_despawner] at @s run gamerule doMobLoot false
execute as @e[tag=submarine_despawner] at @s run kill @e[tag=submarine,distance=..4]
execute as @e[tag=submarine_despawner] at @s run gamerule doMobLoot true
execute as @e[tag=submarine_despawner] at @s run kill @s

# Kill/Clear All Click To Despawn Saddles
clear @a minecraft:minecart{display:{Name:"\"Submarine\""}}
kill @e[type=item,nbt={Item:{id:"minecraft:minecart",Count:1b,tag:{display:{Name:"{\"text\":\"Submarine\"}"}}}}]