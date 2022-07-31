execute as @a[tag=dwasd.w] run title @s actionbar {"text": "W", "color": "gold", "bold": true}
execute as @a[tag=dwasd.a] run title @s actionbar {"text": "A", "color": "gold", "bold": true}
execute as @a[tag=dwasd.s] run title @s actionbar {"text": "S", "color": "gold", "bold": true}
execute as @a[tag=dwasd.d] run title @s actionbar {"text": "D", "color": "gold", "bold": true}

execute as @a[tag=dwasd.w,tag=dwasd.a] run title @s actionbar {"text": "W A", "color": "gold", "bold": true}
execute as @a[tag=dwasd.a,tag=dwasd.s] run title @s actionbar {"text": "A S", "color": "gold", "bold": true}
execute as @a[tag=dwasd.s,tag=dwasd.d] run title @s actionbar {"text": "S D", "color": "gold", "bold": true}
execute as @a[tag=dwasd.d,tag=dwasd.w] run title @s actionbar {"text": "W D", "color": "gold", "bold": true}