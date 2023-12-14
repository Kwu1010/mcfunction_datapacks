# Clock Function
scoreboard objectives add delay_clock dummy
scoreboard players set @e[tag=warp_over,tag=!air_pocket] delay_clock 0
scoreboard players add @e[tag=warp_over,tag=air_pocket] delay_clock 1