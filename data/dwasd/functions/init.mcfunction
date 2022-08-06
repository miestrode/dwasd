scoreboard objectives remove dwasd.x
scoreboard objectives remove dwasd.z
scoreboard objectives remove dwasd.vars

scoreboard objectives add dwasd.x dummy
scoreboard objectives add dwasd.z dummy
scoreboard objectives add dwasd.vars dummy
scoreboard objectives add dwasd.persistent dummy

execute unless score #show_start_message dwasd.persistent matches 0 run function dwasd:start_msg