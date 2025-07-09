execute unless score @s tutorial matches 201..207 run scoreboard players add @s tutorial 1
tp @s[scores={tutorial=1}] 0 26 0 0 0
scoreboard players set @s[scores={tutorial=1}] class 0
tellraw @s[scores={tutorial=1}] [{"text":"[--------------------- [","color":"blue"},{"text":"Tutorial","color":"gold"},{"text":"] ---------------------]","color":"blue"},{"text":"\nThis is a very basic tutorial to prep you on the combat mechanics that'll be used here.","color":"dark_aqua"},{"text":"\n[---------------------------------------------------]","color":"blue"}]

tellraw @s[scores={tutorial=100}] [{"text":"[--------------------- [","color":"blue"},{"text":"Tutorial","color":"gold"},{"text":"] ---------------------]","color":"blue"},{"text":"\nTo start off, look at your experience level. That is your energy meter, and energy is what's used to cast abilities. The maximum energy you can have is 20.","color":"dark_aqua"},{"text":"\n[---------------------------------------------------]","color":"blue"}]

tellraw @s[scores={tutorial=200}] [{"text":"[--------------------- [","color":"blue"},{"text":"Tutorial","color":"gold"},{"text":"] ---------------------]","color":"blue"},{"text":"\nThere are 4 ways to cast abilities. It's usually best to cast these abilities while moving/sprinting. One of them is to switch your weapon to your offhand slot. The default key is ","color":"dark_aqua"},{"text":"[F]","color":"gold"},{"text":". This is what's referred to as an ","color":"dark_aqua"},{"text":"Offhand","color":"aqua"},{"text":" ability. This requires ","color":"dark_aqua"},{"text":"5 energy","color":"red"},{"text":". The tutorial will not move on until you activate this ability.","color":"dark_aqua"},{"text":"\n[---------------------------------------------------]","color":"blue"}]
execute as @s[scores={tutorial=200}] at @s run function wdhb:combat/equipment
scoreboard players set @s[scores={tutorial=200}] tutorial 201

tellraw @s[scores={tutorial=202}] [{"text":"[--------------------- [","color":"blue"},{"text":"Tutorial","color":"gold"},{"text":"] ---------------------]","color":"blue"}]
tellraw @s[scores={tutorial=202}] [{"text":"The second way to activate abilities is by dropping your weapon. The default key is ","color":"dark_aqua"},{"text":"[Q]","color":"gold"},{"text":". This is what's referred to as a ","color":"dark_aqua"},{"text":"Drop","color":"aqua"},{"text":" ability. This requires ","color":"dark_aqua"},{"text":"10 energy","color":"red"},{"text":". The tutorial will not move on until you activate this ability.","color":"dark_aqua"}]
tellraw @s[scores={tutorial=202}] [{"text":"[---------------------------------------------------]","color":"blue"}]
execute as @s[scores={tutorial=202}] at @s run function wdhb:combat/equipment
scoreboard players set @s[scores={tutorial=202}] tutorial 203

tellraw @s[scores={tutorial=204}] [{"text":"[--------------------- [","color":"blue"},{"text":"Tutorial","color":"gold"},{"text":"] ---------------------]","color":"blue"}]
tellraw @s[scores={tutorial=204}] [{"text":"The third way to activate abilities is by sneaking while holding your weapon. The default key is ","color":"dark_aqua"},{"text":"[Left Shift]","color":"gold"},{"text":". This is what's referred to as a ","color":"dark_aqua"},{"text":"Sneak","color":"aqua"},{"text":" ability. This requires ","color":"dark_aqua"},{"text":"1 energy (20 energy per second)","color":"red"},{"text":". The tutorial will not move on until you activate this ability.","color":"dark_aqua"}]
tellraw @s[scores={tutorial=204}] [{"text":"[---------------------------------------------------]","color":"blue"}]
execute as @s[scores={tutorial=204}] at @s run function wdhb:combat/equipment
scoreboard players set @s[scores={tutorial=204}] tutorial 205

tellraw @s[scores={tutorial=206}] [{"text":"[--------------------- [","color":"blue"},{"text":"Tutorial","color":"gold"},{"text":"] ---------------------]","color":"blue"}]
tellraw @s[scores={tutorial=206}] [{"text":"The last way to activate abilities is by right clicking with your weapon. The default key is ","color":"dark_aqua"},{"text":"[Right Mouse Button]","color":"gold"},{"text":". This is what's referred to as a ","color":"dark_aqua"},{"text":"Mouse Click","color":"aqua"},{"text":" ability. This requires ","color":"dark_aqua"},{"text":"7 energy","color":"red"},{"text":". The tutorial will not move on until you activate this ability.","color":"dark_aqua"}]
tellraw @s[scores={tutorial=206}] [{"text":"[---------------------------------------------------]","color":"blue"}]
execute as @s[scores={tutorial=206}] at @s run function wdhb:combat/equipment
scoreboard players set @s[scores={tutorial=206}] tutorial 207

tellraw @s[scores={tutorial=220}] [{"text":"[--------------------- [","color":"blue"},{"text":"Tutorial","color":"gold"},{"text":"] ---------------------]","color":"blue"}]
tellraw @s[scores={tutorial=220}] [{"text":"Check out more in-depth information about the combat system and other stuff via ","color":"dark_aqua"},{"text":"/help","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 1"}},{"text":".","color":"dark_aqua"}]
tellraw @s[scores={tutorial=220}] [{"text":"[---------------------------------------------------]","color":"blue"}]

tp @s[scores={tutorial=250}] 0 100 0 0 0
clear @s[scores={tutorial=250}]
scoreboard players set @s[scores={tutorial=250}] class 1
tag @s[scores={tutorial=250}] add tutorial
scoreboard players reset @s[scores={tutorial=250}] tutorial