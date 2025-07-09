# recursive function, base case is hitting a non-air block
# basic function   -->   execute if block ~ ~ ~ air positioned ^ ^ ^1 run function test:raycast

particle enchanted_hit ~ ~ ~ 0 0 0 0 2 force
particle flame ~ ~ ~ 0 0 0 0.05 1 force
playsound block.fire.extinguish neutral @a ~ ~ ~ 5 2
execute at @e[type=!player,distance=..2] run summon lightning_bolt
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function wdhb_arcane:raycasting/basic_cast