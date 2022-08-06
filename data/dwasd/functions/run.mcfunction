tag @s remove dwasd.fwd
tag @s remove dwasd.lwd
tag @s remove dwasd.bwd
tag @s remove dwasd.rwd

execute if predicate dwasd:mounted run function dwasd:run_mounted
execute unless predicate dwasd:mounted run function dwasd:run_unmounted