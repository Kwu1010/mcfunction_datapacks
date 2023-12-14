# Summon Detonator If Detonate Tag Is Added
execute as @e[tag=plane,tag=detonate] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"Detonator\"",Tags:["plane_detonator"],NoGravity:1,Invisible:1}

# Despawner Sequence
execute as @e[tag=plane_detonator] at @s run kill @e[tag=plane,distance=..4]
execute as @e[tag=plane_detonator] at @s run summon tnt ~ ~ ~
execute as @e[tag=plane_detonator] at @s run summon creeper ~ ~ ~ {ExplosionRadius:4,ignited:1b,Fuse:0s}
execute as @e[tag=plane_detonator] at @s run kill @s