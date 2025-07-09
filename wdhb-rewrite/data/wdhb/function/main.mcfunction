function wdhb:util/commands
function wdhb:core/effects

execute as @a[scores={class=1}, gamemode=adventure] at @s run function wdhb:core/rogue/loop
#execute as @a[scores={class=2}, gamemode=adventure] at @s run function wdhb:core/mage/loop
#execute as @a[scores={class=3}, gamemode=adventure] at @s run function wdhb:core/hunter/loop
execute as @a[scores={class=4}, gamemode=adventure] at @s run function wdhb:core/barbarian/loop



###########
# General #
###########

gamemode adventure @a[gamemode=survival]
gamemode adventure @a[tag=!admin]

effect give @a minecraft:saturation infinite 0 true
effect give @a minecraft:regeneration infinite 0 true



###############
# New Players #
###############

execute as @a[tag=!hasWelcome] at @s run function wdhb:util/welcome



########
# Test #
########

scoreboard players reset test System
scoreboard players set test System 69
execute as @a[predicate=wdhb:test] run say hi
