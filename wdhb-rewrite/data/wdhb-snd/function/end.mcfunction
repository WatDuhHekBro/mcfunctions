tellraw @a ["",{"text":"Stalemate, nobody wins!","color":"gray","bold":true}]
playsound entity.enderdragon.hurt neutral @a ~ ~ ~ 1000
scoreboard players set @e[type=Armor_Stand,name=Dummy] enableSpectator 0
setblock 0 89 25 air
setblock -2 86 11 air
setblock 1 92 27 air
fill -1 100 11 1 102 14 air
scoreboard players set SnD Timer 300
scoreboard players set @a SnDarrowmax 0
tp @a 0 104 0 0 0
scoreboard players add @e[type=Armor_Stand,name=Dummy] MapRotation 1
scoreboard players set @e[type=Armor_Stand,name=Dummy,score_MapRotation=3,score_MapRotation_min=3] MapRotation 0
fill -3 92 23 3 92 23 air
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=0,score_MapRotation_min=0] ~ ~ ~ setblock 3 92 23 redstone_block
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=1,score_MapRotation_min=1] ~ ~ ~ setblock 2 92 23 redstone_block
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=2,score_MapRotation_min=2] ~ ~ ~ setblock 1 92 23 redstone_block