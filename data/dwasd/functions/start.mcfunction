tag @s remove dwasd.fwd
tag @s remove dwasd.lwd
tag @s remove dwasd.bwd
tag @s remove dwasd.rwd

# If the rotation difference is too large for a given tick, no attempt to gather data is attempted, as the result will likely be false.
function dwasd:get_rot_diff

execute if score #dr dwasd.vars matches -7..7 if entity @s run function dwasd:run
function dwasd:record