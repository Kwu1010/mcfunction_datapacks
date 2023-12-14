# delete mushroom cloud
fill ^ ^-1 ^ ^ ^10 ^16 air
fill ^ ^11 ^ ^ ^20 ^16 air
fill ^ ^21 ^ ^ ^30 ^16 air
fill ^ ^31 ^ ^ ^40 ^16 air

# recursion
function kaboom:rotate
scoreboard players add @s kaboom_clear_count 1
execute as @s[scores={kaboom_clear_count=..360}] at @s run function kaboom:clear_sequence_slice