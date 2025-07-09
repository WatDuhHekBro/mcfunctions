# Housekeeping
kill @n[type=item, nbt={Item:{id:"minecraft:diamond_axe"}}]
scoreboard players reset @s statDropDiamondAxe

# Mana/Energy Check
execute if entity @s[level=..24] run function wdhb:core/fail
execute if entity @s[level=25..] run function wdhb:core/barbarian/drop/cast1

# Reset Items
function wdhb:core/equipment
