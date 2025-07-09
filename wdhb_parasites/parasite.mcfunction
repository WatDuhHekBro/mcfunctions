#########################
#                       #
# Project: Parasite     #
# Creator: WatDuhHekBro #
# Version: I            #
# Date: 19 March, 2019  #
#                       #
#########################

###############
# General Tag #
###############
scoreboard players tag @e[type=Villager] add general
scoreboard players tag @e[type=Villager_Golem] add general
scoreboard players tag @e[type=Snow_Golem] add general
scoreboard players tag @e[type=Wolf] add general
scoreboard players tag @e[type=Ocelot] add general
scoreboard players tag @e[type=Parrot] add general
scoreboard players tag @e[type=Cow] add general
scoreboard players tag @e[type=Mooshroom] add general
scoreboard players tag @e[type=Pig] add general
scoreboard players tag @e[type=Sheep] add general
scoreboard players tag @e[type=Chicken] add general
scoreboard players tag @e[type=Horse] add general
scoreboard players tag @e[type=Donkey] add general
scoreboard players tag @e[type=Mule] add general
scoreboard players tag @e[type=Squid] add general
scoreboard players tag @e[type=Bat] add general
scoreboard players tag @e[type=Rabbit] add general
scoreboard players tag @e[type=Polar_Bear] add general
scoreboard players tag @e[type=Llama] add general
scoreboard players tag @e[type=Zombie] add general
scoreboard players tag @e[type=Zombie_Villager] add general
scoreboard players tag @e[type=Zombie_Pigman] add general
scoreboard players tag @e[type=Skeleton] add general
scoreboard players tag @e[type=Creeper] add general
scoreboard players tag @e[type=Spider] add general
scoreboard players tag @e[type=Cave_Spider] add general
scoreboard players tag @e[type=Witch] add general
scoreboard players tag @e[type=Husk] add general
scoreboard players tag @e[type=Stray] add general
scoreboard players tag @e[type=Slime] add general
scoreboard players tag @e[type=Magma_Cube] add general
scoreboard players tag @e[type=Ghast] add general
scoreboard players tag @e[type=Guardian] add general
scoreboard players tag @e[type=Elder_Guardian] add general
scoreboard players tag @e[type=Enderman] add general
scoreboard players tag @e[type=Endermite] add general

################
# Patient Zero #
################
scoreboard players add @a patientzero 1
execute @a[score_patientzero_min=6000] ~ ~ ~ scoreboard players tag @r[type=Zombie,r=75] add infected
execute @a[score_patientzero_min=6000] ~ ~ ~ scoreboard players tag @r[type=Squid,r=75] add infected
scoreboard players set @a[score_patientzero_min=6000] patientzero 0

########
# Cure #
########
scoreboard players tag @a[score_cure_min=1] remove infected
scoreboard players set @a[score_cure_min=1] parasitetimer 0
scoreboard players set @a[score_cure_min=1] cure 0

#######################
# The Parasite Itself #
#######################

## Future Ideas ##
# stat.useItem.minecraft.beef - Eat Raw Beef, a chance you'll get infected (yeah, you've gotta cook meat so you can kill the parasites)
# Actually, if an infected livestock dies, its products should be highly infectious. Anything that touches its items - including you - will get infected. Hence why you must burn those items. Yeah, tight pens don't exactly work here do they?

# These things wander around until it finds a host (very specific, only one species is affected). Then after a while, it bursts out in bigger numbers.

scoreboard players set @e[score_parasitetimer=-1] parasitetimer 0
effect @e[type=Silverfish] speed 1 0 true
execute @e[type=Silverfish] ~ ~ ~ scoreboard players tag @e[type=Player,r=1] add infected
execute @e[type=Silverfish] ~ ~ ~ scoreboard players tag @e[tag=general,r=1] add infected
scoreboard players add @e[tag=infected] parasitetimer 1
scoreboard players add @e[tag=infected,type=Endermite] parasitetimer 4
execute @e[tag=infected,score_parasitetimer=1] ~ ~ ~ minecraft:tp @e[type=Silverfish,r=1] ~ -1 ~

############
# Symptoms #
############

# Infection: 2 minutes
# 1st Quarter: No symptoms (First few replication cycles)
# 2nd Quarter: Sweating and weakness (When your body is trying to get rid of it)
# 3rd Quarter: Debilitating weakness (When your body has almost lost it)
# 4th Quarter: Loss of control, insanity (Pretty much the terminal stage of the infection, except for the miracle cure that is golden apples)

effect @e[tag=infected,score_parasitetimer_min=600,score_parasitetimer=1199] slowness 1 0 true
effect @e[tag=infected,score_parasitetimer_min=600,score_parasitetimer=1199] mining_fatigue 1 0 true
effect @e[tag=infected,score_parasitetimer_min=600,score_parasitetimer=1199] weakness 1 0 true

effect @e[tag=infected,score_parasitetimer_min=1200,score_parasitetimer=1799] slowness 1 1 true
effect @e[tag=infected,score_parasitetimer_min=1200,score_parasitetimer=1799] mining_fatigue 1 1 true
effect @e[tag=infected,score_parasitetimer_min=1200,score_parasitetimer=1799] weakness 1 1 true
effect @e[tag=infected,score_parasitetimer_min=1200,score_parasitetimer=1799] hunger 1 1 true

effect @e[tag=infected,score_parasitetimer_min=1800,score_parasitetimer=2099] slowness 1 2 true
effect @e[tag=infected,score_parasitetimer_min=1800,score_parasitetimer=2099] mining_fatigue 1 2 true
effect @e[tag=infected,score_parasitetimer_min=1800,score_parasitetimer=2099] weakness 1 2 true
effect @e[tag=infected,score_parasitetimer_min=1800,score_parasitetimer=2099] hunger 1 2 true

effect @e[tag=infected,score_parasitetimer_min=2100,score_parasitetimer=2399] speed 1 1 true
effect @e[tag=infected,score_parasitetimer_min=2100,score_parasitetimer=2399] mining_fatigue 1 3 true
effect @e[tag=infected,score_parasitetimer_min=2100,score_parasitetimer=2399] weakness 1 3 true
effect @e[tag=infected,score_parasitetimer_min=2100,score_parasitetimer=2399] hunger 1 3 true
effect @e[tag=infected,score_parasitetimer_min=2100,score_parasitetimer=2399] wither 1 0 true
effect @e[tag=infected,score_parasitetimer_min=2100,score_parasitetimer=2399] nausea 4 0 true

execute @e[tag=infected,score_parasitetimer_min=2100,score_parasitetimer=2399] ~ ~ ~ particle crit ~ ~1 ~ 0 0 0 0.2 1 force @a
execute @e[tag=infected,score_parasitetimer_min=2400] ~ ~ ~ particle crit ~ ~1 ~ 0 0 0 1 200 force @a

#########
# Lysis #
#########

execute @e[tag=infected,score_parasitetimer_min=2400] ~ ~ ~ summon Silverfish ~ ~1 ~
execute @e[tag=infected,score_parasitetimer_min=2400] ~ ~ ~ summon Silverfish ~ ~1 ~
execute @e[tag=infected,score_parasitetimer_min=2400] ~ ~ ~ summon Silverfish ~ ~1 ~
execute @e[tag=infected,score_parasitetimer_min=2400] ~ ~ ~ summon Silverfish ~ ~1 ~
execute @e[tag=infected,score_parasitetimer_min=2400] ~ ~ ~ summon Silverfish ~ ~1 ~
execute @e[tag=infected,score_parasitetimer_min=2400] ~ ~ ~ effect @e[type=Silverfish,r=1] resistance 2 255 true
execute @e[tag=infected,score_parasitetimer_min=2400] ~ ~ ~ summon Creeper ~ ~ ~ {CustomName:"Parasite",Fuse:1s,ignited:60b}
scoreboard players tag @e[score_parasitetimer_min=2400] remove infected
scoreboard players set @e[score_parasitetimer_min=2400] parasitetimer -1
minecraft:kill @e[score_parasitetimer=-1]

########################
# Automatic Despawning #
########################

# parasitetimer for the parasites themselves basically determine their lifespan.

scoreboard players add @e[type=Silverfish] parasitetimer 1
minecraft:kill @e[type=Silverfish,score_parasitetimer_min=2400]