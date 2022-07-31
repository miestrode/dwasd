tag @s remove dwasd.w
tag @s remove dwasd.a
tag @s remove dwasd.s
tag @s remove dwasd.d

# If the rotation difference is too large for a given tick, no attempt to gather data is attempted, as the result will likely be false.
function dwasd:get_rot_diff
execute if score #dr dwasd.vars matches -10..10 if entity @s run function dwasd:run
function dwasd:record