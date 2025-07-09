# Housekeeping
item replace entity @s weapon.offhand with minecraft:air
xp add @s -4 levels

# Ability
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:movement_speed base set 0.9
playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.75
particle cloud ~ ~ ~ 0 0 0 0.2 100 force @a

# Delay
tag @s add tmpRogueDashEnd
# 2 ticks is not enough for the speed to active most of the time
schedule function wdhb:core/rogue/offhand/1b-dash-end 3t
