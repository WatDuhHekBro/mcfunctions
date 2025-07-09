#################################
# Send Players to Command Posts #
#################################
#execute if entity @e[tag=post,tag={x},tag=red] as @e[tag=link,tag=red,tag={x}] at @s run tag @a[distance=..0.5] add post-{x}
#execute as @e[tag=link,tag=red,tag={x}] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag={x},tag=red] run spreadplayers ~ ~ 1 4 false @s
#execute as @e[tag=post,tag={x},tag=red] at @e[tag=link,tag=red,tag={x}] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
#execute if entity @e[tag=post,tag={x},tag=blue] as @e[tag=link,tag=blue,tag={x}] at @s run tag @a[distance=..0.5] add post-{x}
#execute as @e[tag=link,tag=blue,tag={x}] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag={x},tag=blue] run spreadplayers ~ ~ 1 4 false @s
#execute as @e[tag=post,tag={x},tag=blue] at @e[tag=link,tag=blue,tag={x}] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if entity @e[tag=post,tag=1,tag=red] as @e[tag=link,tag=red,tag=1] at @s run tag @a[distance=..0.5] add post-1
execute as @e[tag=link,tag=red,tag=1] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=1,tag=red] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=1,tag=red] at @e[tag=link,tag=red,tag=1] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if entity @e[tag=post,tag=1,tag=blue] as @e[tag=link,tag=blue,tag=1] at @s run tag @a[distance=..0.5] add post-1
execute as @e[tag=link,tag=blue,tag=1] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=1,tag=blue] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=1,tag=blue] at @e[tag=link,tag=blue,tag=1] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if entity @e[tag=post,tag=2,tag=red] as @e[tag=link,tag=red,tag=2] at @s run tag @a[distance=..0.5] add post-2
execute as @e[tag=link,tag=red,tag=2] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=2,tag=red] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=2,tag=red] at @e[tag=link,tag=red,tag=2] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if entity @e[tag=post,tag=2,tag=blue] as @e[tag=link,tag=blue,tag=2] at @s run tag @a[distance=..0.5] add post-2
execute as @e[tag=link,tag=blue,tag=2] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=2,tag=blue] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=2,tag=blue] at @e[tag=link,tag=blue,tag=2] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if entity @e[tag=post,tag=3,tag=red] as @e[tag=link,tag=red,tag=3] at @s run tag @a[distance=..0.5] add post-3
execute as @e[tag=link,tag=red,tag=3] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=3,tag=red] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=3,tag=red] at @e[tag=link,tag=red,tag=3] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if entity @e[tag=post,tag=3,tag=blue] as @e[tag=link,tag=blue,tag=3] at @s run tag @a[distance=..0.5] add post-3
execute as @e[tag=link,tag=blue,tag=3] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=3,tag=blue] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=3,tag=blue] at @e[tag=link,tag=blue,tag=3] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if entity @e[tag=post,tag=4,tag=red] as @e[tag=link,tag=red,tag=4] at @s run tag @a[distance=..0.5] add post-4
execute as @e[tag=link,tag=red,tag=4] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=4,tag=red] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=4,tag=red] at @e[tag=link,tag=red,tag=4] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if entity @e[tag=post,tag=4,tag=blue] as @e[tag=link,tag=blue,tag=4] at @s run tag @a[distance=..0.5] add post-4
execute as @e[tag=link,tag=blue,tag=4] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=4,tag=blue] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=4,tag=blue] at @e[tag=link,tag=blue,tag=4] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if entity @e[tag=post,tag=5,tag=red] as @e[tag=link,tag=red,tag=5] at @s run tag @a[distance=..0.5] add post-5
execute as @e[tag=link,tag=red,tag=5] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=5,tag=red] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=5,tag=red] at @e[tag=link,tag=red,tag=5] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if entity @e[tag=post,tag=5,tag=blue] as @e[tag=link,tag=blue,tag=5] at @s run tag @a[distance=..0.5] add post-5
execute as @e[tag=link,tag=blue,tag=5] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=5,tag=blue] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=5,tag=blue] at @e[tag=link,tag=blue,tag=5] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if entity @e[tag=post,tag=6,tag=red] as @e[tag=link,tag=red,tag=6] at @s run tag @a[distance=..0.5] add post-6
execute as @e[tag=link,tag=red,tag=6] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=6,tag=red] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=6,tag=red] at @e[tag=link,tag=red,tag=6] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if entity @e[tag=post,tag=6,tag=blue] as @e[tag=link,tag=blue,tag=6] at @s run tag @a[distance=..0.5] add post-6
execute as @e[tag=link,tag=blue,tag=6] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=6,tag=blue] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=6,tag=blue] at @e[tag=link,tag=blue,tag=6] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if entity @e[tag=post,tag=7,tag=red] as @e[tag=link,tag=red,tag=7] at @s run tag @a[distance=..0.5] add post-7
execute as @e[tag=link,tag=red,tag=7] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=7,tag=red] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=7,tag=red] at @e[tag=link,tag=red,tag=7] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if entity @e[tag=post,tag=7,tag=blue] as @e[tag=link,tag=blue,tag=7] at @s run tag @a[distance=..0.5] add post-7
execute as @e[tag=link,tag=blue,tag=7] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=7,tag=blue] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=7,tag=blue] at @e[tag=link,tag=blue,tag=7] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if entity @e[tag=post,tag=8,tag=red] as @e[tag=link,tag=red,tag=8] at @s run tag @a[distance=..0.5] add post-8
execute as @e[tag=link,tag=red,tag=8] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=8,tag=red] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=8,tag=red] at @e[tag=link,tag=red,tag=8] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if entity @e[tag=post,tag=8,tag=blue] as @e[tag=link,tag=blue,tag=8] at @s run tag @a[distance=..0.5] add post-8
execute as @e[tag=link,tag=blue,tag=8] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=8,tag=blue] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=8,tag=blue] at @e[tag=link,tag=blue,tag=8] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if entity @e[tag=post,tag=9,tag=red] as @e[tag=link,tag=red,tag=9] at @s run tag @a[distance=..0.5] add post-9
execute as @e[tag=link,tag=red,tag=9] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=9,tag=red] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=9,tag=red] at @e[tag=link,tag=red,tag=9] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if entity @e[tag=post,tag=9,tag=blue] as @e[tag=link,tag=blue,tag=9] at @s run tag @a[distance=..0.5] add post-9
execute as @e[tag=link,tag=blue,tag=9] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=9,tag=blue] run spreadplayers ~ ~ 1 4 false @s
execute as @e[tag=post,tag=9,tag=blue] at @e[tag=link,tag=blue,tag=9] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force



#########################################
# Send Players to Neutral Command Posts #
#########################################
#execute if score Red posts matches 0 if entity @e[tag=post,tag={x},tag=!red,tag=!blue] as @e[tag=link,tag=red,tag={x}] at @s run tag @a[distance=..0.5] add post-{x}
#execute if score Red posts matches 0 as @e[tag=link,tag=red,tag={x}] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag={x},tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
#execute if score Red posts matches 0 as @e[tag=post,tag={x},tag=!red,tag=!blue] at @e[tag=link,tag=red,tag={x}] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
#execute if score Blue posts matches 0 if entity @e[tag=post,tag={x},tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag={x}] at @s run tag @a[distance=..0.5] add post-{x}
#execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag={x}] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag={x},tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
#execute if score Blue posts matches 0 as @e[tag=post,tag={x},tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag={x}] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if score Red posts matches 0 if entity @e[tag=post,tag=1,tag=!red,tag=!blue] as @e[tag=link,tag=red,tag=1] at @s run tag @a[distance=..0.5] add post-1
execute if score Red posts matches 0 as @e[tag=link,tag=red,tag=1] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=1,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Red posts matches 0 as @e[tag=post,tag=1,tag=!red,tag=!blue] at @e[tag=link,tag=red,tag=1] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if score Blue posts matches 0 if entity @e[tag=post,tag=1,tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag=1] at @s run tag @a[distance=..0.5] add post-1
execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag=1] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=1,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Blue posts matches 0 as @e[tag=post,tag=1,tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag=1] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if score Red posts matches 0 if entity @e[tag=post,tag=2,tag=!red,tag=!blue] as @e[tag=link,tag=red,tag=2] at @s run tag @a[distance=..0.5] add post-2
execute if score Red posts matches 0 as @e[tag=link,tag=red,tag=2] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=2,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Red posts matches 0 as @e[tag=post,tag=2,tag=!red,tag=!blue] at @e[tag=link,tag=red,tag=2] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if score Blue posts matches 0 if entity @e[tag=post,tag=2,tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag=2] at @s run tag @a[distance=..0.5] add post-2
execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag=2] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=2,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Blue posts matches 0 as @e[tag=post,tag=2,tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag=2] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if score Red posts matches 0 if entity @e[tag=post,tag=3,tag=!red,tag=!blue] as @e[tag=link,tag=red,tag=3] at @s run tag @a[distance=..0.5] add post-3
execute if score Red posts matches 0 as @e[tag=link,tag=red,tag=3] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=3,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Red posts matches 0 as @e[tag=post,tag=3,tag=!red,tag=!blue] at @e[tag=link,tag=red,tag=3] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if score Blue posts matches 0 if entity @e[tag=post,tag=3,tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag=3] at @s run tag @a[distance=..0.5] add post-3
execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag=3] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=3,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Blue posts matches 0 as @e[tag=post,tag=3,tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag=3] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if score Red posts matches 0 if entity @e[tag=post,tag=4,tag=!red,tag=!blue] as @e[tag=link,tag=red,tag=4] at @s run tag @a[distance=..0.5] add post-4
execute if score Red posts matches 0 as @e[tag=link,tag=red,tag=4] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=4,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Red posts matches 0 as @e[tag=post,tag=4,tag=!red,tag=!blue] at @e[tag=link,tag=red,tag=4] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if score Blue posts matches 0 if entity @e[tag=post,tag=4,tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag=4] at @s run tag @a[distance=..0.5] add post-4
execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag=4] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=4,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Blue posts matches 0 as @e[tag=post,tag=4,tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag=4] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if score Red posts matches 0 if entity @e[tag=post,tag=5,tag=!red,tag=!blue] as @e[tag=link,tag=red,tag=5] at @s run tag @a[distance=..0.5] add post-5
execute if score Red posts matches 0 as @e[tag=link,tag=red,tag=5] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=5,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Red posts matches 0 as @e[tag=post,tag=5,tag=!red,tag=!blue] at @e[tag=link,tag=red,tag=5] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if score Blue posts matches 0 if entity @e[tag=post,tag=5,tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag=5] at @s run tag @a[distance=..0.5] add post-5
execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag=5] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=5,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Blue posts matches 0 as @e[tag=post,tag=5,tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag=5] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if score Red posts matches 0 if entity @e[tag=post,tag=6,tag=!red,tag=!blue] as @e[tag=link,tag=red,tag=6] at @s run tag @a[distance=..0.5] add post-6
execute if score Red posts matches 0 as @e[tag=link,tag=red,tag=6] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=6,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Red posts matches 0 as @e[tag=post,tag=6,tag=!red,tag=!blue] at @e[tag=link,tag=red,tag=6] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if score Blue posts matches 0 if entity @e[tag=post,tag=6,tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag=6] at @s run tag @a[distance=..0.5] add post-6
execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag=6] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=6,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Blue posts matches 0 as @e[tag=post,tag=6,tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag=6] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if score Red posts matches 0 if entity @e[tag=post,tag=7,tag=!red,tag=!blue] as @e[tag=link,tag=red,tag=7] at @s run tag @a[distance=..0.5] add post-7
execute if score Red posts matches 0 as @e[tag=link,tag=red,tag=7] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=7,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Red posts matches 0 as @e[tag=post,tag=7,tag=!red,tag=!blue] at @e[tag=link,tag=red,tag=7] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if score Blue posts matches 0 if entity @e[tag=post,tag=7,tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag=7] at @s run tag @a[distance=..0.5] add post-7
execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag=7] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=7,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Blue posts matches 0 as @e[tag=post,tag=7,tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag=7] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if score Red posts matches 0 if entity @e[tag=post,tag=8,tag=!red,tag=!blue] as @e[tag=link,tag=red,tag=8] at @s run tag @a[distance=..0.5] add post-8
execute if score Red posts matches 0 as @e[tag=link,tag=red,tag=8] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=8,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Red posts matches 0 as @e[tag=post,tag=8,tag=!red,tag=!blue] at @e[tag=link,tag=red,tag=8] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if score Blue posts matches 0 if entity @e[tag=post,tag=8,tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag=8] at @s run tag @a[distance=..0.5] add post-8
execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag=8] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=8,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Blue posts matches 0 as @e[tag=post,tag=8,tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag=8] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force

execute if score Red posts matches 0 if entity @e[tag=post,tag=9,tag=!red,tag=!blue] as @e[tag=link,tag=red,tag=9] at @s run tag @a[distance=..0.5] add post-9
execute if score Red posts matches 0 as @e[tag=link,tag=red,tag=9] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=9,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Red posts matches 0 as @e[tag=post,tag=9,tag=!red,tag=!blue] at @e[tag=link,tag=red,tag=9] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force
execute if score Blue posts matches 0 if entity @e[tag=post,tag=9,tag=!red,tag=!blue] as @e[tag=link,tag=blue,tag=9] at @s run tag @a[distance=..0.5] add post-9
execute if score Blue posts matches 0 as @e[tag=link,tag=blue,tag=9] at @s run execute as @a[distance=..0.5] at @e[tag=post,tag=9,tag=!red,tag=!blue] run spreadplayers ~ ~ 1 4 false @s
execute if score Blue posts matches 0 as @e[tag=post,tag=9,tag=!red,tag=!blue] at @e[tag=link,tag=blue,tag=9] run particle flame ~ ~1 ~ 0 0.5 0 0.01 1 force



##############################
# Update Wool (Respawn Room) #
##############################
#execute as @e[tag=post,tag={x},tag=red] at @e[tag=link,tag={x}] run setblock ~ ~-1 ~ red_wool
#execute as @e[tag=post,tag={x},tag=blue] at @e[tag=link,tag={x}] run setblock ~ ~-1 ~ blue_wool
#execute as @e[tag=post,tag={x},tag=!red,tag=!blue] at @e[tag=link,tag={x}] run setblock ~ ~-1 ~ white_wool

execute as @e[tag=post,tag=1,tag=red] at @e[tag=link,tag=1] run setblock ~ ~-1 ~ red_wool
execute as @e[tag=post,tag=1,tag=blue] at @e[tag=link,tag=1] run setblock ~ ~-1 ~ blue_wool
execute as @e[tag=post,tag=1,tag=!red,tag=!blue] at @e[tag=link,tag=1] run setblock ~ ~-1 ~ white_wool

execute as @e[tag=post,tag=2,tag=red] at @e[tag=link,tag=2] run setblock ~ ~-1 ~ red_wool
execute as @e[tag=post,tag=2,tag=blue] at @e[tag=link,tag=2] run setblock ~ ~-1 ~ blue_wool
execute as @e[tag=post,tag=2,tag=!red,tag=!blue] at @e[tag=link,tag=2] run setblock ~ ~-1 ~ white_wool

execute as @e[tag=post,tag=3,tag=red] at @e[tag=link,tag=3] run setblock ~ ~-1 ~ red_wool
execute as @e[tag=post,tag=3,tag=blue] at @e[tag=link,tag=3] run setblock ~ ~-1 ~ blue_wool
execute as @e[tag=post,tag=3,tag=!red,tag=!blue] at @e[tag=link,tag=3] run setblock ~ ~-1 ~ white_wool

execute as @e[tag=post,tag=4,tag=red] at @e[tag=link,tag=4] run setblock ~ ~-1 ~ red_wool
execute as @e[tag=post,tag=4,tag=blue] at @e[tag=link,tag=4] run setblock ~ ~-1 ~ blue_wool
execute as @e[tag=post,tag=4,tag=!red,tag=!blue] at @e[tag=link,tag=4] run setblock ~ ~-1 ~ white_wool

execute as @e[tag=post,tag=5,tag=red] at @e[tag=link,tag=5] run setblock ~ ~-1 ~ red_wool
execute as @e[tag=post,tag=5,tag=blue] at @e[tag=link,tag=5] run setblock ~ ~-1 ~ blue_wool
execute as @e[tag=post,tag=5,tag=!red,tag=!blue] at @e[tag=link,tag=5] run setblock ~ ~-1 ~ white_wool

execute as @e[tag=post,tag=6,tag=red] at @e[tag=link,tag=6] run setblock ~ ~-1 ~ red_wool
execute as @e[tag=post,tag=6,tag=blue] at @e[tag=link,tag=6] run setblock ~ ~-1 ~ blue_wool
execute as @e[tag=post,tag=6,tag=!red,tag=!blue] at @e[tag=link,tag=6] run setblock ~ ~-1 ~ white_wool

execute as @e[tag=post,tag=7,tag=red] at @e[tag=link,tag=7] run setblock ~ ~-1 ~ red_wool
execute as @e[tag=post,tag=7,tag=blue] at @e[tag=link,tag=7] run setblock ~ ~-1 ~ blue_wool
execute as @e[tag=post,tag=7,tag=!red,tag=!blue] at @e[tag=link,tag=7] run setblock ~ ~-1 ~ white_wool

execute as @e[tag=post,tag=8,tag=red] at @e[tag=link,tag=8] run setblock ~ ~-1 ~ red_wool
execute as @e[tag=post,tag=8,tag=blue] at @e[tag=link,tag=8] run setblock ~ ~-1 ~ blue_wool
execute as @e[tag=post,tag=8,tag=!red,tag=!blue] at @e[tag=link,tag=8] run setblock ~ ~-1 ~ white_wool

execute as @e[tag=post,tag=9,tag=red] at @e[tag=link,tag=9] run setblock ~ ~-1 ~ red_wool
execute as @e[tag=post,tag=9,tag=blue] at @e[tag=link,tag=9] run setblock ~ ~-1 ~ blue_wool
execute as @e[tag=post,tag=9,tag=!red,tag=!blue] at @e[tag=link,tag=9] run setblock ~ ~-1 ~ white_wool



######################
# Special Conditions #
######################
execute if score map system matches 2 as @a[tag=post-1] at @s run tp ~ 53 ~
execute if score map system matches 2 as @a[tag=post-3] at @s run tp ~ 50 ~
execute if score map system matches 3 as @a[tag=post-2] at @s run tp ~ 100 ~
execute if score map system matches 3 as @a[tag=post-4] at @s run tp ~ 93 ~
tag @a[tag=post-1] remove post-1
tag @a[tag=post-2] remove post-2
tag @a[tag=post-3] remove post-3
tag @a[tag=post-4] remove post-4
tag @a[tag=post-5] remove post-5
tag @a[tag=post-6] remove post-6
tag @a[tag=post-7] remove post-7
tag @a[tag=post-8] remove post-8
tag @a[tag=post-9] remove post-9