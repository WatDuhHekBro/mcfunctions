#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Hunter's Eye] ##
execute @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=2] ~ ~ ~ particle magicCrit ~ ~1 ~ 0 0 0 0.5 2 force @a
replaceitem entity @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p=1,score_2pswitch2_min=1] slot.hotbar.0 minecraft:bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p=1] 2pswitch 1
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=2] 2pswitch2 1
replaceitem entity @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=2,score_2pswitch_min=1] slot.hotbar.0 minecraft:bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=2] 2pswitch 0
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p=1] 2pswitch2 0
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=3] 2p 0

## [3 Seconds per Arrow] ##
give @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2ptimer_min=60] arrow 1 0
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2ptimer_min=60] 2ptimer 0

## [Maximum of 2 Arrows] ##
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1] 2poverflow 1 {Inventory:[{id:"minecraft:arrow",Count:3b}]}
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1] 2poverflow 1 {Inventory:[{id:"minecraft:arrow",Count:4b}]}
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1] 2poverflow 1 {Inventory:[{id:"minecraft:arrow",Count:5b}]}
clear @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2poverflow_min=1] arrow 0 1
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2poverflow_min=1] 2poverflow 0