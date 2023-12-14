# Fire Lance Load Status
title @a[tag=hold_fire_lance_loaded] actionbar {"text":"","bold":"true","extra":[{"text":"Loaded | ","color":"dark_purple"},{"text":"Bullet","color":"white"}]}
title @a[tag=hold_fire_lance,tag=!hold_fire_lance_loaded,tag=!hold_fire_lance_he] actionbar {"text":"","bold":"true","extra":[{"text":"Empty | ","color":"red"},{"text":"Press Q To Reload","color":"white"}]}
scoreboard players set divider reload_fire_lance 6
execute as @a[tag=hold_fire_lance,scores={reload_fire_lance=1..}] run scoreboard players operation @s reload_fire_lance_status = @s reload_fire_lance
execute as @a[tag=hold_fire_lance,scores={reload_fire_lance=1..}] run scoreboard players operation @s reload_fire_lance_status /= divider reload_fire_lance
execute as @a[tag=hold_fire_lance,scores={reload_fire_lance=1..}] run title @s actionbar {"text":"","bold":"true","extra":[{"text":"Reloading | ","color":"red"},{"score":{"name":"@s","objective":"reload_fire_lance_status"}},{"text":"%"}]}