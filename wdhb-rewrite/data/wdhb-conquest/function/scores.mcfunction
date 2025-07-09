execute unless score timer_m system matches 0 unless score timer_s system matches 0..9 run bossbar set wdhb:timer name [{"score":{"name":"timer_m","objective":"system"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"timer_s","objective":"system"},"color":"white"}]
execute unless score timer_m system matches 0 if score timer_s system matches 0..9 run bossbar set wdhb:timer name [{"score":{"name":"timer_m","objective":"system"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"timer_s","objective":"system"},"color":"white"}]
execute if score timer_m system matches 0 unless score timer_s system matches 1 run bossbar set wdhb:timer name [{"score":{"name":"timer_s","objective":"system"},"color":"white"},{"text":" seconds","color":"white"}]
execute if score timer_m system matches 0 if score timer_s system matches 1 run bossbar set wdhb:timer name [{"score":{"name":"timer_s","objective":"system"},"color":"white"},{"text":" second","color":"white"}]
bossbar set wdhb:red name [{"score":{"name":"Red","objective":"system"},"color":"red"}]
bossbar set wdhb:blue name [{"score":{"name":"Blue","objective":"system"},"color":"aqua"}]
bossbar set wdhb:special name [{"score":{"name":"special_s","objective":"system"},"color":"green"}]
execute store result bossbar wdhb:timer value run scoreboard players get timer_t system
execute store result bossbar wdhb:red value run scoreboard players get Red system
execute store result bossbar wdhb:blue value run scoreboard players get Blue system
execute store result bossbar wdhb:special value run scoreboard players get special_t system