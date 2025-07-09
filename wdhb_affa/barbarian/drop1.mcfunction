#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Mechanism: Cooldown] ##
scoreboard players set @a[score_1d1cd_min=1] 1d1cdswitch 1
scoreboard players set @a[score_1d1cd=0] 1d1cdswitch 0

## [Berserk] ##
#- Can the user cast? -#
scoreboard players set @a[l=19] 1d1able 0
scoreboard players set @a[lm=20] 1d1able 1
scoreboard players set @a[score_class=1,score_class_min=1,score_inGame_min=1,score_1d1drop_min=1] 1d1 1
clear @a[score_1d1_min=1] diamond_axe
#- Cannot cast -#
execute @a[score_1d1_min=1,score_1d1able=0,score_1d1cdswitch=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_1d1_min=1,score_1d1able=0,score_1d1cdswitch=0] actionbar ["",{"text":"You do not have enough mana to cast Berserk!","color":"red","bold":true}]
replaceitem entity @a[score_1d1_min=1,score_1d1able=0,score_1d1cdswitch=0] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
#- On cooldown -#
execute @a[score_1d1_min=1,score_1d1cdswitch_min=1] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_1d1_min=1,score_1d1cdswitch_min=1] actionbar ["",{"text":"Berserk is on cooldown!","color":"red","bold":true}]
replaceitem entity @a[score_1d1_min=1,score_1d1cdswitch_min=1] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
#- Can cast -#
execute @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] ~ ~ ~ playsound entity.enderdragon.growl neutral @a ~ ~ ~ 1 1
effect @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] speed 5 6 true
effect @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] absorption 5 4 true
effect @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] regeneration 5 1 true
execute @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] ~ ~ ~ particle flame ~ ~1 ~ 0 0 0 0.1 100 force @a
scoreboard players set @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] 1d1cd 300
replaceitem entity @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
xp -20L @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0]
scoreboard players set @a 1d1 0
scoreboard players set @a 1d1drop 0