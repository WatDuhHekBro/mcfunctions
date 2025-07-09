#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

scoreboard objectives remove totalGames
scoreboard objectives remove barbarianGames
scoreboard objectives remove barbarianWins
scoreboard objectives remove hunterGames
scoreboard objectives remove hunterWins
scoreboard objectives remove warlockGames
scoreboard objectives remove warlockWins
scoreboard objectives remove rogueGames
scoreboard objectives remove rogueWins
scoreboard players reset 100
scoreboard players reset 10000
scoreboard players reset PH
scoreboard players reset PH2
scoreboard players reset PHdec
scoreboard players reset Stats
scoreboard objectives remove queue
scoreboard objectives remove music
scoreboard objectives remove hat
scoreboard objectives remove help
scoreboard objectives remove cstats
scoreboard objectives remove profile
scoreboard objectives remove info
scoreboard objectives remove news
scoreboard objectives remove speed
scoreboard objectives remove forfeit
scoreboard objectives remove barbarian
scoreboard objectives remove hunter
scoreboard objectives remove warlock
scoreboard objectives remove rogue

scoreboard objectives remove class
scoreboard objectives remove inGame
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
scoreboard objectives remove battleInProgress
scoreboard objectives remove realTimer
scoreboard objectives remove hasDied

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

scoreboard objectives remove 2p
scoreboard objectives remove 2pswitch
scoreboard objectives remove 2pswitch2
scoreboard objectives remove 2poverflow
scoreboard objectives remove 2ptimer

scoreboard objectives remove 4o1
scoreboard objectives remove 4o1able
scoreboard objectives remove 4o1timer
scoreboard objectives remove 4o1r
scoreboard objectives remove 4o1rable
scoreboard objectives remove 4o1rswitch
scoreboard objectives remove 4o1rtimer
scoreboard objectives remove 4o1rvictim
scoreboard objectives remove 4o1rtime
scoreboard objectives remove 4o1ruser

scoreboard objectives remove 4d1drop
scoreboard objectives remove 4d1
scoreboard objectives remove 4d1able

scoreboard teams remove Red
scoreboard teams remove Blue
scoreboard teams remove Lobby
scoreboard teams remove Queue

scoreboard objectives remove playerCount
stats entity @e[type=Armor_Stand] clear AffectedEntities
kill @e[type=Armor_Stand]
scoreboard players reset Queue
scoreboard players reset Battle
scoreboard players reset Total

scoreboard players tag @a remove queueEnabled
scoreboard players tag @a remove queueSwitch

tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"]","color":"gold","bold":true},{"text":" The BotA Engine is now ","color":"dark_aqua","bold":false},{"text":"deconstructed","color":"red"},{"text":".","color":"dark_aqua"}]