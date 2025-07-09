#- Reinforcement Stuff -#
execute if score state system matches 1 run scoreboard players operation red_pdiff system = Red posts
execute if score state system matches 1 run scoreboard players operation red_pdiff system -= Blue posts
execute if score state system matches 1 run scoreboard players operation blue_pdiff system = Blue posts
execute if score state system matches 1 run scoreboard players operation blue_pdiff system -= Red posts
execute if score state system matches 1 run scoreboard players add reinforcements_tick system 1
execute if score state system matches 1 if score reinforcements_tick system matches 60 if score red_pdiff system matches ..-1 unless score Red system matches ..0 run scoreboard players operation Red system += red_pdiff system
execute if score Red system matches ..-1 run scoreboard players set Red system 0
scoreboard players reset red_pdiff
execute if score state system matches 1 if score reinforcements_tick system matches 60 if score blue_pdiff system matches ..-1 unless score Blue system matches ..0 run scoreboard players operation Blue system += blue_pdiff system
execute if score Blue system matches ..-1 run scoreboard players set Blue system 0
scoreboard players reset blue_pdiff
execute if score reinforcements_tick system matches 60 run scoreboard players set reinforcements_tick system 0

#- Game Timer -#
# Game State (System): 0 = Idle/Lobby, 1 = Game Running
execute if score state system matches 1 unless score timer_t system matches ..0 run scoreboard players remove timer_t system 1
execute if score timer_t system matches 0 if score Blue posts matches 0 if score Neutral posts matches 0 run function wdhb:conquest/util/game_victory_red
execute if score timer_t system matches 0 if score Red posts matches 0 if score Neutral posts matches 0 run function wdhb:conquest/util/game_victory_blue
#- Victory by Difference -#
execute if score timer_t system matches 0 run execute store result score tmp system run scoreboard players get Red system
execute if score timer_t system matches 0 run scoreboard players operation tmp system -= Blue system
execute if score timer_t system matches 0 if score tmp system matches 50.. run function wdhb:conquest/util/game_victory_red
execute if score timer_t system matches 0 if score tmp system matches ..-50 run function wdhb:conquest/util/game_victory_blue
execute if score timer_t system matches 0 run scoreboard players reset tmp
#- Base Case -#
execute if score timer_t system matches 0 unless score state system matches 0 run function wdhb:conquest/util/game_stalemate

#- Game Timer Display -#
execute if score state system matches 1 run scoreboard players add timer_master system 1
execute if score state system matches 1 if score timer_master system matches 20 run scoreboard players remove timer_s system 1
execute if score timer_master system matches 20 run scoreboard players set timer_master system 0
execute if score timer_s system matches -1 unless score timer_m system matches 0 run scoreboard players remove timer_m system 1
execute if score timer_s system matches -1 run scoreboard players set timer_s system 59

#- Special Countdown -#
#var = special_t, special (modes 1 (45s) & 2 (90s)), special_s, special_d (tick to second)
execute if score state system matches 1 unless score special_t system matches ..0 run scoreboard players remove special_t system 1
execute if score special_t system matches 1.. if score Neutral posts matches 1.. run function wdhb:conquest/util/special_stop
execute if score special_t system matches 0 if score Blue posts matches 0 if score Neutral posts matches 0 run function wdhb:conquest/util/game_victory_red
execute if score special_t system matches 0 if score Red posts matches 0 if score Neutral posts matches 0 run function wdhb:conquest/util/game_victory_blue
execute if score state system matches 1 if score Red posts matches 0 if score Neutral posts matches 0 if score red_active system matches 1.. if score special_t system matches -1 run function wdhb:conquest/util/special_start
execute if score state system matches 1 if score Blue posts matches 0 if score Neutral posts matches 0 if score blue_active system matches 1.. if score special_t system matches -1 run function wdhb:conquest/util/special_start

#- Special Countdown Display -#
execute if score special_t system matches 1.. run scoreboard players add special_master system 1
execute if score special_master system matches 20 if score special_s system matches 1.. run scoreboard players remove special_s system 1
execute if score special_master system matches 20 run scoreboard players set special_master system 0

#- Command Post Stuff -#
#- Blue -300, Red 300, Neutral 0
#- A post will retain color until it passes 0 or into the other's territory. -300 going to 300, 0 removes it from blue. But since 0 can often be skipped over, for a failsafe, in the range of 0 to 299, remove blue. After all, blue doesn't extend that far, does it? For red, it'd be -299 to 0.
#- At exactly -300 or 300, the capture event will take place for armor stands at that value and without the tag. If it's 301 or above, set it to 300.
#- Also have all of one team's events happen at once so multiple teams at one place doesn't screw things up (like raising 299 to 301 but then having that set to 300). Any value above 300 will ALWAYS be set to 300 as a failsafe.
execute as @a[team=red] at @s unless score @e[tag=post,sort=nearest,limit=1,distance=..5] system matches 300.. run scoreboard players add @e[tag=post,sort=nearest,limit=1,distance=..5] system 1
scoreboard players set @e[tag=post,scores={system=301..}] system 300
execute as @e[tag=post,scores={system=300},tag=!red] at @s run scoreboard players add Red posts 1
execute as @e[tag=post,scores={system=300},tag=!red] at @s run scoreboard players remove Neutral posts 1
execute as @e[tag=post,scores={system=300},tag=!red] at @s run setblock ~ ~-1 ~ red_stained_glass
execute as @e[tag=post,scores={system=300},tag=!red] at @s if score map system matches 1 run function wdhb:conquest/maps/1-notify-r
execute as @e[tag=post,scores={system=300},tag=!red] at @s if score map system matches 2 run function wdhb:conquest/maps/2-notify-r
execute as @e[tag=post,scores={system=300},tag=!red] at @s if score map system matches 3 run function wdhb:conquest/maps/3-notify-r
tag @e[tag=post,scores={system=300},tag=!red] add red
execute as @a[team=blue] at @s unless score @e[tag=post,sort=nearest,limit=1,distance=..5] system matches ..-300 run scoreboard players remove @e[tag=post,sort=nearest,limit=1,distance=..5] system 1
scoreboard players set @e[tag=post,scores={system=..-301}] system -300
execute as @e[tag=post,scores={system=-300},tag=!blue] at @s run scoreboard players add Blue posts 1
execute as @e[tag=post,scores={system=-300},tag=!blue] at @s run scoreboard players remove Neutral posts 1
execute as @e[tag=post,scores={system=-300},tag=!blue] at @s run setblock ~ ~-1 ~ blue_stained_glass
execute as @e[tag=post,scores={system=-300},tag=!blue] at @s if score map system matches 1 run function wdhb:conquest/maps/1-notify-b
execute as @e[tag=post,scores={system=-300},tag=!blue] at @s if score map system matches 2 run function wdhb:conquest/maps/2-notify-b
execute as @e[tag=post,scores={system=-300},tag=!blue] at @s if score map system matches 3 run function wdhb:conquest/maps/3-notify-b
tag @e[tag=post,scores={system=-300},tag=!blue] add blue
execute as @e[tag=post,scores={system=..0},tag=red] at @s run scoreboard players add Neutral posts 1
execute as @e[tag=post,scores={system=..0},tag=red] at @s run scoreboard players remove Red posts 1
execute as @e[tag=post,scores={system=..0},tag=red] at @s run setblock ~ ~-1 ~ white_stained_glass
execute as @e[tag=post,scores={system=..0},tag=red] at @s if score map system matches 1 run function wdhb:conquest/maps/1-notify-n
execute as @e[tag=post,scores={system=..0},tag=red] at @s if score map system matches 2 run function wdhb:conquest/maps/2-notify-n
execute as @e[tag=post,scores={system=..0},tag=red] at @s if score map system matches 3 run function wdhb:conquest/maps/3-notify-n
tag @e[tag=post,scores={system=..0},tag=red] remove red
execute as @e[tag=post,scores={system=0..},tag=blue] at @s run scoreboard players add Neutral posts 1
execute as @e[tag=post,scores={system=0..},tag=blue] at @s run scoreboard players remove Blue posts 1
execute as @e[tag=post,scores={system=0..},tag=blue] at @s run setblock ~ ~-1 ~ white_stained_glass
execute as @e[tag=post,scores={system=0..},tag=blue] at @s if score map system matches 1 run function wdhb:conquest/maps/1-notify-n
execute as @e[tag=post,scores={system=0..},tag=blue] at @s if score map system matches 2 run function wdhb:conquest/maps/2-notify-n
execute as @e[tag=post,scores={system=0..},tag=blue] at @s if score map system matches 3 run function wdhb:conquest/maps/3-notify-n
tag @e[tag=post,scores={system=0..},tag=blue] remove blue
execute as @e[tag=post,tag=red] at @s unless entity @a[team=blue,distance=..5] unless score @s system matches 300.. run scoreboard players add @s system 1
execute as @e[tag=post,tag=blue] at @s unless entity @a[team=red,distance=..5] unless score @s system matches ..-300 run scoreboard players remove @s system 1
execute as @e[tag=post,tag=!red,tag=!blue] at @s unless entity @a[distance=..5] if score @s system matches -299..-1 run scoreboard players add @s system 1
execute as @e[tag=post,tag=!red,tag=!blue] at @s unless entity @a[distance=..5] if score @s system matches 1..299 run scoreboard players remove @s system 1

#- Command Post Actionbar -#
scoreboard players set 3 system 3
scoreboard players set -1 system -1
execute as @e[tag=post] at @s run scoreboard players operation @a[distance=..5] system = @s system
execute as @e[tag=post] at @s run scoreboard players operation @a[distance=..5] system /= 3 system
execute as @e[tag=post] at @s if score @s system matches ..-1 run scoreboard players operation @a[distance=..5] system *= -1 system
execute at @e[tag=post,tag=!red,tag=!blue] as @a[distance=..5] run title @s actionbar [{"score":{"name":"@s","objective":"system"},"color":"white","bold":true},{"text":"%","color":"white","bold":true}]
execute at @e[tag=post,tag=red] as @a[distance=..5] run title @s actionbar [{"score":{"name":"@s","objective":"system"},"color":"red","bold":true},{"text":"%","color":"red","bold":true}]
execute at @e[tag=post,tag=blue] as @a[distance=..5] run title @s actionbar [{"score":{"name":"@s","objective":"system"},"color":"blue","bold":true},{"text":"%","color":"blue","bold":true}]
execute as @e[tag=post] at @s run scoreboard players reset @a[distance=..5] system
execute as @e[tag=post,tag=!red] at @s run effect give @a[team=red,distance=..5] glowing 1 0 true
execute as @e[tag=post,tag=!blue] at @s run effect give @a[team=blue,distance=..5] glowing 1 0 true
scoreboard players reset 3
scoreboard players reset -1

#- Stuff to do with player count -#
# The loops have to be here specifically because they count how many players are in the arena, which determines win conditions.
execute if score state system matches 1 if score map system matches 1 run function wdhb:conquest/maps/1-loop
execute if score state system matches 1 if score map system matches 2 run function wdhb:conquest/maps/2-loop
execute if score state system matches 1 if score map system matches 3 run function wdhb:conquest/maps/3-loop
execute if score state system matches 1 if score Red system matches 0 if score red_active system matches 0 run function wdhb:conquest/util/game_victory_blue
execute if score state system matches 1 if score Blue system matches 0 if score blue_active system matches 0 run function wdhb:conquest/util/game_victory_red
###
execute if score state system matches 1 if score Red posts matches 0 if score Neutral posts matches 0 if score red_active system matches 0 run function wdhb:conquest/util/game_victory_blue
execute if score state system matches 1 if score Blue posts matches 0 if score Neutral posts matches 0 if score blue_active system matches 0 run function wdhb:conquest/util/game_victory_red
scoreboard players reset red_active
scoreboard players reset blue_active

#- Death Event -#
execute as @a[scores={death=1..},team=red] at @s run scoreboard players remove Red system 1
execute as @a[scores={death=1..},team=blue] at @s run scoreboard players remove Blue system 1
xp set @a[scores={death=1..}] 30 levels
scoreboard players reset @a death

#- Other -#
function wdhb:conquest/scores
execute as @e[type=armor_stand,tag=post,tag=red] at @s run particle minecraft:dust_plume ~ ~1 ~ 0.1 0.5 0.1 0 15 force
execute as @e[type=armor_stand,tag=post,tag=blue] at @s run particle minecraft:dust_plume ~ ~1 ~ 0.1 0.5 0.1 0 15 force
execute as @e[type=armor_stand,tag=post,tag=!red,tag=!blue] at @s run particle minecraft:dust_plume ~ ~1 ~ 0.1 0.5 0.1 0 15 force
tag @a[team=red] add ingame
tag @a[team=blue] add ingame
execute if score state system matches 1 run bossbar set wdhb:timer players @a[tag=ingame]
execute if score state system matches 1 run bossbar set wdhb:red players @a[tag=ingame]
execute if score state system matches 1 run bossbar set wdhb:blue players @a[tag=ingame]
tag @a[tag=ingame] remove ingame
execute if score state system matches 1 run function wdhb:conquest/posts
