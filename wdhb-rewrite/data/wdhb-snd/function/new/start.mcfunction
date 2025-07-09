execute as @a[x=-1,y=100,z=12,dx=2,dy=2,dz=2] at @s run teleport @s 0 104 0 0 0
clone -1 93 -2 1 95 1 -1 100 11
team join SnD @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14]
scoreboard players set @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] inGame 1
replaceitem entity @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] armor.feet leather_boots{Unbreakable:1,Enchantments:[{id:feather_falling,lvl:100}],HideFlags:1} 1
replaceitem entity @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] hotbar.0 bow{Unbreakable:1,Enchantments:[{id:sharpness,lvl:10}]} 1
replaceitem entity @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] hotbar.1 arrow 1
replaceitem entity @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] hotbar.8 potion{CustomPotionEffects:[{Id:7,Amplifier:0,Duration:20}],display:{Name:"\"Surrender\"",Lore:["Drink this to surrender (If you get stuck for example)"]}} 1
execute as @e[type=Armor_Stand,name=Dummy,scores={MapRotation=0..0}] at @s positioned ~ ~ ~ run scoreboard players set @e[type=Armor_Stand,scores={desertSpawn=1..}] spawnPoint 1
execute as @e[type=Armor_Stand,name=Dummy,scores={MapRotation=1..1}] at @s positioned ~ ~ ~ run scoreboard players set @e[type=Armor_Stand,scores={siberiaSpawn=1..}] spawnPoint 1
execute as @e[type=Armor_Stand,name=Dummy,scores={MapRotation=2..2}] at @s positioned ~ ~ ~ run scoreboard players set @e[type=Armor_Stand,scores={volcanoSpawn=1..}] spawnPoint 1
setblock 1 92 27 repeater[facing=north]
scoreboard players set @a[name=SnD_Lobby] Timer 20
scoreboard players set @a[name=SnD] Timer 300
setblock -2 86 11 redstone_wire
scoreboard players set @e[type=Armor_Stand,name=Dummy] enableSpectator 1
tellraw @a ["",{"text":"Game has started!","color":"white","bold":true}]



















































































