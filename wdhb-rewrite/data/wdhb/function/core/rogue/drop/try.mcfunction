# Housekeeping
kill @n[type=item, nbt={Item:{id:"minecraft:iron_sword"}}]
scoreboard players reset @s statDropIronSword

# Mana/Energy Check
execute if entity @s[level=..4] run function wdhb:core/fail
execute if entity @s[level=5..] run function wdhb:core/rogue/drop/cast1

# Reset Items
function wdhb:core/equipment
