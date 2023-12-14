#####################################################################################################################################################
#
# SCP-420-J crafting recipes
#
# Function activation condition(s):
#	SCP-420-J is crafted
#
# Upon activation:
#	Replace knowledge book placeholder with corresponding item
#	Revoke corresponding recipe and advancement
#
#####################################################################################################################################################

recipe take @s scp_420_j:scp_420_j
advancement revoke @s only scp_420_j:craft_scp_420_j_adv
clear @s minecraft:knowledge_book
give @s minecraft:potion{CustomModelData:1,Potion:"minecraft:water",CustomPotionEffects:[{Id:1,Duration:200},{Id:4,Duration:200},{Id:9,Duration:200},{Id:11,Amplifier:1,Duration:200},{Id:16,Duration:200},{Id:18,Duration:200},{Id:26,Duration:200},{Id:31,Duration:200}],display:{Name:"\"SCP-420-J\""},HideFlags:63}