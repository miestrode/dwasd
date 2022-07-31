execute store result score #dx dwasd.vars run data get entity @s Pos[0] 10
execute store result score #dz dwasd.vars run data get entity @s Pos[2] 10

scoreboard players operation #dx dwasd.vars -= @s dwasd.x
scoreboard players operation #dz dwasd.vars -= @s dwasd.z