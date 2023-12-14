scoreboard objectives add mute_notifications trigger
scoreboard players enable @a mute_notifications
tag @a[scores={mute_notifications=1..},tag=!mute_notifications] add mute
tag @a[scores={mute_notifications=1..},tag=mute_notifications] add unmute
tag @a[tag=mute] add mute_notifications
tag @a[tag=unmute] remove mute_notifications
tag @a[tag=mute] remove mute
tag @a[tag=unmute] remove unmute
scoreboard players set @a[scores={mute_notifications=1..}] mute_notifications 0