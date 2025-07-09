effect give @s resistance 1 4 true
particle enchanted_hit ~ ~1 ~ 0 0 0 0.5 10 force @a[distance=..7]
playsound entity.enderman.teleport neutral @a[distance=..7] ~ ~ ~ 1 2
tag @s add tick_parry
xp add @s -1 levels