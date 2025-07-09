# recursive function, base case is hitting a non-air block
# basic function   -->   execute if block ~ ~ ~ air positioned ^ ^ ^1 run function test:raycast

particle barrier ~ ~ ~ 0 0 0 1 1
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @e[distance=..0.75,type=!armor_stand,type=!item,type=!item_frame,type=!player] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function wdhb_arcane:raycasting/cast