tag @s remove tmpRogueWindAble
item replace entity @s weapon.offhand with minecraft:air
item replace entity @s weapon.mainhand with minecraft:iron_sword[unbreakable={show_in_tooltip: false}, minecraft:item_name='{"text":"Recast: Sky Strike","color":"red","bold":true,"italic":true}', minecraft:enchantment_glint_override=true]
xp add @s -8 levels
schedule clear wdhb:core/rogue/offhand/2-timeout

particle cloud ~ ~ ~ 0 3 0 0.35 250 force @a
playsound item.elytra.flying neutral @a ~ ~ ~ 1 2
execute as @e[distance=0.01..3] at @s run function wdhb:core/rogue/offhand/3b-wind-victim
#stopsound @a neutral minecraft:item.elytra.flying

tag @s add tmpRogueSkyAble
schedule function wdhb:core/rogue/offhand/4-timeout 20t
