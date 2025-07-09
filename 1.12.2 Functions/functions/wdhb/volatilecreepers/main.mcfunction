# "Unstable/Volatile/Short-Circuiting Creepers" - Every 20 seconds, a creeper will have a 50% chance to explode.
# To make creepers actually scary and randomly tick or short-circuit.
# Variable: creepertick

# From Vanilla Creeper, there'll be a half chance that it's a normal creeper, then a 1/3 chance that it's a short-fused charged creeper that'll have a 1/8 chance every 30s to blow up.
# Every 30 seconds, there's a 1/4 chance that a Volatile Creeper will Short-Circuit.
# Volatile creepers have a 50% chance of dropping TnT.
# Yes, creepers struck by lightning will be a false volatile creeper. But that doesn't take away from the fear, right?
execute @e[type=Creeper,tag=!hardmode] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {CustomName:"1",Tags:["creeper"]}
execute @e[type=Creeper,tag=!hardmode] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {CustomName:"2",Tags:["creeper"]}
execute @e[type=Creeper,tag=!hardmode] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {CustomName:"3",Tags:["creeper"]}
execute @e[type=Creeper,tag=!hardmode] ~ ~ ~ scoreboard players tag @r[type=area_effect_cloud,tag=creeper] add creepertype
execute @e[type=area_effect_cloud,tag=creepertype,name=1] ~ ~ ~ summon Creeper ~ ~ ~ {Tags:["hardmode","volatile"],powered:1,ArmorDropChances:[0.5F,2F,2F,2F],ArmorItems:[{id:"minecraft:tnt",Count:1},{},{},{}]}
execute @e[type=area_effect_cloud,tag=creepertype,name=2] ~ ~ ~ summon Creeper ~ ~ ~ {Tags:["hardmode"]}
execute @e[type=area_effect_cloud,tag=creepertype,name=3] ~ ~ ~ summon Creeper ~ ~ ~ {Tags:["hardmode"]}
execute @e[type=Creeper,tag=!hardmode] ~ ~ ~ tp @s ~ ~-500 ~
# Oh, and get too close to a volatile creeper and it'll automatically explode.
execute @a ~ ~ ~ execute @e[type=Creeper,tag=volatile,r=1] ~ ~ ~ summon TnT

# The carrier
scoreboard players add @e[type=Creeper,tag=volatile] creepertick 1
execute @e[type=Creeper,tag=volatile,score_creepertick_min=600] ~ ~ ~ summon area_effect_cloud ~ ~1 ~ {CustomName:"1",Tags:["creeperfuse"]}
execute @e[type=Creeper,tag=volatile,score_creepertick_min=600] ~ ~ ~ summon area_effect_cloud ~ ~1 ~ {CustomName:"2",Tags:["creeperfuse"]}
execute @e[type=Creeper,tag=volatile,score_creepertick_min=600] ~ ~ ~ summon area_effect_cloud ~ ~1 ~ {CustomName:"3",Tags:["creeperfuse"]}
execute @e[type=Creeper,tag=volatile,score_creepertick_min=600] ~ ~ ~ summon area_effect_cloud ~ ~1 ~ {CustomName:"4",Tags:["creeperfuse"]}
execute @e[type=Creeper,tag=volatile,score_creepertick_min=600] ~ ~ ~ scoreboard players tag @r[type=area_effect_cloud,tag=creeperfuse] add creeperchoose
scoreboard players set @e[type=Creeper,tag=volatile,score_creepertick_min=600] creepertick 0

# The Explosion (area_effect_cloud entities disappear automatically so there shouldn't need to be a kill function)
execute @e[type=area_effect_cloud,tag=creeperchoose,name=1] ~ ~ ~ summon Creeper ~ ~ ~ {Tags:["hardmode","explode"]}
execute @e[type=area_effect_cloud,tag=creeperchoose,name=1] ~ ~ ~ summon Creeper ~ ~ ~ {Tags:["hardmode","explode"]}
execute @e[type=area_effect_cloud,tag=creeperchoose,name=1] ~ ~ ~ summon Creeper ~ ~ ~ {Tags:["hardmode","explode"]}
execute @e[type=area_effect_cloud,tag=creeperchoose,name=1] ~ ~ ~ summon Creeper ~ ~ ~ {Tags:["hardmode","explode"]}
execute @e[type=area_effect_cloud,tag=creeperchoose,name=1] ~ ~ ~ effect @e[type=Creeper,tag=explode,r=1] resistance 2 255 true
execute @e[type=area_effect_cloud,tag=creeperchoose,name=1] ~ ~ ~ summon Creeper ~ ~ ~ {CustomName:"Short-Circuited Creeper",Fuse:1s,ignited:60b}

# Explosion Loop
scoreboard players add @e[type=Creeper,tag=explode] creepertick 1
execute @e[type=Creeper,tag=explode,score_creepertick_min=27] ~ ~ ~ summon TnT
execute @e[type=Creeper,tag=explode,score_creepertick_min=27] ~ ~ ~ kill @s

# Forcefield (made out of encasing invisible slime) against arrows is too much for now. Plus, too OP for a volatile creeper. Probably save for a high-leveled monster such as the lancer or paladin.
# Forcefield: slime every tick, tp slime down if player nearby. Alternatively, I could use a damaged Wither, if I can figure out how to make it work.