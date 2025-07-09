######################
# Auto-Join Function #
######################
#execute store result score red_count system run team list red
#execute store result score blue_count system run team list blue
scoreboard players set red_count system 0
scoreboard players set blue_count system 0
execute as @a[team=red] at @s run scoreboard players add red_count system 1
execute as @a[team=blue] at @s run scoreboard players add blue_count system 1
execute if score red_count system <= blue_count system run team join red
execute if score red_count system > blue_count system run team join blue
scoreboard players reset red_count
scoreboard players reset blue_count

###############################
# Map-Specific Initialization #
###############################
execute if score map system matches 1 run function wdhb:conquest/maps/1-play
execute if score map system matches 2 run function wdhb:conquest/maps/2-play
execute if score map system matches 3 run function wdhb:conquest/maps/3-play