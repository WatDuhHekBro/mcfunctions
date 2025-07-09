scoreboard players set state system 0
function wdhb:conquest/util/timer_stop
function wdhb:conquest/util/special_stop
bossbar set wdhb:red players
bossbar set wdhb:blue players
scoreboard players reset Red
scoreboard players reset Blue
scoreboard players reset Neutral
scoreboard players reset reinforcements_tick
scoreboard players add map system 1
execute if score map system matches 4.. run scoreboard players set map system 1
execute as @e[tag=post] at @s run setblock ~ ~-1 ~ white_stained_glass
execute as @e[tag=link] at @s run setblock ~ ~-1 ~ white_wool
kill @e[tag=post]
kill @e[tag=link]
tp @a[team=!lobby] 0 100 0 0 0
clear @a[team=!lobby]
team empty red
team empty blue
team join lobby @a
spawnpoint @a 0 100 0