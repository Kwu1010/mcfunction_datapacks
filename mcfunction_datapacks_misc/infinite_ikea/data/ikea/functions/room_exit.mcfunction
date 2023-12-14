# Exit structure.
execute as @s[tag=ikea] at @s run fill ~ ~ ~ ~15 ~100 ~15 blue_concrete
execute as @s[tag=ikea] at @s run fill ~ ~101 ~ ~15 ~200 ~15 blue_concrete
execute as @s[tag=ikea] at @s run fill ~1 ~ ~3 ~1 ~2 ~12 sea_lantern
execute as @s[tag=ikea] at @s run fill ~ ~ ~3 ~ ~2 ~12 glass_pane[east=false,west=false]
execute as @s[tag=ikea] at @s run fill ~ ~ ~4 ~ ~2 ~5 air
execute as @s[tag=ikea] at @s run fill ~ ~ ~10 ~ ~2 ~11 air
execute as @s[tag=ikea] at @s run fill ~ ~ ~7 ~ ~2 ~8 blue_concrete
execute as @s[tag=ikea] at @s run summon armor_stand ~ ~ ~4.5 {CustomName:"\"IkeaExit\"",Tags:["ikea","exit"],Invisible:1,Invulnerable:1,Small:1}
execute as @s[tag=ikea] at @s run summon armor_stand ~ ~ ~10.5 {CustomName:"\"IkeaExit\"",Tags:["ikea","exit"],Invisible:1,Invulnerable:1,Small:1}