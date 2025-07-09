#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

#I want to add a stopsound thing with the wind.
#- Resetting Recast -#
replaceitem entity @a[score_4o1rswitch_min=1,score_4o1rtime=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
scoreboard players set @a[score_4o1rtime=0] 4o1rswitch 0

## [Main: Dashing Tempest] ##
#- Can the user cast? -#
scoreboard players set @a[l=2] 4o1able 0
scoreboard players set @a[lm=3] 4o1able 1
scoreboard players set @a[score_class=4,score_class_min=4,score_inGame_min=1,score_4o1rswitch=0] 4o1 1 {Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}
clear @a[score_4o1_min=1] iron_sword
#- Cannot cast -#
execute @a[score_4o1_min=1,score_4o1able=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_4o1_min=1,score_4o1able=0] actionbar ["",{"text":"You do not have enough mana to cast Dashing Tempest!","color":"red","bold":true}]
replaceitem entity @a[score_4o1_min=1,score_4o1able=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
scoreboard players set @a[score_4o1_min=1,score_4o1able=0] 4o1 0
#- Can cast -#
effect @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=0] jump_boost 1 128 true
effect @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=0] speed 1 60 true
execute @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=0] ~ ~ ~ playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.75
execute @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=0] ~ ~ ~ particle cloud ~ ~ ~ 0 0 0 0.2 100 force @a
execute @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=0] ~ ~ ~ playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.75
#- End event -#
effect @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2] speed 0
effect @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2] jump_boost 0
scoreboard players set @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2] 4o1rswitch 1
scoreboard players set @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2] 4o1rtime 20
replaceitem entity @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}
xp -3L @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2]
scoreboard players set @a[score_4o1_min=1,score_4o1timer_min=2] 4o1 0
scoreboard players set @a[score_4o1=0,score_4o1timer_min=2] 4o1timer 0

## [Recast: Wind Sweep] ##
#- Can the user cast? -#
scoreboard players set @a[l=6] 4o1rable 0
scoreboard players set @a[lm=7] 4o1rable 1
scoreboard players set @a[score_class=4,score_class_min=4,score_inGame_min=1,score_4o1rswitch_min=1] 4o1r 1 {Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}
clear @a[score_4o1r_min=1] iron_sword
#- Cannot cast -#
execute @a[score_4o1r_min=1,score_4o1rable=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_4o1r_min=1,score_4o1rable=0] actionbar ["",{"text":"You do not have enough mana to cast Wind Sweep!","color":"red","bold":true}]
replaceitem entity @a[score_4o1r_min=1,score_4o1rable=0] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}
scoreboard players set @a[score_4o1r_min=1,score_4o1rable=0] 4o1r 0
#- Can cast -#
execute @a[score_4o1r_min=1,score_4o1rable_min=1] ~ ~ ~ particle cloud ~ ~ ~ 0 3 0 0.35 250 force @a
execute @a[score_4o1r_min=1,score_4o1rable_min=1] ~ ~ ~ playsound item.elytra.flying neutral @a ~ ~ ~ 1 2
scoreboard players tag @a[score_4o1r_min=1,score_4o1rable_min=1] add 4o1ruser
execute @a[score_4o1r_min=1,score_4o1rable_min=1] ~ ~ ~ scoreboard players set @e[tag=!4o1ruser,r=3] 4o1rtimer 0
execute @a[score_4o1r_min=1,score_4o1rable_min=1] ~ ~ ~ scoreboard players set @e[tag=!4o1ruser,r=3] 4o1rvictim 1
scoreboard players tag @a[score_4o1r_min=1,score_4o1rable_min=1] remove 4o1ruser
scoreboard players set @a[score_4o1r_min=1,score_4o1rable_min=1] 4o1rswitch 0
replaceitem entity @a[score_4o1r_min=1,score_4o1rable_min=1] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
xp -7L @a[score_4o1r_min=1,score_4o1rable_min=1]
scoreboard players set @a[score_4o1r_min=1] 4o1r 0

## [Mechanism: Wind Sweep (Target)] ##
effect @e[score_4o1rvictim_min=1,score_4o1rtimer=0] levitation 1 65 true
effect @e[score_4o1rvictim_min=1,score_4o1rtimer_min=2] levitation 0
scoreboard players set @e[score_4o1rvictim_min=1,score_4o1rtimer_min=2] 4o1rvictim 0
scoreboard players set @e[score_4o1rvictim=0,score_4o1rtimer_min=2] 4o1rtimer 0