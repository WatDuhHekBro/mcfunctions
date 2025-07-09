tp @a[x=-1,y=100,z=12,dx=2,dy=2,dz=2] 0 104 0 0 0
clone -1 93 -2 1 95 1 -1 100 11
scoreboard teams join SnD @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14]
scoreboard players set @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] inGame 1
replaceitem entity @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] slot.armor.feet leather_boots 1 0 {Unbreakable:1,ench:[{id:2,lvl:100}],HideFlags:1}
replaceitem entity @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] slot.hotbar.0 bow 1 0 {Unbreakable:1,ench:[{id:16,lvl:10}]}
replaceitem entity @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] slot.hotbar.1 arrow 1 0
replaceitem entity @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] slot.hotbar.8 potion 1 8204 {CustomPotionEffects:[{Id:7,Amplifier:0,Duration:20}],display:{Name:"Surrender",Lore:["Drink this to surrender (If you get stuck for example)"]}}
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=0,score_MapRotation_min=0] ~ ~ ~ scoreboard players set @e[type=Armor_Stand,score_desertSpawn_min=1] spawnPoint 1
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=1,score_MapRotation_min=1] ~ ~ ~ scoreboard players set @e[type=Armor_Stand,score_siberiaSpawn_min=1] spawnPoint 1
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=2,score_MapRotation_min=2] ~ ~ ~ scoreboard players set @e[type=Armor_Stand,score_volcanoSpawn_min=1] spawnPoint 1
setblock 1 92 27 unpowered_repeater
scoreboard players set SnD_Lobby Timer 20
scoreboard players set SnD Timer 300
setblock -2 86 11 redstone_wire
scoreboard players set @e[type=Armor_Stand,name=Dummy] enableSpectator 1
tellraw @a ["",{"text":"Game has started!","color":"white","bold":true}]