xp add @s -5 levels

playsound entity.player.big_fall neutral @a[distance=..3] ~ ~ ~ 1 0.75
execute as @e[distance=0.01..3] at @s run function wdhb:core/rogue/drop/victim
