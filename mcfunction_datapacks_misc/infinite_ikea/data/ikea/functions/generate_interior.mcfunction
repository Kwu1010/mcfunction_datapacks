# Generate the new chunk if a player is within a range.
execute as @e[type=armor_stand,tag=ikeachunk,tag=queue] at @s if entity @a[distance=..64] run tag @s add generate

# Check adjacent chunks for structures, summon a new armor stand if chunk is blank.
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s unless block ~16 0 ~ glowstone run summon armor_stand ~16 ~ ~ {CustomName:"\"ikeachunk\"",Tags:["ikeachunk","ikea"],NoGravity:1,Invulnerable:1,Invisible:1,DisabledSlots:2096896}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s unless block ~-16 0 ~ glowstone run summon armor_stand ~-16 ~ ~ {CustomName:"\"ikeachunk\"",Tags:["ikeachunk","ikea"],NoGravity:1,Invulnerable:1,Invisible:1,DisabledSlots:2096896}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s unless block ~ 0 ~16 glowstone run summon armor_stand ~ ~ ~16 {CustomName:"\"ikeachunk\"",Tags:["ikeachunk","ikea"],NoGravity:1,Invulnerable:1,Invisible:1,DisabledSlots:2096896}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s unless block ~ 0 ~-16 glowstone run summon armor_stand ~ ~ ~-16 {CustomName:"\"ikeachunk\"",Tags:["ikeachunk","ikea"],NoGravity:1,Invulnerable:1,Invisible:1,DisabledSlots:2096896}

# Initialize new chunks.
execute as @e[type=armor_stand,tag=ikeachunk,tag=!finish] at @s run setblock ~ 0 ~ glowstone
execute as @e[type=armor_stand,tag=ikeachunk,tag=!finish] at @s run fill ~ ~90 ~ ~15 ~90 ~15 loom
execute as @e[type=armor_stand,tag=ikeachunk,tag=!finish] at @s run fill ~ ~91 ~ ~15 ~91 ~15 bedrock
execute as @e[type=armor_stand,tag=ikeachunk,tag=!finish] at @s run fill ~ ~70 ~ ~15 ~70 ~15 cut_sandstone
execute as @e[type=armor_stand,tag=ikeachunk,tag=!finish] at @s run fill ~1 ~70 ~1 ~14 ~70 ~14 air
execute as @e[type=armor_stand,tag=ikeachunk,tag=!finish] at @s run tag @s add finish

# Height limit.
scoreboard objectives add elevation dummy
execute as @a store result score @s elevation run data get entity @s Pos[1]
execute as @a[scores={elevation=55..},nbt={Dimension:"ikea_dimension:ikea"}] at @s run title @s actionbar {"text":"You start to feel lightheaded from the lack of air.","color":"dark_blue"}
execute as @a[scores={elevation=60..},nbt={Dimension:"ikea_dimension:ikea"}] at @s run effect give @s instant_damage 1 0 true

# Structure selecter for each chunk. Load structure and gets rid of armor stand in the chunk.
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=0..1899}] run function ikea:room_wall
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=1900..1999}] run function ikea:room_exit
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=2000..4999}] run function ikea:room_pillar
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=5000..14999}] run function ikea:room_blank
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=15000..15999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:13",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=16000..16999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:stal",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=17000..17999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:13",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=18000..18999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:otherside",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=34000..34999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:note_blocks",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=35000..37999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:kitchen",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=38000..39999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:bakery",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=40000..40999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:crowbar",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=41000..41999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:weapons",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=42000..42999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:hatchet",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=43000..44999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:tools",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=45000..46999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:farming",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=47000..48999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:flowers",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=49000..50999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:sand",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=51000..52999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:farming",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=53000..54999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:microwaves",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=55000..59999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:aisle",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=60000..64999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:barrels",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=65000..69999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:lounge",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=70000..74999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:master_room",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=75000..79999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:office",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=80000..84999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:shelves",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=85000..89999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:sinks",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=90000..94999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:tents",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if entity @p[scores={ikearng=95000..99999}] run setblock ~ ~-1 ~ minecraft:structure_block[mode="load"]{name:"ikea:vine_frame",ignoreEntities:0b,mode:"LOAD",powered:0b}
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s if block ~ ~-1 ~ structure_block run setblock ~ ~ ~ redstone_block
execute as @e[type=armor_stand,tag=ikeachunk,tag=generate] at @s run kill @s