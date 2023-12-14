# List Of Warpable Entities
tag @a add warp_over
tag @e[type=boat] add warp_over
tag @e[type=chest_boat] add warp_over
tag @e[type=minecart] add warp_over
tag @e[type=horse] add warp_over
tag @e[type=zombie_horse] add warp_over
tag @e[type=skeleton_horse] add warp_over
tag @e[type=donkey] add warp_over
tag @e[type=strider] add warp_over
tag @e[type=pig] add warp_over
tag @e[type=wolf] add warp_over
tag @e[type=cat] add warp_over
tag @e[type=parrot] add warp_over
tag @e[type=camel] add warp_over

# Player On Warpover Entities
tag @a remove warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] add warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:chest_boat"}}}] add warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] add warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] add warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:zombie_horse"}}}] add warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] add warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:donkey"}}}] add warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] add warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] add warp_over_entity
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:camel"}}}] add warp_over_entity

# Remove Warpover For Vehicles
tag @a[nbt={RootVehicle:{Entity:{Tags:["seatpost"]}}}] remove warp_over
tag @a[nbt={RootVehicle:{Entity:{Tags:["seatpost"]}}}] remove warp_over_entity
tag @e[tag=seat] remove warp_over
tag @a[tag=seat] remove warp_over_entity