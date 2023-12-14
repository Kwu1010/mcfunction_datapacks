# Store Bullet Count Of Held Gun
scoreboard players set @a bullet_count 0
execute as @a[tag=hold_coilgun] store result score @s bullet_count run data get entity @s SelectedItem.tag.Damage