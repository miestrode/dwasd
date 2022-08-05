execute as @a[tag=dwasd.fwd] run title @s actionbar {"text": "Forwards"}
execute as @a[tag=dwasd.lwd] run title @s actionbar {"text": "Leftwards"}
execute as @a[tag=dwasd.bwd] run title @s actionbar {"text": "Backwards"}
execute as @a[tag=dwasd.rwd] run title @s actionbar {"text": "Rightwards"}

execute as @a[tag=dwasd.fwd,tag=dwasd.lwd] run title @s actionbar {"text": "Forwards, Leftwards"}
execute as @a[tag=dwasd.lwd,tag=dwasd.bwd] run title @s actionbar {"text": "Leftwards, Backwards"}
execute as @a[tag=dwasd.bwd,tag=dwasd.rwd] run title @s actionbar {"text": "Backwards, Rightwards"}
execute as @a[tag=dwasd.rwd,tag=dwasd.fwd] run title @s actionbar {"text": "Forwards, Rightwards"}