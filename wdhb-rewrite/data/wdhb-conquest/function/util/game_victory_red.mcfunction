title @a[team=!red,team=!blue] title [{"text":"Victory - ","color":"white"},{"text":"Red Team","color":"red","bold":true}]
title @a[team=red] title [{"text":"Victory","color":"dark_green","bold":true}]
title @a[team=blue] title [{"text":"Defeat","color":"dark_red","bold":true}]
playsound ui.toast.challenge_complete neutral @a[team=red] 0 51 0 1000 1
playsound entity.blaze.death neutral @a[team=blue] 0 51 0 1000 1
playsound entity.ender_dragon.death neutral @a[team=!red,team=!blue] 0 51 0 1000 2
function wdhb:conquest/util/game_stop