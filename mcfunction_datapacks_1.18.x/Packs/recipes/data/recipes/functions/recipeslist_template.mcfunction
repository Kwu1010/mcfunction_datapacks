tellraw @a[scores={recipehelp#=1..}] {"text":"[Recipe List # of #]","color":"yellow","bold":"true"}
tellraw @a[scores={recipehelp#=1..}] {"text":"ITEM","color":"COLOR","bold":"true","italic":"true"}
tellraw @a[scores={recipehelp#=1..}] {"text":"  DESCRIPTION.","color":"COLOR"}
tellraw @a[scores={recipehelp#=1..}] {"text":"  Recipe:","color":"COLOR"}
tellraw @a[scores={recipehelp#=1..}] [{"text":"    ITEM","color":"COLOR"},{"text":", ","color":"white"},{"text":"ITEM","color":"COLOR"},{"text":", ","color":"white"},{"text":"ITEM","color":"COLOR"}]
tellraw @a[scores={recipehelp#=1..}] [{"text":"    ITEM","color":"COLOR"},{"text":", ","color":"white"},{"text":"ITEM","color":"COLOR"},{"text":", ","color":"white"},{"text":"ITEM","color":"COLOR"}]
tellraw @a[scores={recipehelp#=1..}] [{"text":"    ITEM","color":"COLOR"},{"text":", ","color":"white"},{"text":"ITEM","color":"COLOR"},{"text":", ","color":"white"},{"text":"ITEM","color":"COLOR"}]
scoreboard players set @a recipehelp# 0