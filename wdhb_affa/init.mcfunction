#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

scoreboard objectives add help trigger
scoreboard objectives add profile trigger
scoreboard objectives add info trigger
scoreboard objectives add news trigger

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
scoreboard objectives add realTimer dummy
scoreboard objectives add hasDied stat.deaths

scoreboard objectives add shotsfired stat.useItem.minecraft.bow
scoreboard objectives add hasnormal dummy
scoreboard objectives add haspshot dummy
scoreboard objectives add arrowlimit dummy
scoreboard objectives add arrowspawn dummy

scoreboard objectives add swordswap dummy
scoreboard objectives add sworddrop dummy
scoreboard objectives add bowswap dummy
scoreboard objectives add bowdrop dummy
scoreboard objectives add sneakindex dummy
scoreboard objectives add passive dummy

scoreboard objectives add swap0 dummy
scoreboard objectives add swap0mana dummy
scoreboard objectives add swap0timer dummy

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

scoreboard objectives add 4d1drop stat.drop.minecraft.iron_sword
scoreboard objectives add 4d1 dummy
scoreboard objectives add 4d1able dummy

scoreboard teams add Lobby
scoreboard teams add Battle
scoreboard teams option Battle collisionRule never
scoreboard teams option Battle color red
scoreboard teams option Battle deathMessageVisibility always
scoreboard teams option Battle friendlyfire true
scoreboard teams option Battle nametagVisibility always
scoreboard teams option Battle seeFriendlyInvisibles false
scoreboard teams option Lobby collisionRule never
scoreboard teams option Lobby color gold
scoreboard teams option Lobby deathMessageVisibility never
scoreboard teams option Lobby friendlyfire false
scoreboard teams option Lobby nametagVisibility hideForOtherTeams
scoreboard teams option Lobby seeFriendlyInvisibles true

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

scoreboard players tag @a remove newPlayer

tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"]","color":"gold","bold":true},{"text":" The AFFA Engine ","color":"dark_aqua","bold":false},{"text":"(0.2 BETA)","color":"yellow"},{"text":" has been ","color":"dark_aqua"},{"text":"initialized","color":"green"},{"text":".","color":"dark_aqua"}]