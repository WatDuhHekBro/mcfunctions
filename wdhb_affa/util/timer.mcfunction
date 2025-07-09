#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

#Adding (Ends at 4): scoreboard players add @a[score_timer=3] timer 1
#Subtracting (Ends at 0): scoreboard players remove @a[score_timer_min=1] timer 1

## [Engine] ##
execute @e[type=Armor_Stand,name=Server,score_battleInProgress_min=1] ~ ~ ~ scoreboard players add @s[score_realTimer=19] realTimer 1
execute @e[type=Armor_Stand,name=Server,score_realTimer_min=20,score_battleInProgress_min=1,score_battleInProgress=1] ~ ~ ~ playsound block.dispenser.fail neutral @a ~ ~ ~ 1000 1
execute @e[type=Armor_Stand,name=Server,score_realTimer_min=20,score_battleInProgress_min=1,score_battleInProgress=1] ~ ~ ~ scoreboard players remove Selection Timer 1
execute @e[type=Armor_Stand,name=Server,score_realTimer_min=20,score_battleInProgress_min=2] ~ ~ ~ scoreboard players remove Battle Timer 1
execute @e[type=Armor_Stand,name=Server,score_realTimer_min=20] ~ ~ ~ scoreboard players set @s realTimer 0
execute @e[type=Armor_Stand,name=Queue,score_battleInProgress_min=1,score_battleInProgress=1] ~ ~ ~ scoreboard players remove @s[score_realTimer_min=1] realTimer 1
execute @e[type=Armor_Stand,name=Battle,score_battleInProgress_min=2] ~ ~ ~ scoreboard players remove @s[score_realTimer_min=1] realTimer 1

## [General] ##
scoreboard players add @a[score_generalHP=19] generalHP 1
scoreboard players add @a[score_generalMP=19] generalMP 1
scoreboard players remove @e[score_disarm_min=1] disarm 1
scoreboard players remove @e[score_stun_min=1] stun 1

scoreboard players remove @a[score_class=1,score_class_min=1,score_inGame_min=1,score_1o1cd_min=1] 1o1cd 1
scoreboard players remove @a[score_class=1,score_class_min=1,score_inGame_min=1,score_1d1cd_min=1] 1d1cd 1
scoreboard players add @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=3] 2o1timer 1

## [3 Seconds per Arrow] ##
scoreboard players add @a[score_arrowspawn=59] arrowspawn 1
give @a[score_arrowspawn_min=60] arrow 1 0
scoreboard players set @a[score_arrowspawn_min=60] arrowspawn 0

## [Swap 0: Dash] ##
scoreboard players add @a[score_swap0_min=1,score_swap0mana_min=1,score_swap0timer=1] swap0timer 1