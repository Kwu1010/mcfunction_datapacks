# cap of 100
# death of 1 employee spawns two more in the vicinity
# employees join player's team in the day, leave at night or when damage is taken
# break block when looking at it for a while when employees are on top of one another, modify 1 employee to carry the other which rides it
# add customdatamodel to employees to only skin them in ikea



# Stores the ID of employees.
scoreboard objectives add employeeCount dummy
scoreboard objectives add employeeKills minecraft.custom:minecraft.mob_kills

# Employee cap.
kill @e[tag=employee,scores={employeecount=100..}]

# Spawn an employee.
execute as @e[type=endermite,name="Employee Spawn Egg"] at @s if entity @p[scores={ikearng=0..19999}] run summon skeleton ~ ~ ~ {CustomName:"\"Employee\"",NoAI:1,Silent:1,Tags:["employee","ikea","normal"],ActiveEffects:[{Id:11,Amplifier:1,Duration:999999,ShowParticles:0b}]}
execute as @e[type=endermite,name="Employee Spawn Egg"] at @s if entity @p[scores={ikearng=20000..39999}] run summon zombie ~ ~ ~ {CustomName:"\"Employee\"",NoAI:1,Silent:1,Tags:["employee","ikea","normal"],ActiveEffects:[{Id:11,Amplifier:1,Duration:999999,ShowParticles:0b}]}
execute as @e[type=endermite,name="Employee Spawn Egg"] at @s if entity @p[scores={ikearng=40000..59999}] run summon iron_golem ~ ~ ~ {CustomName:"\"Employee\"",NoAI:1,Silent:1,Tags:["employee","ikea","large","slow"],ActiveEffects:[{Id:11,Amplifier:1,Duration:999999,ShowParticles:0b}]}
execute as @e[type=endermite,name="Employee Spawn Egg"] at @s if entity @p[scores={ikearng=60000..79999}] run summon pig ~ ~ ~ {CustomName:"\"Employee\"",NoAI:1,Silent:1,Tags:["employee","ikea","small","fast"],ActiveEffects:[{Id:11,Amplifier:1,Duration:999999,ShowParticles:0b}]}
execute as @e[type=endermite,name="Employee Spawn Egg"] at @s if entity @p[scores={ikearng=80000..99999}] run summon enderman ~ ~ ~ {CustomName:"\"Employee\"",NoAI:1,Silent:1,Tags:["employee","ikea","tall","fast"],ActiveEffects:[{Id:11,Amplifier:1,Duration:999999,ShowParticles:0b}]}
execute as @e[type=endermite,name="Employee Spawn Egg"] at @s run scoreboard players add @e[tag=employee] employeeCount 1
kill @e[type=endermite,name="Employee Spawn Egg"]

# Random employee spawn every night. Killing an employee spawns two more.
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=20..20}] as @a at @s run summon endermite ~ ~ ~50 {CustomName:"\"Employee Spawn Egg\""}
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=20..20}] as @a at @s run summon endermite ~ ~ ~-50 {CustomName:"\"Employee Spawn Egg\""}
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=20..20}] as @a at @s run summon endermite ~50 ~ ~ {CustomName:"\"Employee Spawn Egg\""}
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=20..20}] as @a at @s run summon endermite ~-50 ~ ~ {CustomName:"\"Employee Spawn Egg\""}
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=6000..6000}] as @a at @s run summon endermite ~ ~ ~50 {CustomName:"\"Employee Spawn Egg\""}
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=6000..6000}] as @a at @s run summon endermite ~ ~ ~-50 {CustomName:"\"Employee Spawn Egg\""}
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=6000..6000}] as @a at @s run summon endermite ~50 ~ ~ {CustomName:"\"Employee Spawn Egg\""}
execute as @e[type=armor_stand,tag=ikea,tag=init,scores={ikeacycle=6000..6000}] as @a at @s run summon endermite ~-50 ~ ~ {CustomName:"\"Employee Spawn Egg\""}
execute as @a[scores={employeeKills=1..}] at @s run scoreboard players set @s employeeKills 0

# Employee movement config.
execute as @e[tag=employee,tag=night,tag=!stun] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator,scores={prottime=0..0}]
execute as @e[tag=employee,tag=night,tag=!stun,tag=unblocked,tag=slow] at @s if entity @p[gamemode=!creative,gamemode=!spectator,scores={prottime=0..0}] run tp @s ^ ^ ^0.05
execute as @e[tag=employee,tag=night,tag=!stun,tag=unblocked,tag=normal] at @s if entity @p[gamemode=!creative,gamemode=!spectator,scores={prottime=0..0}] run tp @s ^ ^ ^0.1
execute as @e[tag=employee,tag=night,tag=!stun,tag=unblocked,tag=fast] at @s if entity @p[gamemode=!creative,gamemode=!spectator,scores={prottime=0..0}] run tp @s ^ ^ ^0.2
execute as @e[tag=employee] at @s run tag @s add unblocked
execute as @e[tag=employee] at @s unless block ^ ^1 ^1 air unless block ^ ^1 ^1 water unless block ^ ^1 ^1 lava unless block ^ ^1 ^1 #flowers unless block ^ ^1 ^1 grass unless block ^ ^1 ^1 #carpets run tag @s remove unblocked
execute as @e[tag=employee] at @s positioned ^ ^ ^2.5 if entity @e[tag=employee,distance=..2] run tag @s remove unblocked
execute as @e[tag=employee] at @s unless block ~ ~0.25 ~ air unless block ~ ~0.25 ~ #flowers unless block ~ ~0.25 ~ grass unless block ~ ~1 ~ #slabs unless block ~ ~0.25 ~ #carpets unless block ~ ~0.25 ~ #doors unless block ~ ~0.25 ~ #trapdoors run tp @s ~ ~0.25 ~
execute as @e[tag=employee] at @s if block ~ ~-0.25 ~ air run tp @s ~ ~-0.25 ~
execute as @e[tag=employee] at @s if block ~ ~-0.25 ~ #carpets run tp @s ~ ~-0.25 ~
execute as @e[tag=employee] at @s if block ~ ~-0.25 ~ water unless block ~ ~1 ~ water run tp @s ~ ~-0.25 ~
execute as @e[tag=employee] at @s if block ~ ~-0.25 ~ lava run tp @s ~ ~-0.25 ~
execute as @e[tag=employee] at @s if block ~ ~-0.25 ~ #flowers run tp @s ~ ~-0.25 ~

# Employee voiceline.
execute as @e[tag=employee,tag=night,tag=!stun] at @s if entity @e[tag=ikea,tag=init,scores={ikeacycle=6000..7000}] if entity @p[gamemode=!creative,gamemode=!spectator,scores={ikearng=5000..5199}] run playsound minecraft:block.conduit.ambient master @a[distance=..50] ~ ~ ~ 1 2

# Employee block placement and removal.
execute as @e[tag=employee,tag=night,tag=!stun,tag=!large,tag=!tall] at @s if entity @p[gamemode=!creative,gamemode=!spectator,scores={ikearng=0..999,prottime=0..0}] unless block ^ ^1 ^1 bedrock unless block ~ ~1 ~ bedrock unless block ~ ~2 ~ bedrock unless block ~ ~3 ~ bedrock run fill ^ ^ ^1 ^ ^1 ^1 air destroy
execute as @e[tag=employee,tag=night,tag=!stun,tag=!large,tag=!tall] at @s if entity @p[gamemode=!creative,gamemode=!spectator,scores={ikearng=0..999,prottime=0..0}] unless block ~ ~2 ~ bedrock unless block ~ ~3 ~ bedrock run fill ~ ~1 ~ ~ ~2 ~ air destroy
execute as @e[tag=employee,tag=night,tag=!stun,tag=large] at @s if entity @p[gamemode=!creative,gamemode=!spectator,scores={ikearng=1000..1999,prottime=0..0}] unless block ^ ^1 ^1 bedrock unless block ~ ~2 ~ bedrock run fill ~-1 ~ ~-1 ~1 ~2 ~1 air destroy
execute as @e[tag=employee,tag=night,tag=!stun,tag=tall] at @s if entity @p[gamemode=!creative,gamemode=!spectator,scores={ikearng=2000..2999,prottime=0..0}] unless block ^ ^2 ^1 bedrock unless block ~ ~2 ~ bedrock unless block ~ ~3 ~ bedrock run fill ^ ^ ^1 ^ ^2 ^1 air destroy
execute as @e[tag=employee,tag=night,tag=!stun,tag=tall] at @s if entity @p[gamemode=!creative,gamemode=!spectator,scores={ikearng=2000..2999,prottime=0..0}] unless block ~ ~2 ~ bedrock run fill ~ ~1 ~ ~ ~2 ~ air destroy

# Employee damage.
execute as @e[tag=employee,tag=night,tag=!stun] at @s run effect give @a[distance=..1] instant_damage 1 0 true