tag @s remove tmpRogueSkyAble
item replace entity @s weapon.offhand with minecraft:air
item replace entity @s weapon.mainhand with minecraft:iron_sword
xp add @s -13 levels
schedule clear wdhb:core/rogue/offhand/4-timeout

# Ability Brainstorm
# - ender sfx
# - knockback sword, after hitting, then teleport back to previous location
# - fix recast issue again

execute at @n[tag=tmpRogueWindVictim] run tp @s ^ ^ ^2 ~180 ~
effect give @s minecraft:slow_falling 5 127 true
tag @s add tmpRogueSkyEnd
schedule function wdhb:core/rogue/offhand/5a-sky-end 10t
