particle portal ~ ~ ~ 0 0 0 0.5 25 force
playsound entity.enderman.teleport neutral @a ~ ~ ~ 1 1
execute at @e[distance=..2] run tp @s ^ ^ ^-3
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function wdhb:mage/blink