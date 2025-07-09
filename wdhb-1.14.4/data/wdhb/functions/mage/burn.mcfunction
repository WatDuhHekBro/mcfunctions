execute as @e[distance=0.01..7] run data merge entity @s {Fire:300s}
particle flame ~ ~ ~ 0 0 0 0.15 500 force
playsound entity.blaze.shoot neutral @a[distance=..7] ~ ~ ~ 1 1