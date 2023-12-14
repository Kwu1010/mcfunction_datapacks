####################################################################################################
# 
# Torpedo Detonation Functionality
# 
####################################################################################################

# Setblock Air
execute as @e[tag=torpedo,tag=detonate] at @s run setblock ~ ~.9 ~ air

# Summon TNT
execute as @e[tag=torpedo,tag=detonate] at @s run summon tnt ~ ~.9 ~

# Despawn Torpedo On Impact
execute as @e[tag=torpedo,tag=detonate] at @s run kill @s
execute as @e[tag=torpedo] at @s unless block ~ ~.9 ~ #submarines:sea_traversable unless block ~ ~1 ~ #submarines:non_solid run kill @s