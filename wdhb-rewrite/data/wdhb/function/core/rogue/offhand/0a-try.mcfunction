# Have abilities in the opposite order. If there's no delay (1-3 has delay, 3-5 doesn't), then it'll automatically execute the next one.

# Recast: Sky Strike
execute if entity @s[level=12.., tag=!tmpRogueWindAble, tag=tmpRogueSkyAble] run return run function wdhb:core/rogue/offhand/0b-fail
execute if entity @s[level=13.., tag=!tmpRogueWindAble, tag=tmpRogueSkyAble] run return run function wdhb:core/rogue/offhand/5a-sky

# Recast: Wind Sweep
execute if entity @s[level=..7, tag=tmpRogueWindAble, tag=!tmpRogueSkyAble] run return run function wdhb:core/rogue/offhand/0b-fail
execute if entity @s[level=8.., tag=tmpRogueWindAble, tag=!tmpRogueSkyAble] run return run function wdhb:core/rogue/offhand/3a-wind

# Main: Dashing Tempest
execute if entity @s[level=..3, tag=!tmpRogueWindAble, tag=!tmpRogueSkyAble] run return run function wdhb:core/rogue/offhand/0b-fail
execute if entity @s[level=4.., tag=!tmpRogueWindAble, tag=!tmpRogueSkyAble] run return run function wdhb:core/rogue/offhand/1a-dash
