# RNG Bounds
scoreboard players set lower_bound rng 0
scoreboard players set upper_bound rng 40000

# Flare Functions Off Probability Using Seeded Random RNG Library/Datapack (Set To 20% Based Off Bounds)
execute as @e[tag=flare,tag=!launched] if score rng rng > lower_bound rng if score rng rng < upper_bound rng run tag @s add target
execute as @e[tag=flare,tag=!launched] run tag @s add launched

# Flare Movement & Arc
execute as @e[tag=flare,scores={flare_lifetime=..4}] at @s run tp @s ^ ^ ^1 ~ ~0.5
execute as @e[tag=flare,scores={flare_lifetime=5..9}] at @s run tp @s ^ ^ ^.9 ~ ~0.6
execute as @e[tag=flare,scores={flare_lifetime=10..14}] at @s run tp @s ^ ^ ^.8 ~ ~0.7
execute as @e[tag=flare,scores={flare_lifetime=15..19}] at @s run tp @s ^ ^ ^.7 ~ ~0.8
execute as @e[tag=flare,scores={flare_lifetime=20..29}] at @s run tp @s ^ ^ ^.6 ~ ~0.9
execute as @e[tag=flare,scores={flare_lifetime=30..39}] at @s run tp @s ^ ^ ^.5 ~ ~1
execute as @e[tag=flare,scores={flare_lifetime=40..49}] at @s run tp @s ^ ^ ^.4 ~ ~1.5
execute as @e[tag=flare,scores={flare_lifetime=50..59}] at @s run tp @s ^ ^ ^.3 ~ ~2
execute as @e[tag=flare,scores={flare_lifetime=60..69}] at @s run tp @s ^ ^ ^.2 ~ ~2.5
execute as @e[tag=flare,scores={flare_lifetime=70..}] at @s run tp @s ^ ^ ^.1 ~ ~3

# Flare Duration
scoreboard players add @e[tag=flare] flare_lifetime 1
kill @e[tag=flare,scores={flare_lifetime=150..}]

# Flare Appearance
execute as @e[tag=flare,tag=launched] at @s run data merge entity @s {Invisible:1,NoGravity:1}
execute as @e[tag=flare,tag=launched] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=flare,tag=launched] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

# Fail Firing Flare Outside Plane
execute as @a[tag=hold_flare,tag=!hold_flare_offhand,tag=!pilot,scores={fired_flare=1..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to fire flares, you are not in a plane!","bold":"true","color":"yellow"}
execute as @a[tag=hold_flare,tag=!hold_flare_offhand,tag=!pilot,scores={fired_flare=1..}] run give @s minecraft:snowball{CustomModelData:1,display:{Name:"\"Flare\"",Lore:['"Use To Deploy Flare In Planes"','"Hold In Offhand And Press Q While Holding Flare Gun To Reload"']}}
execute as @a[tag=hold_flare_offhand,tag=!hold_snowball,tag=!pilot,scores={fired_flare=1..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to fire flares, you are not in a plane!","bold":"true","color":"yellow"}
execute as @a[tag=hold_flare_offhand,tag=!hold_snowball,tag=!pilot,scores={fired_flare=1..}] run give @s minecraft:snowball{CustomModelData:1,display:{Name:"\"Flare\"",Lore:['"Use To Deploy Flare In Planes"','"Hold In Offhand And Press Q While Holding Flare Gun To Reload"']}}
execute as @a[tag=hold_flare_offhand,tag=hold_flare,tag=!pilot,scores={fired_flare=1..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to fire flares, you are not in a plane!","bold":"true","color":"yellow"}
execute as @a[tag=hold_flare_offhand,tag=hold_flare,tag=!pilot,scores={fired_flare=1..}] run give @s minecraft:snowball{CustomModelData:1,display:{Name:"\"Flare\"",Lore:['"Use To Deploy Flare In Planes"','"Hold In Offhand And Press Q While Holding Flare Gun To Reload"']}}

# Firing Flare
execute as @a[tag=hold_flare,tag=!hold_flare_offhand,tag=pilot,scores={fired_flare=1..}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Flare\"",Tags:["flaretemp","left"],Invisible:1,NoGravity:1}
execute as @a[tag=hold_flare,tag=!hold_flare_offhand,tag=pilot,scores={fired_flare=1..}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Flare\"",Tags:["flaretemp","right"],Invisible:1,NoGravity:1}
execute as @a[tag=hold_flare_offhand,tag=!hold_snowball,tag=pilot,scores={fired_flare=1..}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Flare\"",Tags:["flaretemp","left"],Invisible:1,NoGravity:1}
execute as @a[tag=hold_flare_offhand,tag=!hold_snowball,tag=pilot,scores={fired_flare=1..}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Flare\"",Tags:["flaretemp","right"],Invisible:1,NoGravity:1}
execute as @a[tag=hold_flare_offhand,tag=hold_flare,tag=pilot,scores={fired_flare=1..}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Flare\"",Tags:["flaretemp","left"],Invisible:1,NoGravity:1}
execute as @a[tag=hold_flare_offhand,tag=hold_flare,tag=pilot,scores={fired_flare=1..}] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Flare\"",Tags:["flaretemp","right"],Invisible:1,NoGravity:1}
execute as @a[tag=hold_flare,tag=!hold_flare_offhand,scores={fired_flare=1..}] at @s run kill @e[type=snowball,distance=..3,limit=1]
execute as @a[tag=hold_flare_offhand,scores={fired_flare=1..}] at @s run kill @e[type=snowball,distance=..3,limit=1]
execute as @e[tag=flaretemp] at @s run tp @s @p[tag=pilot,scores={fired_flare=1..},distance=..4]
execute as @e[tag=flaretemp,tag=left] at @s run tp @s ~ ~ ~ ~-30 ~
execute as @e[tag=flaretemp,tag=right] at @s run tp @s ~ ~ ~ ~30 ~
execute as @e[tag=flaretemp] at @s run playsound minecraft:custom.fired_202 player @a ~ ~ ~ 1 2
execute as @e[tag=flaretemp] run tag @s add flare
execute as @e[tag=flaretemp] run tag @s remove flaretemp
scoreboard players set @a fired_flare 0

# Detect Holding Flare
tag @a remove hold_flare
tag @a remove hold_flare_offhand
tag @a remove hold_snowball
tag @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{display:{Name:"\"Flare\""}}}}] add hold_flare
tag @a[nbt={Inventory:[{id:"minecraft:snowball",Slot:-106b,tag:{display:{Name:"\"Flare\""}}}]}] add hold_flare_offhand
tag @a[nbt={SelectedItem:{id:"minecraft:snowball"}}] add hold_snowball

# Entity And Block Collision
execute as @e[tag=flare] at @s unless block ~ ~1 ~ #202:non_solid run kill @s