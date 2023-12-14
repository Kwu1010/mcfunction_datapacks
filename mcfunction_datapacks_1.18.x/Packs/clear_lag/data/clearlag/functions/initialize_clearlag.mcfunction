execute as @a[tag=cc,scores={initialize-clearlag=1234..1234}] at @s run forceload add 0 0
execute as @a[tag=cc,scores={initialize-clearlag=1234..1234}] at @s run summon minecraft:armor_stand 0 200 0 {Invisible:1,Small:1,NoGravity:1,CustomName:"\"clearlag\"",Tags:["clearlag"]}
scoreboard players set @a initialize-clearlag 0