execute if entity @s[predicate=dwasd:mounted] run function dwasd:get_motion
execute unless entity @s[predicate=dwasd:mounted] run function dwasd:get_pos_diff

scoreboard players operation #dx dwasd.vars < #6 dwasd.consts
scoreboard players operation #dx dwasd.vars > #-6 dwasd.consts
scoreboard players operation #dz dwasd.vars < #6 dwasd.consts
scoreboard players operation #dz dwasd.vars > #-6 dwasd.consts

function dwasd:position_x