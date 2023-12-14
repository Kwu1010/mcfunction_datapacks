# mushroom cloud
fill ^ ^ ^13 ^ ^ ^15 ochre_froglight
fill ^ ^1 ^11 ^ ^1 ^12 ochre_froglight
fill ^ ^2 ^10 ^ ^2 ^10 ochre_froglight
fill ^ ^3 ^9 ^ ^4 ^9 ochre_froglight
fill ^ ^5 ^8 ^ ^7 ^8 ochre_froglight
fill ^ ^8 ^7 ^ ^12 ^7 ochre_froglight
fill ^ ^13 ^6 ^ ^21 ^6 ochre_froglight
fill ^ ^22 ^7 ^ ^23 ^7 ochre_froglight
fill ^ ^24 ^8 ^ ^24 ^8 ochre_froglight
fill ^ ^25 ^9 ^ ^25 ^9 ochre_froglight
fill ^ ^26 ^10 ^ ^26 ^11 ochre_froglight
fill ^ ^27 ^12 ^ ^27 ^13 ochre_froglight
fill ^ ^28 ^14 ^ ^28 ^14 ochre_froglight
fill ^ ^29 ^15 ^ ^29 ^15 ochre_froglight
fill ^ ^30 ^16 ^ ^32 ^16 ochre_froglight
fill ^ ^33 ^15 ^ ^33 ^15 ochre_froglight
fill ^ ^34 ^12 ^ ^34 ^14 ochre_froglight
fill ^ ^35 ^7 ^ ^35 ^11 ochre_froglight
fill ^ ^36 ^ ^ ^36 ^6 ochre_froglight

# mushroom cloud ring
fill ^ ^18 ^13 ^ ^18 ^14 ochre_froglight

# recursion
function kaboom:rotate
scoreboard players add @s kaboom_cloud_count 1
execute as @s[scores={kaboom_cloud_count=..360}] at @s run function kaboom:cloud_sequence_slice