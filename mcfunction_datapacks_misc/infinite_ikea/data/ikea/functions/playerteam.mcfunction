# Create players team.
team add players
team join players @a[tag=!cc]
team leave @e[tag=employee,tag=night]
#team join players @e[tag=employee,tag=!night]]
tag @e[tag=employee,tag=hit] remove hit
tag @e[tag=employee,nbt={HurtTime:10s}] add hit
tag @e[tag=employee,tag=hit] add night

# Debug team.
team add dev
team modify dev color white