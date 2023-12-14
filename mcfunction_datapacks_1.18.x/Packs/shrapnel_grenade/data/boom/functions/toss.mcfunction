scoreboard players add @e[tag=rainboom] boomtimer 1
tag @a remove boomhold
tag @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{display:{Name:"\"Shrapnel Grenade\""}}}}] add boomhold
execute as @a[scores={toss=1..},tag=boomhold] at @s run tag @e[type=snowball,distance=..2] add rainboom
execute as @a[scores={toss=1..},tag=boomhold] at @s run tag @s add tossed
scoreboard players set @a[tag=tossed] toss 0
tag @a[tag=tossed] remove tossed
execute as @e[type=snowball,tag=rainboom,scores={boomtimer=45..45}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"rainboom\"",Tags:["rainboom"],Invisible:1,NoGravity:1}
kill @e[type=armor_stand,tag=rainboom,scores={boomtimer=45..}]