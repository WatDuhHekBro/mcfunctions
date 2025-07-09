#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

scoreboard players set Selection Timer 15
scoreboard players set Battle Timer 60
scoreboard objectives setdisplay sidebar Kills
effect @a[tag=inBattle] health_boost 0
clear @a[tag=inBattle]
scoreboard teams join Lobby @a[tag=inBattle]
tp @a[tag=inBattle] 0 50 0 0 0
scoreboard players set @a[tag=inBattle] inGame 0
scoreboard players tag @a remove inBattle
scoreboard players set @e[type=Armor_Stand] battleInProgress 0