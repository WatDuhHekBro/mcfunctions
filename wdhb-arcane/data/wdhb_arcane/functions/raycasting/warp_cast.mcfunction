# recursive function, base case is hitting a non-air block
# basic function   -->   execute if block ~ ~ ~ air positioned ^ ^ ^1 run function test:raycast

particle enchant ~ ~ ~ 0 0 0 0.1 5 force
playsound entity.enderman.teleport neutral @a ~ ~ ~ 1 1
execute at @e[type=!player,distance=..2] run tp @s ^ ^ ^-3 ~ ~
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function wdhb_arcane:raycasting/warp_cast