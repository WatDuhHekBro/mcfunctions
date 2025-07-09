tellraw @a ["",{"text":"Stalemate, nobody wins!","color":"gray","bold":true}]
playsound entity.ender_dragon.hurt neutral @a ~ ~ ~ 1000
scoreboard players set @e[type=Armor_Stand,name=Dummy] enableSpectator 0
setblock 0 89 25 air
setblock -2 86 11 air
setblock 1 92 27 air
fill -1 100 11 1 102 14 air
scoreboard players set @a[name=SnD] Timer 300
scoreboard players set @a SnDarrowmax 0
execute as @a at @s run teleport @s 0 104 0 0 0
scoreboard players add @e[type=Armor_Stand,name=Dummy] MapRotation 1
scoreboard players set @e[type=Armor_Stand,name=Dummy,scores={MapRotation=3..3}] MapRotation 0
fill -3 92 23 3 92 23 air
execute as @e[type=Armor_Stand,name=Dummy,scores={MapRotation=0..0}] at @s positioned ~ ~ ~ run setblock 3 92 23 redstone_block
execute as @e[type=Armor_Stand,name=Dummy,scores={MapRotation=1..1}] at @s positioned ~ ~ ~ run setblock 2 92 23 redstone_block
execute as @e[type=Armor_Stand,name=Dummy,scores={MapRotation=2..2}] at @s positioned ~ ~ ~ run setblock 1 92 23 redstone_block




















































































