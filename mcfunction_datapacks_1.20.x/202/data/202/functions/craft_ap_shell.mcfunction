recipe take @s 202:ap_shell
advancement revoke @s only 202:craft_ap_shell_adv
clear @s minecraft:barrier 1
give @s minecraft:command_block{display:{Name:"\"AP Shell\"",Lore:["\"Hold In Offhand And Press Q While Holding M202 To Reload\""]},CustomModelData:1}