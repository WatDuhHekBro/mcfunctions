execute as @e[type=item,nbt={Item:{id:"minecraft:beef"}},distance=..3] run data merge entity @s {Item:{id:"minecraft:cooked_beef"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:porkchop"}},distance=..3] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:chicken"}},distance=..3] run data merge entity @s {Item:{id:"minecraft:cooked_chicken"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:mutton"}},distance=..3] run data merge entity @s {Item:{id:"minecraft:cooked_mutton"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit"}},distance=..3] run data merge entity @s {Item:{id:"minecraft:cooked_rabbit"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:salmon"}},distance=..3] run data merge entity @s {Item:{id:"minecraft:cooked_salmon"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:cod"}},distance=..3] run data merge entity @s {Item:{id:"minecraft:cooked_cod"}}
playsound item.firecharge.use neutral @s ~ ~ ~ 1 1