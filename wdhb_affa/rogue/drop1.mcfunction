#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Main: Bone Breaker] ##
#- Can the user cast? -#
scoreboard players set @a[l=4] 4d1able 0
scoreboard players set @a[lm=5] 4d1able 1
scoreboard players set @a[score_class=4,score_class_min=4,score_inGame_min=1,score_4d1drop_min=1] 4d1 1
clear @a[score_4d1_min=1] iron_sword
#- Cannot cast -#
execute @a[score_4d1_min=1,score_4d1able=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_4d1_min=1,score_4d1able=0] actionbar ["",{"text":"You do not have enough mana to cast Bone Breaker!","color":"red","bold":true}]
replaceitem entity @a[score_4d1_min=1,score_4d1able=0,score_4o1rswitch=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
replaceitem entity @a[score_4d1_min=1,score_4d1able=0,score_4o1rswitch_min=1] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}
#- Can cast -#
scoreboard players tag @a[score_4d1_min=1,score_4d1able_min=1] add 4d1user
execute @a[score_4d1_min=1,score_4d1able_min=1] ~ ~ ~ scoreboard players set @e[r=3,tag=!4d1user] disarm 11
execute @a[score_4d1_min=1,score_4d1able_min=1] ~ ~ ~ scoreboard players set @e[r=3,tag=!4d1user] stun 10
execute @a[score_4d1_min=1,score_4d1able_min=1] ~ ~ ~ playsound entity.player.big_fall neutral @a[r=3] ~ ~ ~ 1 0.75
scoreboard players tag @a[score_4d1_min=1,score_4d1able_min=1] remove 4d1user
replaceitem entity @a[score_4d1_min=1,score_4d1able_min=1,score_4o1rswitch=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
replaceitem entity @a[score_4d1_min=1,score_4d1able_min=1,score_4o1rswitch_min=1] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}
xp -5L @a[score_4d1_min=1,score_4d1able_min=1]
scoreboard players set @a 4d1 0
scoreboard players set @a 4d1drop 0