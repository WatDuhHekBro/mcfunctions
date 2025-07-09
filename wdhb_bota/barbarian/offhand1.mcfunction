#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Mechanism: Cooldown] ##
scoreboard players set @a[score_1o1cd_min=1] 1o1cdswitch 1
scoreboard players set @a[score_1o1cd=0] 1o1cdswitch 0

## [Intimidate] ##
#- Can the user cast? -#
scoreboard players set @a[l=4] 1o1able 0
scoreboard players set @a[lm=5] 1o1able 1
scoreboard players set @a[score_class=1,score_class_min=1,score_inGame_min=1] 1o1 1 {Inventory:[{Slot:-106b,id:"minecraft:diamond_axe"}]}
clear @a[score_1o1_min=1] diamond_axe
#- Cannot cast -#
execute @a[score_1o1_min=1,score_1o1able=0,score_1o1cdswitch=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_1o1_min=1,score_1o1able=0,score_1o1cdswitch=0] actionbar ["",{"text":"You do not have enough mana to cast Intimidate!","color":"red","bold":true}]
replaceitem entity @a[score_1o1_min=1,score_1o1able=0,score_1o1cdswitch=0] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
#- On cooldown -#
execute @a[score_1o1_min=1,score_1o1cdswitch_min=1] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_1o1_min=1,score_1o1cdswitch_min=1] actionbar ["",{"text":"Intimidate is on cooldown!","color":"red","bold":true}]
replaceitem entity @a[score_1o1_min=1,score_1o1cdswitch_min=1] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
#- Can cast -#
execute @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] ~ ~ ~ playsound entity.player.breath neutral @a ~ ~ ~ 1 0
scoreboard players tag @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] add 1o1user
execute @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] ~ ~ ~ effect @e[tag=!1o1user,r=8] slowness 3 1
scoreboard players tag @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] remove 1o1user
scoreboard players set @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] 1o1cd 60
replaceitem entity @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
xp -5L @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0]
scoreboard players set @a 1o1 0