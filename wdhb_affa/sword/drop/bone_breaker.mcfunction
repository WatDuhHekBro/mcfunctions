#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

#- Can the user cast? -#
scoreboard players set @a[l=14] 4d1able 0
scoreboard players set @a[lm=15] 4d1able 1
scoreboard players set @a[score_swordswap=0,score_swordswap_min=0,score_4d1drop_min=1] 4d1 1
clear @a[score_4d1_min=1] iron_sword
#- Cannot cast -#
execute @a[score_4d1_min=1,score_4d1able=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_4d1_min=1,score_4d1able=0] actionbar ["",{"text":"You do not have enough mana to cast Bone Breaker!","color":"red","bold":true}]
replaceitem entity @a[score_4d1_min=1,score_4d1able=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Sword"},HideFlags:4}
#- Can cast -#
scoreboard players tag @a[score_4d1_min=1,score_4d1able_min=1] add 4d1user
execute @a[score_4d1_min=1,score_4d1able_min=1] ~ ~ ~ scoreboard players set @e[r=3,tag=!4d1user] disarm 21
execute @a[score_4d1_min=1,score_4d1able_min=1] ~ ~ ~ scoreboard players set @e[r=3,tag=!4d1user] stun 20
execute @a[score_4d1_min=1,score_4d1able_min=1] ~ ~ ~ playsound entity.player.big_fall neutral @a[r=3] ~ ~ ~ 1 0.75
scoreboard players tag @a[score_4d1_min=1,score_4d1able_min=1] remove 4d1user
replaceitem entity @a[score_4d1_min=1,score_4d1able_min=1] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Sword"},HideFlags:4}
xp -15L @a[score_4d1_min=1,score_4d1able_min=1]
scoreboard players set @a 4d1 0
scoreboard players set @a 4d1drop 0