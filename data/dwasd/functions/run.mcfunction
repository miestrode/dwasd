execute if entity @s[predicate=dwasd:mounted] run function dwasd:get_motion
execute unless entity @s[predicate=dwasd:mounted] run function dwasd:get_pos_diff

function dwasd:position_x/start