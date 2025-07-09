effect give @s jump_boost 1 128 true
effect give @s speed 1 35 true
playsound entity.bat.takeoff neutral @a ~ ~ ~
particle cloud ~ ~ ~ 0 0 0 0.2 50 force @a
tag @s add tick_dash
xp add @s -5 levels