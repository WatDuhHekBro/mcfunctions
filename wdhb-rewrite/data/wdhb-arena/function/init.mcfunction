#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

scoreboard objectives add totalGames dummy
scoreboard objectives add barbarianGames dummy
scoreboard objectives add barbarianWins dummy
scoreboard objectives add hunterGames dummy
scoreboard objectives add hunterWins dummy
scoreboard objectives add warlockGames dummy
scoreboard objectives add warlockWins dummy
scoreboard objectives add rogueGames dummy
scoreboard objectives add rogueWins dummy
scoreboard players set 100 totalGames 100
scoreboard players set 10000 totalGames 10000
scoreboard objectives add queue trigger
scoreboard objectives add music trigger
scoreboard objectives add hat trigger
scoreboard objectives add help trigger
scoreboard objectives add cstats trigger
scoreboard objectives add profile trigger
scoreboard objectives add info trigger
scoreboard objectives add news trigger
scoreboard objectives add speed trigger
scoreboard objectives add forfeit trigger
scoreboard objectives add barbarian trigger
scoreboard objectives add hunter trigger
scoreboard objectives add warlock trigger
scoreboard objectives add rogue trigger

scoreboard objectives add class dummy
scoreboard objectives add inGame dummy
scoreboard objectives add arrowKill dummy
scoreboard objectives add generalHP dummy
scoreboard objectives add generalMP dummy
scoreboard objectives add leave stat.leaveGame
scoreboard objectives add disarm dummy
scoreboard objectives add stun dummy
scoreboard objectives add sneak stat.sneakTime
scoreboard objectives add damageTaken stat.damageTaken
scoreboard objectives add health health
scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list health
scoreboard objectives add newsReceived dummy
scoreboard objectives add Timer dummy
scoreboard players add Selection Timer 0
scoreboard players add Battle Timer 0
scoreboard objectives add Kills stat.playerKills
scoreboard objectives setdisplay sidebar Kills
scoreboard objectives add battleInProgress dummy
scoreboard objectives add realTimer dummy
scoreboard objectives add hasDied stat.deaths

scoreboard objectives add 1o1 dummy
scoreboard objectives add 1o1able dummy
scoreboard objectives add 1o1cd dummy
scoreboard objectives add 1o1cdswitch dummy

scoreboard objectives add 1d1drop stat.drop.minecraft.diamond_axe
scoreboard objectives add 1d1 dummy
scoreboard objectives add 1d1able dummy
scoreboard objectives add 1d1cd dummy
scoreboard objectives add 1d1cdswitch dummy

scoreboard objectives add 2o1 dummy
scoreboard objectives add 2o1able dummy
scoreboard objectives add 2o1timer dummy

scoreboard objectives add 2d1drop stat.drop.minecraft.bow
scoreboard objectives add 2d1 dummy
scoreboard objectives add 2d1able dummy

scoreboard objectives add 2p stat.useItem.minecraft.bow
scoreboard objectives add 2pswitch dummy
scoreboard objectives add 2pswitch2 dummy
scoreboard objectives add 2poverflow dummy
scoreboard objectives add 2ptimer dummy

scoreboard objectives add 4o1 dummy
scoreboard objectives add 4o1able dummy
scoreboard objectives add 4o1timer dummy
scoreboard objectives add 4o1r dummy
scoreboard objectives add 4o1rable dummy
scoreboard objectives add 4o1rswitch dummy
scoreboard objectives add 4o1rtimer dummy
scoreboard objectives add 4o1rvictim dummy
scoreboard objectives add 4o1rtime dummy
scoreboard objectives add 4o1ruser dummy

scoreboard objectives add 4d1drop stat.drop.minecraft.iron_sword
scoreboard objectives add 4d1 dummy
scoreboard objectives add 4d1able dummy

scoreboard teams add Red
scoreboard teams add Blue
scoreboard teams add Lobby
scoreboard teams add Queue
scoreboard teams option Red collisionRule never
scoreboard teams option Red color red
scoreboard teams option Red deathMessageVisibility always
scoreboard teams option Red friendlyfire false
scoreboard teams option Red nametagVisibility always
scoreboard teams option Red seeFriendlyInvisibles true
scoreboard teams option Blue collisionRule never
scoreboard teams option Blue color blue
scoreboard teams option Blue deathMessageVisibility always
scoreboard teams option Blue friendlyfire false
scoreboard teams option Blue nametagVisibility always
scoreboard teams option Blue seeFriendlyInvisibles true
scoreboard teams option Lobby collisionRule never
scoreboard teams option Lobby color gold
scoreboard teams option Lobby deathMessageVisibility never
scoreboard teams option Lobby friendlyfire false
scoreboard teams option Lobby nametagVisibility hideForOtherTeams
scoreboard teams option Lobby seeFriendlyInvisibles true
scoreboard teams option Queue collisionRule never
scoreboard teams option Queue color dark_purple
scoreboard teams option Queue deathMessageVisibility never
scoreboard teams option Queue friendlyfire false
scoreboard teams option Queue nametagVisibility hideForOtherTeams
scoreboard teams option Queue seeFriendlyInvisibles true

scoreboard objectives add playerCount dummy

summon armor_stand 0 51 0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b,CustomName:"Server",DisabledSlots:31}
scoreboard players set @e[type=Armor_Stand,name=Server] playerCount 0
stats entity @e[type=Armor_Stand,name=Server] set AffectedEntities @s playerCount

summon armor_stand 0 51 0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b,CustomName:"Queue",DisabledSlots:31}
scoreboard players set @e[type=Armor_Stand,name=Queue] playerCount 0
stats entity @e[type=Armor_Stand,name=Queue] set AffectedEntities @s playerCount

summon armor_stand 0 51 0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b,CustomName:"Battle",DisabledSlots:31}
scoreboard players set @e[type=Armor_Stand,name=Battle] playerCount 0
stats entity @e[type=Armor_Stand,name=Battle] set AffectedEntities @s playerCount

scoreboard players set @e[type=Armor_Stand] realTimer 0
scoreboard players set @e[type=Armor_Stand] battleInProgress 0

scoreboard players tag @a remove newPlayer

tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"]","color":"gold","bold":true},{"text":" The BotA Engine ","color":"dark_aqua","bold":false},{"text":"(0.1 BETA)","color":"yellow"},{"text":" has been ","color":"dark_aqua"},{"text":"initialized","color":"green"},{"text":".","color":"dark_aqua"}]