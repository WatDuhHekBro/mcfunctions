scoreboard players set Red system 250
scoreboard players set Blue system 250
function wdhb:conquest/util/timer_start
scoreboard players set state system 1
scoreboard players set Red posts 0
scoreboard players set Blue posts 0
scoreboard players set special_t system -1
execute if score map system matches 1 run function wdhb:conquest/maps/1-init
execute if score map system matches 2 run function wdhb:conquest/maps/2-init
execute if score map system matches 3 run function wdhb:conquest/maps/3-init