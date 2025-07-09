#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

#Format: execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Sample Text","color":"dark_aqua","bold":false}]
#Warning: execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"WARNING: ","color":"red","bold":false}]

scoreboard players add @a newsReceived 0
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"[------------- [","color":"blue"},{"text":"Version 0.1 BETA Changelog","color":"gold"},{"text":"] -------------]","color":"blue"}]

execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Added the extensive command menus","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Removed the Rogue's ability to jump during Dashing Tempest","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Added some experimental features that involves some new activators, such as sneaking abilities","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Renamed Mage to Warlock","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Removed the experimental \"Free Play\" system; Now has a match system","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"Changed \"energy\" to \"mana\".","color":"dark_aqua","bold":false}]
execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"- ","color":"aqua","bold":true},{"text":"WARNING: Stats are experimental and will not be saved!","color":"red","bold":false}]

execute @a[score_newsReceived=0] ~ ~ ~ tellraw @s ["",{"text":"[----------------------------------------------------]","color":"blue"}]
scoreboard players set @a newsReceived 1