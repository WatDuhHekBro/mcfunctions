particle end_rod ~ ~ ~ 0 0 0 0.01 5 force
playsound block.lava.extinguish neutral @a ~ ~ ~ 1 2
execute at @e[distance=..2] run summon lightning_bolt
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function wdhb:mage/zap