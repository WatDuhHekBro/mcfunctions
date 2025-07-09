#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Main: Neurotoxin] ## (Later, add 5 or 10 second cooldown.)
#- Can the user cast? -#
scoreboard players set @a[l=19] 2d1able 0
scoreboard players set @a[lm=20] 2d1able 1
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2d1drop_min=1] 2d1 1
clear @a[score_2d1_min=1] bow
#- Cannot cast -#
execute @a[score_2d1_min=1,score_2d1able=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_2d1_min=1,score_2d1able=0] actionbar ["",{"text":"You do not have enough mana to cast Neurotoxin!","color":"red","bold":true}]
replaceitem entity @a[score_2d1_min=1,score_2d1able=0,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_2d1_min=1,score_2d1able=0,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
#- Can cast -#
clear @a[score_2d1_min=1,score_2d1able_min=1] tipped_arrow
clear @a[score_2d1_min=1,score_2d1able_min=1] arrow
replaceitem entity @a[score_2d1_min=1,score_2d1able_min=1,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_2d1_min=1,score_2d1able_min=1,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
give @a[score_2d1_min=1,score_2d1able_min=1] tipped_arrow 1 0 {Potion:strong_harming}
xp -20L @a[score_2d1_min=1,score_2d1able_min=1]
scoreboard players set @a 2d1 0
scoreboard players set @a 2d1drop 0