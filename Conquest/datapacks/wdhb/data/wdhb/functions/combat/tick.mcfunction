#- Effect: Disarm -#
clear @a[scores={disarm=1..}]
execute as @a[scores={disarm=0}] at @s run function wdhb:combat/equipment
scoreboard players remove @a[scores={disarm=0..}] disarm 1
scoreboard players reset @a[scores={disarm=-1}] disarm

#- Effect: Stun -#
execute as @a[scores={stun=1..}] at @s run tp @s @s
execute as @a[scores={stun=1..}] at @s run playsound entity.player.hurt neutral @s ~ ~ ~
scoreboard players remove @a[scores={stun=1..}] stun 1
scoreboard players reset @a[scores={stun=0}] stun

#- Variable: Hit -#
tag @a[scores={hit=1..}] add attacker

#- Variable: Hurt -#
tag @a[scores={hurt=1..}] add victim

#- Variable: Resist -#
tag @a[scores={resist=1..}] add resist

#test
#execute if entity @a[tag=victim] run tellraw @a ["Test Message: ",{"selector":"@a[tag=victim]"}," got attacked by ",{"selector":"@a[tag=attacker]"},"!"]

#- Ability: Dash -#
scoreboard players add @a[tag=tick_dash] tick_dash 1
effect clear @a[scores={tick_dash=2..}] speed
effect clear @a[scores={tick_dash=2..}] jump_boost
tag @a[scores={tick_dash=2..}] remove tick_dash
scoreboard players reset @a[scores={tick_dash=2..}] tick_dash

#- Ability: Counter -#
execute as @a[scores={tick_counter=1..},tag=resist] at @s run scoreboard players set @a[distance=..3] disarm 30
execute as @a[scores={tick_counter=1..},tag=resist] at @s run playsound item.shield.break neutral @a[distance=..3] ~ ~ ~
effect clear @a[scores={tick_counter=1..},tag=resist] resistance
scoreboard players reset @a[scores={tick_counter=1..},tag=resist] disarm
execute as @a[scores={tick_counter=1..},tag=resist] at @s run function wdhb:combat/equipment
scoreboard players reset @a[scores={tick_counter=1..},tag=resist] tick_counter
effect clear @a[scores={tick_counter=..0}] resistance
execute as @a[scores={tick_counter=..0}] at @s run function wdhb:combat/equipment
scoreboard players reset @a[scores={tick_counter=..0}] tick_counter
scoreboard players remove @a[scores={tick_counter=1..}] tick_counter 1

#- Ability: Charge -#
effect give @a[scores={tick_charge=1..}] speed 1 0 true
effect give @a[scores={tick_charge=1..}] strength 1 0 true
effect give @a[scores={tick_charge=1..}] resistance 1 0 true
effect give @a[scores={tick_charge=1..}] jump_boost 1 0 true
execute as @a[scores={tick_charge=1..},tag=attacker] at @s run playsound block.anvil.land neutral @a ~ ~ ~
effect clear @a[scores={tick_charge=1..},tag=attacker] speed
effect clear @a[scores={tick_charge=1..},tag=attacker] strength
effect clear @a[scores={tick_charge=1..},tag=attacker] resistance
effect clear @a[scores={tick_charge=1..},tag=attacker] jump_boost
scoreboard players reset @a[scores={tick_charge=1..},tag=attacker] tick_charge
scoreboard players remove @a[scores={tick_charge=1..}] tick_charge 1
effect clear @a[scores={tick_charge=0}] speed
effect clear @a[scores={tick_charge=0}] strength
effect clear @a[scores={tick_charge=0}] resistance
effect clear @a[scores={tick_charge=0}] jump_boost
scoreboard players reset @a[scores={tick_charge=0}] tick_charge

#- Ability: Parry -#
scoreboard players add @a[tag=tick_parry] tick_parry 1
effect clear @a[scores={tick_parry=1..}] resistance
tag @a[scores={tick_parry=1..}] remove tick_parry
scoreboard players reset @a[scores={tick_parry=1..}] tick_parry

#- Variable: Hit (End) -#
scoreboard players reset @a[scores={hit=1..}] hit
tag @a[tag=attacker] remove attacker

#- Variable: Hurt (End) -#
scoreboard players reset @a[scores={hurt=1..}] hurt
tag @a[tag=victim] remove victim

#- Variable: Resist (End) -#
scoreboard players reset @a[scores={resist=1..}] resist
tag @a[tag=resist] remove resist

#- Core -#
scoreboard players add second system 1
execute if score second system matches 20 run xp add @a 1 levels
execute if score second system matches 20 run effect give @a regeneration 1 2 true
execute if score second system matches 20 run scoreboard players set second system 0