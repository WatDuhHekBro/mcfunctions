# Mana/Energy Check
execute if entity @s[level=..4] run function wdhb:core/fail
execute if entity @s[level=5..] run function wdhb:core/rogue/click/cast1

# Reset Items
function wdhb:core/equipment
