scoreboard objectives add entity_id dummy
execute as @a[tag=!joined] at @s run scoreboard players add id_template entity_id 1
execute as @a[tag=!joined] at @s run scoreboard players operation @s entity_id = id_template entity_id
execute as @a[tag=!joined] at @s run scoreboard players set @s change_counter 0
tag @a add joined