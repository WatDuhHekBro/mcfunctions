#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

scoreboard objectives remove help
scoreboard objectives remove profile
scoreboard objectives remove info
scoreboard objectives remove news

scoreboard objectives remove arrowKill
scoreboard objectives remove generalHP
scoreboard objectives remove generalMP
scoreboard objectives remove leave
scoreboard objectives remove disarm
scoreboard objectives remove stun
scoreboard objectives remove sneak
scoreboard objectives remove damageTaken
scoreboard objectives remove health
scoreboard objectives remove newsReceived
scoreboard objectives remove Timer
scoreboard objectives remove Kills
scoreboard objectives remove realTimer
scoreboard objectives remove hasDied

scoreboard objectives remove shotsfired
scoreboard objectives remove hasnormal
scoreboard objectives remove haspshot
scoreboard objectives remove arrowlimit
scoreboard objectives remove arrowspawn

scoreboard objectives remove swordswap
scoreboard objectives remove sworddrop
scoreboard objectives remove bowswap
scoreboard objectives remove bowdrop
scoreboard objectives remove sneakindex
scoreboard objectives remove passive

scoreboard objectives remove swap0
scoreboard objectives remove swap0mana
scoreboard objectives remove swap0timer

scoreboard objectives remove 1o1
scoreboard objectives remove 1o1able
scoreboard objectives remove 1o1cd
scoreboard objectives remove 1o1cdswitch

scoreboard objectives remove 1d1drop
scoreboard objectives remove 1d1
scoreboard objectives remove 1d1able
scoreboard objectives remove 1d1cd
scoreboard objectives remove 1d1cdswitch

scoreboard objectives remove 2o1
scoreboard objectives remove 2o1able
scoreboard objectives remove 2o1timer

scoreboard objectives remove 2d1drop
scoreboard objectives remove 2d1
scoreboard objectives remove 2d1able

scoreboard objectives remove 4d1drop
scoreboard objectives remove 4d1
scoreboard objectives remove 4d1able

scoreboard teams remove Lobby
scoreboard teams remove Battle

scoreboard objectives remove playerCount
stats entity @e[type=Armor_Stand] clear AffectedEntities
kill @e[type=Armor_Stand]
scoreboard players reset Queue
scoreboard players reset Battle
scoreboard players reset Total

tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"]","color":"gold","bold":true},{"text":" The AFFA Engine is now ","color":"dark_aqua","bold":false},{"text":"deconstructed","color":"red"},{"text":".","color":"dark_aqua"}]