scoreboard players enable @a command

execute as @a[scores={command=9}] run say hi

############################
# POI (Points of Interest) #
############################
# Most significant "bit" first, e.g. (500, 0, 0, (0, 0)) and associated maps adjacent in the Z direction, e.g. (500, 0, 200, (0, 0))

execute as @a[scores={command=-1}, tag=admin] run tp @s 200 0 0 0 0
execute as @a[scores={command=-1}, tag=admin] run tellraw @s "BotA Hub"

execute as @a[scores={command=-2}, tag=admin] run tp @s 500 0 0 0 0
execute as @a[scores={command=-2}, tag=admin] run tellraw @s "SnD Hub"

execute as @a[scores={command=-3}, tag=admin] run tp @s -500 0 0 0 0
execute as @a[scores={command=-3}, tag=admin] run tellraw @s "Horseplay Hub"

execute as @a[scores={command=-4}, tag=admin] run tp @s 1000 100 0 0 0
execute as @a[scores={command=-4}, tag=admin] run tellraw @s "Conquest Hub"

execute as @a[scores={command=-5}, tag=admin] run tp @s 500 0 300 0 0
execute as @a[scores={command=-5}, tag=admin] run tellraw @s "SnD: Desert"

execute as @a[scores={command=-6}, tag=admin] run tp @s 500 0 600 0 0
execute as @a[scores={command=-6}, tag=admin] run tellraw @s "SnD: Siberia"

execute as @a[scores={command=-7}, tag=admin] run tp @s 500 0 900 0 0
execute as @a[scores={command=-7}, tag=admin] run tellraw @s "SnD: Volcano"

execute as @a[scores={command=-8}, tag=admin] run tp @s 500 0 -500 0 0
execute as @a[scores={command=-8}, tag=admin] run tellraw @s "SnD: Unused"

execute as @a[scores={command=-9}, tag=admin] run tp @s 1000 0 300 0 0
execute as @a[scores={command=-9}, tag=admin] run tellraw @s "Conquest: Tower"

execute as @a[scores={command=-10}, tag=admin] run tp @s 1000 0 600 0 0
execute as @a[scores={command=-10}, tag=admin] run tellraw @s "Conquest: Tower (Again?)"

execute as @a[scores={command=-11}, tag=admin] run tp @s 1000 0 900 0 0
execute as @a[scores={command=-11}, tag=admin] run tellraw @s "Conquest: 4 Corners"

execute as @a[scores={command=-12}, tag=admin] run tp @s 1000 0 1200 0 0
execute as @a[scores={command=-12}, tag=admin] run tellraw @s "Conquest: Quarry"

execute as @a[scores={command=-13}, tag=admin] run tp @s 1000 0 1500 0 0
execute as @a[scores={command=-13}, tag=admin] run tellraw @s "Conquest: SnD"

execute as @a[scores={command=-14}, tag=admin] run tp @s 1000 0 -500 0 0
execute as @a[scores={command=-14}, tag=admin] run tellraw @s "Conquest: Unknown 1"

execute as @a[scores={command=-15}, tag=admin] run tp @s 1000 0 -600 0 0
execute as @a[scores={command=-15}, tag=admin] run tellraw @s "Conquest: Unknown 2"

execute as @a[scores={command=..-16}, tag=admin] run tellraw @s "no more boi"

scoreboard players set @a command 0
