#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Mechanism: Disarm] ##
clear @e[score_disarm_min=2]
replaceitem entity @a[score_class=1,score_class_min=1,score_inGame_min=1,score_disarm=1,score_disarm_min=1] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
replaceitem entity @a[score_class=2,score_class_min=2,score_inGame_min=1,score_disarm=1,score_disarm_min=1,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_class=2,score_class_min=2,score_inGame_min=1,score_disarm=1,score_disarm_min=1,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
#Mage: replaceitem entity @a[score_class=3,score_class_min=3,score_inGame_min=1,score_disarm=1,score_disarm_min=1] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
replaceitem entity @a[score_class=4,score_class_min=4,score_inGame_min=1,score_disarm=1,score_disarm_min=1,score_4o1rswitch=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
replaceitem entity @a[score_class=4,score_class_min=4,score_inGame_min=1,score_disarm=1,score_disarm_min=1,score_4o1rswitch_min=1] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}

## [Mechanism: Stun] ##
execute @e[score_stun_min=1] ~ ~ ~ tp @s @s
execute @e[score_stun_min=1] ~ ~ ~ playsound entity.player.hurt neutral @s ~ ~ ~ 1 1