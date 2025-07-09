#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

## [Powered 3rd Shot] ##
execute @a[score_shotsfired_min=2] ~ ~ ~ particle magicCrit ~ ~1 ~ 0 0 0 0.5 2 force @a

replaceitem entity @a[score_shotsfired=1,score_hasnormal_min=1] slot.hotbar.1 bow 1 0 {Unbreakable:1,display:{Name:"Bow"},HideFlags:4}
scoreboard players set @a[score_shotsfired=1] haspshot 1
scoreboard players set @a[score_shotsfired_min=2] hasnormal 1

replaceitem entity @a[score_shotsfired_min=2,score_haspshot_min=1] slot.hotbar.1 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
scoreboard players set @a[score_shotsfired_min=2] haspshot 0

scoreboard players set @a[score_shotsfired=1] hasnormal 0
scoreboard players set @a[score_shotsfired_min=3] shotsfired 0

## [Maximum of 2 Arrows] ##
scoreboard players set @a arrowlimit 1 {Inventory:[{id:"minecraft:arrow",Count:3b}]}
scoreboard players set @a arrowlimit 1 {Inventory:[{id:"minecraft:arrow",Count:4b}]}
scoreboard players set @a arrowlimit 1 {Inventory:[{id:"minecraft:arrow",Count:5b}]}
clear @a[score_arrowlimit_min=1] arrow 0 1
scoreboard players set @a[score_arrowlimit_min=1] arrowlimit 0