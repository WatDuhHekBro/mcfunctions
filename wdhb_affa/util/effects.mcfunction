#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

## [Mechanism: Disarm] ##
clear @e[score_disarm_min=2]
replaceitem entity @a[score_disarm=1,score_disarm_min=1] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Sword"},HideFlags:4}
replaceitem entity @a[score_disarm=1,score_disarm_min=1,score_shotsfired=1] slot.hotbar.1 bow 1 0 {Unbreakable:1,display:{Name:"Bow"},HideFlags:4}
replaceitem entity @a[score_disarm=1,score_disarm_min=1,score_shotsfired_min=2] slot.hotbar.1 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}

## [Mechanism: Stun] ##
execute @e[score_stun_min=1] ~ ~ ~ tp @s @s
execute @e[score_stun_min=1] ~ ~ ~ playsound entity.player.hurt neutral @s ~ ~ ~ 1 1