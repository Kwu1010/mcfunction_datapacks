#####################################################################################################################################################
#
# Play the right hand of the Outerwilds OST song
# Helper function for outerwild.mcfunction
#
#####################################################################################################################################################

scoreboard objectives add outerwildrighttime dummy
scoreboard players set @e[tag=!outerwildright] outerwildrighttime 0
scoreboard players add @e[tag=outerwildright] outerwildrighttime 1
execute as @e[scores={outerwildrighttime=170..170}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=190..190}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=210..210}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.56
execute as @e[scores={outerwildrighttime=230..230}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=250..250}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=270..270}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=280..280}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.56
execute as @e[scores={outerwildrighttime=290..290}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.56
execute as @e[scores={outerwildrighttime=305..305}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=310..310}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=330..330}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=350..350}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=370..370}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.56
execute as @e[scores={outerwildrighttime=390..390}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=410..410}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=430..430}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=440..440}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.56
execute as @e[scores={outerwildrighttime=450..450}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.56
execute as @e[scores={outerwildrighttime=465..465}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
execute as @e[scores={outerwildrighttime=470..470}] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.59
tag @a[scores={outerwildrighttime=490..490}] remove outerwildright