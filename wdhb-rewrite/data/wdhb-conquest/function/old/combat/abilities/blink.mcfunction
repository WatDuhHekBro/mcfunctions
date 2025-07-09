#recursive
particle enchant ~ ~ ~ 0 0 0 0.1 5 force
playsound entity.enderman.teleport neutral @a ~ ~ ~ 1 1
execute at @e[distance=..1] run tp @s ^ ^1 ^-2 ~ ~
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function wdhb:combat/abilities/blink