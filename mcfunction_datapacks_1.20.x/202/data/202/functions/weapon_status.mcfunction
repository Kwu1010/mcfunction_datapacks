# M202 Load Status
title @a[tag=hold_202_ap] actionbar {"text":"","bold":"true","extra":[{"text":"Loaded | ","color":"dark_purple"},{"text":"AP Shell","color":"white"}]}
title @a[tag=hold_202_he] actionbar {"text":"","bold":"true","extra":[{"text":"Loaded | ","color":"dark_purple"},{"text":"HE Shell","color":"gold"}]}
title @a[tag=hold_202,tag=!hold_202_ap,tag=!hold_202_he] actionbar {"text":"","bold":"true","extra":[{"text":"Empty | ","color":"red"},{"text":"Press Q To Reload","color":"white"}]}
scoreboard players set divider reload_202 6
execute as @a[tag=hold_202,scores={reload_202=1..}] run scoreboard players operation @s reload_202_status = @s reload_202
execute as @a[tag=hold_202,scores={reload_202=1..}] run scoreboard players operation @s reload_202_status /= divider reload_202
execute as @a[tag=hold_202,scores={reload_202=1..}] run title @s actionbar {"text":"","bold":"true","extra":[{"text":"Reloading | ","color":"red"},{"score":{"name":"@s","objective":"reload_202_status"}},{"text":"%"}]}