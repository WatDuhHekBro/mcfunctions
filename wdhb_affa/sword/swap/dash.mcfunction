#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

#- Can the user cast? -#
scoreboard players set @a[l=4] swap0mana 0
scoreboard players set @a[lm=5] swap0mana 1
scoreboard players set @a[score_swordswap=0,score_swordswap_min=0] swap0 1 {Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}
clear @a[score_swap0_min=1] iron_sword
#- Cannot cast -#
execute @a[score_swap0_min=1,score_swap0mana=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_swap0_min=1,score_swap0mana=0] actionbar ["",{"text":"You do not have enough mana to cast Dash!","color":"red","bold":true}]
replaceitem entity @a[score_swap0_min=1,score_swap0mana=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Sword"},HideFlags:4}
scoreboard players set @a[score_swap0_min=1,score_swap0mana=0] swap0 0
#- Can cast -#
effect @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer=0] jump_boost 1 128 true
effect @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer=0] speed 1 35 true
execute @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer=0] ~ ~ ~ playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.75
execute @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer=0] ~ ~ ~ particle cloud ~ ~ ~ 0 0 0 0.2 100 force @a
execute @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer=0] ~ ~ ~ playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.75
#- End event -#
effect @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer_min=2] speed 0
effect @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer_min=2] jump_boost 0
scoreboard players set @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer_min=2] 4o1rswitch 1
scoreboard players set @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer_min=2] 4o1rtime 20
replaceitem entity @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer_min=2] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Sword"},HideFlags:4}
xp -5L @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer_min=2]
scoreboard players set @a[score_swap0_min=1,score_swap0timer_min=2] swap0 0
scoreboard players set @a[score_swap0=0,score_swap0timer_min=2] swap0timer 0