execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..3] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"}}
playsound item.firecharge.use neutral @s ~ ~ ~ 1 1