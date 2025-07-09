xp add @s -1 levels
playsound block.note_block.pling neutral @s ~ ~ ~ 1 2
execute store result score @s system run xp query @s levels
tellraw @s [{"text":"You have successfully activated your sneak ability!","color":"green"}]
tellraw @s [{"text":"You now have ","color":"gray"},{"score":{"name":"@s","objective":"system"},"color":"gold"},{"text":" energy.","color":"gray"}]
scoreboard players reset @s system