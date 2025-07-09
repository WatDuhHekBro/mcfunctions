attribute @s minecraft:jump_strength base reset
attribute @s minecraft:movement_speed base reset

# Housekeeping
tag @s remove tmpRogueDashEnd
item replace entity @s weapon.mainhand with minecraft:iron_sword[unbreakable={show_in_tooltip: false}, minecraft:item_name='{"text":"Recast: Wind Sweep","color":"red","italic":true}', minecraft:enchantment_glint_override=true]
tag @s add tmpRogueWindAble

# You have one second to recast for wind sweep
schedule function wdhb:core/rogue/offhand/2-timeout 20t
