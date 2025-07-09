#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Class Selection] ##
tp @r[tag=queueEnabled,c=2] 0 37 35
scoreboard objectives setdisplay sidebar Timer
tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"] ","color":"gold","bold":true},{"text":"The match is about to begin!","color":"dark_aqua"}]
scoreboard players set @e[type=Armor_Stand,name=Queue] realTimer 300
scoreboard players set Selection Timer 15
scoreboard players set @e[type=Armor_Stand] battleInProgress 1