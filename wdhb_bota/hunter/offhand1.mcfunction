#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Main: Quickdraw] ##
#- Can the user cast? -#
scoreboard players set @a[l=7] 2o1able 0
scoreboard players set @a[lm=8] 2o1able 1
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1] 2o1 1 {Inventory:[{Slot:-106b,id:"minecraft:bow"}]}
clear @a[score_2o1_min=1] bow
#- Cannot cast -#
execute @a[score_2o1_min=1,score_2o1able=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_2o1_min=1,score_2o1able=0] actionbar ["",{"text":"You do not have enough mana to cast Quickdraw!","color":"red","bold":true}]
replaceitem entity @a[score_2o1_min=1,score_2o1able=0,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_2o1_min=1,score_2o1able=0,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
scoreboard players set @a[score_2o1_min=1,score_2o1able=0] 2o1 0
#- Can cast -#
scoreboard players tag @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] add 2o1user
execute @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] ~ ~ ~ scoreboard players set @a[r=3,tag=!2o1user] disarm 61
execute @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] ~ ~ ~ execute @e[r=3,tag=!2o1user] ~ ~ ~ playsound item.shield.break neutral @a ~ ~ ~ 1 1.15
scoreboard players tag @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] remove 2o1user
effect @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] speed 1 25 true
effect @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] invisibility 1 0 true
execute @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] ~ ~ ~ particle smoke ~ ~1 ~ 0 0 0 0.2 250 force @a
execute @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] ~ ~ ~ playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.75
#- End event -#
effect @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4] speed 0
effect @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4] invisibility 0
replaceitem entity @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
give @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4] arrow 1 0
xp -8L @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4]
scoreboard players set @a[score_2o1_min=1,score_2o1timer_min=4] 2o1 0
scoreboard players set @a[score_2o1=0,score_2o1timer_min=4] 2o1timer 0