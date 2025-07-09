#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

execute @a[score_sneakindex=0,score_sneakindex_min=0,score_sneak_min=1,score_stun=0] ~ ~ ~ particle magicCrit ~ ~1 ~ 0 0 0 0.5 100 force @a
execute @a[score_sneakindex=0,score_sneakindex_min=0,score_sneak_min=1,score_stun=0] ~ ~ ~ playsound block.dispenser.fail neutral @a ~ ~ ~ 1 1
scoreboard players set @a[score_sneakindex=0,score_sneakindex_min=0,score_sneak_min=1] stun 2
execute @a[score_sneakindex=0,score_sneakindex_min=0,score_sneak_min=1] ~ ~ ~ playsound entity.endermen.teleport neutral @a ~ ~ ~ 1 2
scoreboard players set @a[score_sneakindex=0,score_sneakindex_min=0,score_sneak_min=1] disarm 3
execute @a[score_sneakindex=0,score_sneakindex_min=0,score_sneak_min=1] ~ ~ ~ particle witchMagic ~ ~ ~ 0 2 0 1 10 force @a
xp 2 @a[score_sneakindex=0,score_sneakindex_min=0,score_sneak_min=1,score_health_min=11]
xp 6 @a[score_sneakindex=0,score_sneakindex_min=0,score_sneak_min=1,score_health=20]
scoreboard players set @a[score_sneakindex=0,score_sneakindex_min=0,score_sneak_min=1] sneak 0