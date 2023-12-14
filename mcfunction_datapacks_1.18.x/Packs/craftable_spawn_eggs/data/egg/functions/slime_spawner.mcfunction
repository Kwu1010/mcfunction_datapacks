# Get around for slime spawners not working outside slime chunks

execute as @a[scores={useslimeegg=1..}] at @s if block ^ ^1.5 ^1 spawner run summon armor_stand ^ ^1.5 ^1 {CustomName:"\"slimespawner\"",Tags:["slimespawner","spawner"],Invisible:1,Small:1,NoGravity:1}
execute as @a[scores={useslimeegg=1..}] at @s if block ^ ^1.5 ^2 spawner run summon armor_stand ^ ^1.5 ^2 {CustomName:"\"slimespawner\"",Tags:["slimespawner","spawner"],Invisible:1,Small:1,NoGravity:1}
execute as @a[scores={useslimeegg=1..}] at @s if block ^ ^1.5 ^3 spawner run summon armor_stand ^ ^1.5 ^3 {CustomName:"\"slimespawner\"",Tags:["slimespawner","spawner"],Invisible:1,Small:1,NoGravity:1}
execute as @a[scores={useslimeegg=1..}] at @s if block ^ ^1.5 ^4 spawner run summon armor_stand ^ ^1.5 ^4 {CustomName:"\"slimespawner\"",Tags:["slimespawner","spawner"],Invisible:1,Small:1,NoGravity:1}
execute as @a[scores={useslimeegg=1..}] at @s if block ^ ^1.5 ^5 spawner run summon armor_stand ^ ^1.5 ^5 {CustomName:"\"slimespawner\"",Tags:["slimespawner","spawner"],Invisible:1,Small:1,NoGravity:1}
execute as @a[scores={useslimeegg=1..}] at @s if block ^ ^1.5 ^6 spawner run summon armor_stand ^ ^1.5 ^6 {CustomName:"\"slimespawner\"",Tags:["slimespawner","spawner"],Invisible:1,Small:1,NoGravity:1}
scoreboard players set @a useslimeegg 0
scoreboard players add @e[type=armor_stand,tag=slimespawner] slimespawnertimer 1
execute as @e[type=armor_stand,tag=slimespawner,scores={slimespawnertimer=400..}] at @s if entity @a[distance=..15,gamemode=!spectator] run summon slime ~ ~1 ~
execute as @e[type=armor_stand,tag=slimespawner,scores={slimespawnertimer=400..}] at @s run scoreboard players set @s slimespawnertimer 0
execute as @e[type=armor_stand,tag=slimespawner] at @s unless block ~ ~ ~ spawner run kill @s