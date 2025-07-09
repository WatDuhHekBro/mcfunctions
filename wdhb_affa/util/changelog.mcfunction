#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

#Format: execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Sample Text","color":"dark_aqua","bold":false}]
#Warning: execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"WARNING: ","color":"red","bold":false}]

scoreboard players add @a newsReceived 0
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"[------------- [","color":"blue"},{"text":"Version 0.2 BETA Changelog","color":"gold"},{"text":"] -------------]","color":"blue"}]

execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Abandoned the queueing system in favor of FFA.","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Removed classes in favor of free ability selection.","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Changed name to \"AFFA\". \"BotA\" is now deprecated.","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Removed a lot of menu commands.","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"WARNING: Most of the commands were just swapped around, so there is a high chance you'll encounter a bug. I haven't gotten around to proofreading the commands yet.","color":"red","bold":false}]

execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"[----------------------------------------------------]","color":"blue"}]
scoreboard players set @a newsReceived 1