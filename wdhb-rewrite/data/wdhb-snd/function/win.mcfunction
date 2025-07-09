scoreboard players set @a[x=-65,y=1,z=285,dx=132,dy=35,dz=131,m=!3] winner 1
scoreboard players add @a[x=-65,y=1,z=285,dx=132,dy=35,dz=131,m=!3] Wins 1
scoreboard players set @a[x=141,y=1,z=-114,dx=218,dy=74,dz=225,m=!3] winner 1
scoreboard players add @a[x=141,y=1,z=-114,dx=218,dy=74,dz=225,m=!3] Wins 1
scoreboard players set @a[x=-69,y=1,z=133,dx=137,dy=66,dz=134,m=!3] winner 1
scoreboard players add @a[x=-69,y=1,z=133,dx=137,dy=66,dz=134,m=!3] Wins 1
tellraw @a ["",{"selector":"@a[score_winner=1,score_winner_min=1]"},{"text":" has won the game!","color":"gold"}]}}
playsound entity.enderdragon.death neutral @a ~ ~ ~ 1000 2
tp @a[score_winner_min=1] 0 104 0 0 0
tp @a[m=3] 0 104 0 0 0
scoreboard players set @e[type=Armor_Stand,name=Dummy] enableSpectator 0
setblock 1 92 27 air
setblock 0 89 25 air
setblock -2 86 11 air
fill -1 100 11 1 102 14 air
scoreboard players set @a SnDarrowmax 0
scoreboard players set SnD Timer 300
scoreboard players add @e[type=Armor_Stand,name=Dummy] MapRotation 1
scoreboard players set @e[type=Armor_Stand,name=Dummy,score_MapRotation=3,score_MapRotation_min=3] MapRotation 0
fill -3 92 23 3 92 23 air
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=0,score_MapRotation_min=0] ~ ~ ~ setblock 3 92 23 redstone_block
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=1,score_MapRotation_min=1] ~ ~ ~ setblock 2 92 23 redstone_block
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=2,score_MapRotation_min=2] ~ ~ ~ setblock 1 92 23 redstone_block