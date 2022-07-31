scoreboard objectives remove dwasd.x
scoreboard objectives remove dwasd.z
scoreboard objectives remove dwasd.r
scoreboard objectives remove dwasd.vars
scoreboard objectives remove dwasd.consts

scoreboard objectives add dwasd.x dummy
scoreboard objectives add dwasd.z dummy
scoreboard objectives add dwasd.r dummy
scoreboard objectives add dwasd.vars dummy
scoreboard objectives add dwasd.consts dummy
scoreboard objectives add dwasd.persistent dummy

execute unless score #show_start_message dwasd.persistent matches 0 run function dwasd:start_msg

scoreboard players set #6 dwasd.consts 6
scoreboard players set #-6 dwasd.consts -6