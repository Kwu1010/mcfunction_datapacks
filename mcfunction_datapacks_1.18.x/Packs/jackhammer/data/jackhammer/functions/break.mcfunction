tag @a remove jackhammer
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",tag:{display:{Name:"\"Diamond Jackhammer\""}}}}] add jackhammer
tag @a[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",tag:{display:{Name:"\"Netherite Jackhammer\""}}}}] add jackhammer
tag @a[scores={diamondjackhammer=1..}] add break
tag @a[scores={netheritejackhammer=1..}] add break
scoreboard players set @a diamondjackhammer 0
scoreboard players set @a netheritejackhammer 0
execute as @a[tag=jackhammer,tag=break] at @s at @e[type=minecraft:item,distance=..7,limit=1,nbt={Age:0s}] run summon armor_stand ~ ~ ~ {CustomName:"\"raytrace\"",Tags:["raytrace"],Invisible:1,Small:1,Invulnerable:1}
execute as @e[type=armor_stand,tag=raytrace] at @s unless block ~ ~-1 ~ bedrock unless block ~ ~1 ~ bedrock run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air destroy
execute as @e[type=armor_stand,tag=raytrace] at @s run kill @s
tag @a remove break