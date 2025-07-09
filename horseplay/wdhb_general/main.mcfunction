# First Login
scoreboard players add @a FirstTimer 0
execute @a[score_FirstTimer=0] ~ ~ ~ tellraw @a ["",{"text":"Login ","color":"blue"},{"text":"» ","color":"blue"},{"selector":"@p","color":"green"},{"text":" has logged in for the first time!","color":"gray"}]
scoreboard players set @a[score_FirstTimer=0] music 0
scoreboard players set @a[score_FirstTimer=0] Wins 0
scoreboard teams join Lobby @a[score_FirstTimer=0]
execute @a[score_FirstTimer=0] ~ ~ ~ summon fireworks_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:0,Colors:[1703927],FadeColors:[16777215]}]}}}}
title @a[score_FirstTimer=0] title ["",{"text":"Welcome ","color":"aqua"},{"selector":"@a[score_FirstTimer=0]","color":"green"}]
title @a[score_FirstTimer=0] subtitle {"text":"to the server!","color":"gold"}
scoreboard players set @a FirstTimer 1



# Generic
clear @a[x=-4,y=104,z=-4,dx=8,dy=4,dz=8,m=!1]
effect @a[x=-4,y=100,z=-4,dx=8,dy=4,dz=8] resistance 1 100 true
effect @a[x=-4,y=100,z=-4,dx=8,dy=4,dz=8] instant_health 1 100 true
effect @a saturation 1000000 100 true
scoreboard players set @a[x=-4,y=100,z=-4,dx=8,dy=4,dz=8] leave 0
tp @a[score_leave_min=1] 0 104 0 0 0
scoreboard teams join Lobby @a[x=-4,y=104,z=-4,dx=8,dy=4,dz=8]
kill @e[type=Item]
gamemode 2 @a[m=1,name=!WatDuhHekBro]
gamemode 2 @a[m=0]
scoreboard players set @e[type=Arrow] killArrow 1 {inGround:1b}
kill @e[type=Arrow,score_killArrow_min=1]
effect @a[team=SnD] jump_boost 2 255 true
scoreboard players set @a[x=-4,y=100,z=-4,dx=8,dy=4,dz=8] inGame 0
scoreboard players set @a[x=-4,y=100,z=-4,dx=8,dy=4,dz=8] winner 0
gamemode 2 @a[x=-4,y=104,z=-4,dx=8,dy=4,dz=8,score_spectator=0,m=3]
scoreboard players set @a[x=-4,y=104,z=-4,dx=8,dy=4,dz=8] spectator 0
tp @a[x=-1,y=89,z=9,dx=2,dy=2,dz=0] 0 100 0 0 0
particle portal 0 100 13 0 0.5 0 0.3 25 force @a
tp @a[x=0,y=100,z=13,dx=0,dy=1,dz=0] 0 90 13 0 0
execute @a ~ ~ ~ scoreboard players set @e[type=Armor_Stand,r=1] spawnPoint 0



# Spawn Options
scoreboard players set @a[x=-1,y=100,z=-8,dy=1] music 0
scoreboard players set @a[x=1,y=100,z=-8,dy=1] music 1
scoreboard players set @a[x=7,y=100,z=-2,dy=1,score_Wins_min=5] aura 1
scoreboard players set @a[x=7,y=100,z=2,dy=1,score_Wins_min=10] aura 2
scoreboard players set @a[x=10,y=100,z=-2,dy=1,score_Wins_min=25] aura 3
scoreboard players set @a[x=10,y=100,z=2,dy=1,score_Wins_min=50] halo 1
scoreboard players set @a[x=13,y=100,z=-2,dy=1,score_Wins_min=75] clothes 1
scoreboard players set @a[x=13,y=100,z=2,dy=1,score_Wins_min=100] clothes 3
scoreboard players set @a[x=16,y=100,z=-2,dy=1,score_Wins_min=125] halo 2
scoreboard players set @a[x=16,y=100,z=2,dy=1,score_Wins_min=150] clothes 2
scoreboard players set @a[x=19,y=100,z=-2,dy=1,score_Wins_min=200] invis 1
scoreboard players set @a[x=19,y=100,z=2,dy=1,score_Wins_min=250] rainbowName 1
scoreboard players set @a[x=22,y=100,z=-2,dy=1,score_Wins_min=300] rainbowGlow 1
scoreboard players set @a[x=22,y=100,z=-2,dy=1,score_Wins_min=300] rainbowName 1
scoreboard players set @a[x=22,y=100,z=2,dy=1,score_Wins_min=300] aura 4



# Cosmetics
# [Auras]
scoreboard players set @a[x=3,y=100,z=3,dy=1] aura 0
execute @a[score_aura=1,score_aura_min=1,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle snowshovel ~ ~1 ~ 0 0 0 0.15 5 force @a
execute @a[score_aura=2,score_aura_min=2,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle portal ~ ~1 ~ 0 0 0 1 15 force @a
execute @a[score_aura=3,score_aura_min=3,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle enchantmenttable ~ ~1 ~ 0 0 0 1 15 force @a
# [Clothes]
scoreboard players set @a[x=3,y=100,z=3,dy=1] clothes 0
replaceitem entity @a[score_clothes=0,score_clothes_min=0] slot.armor.head air
replaceitem entity @a[score_inGame=1,score_inGame_min=1] slot.armor.head air
replaceitem entity @a[score_clothes=1,score_clothes_min=1,score_inGame=0,score_inGame_min=0] slot.armor.head glass
replaceitem entity @a[score_clothes=2,score_clothes_min=2,score_inGame=0,score_inGame_min=0] slot.armor.head skull 1 5
replaceitem entity @a[score_clothes=3,score_clothes_min=3,score_inGame=0,score_inGame_min=0] slot.armor.head bed 1 14
# [Halos]
scoreboard players set @a[x=3,y=100,z=3,dy=1] halo 0
execute @a[score_halo=1,score_halo_min=1,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle flame ~.5 ~2.2 ~ 0 0 0 0 1 force @a
execute @a[score_halo=1,score_halo_min=1,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle flame ~-.5 ~2.2 ~ 0 0 0 0 1 force @a
execute @a[score_halo=1,score_halo_min=1,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle flame ~ ~2.2 ~.5 0 0 0 0 1 force @a
execute @a[score_halo=1,score_halo_min=1,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle flame ~ ~2.2 ~-.5 0 0 0 0 1 force @a
execute @a[score_halo=1,score_halo_min=1,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle flame ~.25 ~2.2 ~.25 0 0 0 0 1 force @a
execute @a[score_halo=1,score_halo_min=1,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle flame ~.25 ~2.2 ~-.25 0 0 0 0 1 force @a
execute @a[score_halo=1,score_halo_min=1,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle flame ~-.25 ~2.2 ~.25 0 0 0 0 1 force @a
execute @a[score_halo=1,score_halo_min=1,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle flame ~-.25 ~2.2 ~-.25 0 0 0 0 1 force @a
execute @a[score_halo=2,score_halo_min=2,score_inGame=0,score_inGame_min=0] ~ ~ ~ particle happyVillager ~ ~1.9 ~ 0 0 0 0 1 force @a
# [Specials]
scoreboard players set @a[x=3,y=100,z=3,dy=1] invis 0
effect @a[score_invis=1,score_invis_min=1,score_inGame=0,score_inGame_min=0] invisibility 1 0 true
scoreboard players set @a[x=3,y=100,z=3,dy=1] rainbowGlow 0
effect @a[score_rainbowGlow=1,score_rainbowGlow_min=1,score_inGame=0,score_inGame_min=0,score_spectator=0] glowing 1 0 true
scoreboard players set @a[x=-4,y=89,z=8,dx=8,dy=6,dz=14] rainbowName 0
scoreboard players set @a[x=3,y=100,z=3,dy=1] rainbowName 0
scoreboard teams join Lobby @a[x=3,y=100,z=3,dy=1]



# SnD Function Loops
# [Arrow Counts]
scoreboard players set @a[team=SnD] SnDarrowmax 1 {Inventory:[{id:"minecraft:arrow",Count:1b}]}
scoreboard players set @a[team=SnD] SnDarrowmax 2 {Inventory:[{id:"minecraft:arrow",Count:2b}]}
scoreboard players set @a[team=SnD] SnDarrowmax 3 {Inventory:[{id:"minecraft:arrow",Count:3b}]}
scoreboard players set @a[team=SnD] SnDarrowmax 4 {Inventory:[{id:"minecraft:arrow",Count:4b}]}
scoreboard players set @a[team=SnD] SnDarrowmax 5 {Inventory:[{id:"minecraft:arrow",Count:5b}]}
clear @a[score_SnDarrowmax_min=3,score_SnDarrowmax=3,team=SnD] arrow 0 1
clear @a[score_SnDarrowmax_min=4,score_SnDarrowmax=4,team=SnD] arrow 0 1
clear @a[score_SnDarrowmax_min=5,score_SnDarrowmax=5,team=SnD] arrow 0 1
# [Spawnpoints]
tp @r[x=-4,y=89,z=8,dx=8,dy=6,dz=14] @r[type=Armor_Stand,score_spawnPoint_min=1]
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert1] ~ ~ ~ tp @a[r=1] -1 14 396 180 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert2] ~ ~ ~ tp @a[r=1] 0 9 309 0 -10
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert3] ~ ~ ~ tp @a[r=1] -42 8 360 -140 -15
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert4] ~ ~ ~ tp @a[r=1] -31 8 382 -135 -16
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert5] ~ ~ ~ tp @a[r=1] -29 6 318 -130 -20
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert6] ~ ~ ~ tp @a[r=1] 21 10 320 -135 -10
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert7] ~ ~ ~ tp @a[r=1] 48 15 351 100 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert8] ~ ~ ~ tp @a[r=1] 35 13 378 180 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert9] ~ ~ ~ tp @a[r=1] 21 6 389 180 -30
execute @e[type=Armor_Stand,score_spawnPoint=0,name=desert10] ~ ~ ~ tp @a[r=1] -1 6 334 130 -50
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia1] ~ ~ ~ tp @a[r=1] 335 8 32 109 -15
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia2] ~ ~ ~ tp @a[r=1] 188 9 -48 -50 -20
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia3] ~ ~ ~ tp @a[r=1] 209 8 65 -145 -20
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia4] ~ ~ ~ tp @a[r=1] 299 10 -50 45 -5
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia5] ~ ~ ~ tp @a[r=1] 183 18 0 -155 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia6] ~ ~ ~ tp @a[r=1] 304 8 -10 180 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia7] ~ ~ ~ tp @a[r=1] 283 7 43 0 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia8] ~ ~ ~ tp @a[r=1] 257 8 35 0 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia9] ~ ~ ~ tp @a[r=1] 252 2 -1 45 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=siberia10] ~ ~ ~ tp @a[r=1] 305 2 32 135 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano1] ~ ~ ~ tp @a[r=1] -15 20 193 20 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano2] ~ ~ ~ tp @a[r=1] -3 20 207 -135 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano3] ~ ~ ~ tp @a[r=1] 13 20 207 -145 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano4] ~ ~ ~ tp @a[r=1] -3 15 207 -120 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano5] ~ ~ ~ tp @a[r=1] -13 15 193 50 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano6] ~ ~ ~ tp @a[r=1] 19 15 193 50 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano7] ~ ~ ~ tp @a[r=1] 19 25 200 90 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano8] ~ ~ ~ tp @a[r=1] -19 25 200 -90 0
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano9] ~ ~ ~ tp @a[r=1] -20 41 200 -90 25
execute @e[type=Armor_Stand,score_spawnPoint=0,name=volcano10] ~ ~ ~ tp @a[r=1] 20 36 200 90 20
# [Arena Teleports]
tp @a[x=-65,y=1,z=285,dx=132,dy=35,dz=131,score_health_min=0,score_health=19] 0 104 0 0 0
tp @a[x=141,y=1,z=-114,dx=218,dy=74,dz=225,score_health_min=0,score_health=19] 0 104 0 0 0
tp @a[x=-69,y=1,z=133,dx=137,dy=66,dz=134,score_health_min=0,score_health=19] 0 104 0 0 0
# [Spectator Loops]
execute @e[type=Armor_Stand,name=Dummy,score_enableSpectator_min=1] ~ ~ ~ particle portal 0 100 19 0 0.5 0 0.3 5 force @a
execute @e[type=Armor_Stand,name=Dummy,score_enableSpectator_min=1] ~ ~ ~ gamemode 3 @a[x=0,y=100,z=19,dy=1,score_spectator_min=1]
execute @e[type=Armor_Stand,name=Dummy,score_enableSpectator_min=1] ~ ~ ~ scoreboard players set @a[x=0,y=100,z=19,dy=1] spectator 1
execute @e[type=Armor_Stand,name=Dummy,score_enableSpectator_min=1] ~ ~ ~ scoreboard players set @a[score_spectator_min=1] inGame 1
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=0,score_MapRotation_min=0,score_enableSpectator_min=1] ~ ~ ~ tp @a[m=3,x=0,y=100,z=19,dy=1] 0 24 350
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=1,score_MapRotation_min=1,score_enableSpectator_min=1] ~ ~ ~ tp @a[m=3,x=0,y=100,z=19,dy=1] 250 8 0
execute @e[type=Armor_Stand,name=Dummy,score_MapRotation=2,score_MapRotation_min=2,score_enableSpectator_min=1] ~ ~ ~ tp @a[m=3,x=0,y=100,z=19,dy=1] 0 47 200