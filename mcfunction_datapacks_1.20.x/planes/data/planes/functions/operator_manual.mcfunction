scoreboard objectives add manual-plane trigger
scoreboard players enable @a manual-plane

tellraw @a[scores={manual-plane=1..1}] {"text":"[Propeller Plane Operator Manual - Page 1 of 5]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Page 1 - Table of Contents","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Page 2 - Disclaimers & Warnings","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Page 3 - Destruction Conditions","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Page 4 - Vehicle Controls","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Page 5 - Despawning & Configuration","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"EPILEPSY WARNING: FLASHING SCREEN AND LIGHTS DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-plane=2..2}] {"text":"[Propeller Plane Operator Manual - Page 2 of 5]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=2..2}] {"text":"EPILEPSY WARNING","color":"red","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"The plane may clip back and forth or flash on the screen.","color":"red","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"Use of flares will expose you to strobing lights.","color":"red","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"Use of missiles will expose you to strobing lights.","color":"red","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"","color":"red","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"If you believe this may be a problem for you,","color":"red","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"please disable particles in your settings.","color":"red","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"","color":"red","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"EPILEPSY WARNING: FLASHING SCREEN AND LIGHTS DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-plane=3..3}] {"text":"[Propeller Plane Operator Manual - Page 3 of 5]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=3..3}] {"text":"Please note that on detonation, your plane cannot be respawned.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"The explosion caused by a plane's detonation may delete your items.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"Planes will detonate on collision with terrain or other planes.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"To ensure safety, please slow down to landing speed to land.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"Planes take damage, and will detonate when HP reaches 0.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"The health bar shows up on the right side above the hotbar.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"EPILEPSY WARNING: FLASHING SCREEN AND LIGHTS DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-plane=4..4}] {"text":"[Propeller Plane Operator Manual - Page 4 of 5]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=4..4}] {"text":"The plane is controlled by player orientation and hotbar slot.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..4}] {"text":"The plane travels where you are facing.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..4}] {"text":"To throttle down, hold hotbar slot 1.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..4}] {"text":"To throttle up, hold hotbar slot 3.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..4}] {"text":"Other hotbar slots will maintain your current speed.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..4}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..4}] {"text":"Please note that pitch control is disabled until you reach flight speed.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..4}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..4}] {"text":"EPILEPSY WARNING: FLASHING SCREEN AND LIGHTS DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-plane=5..5}] {"text":"[Propeller Plane Operator Manual - Page 5 of 5]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=5..5}] {"text":"To despawn your plane, open up the inventory of the plane seat,","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=5..5}] {"text":"and click on the saddle labeled 'Click To Despawn'.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=5..5}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=5..5}] {"text":"To change the appearance of your plane, equip the plane seat","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=5..5}] {"text":"with leather horse armor. The armor will not be consumed.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=5..5}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=5..5}] {"text":"Please note that you are unable to equip armor on the plane.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=5..5}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=5..5}] {"text":"EPILEPSY WARNING: FLASHING SCREEN AND LIGHTS DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-plane=6..}] {"text":"[Propeller Plane Operator Manual - Page - of 5]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=6..}] {"text":"Page 1 - Table of Contents","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=6..}] {"text":"Page 2 - Disclaimers & Warnings","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=6..}] {"text":"Page 3 - Destruction Conditions","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=6..}] {"text":"Page 4 - Vehicle Controls","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=6..}] {"text":"Page 5 - Despawning & Configuration","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=6..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=6..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=6..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=6..}] {"text":"EPILEPSY WARNING: FLASHING SCREEN AND LIGHTS DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

scoreboard players set @a manual-plane 0