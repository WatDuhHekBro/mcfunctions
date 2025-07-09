#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

## [Stasis] ##
execute @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1,score_stun=0] ~ ~ ~ particle magicCrit ~ ~1 ~ 0 0 0 0.5 100 force @a
execute @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1,score_stun=0] ~ ~ ~ playsound block.dispenser.fail neutral @a ~ ~ ~ 1 1
scoreboard players tag @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1,score_stun=0] add 3suser
execute @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1,score_stun=0,score_health_min=11] ~ ~ ~ effect @e[r=1,tag=!3suser] instant_damage 1 1
execute @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1,score_stun=0,score_health=10] ~ ~ ~ effect @e[r=1,tag=!3suser] instant_damage 1 2
scoreboard players tag @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1,score_stun=0] remove 3suser
scoreboard players set @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1] stun 30
execute @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1] ~ ~ ~ playsound entity.endermen.teleport neutral @a ~ ~ ~ 1 2
scoreboard players set @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1] disarm 31
execute @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1] ~ ~ ~ particle witchMagic ~ ~ ~ 0 2 0 1 10 force @a
xp 1 @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1,score_health_min=11]
xp 3 @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1,score_health=10]
scoreboard players set @a[score_inGame_min=1,score_class_min=3,score_class=3,score_sneak_min=1] sneak 0