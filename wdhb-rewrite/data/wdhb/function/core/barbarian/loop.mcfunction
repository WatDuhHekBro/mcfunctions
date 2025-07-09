###########
# Passive #
###########

effect give @s slowness 1 0 true



###########
# Offhand #
###########

execute if items entity @s weapon.offhand minecraft:diamond_axe run function wdhb:core/barbarian/offhand/try



########
# Drop #
########

execute if entity @s[scores={statDropDiamondAxe=1..}] run function wdhb:core/barbarian/drop/try



#########
# Sneak #
#########

# Ticking -> Impulse
# 0 -> 1 (triggers impulse), then 3+ (hold in place, two ticking functions cancel each other out), then 2 (is the final, only happens when you stop sneaking)
execute if entity @s[scores={statSneak=1}] run function wdhb:core/barbarian/sneak/try
execute if entity @s[scores={statSneak=1}] run scoreboard players set @s statSneak 3
execute if entity @s[scores={statSneak=2}] run scoreboard players reset @s statSneak
execute if entity @s[scores={statSneak=3..}] run scoreboard players remove @s statSneak 1



#########
# Click #
#########

# Ticking -> Impulse
# 0 -> 1 (triggers impulse), then 3+ (hold in place, two ticking functions cancel each other out), then 2 (is the final, only happens when you stop sneaking)
execute if entity @s[scores={statClick=1}] run function wdhb:core/barbarian/click/try
execute if entity @s[scores={statClick=1}] run scoreboard players set @s statClick 3
execute if entity @s[scores={statClick=2}] run scoreboard players reset @s statClick
execute if entity @s[scores={statClick=3..}] run scoreboard players remove @s statClick 1
advancement revoke @s only wdhb:click-diamond-axe
