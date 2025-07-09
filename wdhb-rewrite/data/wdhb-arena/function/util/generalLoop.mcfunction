#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

# [Note] 1 Repeater Tick (.1 seconds) = 2 Game Ticks (.05 seconds)
## [Gamemode Stuff] ##
gamemode 2 @a[m=1,name=!WatDuhHekBro]
gamemode 2 @a[m=0]
gamemode 2 @a[m=3]

## [Entity Management] ##
kill @e[type=Item]
scoreboard players set @e[type=Arrow] arrowKill 1 {inGround:1b}
kill @e[type=Arrow,score_arrowKill_min=1]
#execute @e[type=Armor_Stand,name=Server] ~ ~ ~ effect @a saturation 1000000 100 true
execute @e[type=Armor_Stand,name=Queue] ~ ~ ~ effect @a[tag=queueEnabled] saturation 1000000 100 true
execute @e[type=Armor_Stand,name=Battle] ~ ~ ~ effect @a[tag=inBattle] saturation 1000000 100 true
effect @a[tag=speedEnabled,score_inGame=0] speed 1 6 true
execute @e[type=Armor_Stand,name=Queue,score_playerCount_min=2,score_battleInProgress=0] ~ ~ ~ function wdhb_bota:util/battleStart
scoreboard players tag @a[tag=inBattle] remove queueEnabled
scoreboard players tag @a[tag=inBattle] remove queueSwitch

## [Health and Mana] ##
xp -1L @a[lm=31]
xp 1L @a[score_inGame_min=1,score_generalMP_min=20]
scoreboard players set @a[score_inGame_min=1,score_generalMP_min=20] generalMP 0
effect @a[score_generalHP_min=20] regeneration 1 2 true
scoreboard players set @a[score_generalHP_min=20] generalHP 0

## [Class Selection] ##
scoreboard players set @a[x=0,y=37,z=42,dy=1] class 1
scoreboard players tag @a[x=0,y=37,z=42,dy=1] add hasBarbarian

execute @a[tag=hasBarbarian] ~ ~ ~ fill 0 37 41 0 38 41 glass
execute @a[tag=hasBarbarian,x=7,y=37,z=35,dy=1] ~ ~ ~ fill 0 37 41 0 38 41 air
execute @a[tag=hasBarbarian,x=7,y=37,z=35,dy=1] ~ ~ ~ scoreboard players tag @s remove hasBarbarian
execute @a[tag=hasBarbarian,x=-7,y=37,z=35,dy=1] ~ ~ ~ fill 0 37 41 0 38 41 air
execute @a[tag=hasBarbarian,x=-7,y=37,z=35,dy=1] ~ ~ ~ scoreboard players tag @s remove hasBarbarian

scoreboard players set @a[x=7,y=37,z=35,dy=1] class 2
scoreboard players tag @a[x=7,y=37,z=35,dy=1] add hasHunter

execute @a[tag=hasHunter] ~ ~ ~ fill 6 37 35 6 38 35 glass
execute @a[tag=hasHunter,x=0,y=37,z=42,dy=1] ~ ~ ~ fill 6 37 35 6 38 35 air
execute @a[tag=hasHunter,x=0,y=37,z=42,dy=1] ~ ~ ~ scoreboard players tag @s remove hasHunter
execute @a[tag=hasHunter,x=-7,y=37,z=35,dy=1] ~ ~ ~ fill 6 37 35 6 38 35 air
execute @a[tag=hasHunter,x=-7,y=37,z=35,dy=1] ~ ~ ~ scoreboard players tag @s remove hasHunter

scoreboard players set @a[x=-7,y=37,z=35,dy=1] class 4
scoreboard players tag @a[x=-7,y=37,z=35,dy=1] add hasRogue

execute @a[tag=hasRogue] ~ ~ ~ fill -6 37 35 -6 38 35 glass
execute @a[tag=hasRogue,x=0,y=37,z=42,dy=1] ~ ~ ~ fill -6 37 35 -6 38 35 air
execute @a[tag=hasRogue,x=0,y=37,z=42,dy=1] ~ ~ ~ scoreboard players tag @s remove hasRogue
execute @a[tag=hasRogue,x=7,y=37,z=35,dy=1] ~ ~ ~ fill -6 37 35 -6 38 35 air
execute @a[tag=hasRogue,x=7,y=37,z=35,dy=1] ~ ~ ~ scoreboard players tag @s remove hasRogue

tp @a[x=0,y=37,z=42,dy=1] 0 37 35
tp @a[x=7,y=37,z=35,dy=1] 0 37 35
tp @a[x=-7,y=37,z=35,dy=1] 0 37 35

## [The Match Itself] ##
scoreboard players add @a class 0
execute @e[type=Armor_Stand,name=Queue,score_battleInProgress_min=1,score_battleInProgress=1,score_realTimer=0] ~ ~ ~ function wdhb_bota:util/battleMatch

#execute @e[type=Armor_Stand,name=Battle,score_battleInProgress_min=2,score_playerCount_min=1,score_playerCount=1] ~ ~ ~ tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"] ","color":"gold","bold":true},{"text":"The match has ended! ","color":"dark_aqua"},{"selector":"@e[tag=inBattle,c=1]"},{"text":" won the match!","color":"dark_aqua"}]
#execute @e[type=Armor_Stand,name=Battle,score_battleInProgress_min=2,score_playerCount_min=1,score_playerCount=1] ~ ~ ~ playsound entity.enderdragon.death neutral @a ~ ~ ~ 1000 2
execute @e[type=Armor_Stand,name=Battle,score_battleInProgress_min=2,score_playerCount_min=1,score_playerCount=1] ~ ~ ~ function wdhb_bota:util/battleEnd

execute @e[type=Armor_Stand,name=Battle,score_battleInProgress_min=2,score_realTimer=0] ~ ~ ~ tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"] ","color":"gold","bold":true},{"text":"The match has ended in a stalemate.","color":"dark_aqua"}]
execute @e[type=Armor_Stand,name=Battle,score_battleInProgress_min=2,score_realTimer=0] ~ ~ ~ playsound entity.enderdragon.hurt neutral @a ~ ~ ~ 1000
execute @e[type=Armor_Stand,name=Battle,score_battleInProgress_min=2,score_realTimer=0] ~ ~ ~ function wdhb_bota:util/battleEnd

## [Death Event] ##
#execute @a[score_hasDied_min=1] ~ ~ ~ 
scoreboard players tag @a[score_hasDied_min=1] remove inBattle
clear @a[score_hasDied_min=1]
scoreboard teams join Lobby @a[score_hasDied_min=1]
scoreboard players set @a[score_hasDied_min=1] inGame 0
scoreboard players set @a[score_hasDied_min=1] class 0
scoreboard players set @a[score_hasDied_min=1] hasDied 0

## [New Player] ##
execute @a[tag=!newPlayer] ~ ~ ~ tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"] ","color":"gold","bold":true},{"selector":"@s","color":"green","bold":false},{"text":" has joined for the first time! Welcome to the server!","color":"dark_aqua"}]
execute @a[tag=!newPlayer] ~ ~ ~ tellraw @s ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"] ","color":"gold","bold":true},{"text":"To get started, do ","color":"dark_aqua"},{"text":"/help","color":"yellow","clickEvent":{"action":"suggest_command","value":"/help"}},{"text":".","color":"dark_aqua"}]
execute @a[tag=!newPlayer] ~ ~ ~ tellraw @s ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"] ","color":"gold","bold":true},{"text":"If you are a returning player, do ","color":"dark_aqua"},{"text":"/news","color":"yellow","clickEvent":{"action":"suggest_command","value":"/news"}},{"text":" to see what has changed.","color":"dark_aqua"}]
scoreboard players set @a[tag=!newPlayer] newsReceived 1
scoreboard players set @a[tag=!newPlayer] class 0
scoreboard players set @a[tag=!newPlayer] inGame 0
scoreboard players set @a[tag=!newPlayer] generalHP 0
scoreboard players set @a[tag=!newPlayer] generalMP 0
scoreboard players set @a[tag=!newPlayer] disarm 0
scoreboard players set @a[tag=!newPlayer] stun 0
scoreboard players set @a[tag=!newPlayer] 1o1cd 0
scoreboard players set @a[tag=!newPlayer] 1o1cdswitch 0
scoreboard players set @a[tag=!newPlayer] 1d1cd 0
scoreboard players set @a[tag=!newPlayer] 1d1cdswitch 0
scoreboard players set @a[tag=!newPlayer] 2o1timer 0
scoreboard players set @a[tag=!newPlayer] 2p 0
scoreboard players set @a[tag=!newPlayer] 2ptimer 0
scoreboard players set @a[tag=!newPlayer] 4o1timer 0
scoreboard players set @a[tag=!newPlayer] 4o1rswitch 0
scoreboard teams join Lobby @a[tag=!newPlayer]
scoreboard players tag @a[tag=!newPlayer] add newPlayer

## [Returning Player] ##
scoreboard teams join Lobby @a[score_leave_min=1]
scoreboard players tag @a[score_leave_min=1] remove inBattle
clear @a[score_leave_min=1]
scoreboard players set @a[score_leave_min=1] inGame 0
scoreboard players set @a[score_leave_min=1] class 0
tp @a[score_leave_min=1] 0 50 0 0 0
scoreboard players set @a leave 0