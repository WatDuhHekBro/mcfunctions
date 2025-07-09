#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

#Later find out how to do a line-queue system.
scoreboard players tag @s[tag=!queueSwitch] add queueEnabled
scoreboard players tag @s[tag=queueSwitch] remove queueEnabled
tellraw @s[tag=queueEnabled] ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"]","color":"gold","bold":true},{"text":" You are now ","color":"dark_aqua","bold":false},{"text":"queued","color":"green"},{"text":".","color":"dark_aqua"}]
tellraw @s[tag=!queueEnabled] ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"]","color":"gold","bold":true},{"text":" You are no longer ","color":"dark_aqua","bold":false},{"text":"queued","color":"red"},{"text":".","color":"dark_aqua"}]
#[tag=queueEnabled]
#[tag=!queueEnabled]
scoreboard players tag @s[tag=!queueSwitch] add queueSwitch
scoreboard players tag @s[tag=queueSwitch,tag=!queueEnabled] remove queueSwitch