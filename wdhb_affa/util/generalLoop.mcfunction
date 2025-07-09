#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

# [Note] 1 Repeater Tick (.1 seconds) = 2 Game Ticks (.05 seconds)
## [Gamemode Stuff] ##
gamemode 2 @a[m=1,name=!WatDuhHekBro]
gamemode 2 @a[m=0]
gamemode 2 @a[m=3]

## [Entity Management] ##
kill @e[type=Item]
scoreboard players set @e[type=Arrow] arrowKill 1 {inGround:1b}
kill @e[type=Arrow,score_arrowKill_min=1]
execute @e[type=Armor_Stand,name=Server] ~ ~ ~ effect @a saturation 1000000 100 true
execute @e[type=Armor_Stand,name=Queue] ~ ~ ~ effect @a[tag=queueEnabled] saturation 1000000 100 true
execute @e[type=Armor_Stand,name=Battle] ~ ~ ~ effect @a[tag=inBattle] saturation 1000000 100 true
effect @a[tag=speedEnabled,score_inGame=0] speed 1 6 true
execute @e[type=Armor_Stand,name=Queue,score_playerCount_min=2,score_battleInProgress=0] ~ ~ ~ function wdhb_bota:util/battleStart
scoreboard players tag @a[tag=inBattle] remove queueEnabled
scoreboard players tag @a[tag=inBattle] remove queueSwitch

## [Launch Pads] ##
scoreboard teams join Battle @a[x=0,y=50,z=14,dx=0,dy=0,dz=0]
tp @a[x=0,y=50,z=14,dx=0,dy=0,dz=0] 0 44 18

scoreboard teams join Battle @a[x=21,y=50,z=35,dx=0,dy=0,dz=0]
tp @a[x=21,y=50,z=35,dx=0,dy=0,dz=0] 17 44 35

scoreboard teams join Battle @a[x=0,y=50,z=56,dx=0,dy=0,dz=0]
tp @a[x=0,y=50,z=56,dx=0,dy=0,dz=0] 0 44 52

scoreboard teams join Battle @a[x=-21,y=50,z=35,dx=0,dy=0,dz=0]
tp @a[x=-21,y=50,z=35,dx=0,dy=0,dz=0] -17 44 35

## [Spawn] ##
replaceitem entity @a[x=0,y=50,z=0,dx=0,dy=0,dz=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Sword"},HideFlags:4}
replaceitem entity @a[x=0,y=50,z=0,dx=0,dy=0,dz=0] slot.hotbar.1 bow 1 0 {Unbreakable:1,display:{Name:"Bow"},HideFlags:4}

## [Health and Mana] ##
xp -1L @a[lm=31]
xp 1L @a[score_generalMP_min=20]
scoreboard players set @a[score_generalMP_min=20] generalMP 0
effect @a[score_generalHP_min=20] regeneration 1 2 true
scoreboard players set @a[score_generalHP_min=20] generalHP 0
effect @a[x=0,y=50,z=0,dx=0,dy=0,dz=0] health_boost 1000000 4 true

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
scoreboard players set @a[tag=!newPlayer] generalHP 0
scoreboard players set @a[tag=!newPlayer] generalMP 0
scoreboard players set @a[tag=!newPlayer] disarm 0
scoreboard players set @a[tag=!newPlayer] stun 0
scoreboard players set @a[tag=!newPlayer] 1o1cd 0
scoreboard players set @a[tag=!newPlayer] 1o1cdswitch 0
scoreboard players set @a[tag=!newPlayer] 1d1cd 0
scoreboard players set @a[tag=!newPlayer] 1d1cdswitch 0
scoreboard players set @a[tag=!newPlayer] shotsfired 0
scoreboard players set @a[tag=!newPlayer] arrowspawn 0
scoreboard players set @a[tag=!newPlayer] swordswap 0
scoreboard players set @a[tag=!newPlayer] sworddrop 0
scoreboard players set @a[tag=!newPlayer] bowswap0
scoreboard players set @a[tag=!newPlayer] bowdrop0
scoreboard players set @a[tag=!newPlayer] sneakindex 0
scoreboard players set @a[tag=!newPlayer] passive 0
scoreboard players set @a[tag=!newPlayer] swap0timer
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