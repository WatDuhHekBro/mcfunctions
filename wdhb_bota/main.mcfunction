#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
# Version: 0.0 (Beta)                   #
# Last Updated: 1 October, 2017         #
#                                       #
#########################################

scoreboard players set @a[tag=!newPlayer] class 0
execute @a[tag=!newPlayer] ~ ~ ~ tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"red","bold":false},{"text":"] ","color":"gold","bold":true},{"selector":"@s","color":"green","bold":false},{"text":" has joined for the first time! Welcome to the server!","color":"dark_aqua"}]
scoreboard teams join Lobby @a[tag=!newPlayer]
scoreboard players set @a[tag=!newPlayer] class 0
scoreboard players set @a[tag=!newPlayer] inGame 0
scoreboard players set @a[tag=!newPlayer] generalHP 0
scoreboard players set @a[tag=!newPlayer] generalMP 0
scoreboard players set @a[tag=!newPlayer] disarm 0
scoreboard players set @a[tag=!newPlayer] stun 0
scoreboard players set @a[tag=!newPlayer] 1o1cd 0
scoreboard players set @a[tag=!newPlayer] 1o1cdswitch 0
scoreboard players set @a[tag=!newPlayer] 1d1cd 0
scoreboard players set @a[tag=!newPlayer] 1d1cdswitch 0
scoreboard players set @a[tag=!newPlayer] 2o1timer 0
scoreboard players set @a[tag=!newPlayer] 2p 0
scoreboard players set @a[tag=!newPlayer] 2ptimer 0
scoreboard players set @a[tag=!newPlayer] 4o1timer 0
scoreboard players set @a[tag=!newPlayer] 4o1rswitch 0
scoreboard players tag @a[tag=!newPlayer] add newPlayer
scoreboard teams join Lobby @a[score_leave_min=1]
tp @a[score_leave_min=1] 0 50 0 0 0
scoreboard players set @a leave 0
gamemode 2 @a[m=1,name=!WatDuhHekBro]
gamemode 2 @a[m=0]
gamemode 2 @a[m=3]
kill @e[type=Item]
scoreboard players set @e[type=Arrow] arrowKill 1 {inGround:1b}
kill @e[type=Arrow,score_arrowKill_min=1]
execute @e[type=Armor_Stand,name=Server] ~ ~ ~ effect @a saturation 1000000 100 true
execute @e[type=Armor_Stand,name=Queue] ~ ~ ~ effect @a[tag=queueEnabled] saturation 1000000 100 true
execute @e[type=Armor_Stand,name=Battle] ~ ~ ~ effect @a[team=!Lobby] saturation 1000000 100 true
xp -1L @a[lm=31]
xp 1L @a[score_inGame_min=1,score_generalMP_min=20]
scoreboard players set @a[score_inGame_min=1,score_generalMP_min=20] generalMP 0
effect @a[score_generalHP_min=20] regeneration 1 2 true
scoreboard players set @a[score_generalHP_min=20] generalHP 0
scoreboard players set @a[x=0,y=50,z=0,dy=1] inGame 0
scoreboard teams join Lobby @a[x=0,y=50,z=0,dy=1]
scoreboard players set @a[x=0,y=50,z=15,dy=1] inGame 1
scoreboard teams join Red @a[x=0,y=50,z=15,dy=1]
tp @a[x=0,y=50,z=15,dy=1] 0 44 35
scoreboard players enable @a discord
execute @a[score_discord_min=1] ~ ~ ~ tellraw @s ["",{"text":"Click here for discord.","color":"gold","italic":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/s8mK4jP"}}]
scoreboard players set @a discord 0
scoreboard players enable @a music
execute @a[score_music_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a music 0
scoreboard players enable @a hat
execute @a[score_hat_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a hat 0
scoreboard players enable @a help
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a help 0
scoreboard players enable @a info
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a info 0
scoreboard players enable @a news
execute @a[score_news_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a news 0
scoreboard players enable @a speed
execute @a[score_speed_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a speed 0
scoreboard players enable @a forfeit
execute @a[score_forfeit_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a forfeit 0
scoreboard players enable @a barbarian
execute @a[score_barbarian_min=1] ~ ~ ~ scoreboard players set @s class 1
execute @a[score_barbarian_min=1] ~ ~ ~ tellraw @s ["",{"text":"You are now a barbarian!","color":"red"}]
scoreboard players set @a barbarian 0
scoreboard players enable @a hunter
execute @a[score_hunter_min=1] ~ ~ ~ scoreboard players set @s class 2
execute @a[score_hunter_min=1] ~ ~ ~ tellraw @s ["",{"text":"You are now a hunter!","color":"red"}]
scoreboard players set @a hunter 0
scoreboard players enable @a mage
execute @a[score_mage_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a mage 0
scoreboard players enable @a rogue
execute @a[score_rogue_min=1] ~ ~ ~ scoreboard players set @s class 4
execute @a[score_rogue_min=1] ~ ~ ~ tellraw @s ["",{"text":"You are now a rogue!","color":"red"}]
scoreboard players set @a rogue 0
scoreboard players remove @a[score_class=1,score_class_min=1,score_inGame_min=1,score_1o1cd_min=1] 1o1cd 1
scoreboard players remove @a[score_class=1,score_class_min=1,score_inGame_min=1,score_1d1cd_min=1] 1d1cd 1
scoreboard players add @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=3] 2o1timer 1
scoreboard players add @a[score_2ptimer=99] 2ptimer 1
scoreboard players add @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=1] 4o1timer 1
scoreboard players add @e[score_4o1rvictim_min=1,score_4o1rtimer=1] 4o1rtimer 1
scoreboard players remove @a[score_4o1rtime_min=1] 4o1rtime 1
scoreboard players add @a[score_inGame_min=1,score_generalMP=19] generalMP 1
scoreboard players add @a[score_generalHP=19] generalHP 1
scoreboard players remove @e[score_disarm_min=1] disarm 1
scoreboard players remove @e[score_stun_min=1] stun 1
clear @e[score_disarm_min=2]
replaceitem entity @a[score_class=1,score_class_min=1,score_inGame_min=1,score_disarm=1,score_disarm_min=1] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
replaceitem entity @a[score_class=2,score_class_min=2,score_inGame_min=1,score_disarm=1,score_disarm_min=1,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_class=2,score_class_min=2,score_inGame_min=1,score_disarm=1,score_disarm_min=1,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
#Mage: replaceitem entity @a[score_class=3,score_class_min=3,score_inGame_min=1,score_disarm=1,score_disarm_min=1] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
replaceitem entity @a[score_class=4,score_class_min=4,score_inGame_min=1,score_disarm=1,score_disarm_min=1,score_4o1rswitch=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
replaceitem entity @a[score_class=4,score_class_min=4,score_inGame_min=1,score_disarm=1,score_disarm_min=1,score_4o1rswitch_min=1] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}
effect @e[score_stun_min=1] slowness 1 100 true
effect @e[score_stun_min=1] jump_boost 1 128 true
effect @e[score_stun=0] slowness 0
effect @e[score_stun=0] jump_boost 0
scoreboard players set @a[score_1o1cd_min=1] 1o1cdswitch 1
scoreboard players set @a[score_1o1cd=0] 1o1cdswitch 0
scoreboard players set @a[l=4] 1o1able 0
scoreboard players set @a[lm=5] 1o1able 1
scoreboard players set @a[score_class=1,score_class_min=1,score_inGame_min=1] 1o1 1 {Inventory:[{Slot:-106b,id:"minecraft:diamond_axe"}]}
clear @a[score_1o1_min=1] diamond_axe
execute @a[score_1o1_min=1,score_1o1able=0,score_1o1cdswitch=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_1o1_min=1,score_1o1able=0,score_1o1cdswitch=0] actionbar ["",{"text":"You do not have enough energy to cast Intimidate!","color":"red","bold":true}]
replaceitem entity @a[score_1o1_min=1,score_1o1able=0,score_1o1cdswitch=0] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
execute @a[score_1o1_min=1,score_1o1cdswitch_min=1] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_1o1_min=1,score_1o1cdswitch_min=1] actionbar ["",{"text":"Intimidate is on cooldown!","color":"red","bold":true}]
replaceitem entity @a[score_1o1_min=1,score_1o1cdswitch_min=1] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
execute @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] ~ ~ ~ playsound entity.player.breath neutral @a ~ ~ ~ 1 0
scoreboard players tag @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] add 1o1user
execute @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] ~ ~ ~ effect @e[tag=!1o1user,r=8] slowness 3 3
execute @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] ~ ~ ~ effect @e[tag=!1o1user,r=8] weakness 3 3
scoreboard players tag @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] remove 1o1user
scoreboard players set @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] 1o1cd 60
replaceitem entity @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
xp -5L @a[score_1o1_min=1,score_1o1able_min=1,score_1o1cdswitch=0]
scoreboard players set @a 1o1 0
scoreboard players set @a[score_1d1cd_min=1] 1d1cdswitch 1
scoreboard players set @a[score_1d1cd=0] 1d1cdswitch 0
scoreboard players set @a[l=19] 1d1able 0
scoreboard players set @a[lm=20] 1d1able 1
scoreboard players set @a[score_class=1,score_class_min=1,score_inGame_min=1,score_1d1drop_min=1] 1d1 1
clear @a[score_1d1_min=1] diamond_axe
execute @a[score_1d1_min=1,score_1d1able=0,score_1d1cdswitch=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_1d1_min=1,score_1d1able=0,score_1d1cdswitch=0] actionbar ["",{"text":"You do not have enough energy to cast Berserk!","color":"red","bold":true}]
replaceitem entity @a[score_1d1_min=1,score_1d1able=0,score_1d1cdswitch=0] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
execute @a[score_1d1_min=1,score_1d1cdswitch_min=1] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_1d1_min=1,score_1d1cdswitch_min=1] actionbar ["",{"text":"Berserk is on cooldown!","color":"red","bold":true}]
replaceitem entity @a[score_1d1_min=1,score_1d1cdswitch_min=1] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
execute @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] ~ ~ ~ playsound entity.enderdragon.growl neutral @a ~ ~ ~ 1 1
effect @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] speed 5 6 true
effect @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] absorption 5 4 true
effect @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] regeneration 5 1 true
execute @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] ~ ~ ~ particle flame ~ ~1 ~ 0 0 0 0.1 100 force @a
scoreboard players set @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] 1d1cd 300
replaceitem entity @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}
xp -20L @a[score_1d1_min=1,score_1d1able_min=1,score_1d1cdswitch=0]
scoreboard players set @a 1d1 0
scoreboard players set @a 1d1drop 0
effect @a[score_class=1,score_class_min=1,score_inGame_min=1] slowness 1 0 true
effect @a[score_class=1,score_class_min=1,score_inGame_min=1] strength 1 1 true
effect @a[score_class=1,score_class_min=1,score_inGame_min=1] resistance 1 1 true
scoreboard players set @a[l=9] 2o1able 0
scoreboard players set @a[lm=10] 2o1able 1
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1] 2o1 1 {Inventory:[{Slot:-106b,id:"minecraft:bow"}]}
clear @a[score_2o1_min=1] bow
execute @a[score_2o1_min=1,score_2o1able=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_2o1_min=1,score_2o1able=0] actionbar ["",{"text":"You do not have enough energy to cast Quickdraw!","color":"red","bold":true}]
replaceitem entity @a[score_2o1_min=1,score_2o1able=0,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_2o1_min=1,score_2o1able=0,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
scoreboard players set @a[score_2o1_min=1,score_2o1able=0] 2o1 0
scoreboard players tag @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] add 2o1user
execute @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] ~ ~ ~ scoreboard players set @a[r=3,tag=!2o1user] disarm 61
execute @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] ~ ~ ~ execute @e[r=3,tag=!2o1user] ~ ~ ~ playsound item.shield.break neutral @a ~ ~ ~ 1 1.15
scoreboard players tag @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] remove 2o1user
effect @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] speed 1 25 true
effect @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] invisibility 1 0 true
execute @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] ~ ~ ~ particle smoke ~ ~1 ~ 0 0 0 0.2 250 force @a
execute @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer=0] ~ ~ ~ playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.75
effect @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4] speed 0
effect @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4] invisibility 0
replaceitem entity @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
give @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4] arrow 1 0
xp -10L @a[score_2o1_min=1,score_2o1able_min=1,score_2o1timer_min=4]
scoreboard players set @a[score_2o1_min=1,score_2o1timer_min=4] 2o1 0
scoreboard players set @a[score_2o1=0,score_2o1timer_min=4] 2o1timer 0
scoreboard players set @a[l=19] 2d1able 0
scoreboard players set @a[lm=20] 2d1able 1
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2d1drop_min=1] 2d1 1
clear @a[score_2d1_min=1] bow
execute @a[score_2d1_min=1,score_2d1able=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_2d1_min=1,score_2d1able=0] actionbar ["",{"text":"You do not have enough energy to cast Neurotoxin!","color":"red","bold":true}]
replaceitem entity @a[score_2d1_min=1,score_2d1able=0,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_2d1_min=1,score_2d1able=0,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
clear @a[score_2d1_min=1,score_2d1able_min=1] tipped_arrow
clear @a[score_2d1_min=1,score_2d1able_min=1] arrow
replaceitem entity @a[score_2d1_min=1,score_2d1able_min=1,score_2p=1] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
replaceitem entity @a[score_2d1_min=1,score_2d1able_min=1,score_2p_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
give @a[score_2d1_min=1,score_2d1able_min=1] tipped_arrow 1 0 {Potion:strong_harming}
xp -20L @a[score_2d1_min=1,score_2d1able_min=1]
scoreboard players set @a 2d1 0
scoreboard players set @a 2d1drop 0
execute @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=2] ~ ~ ~ particle magicCrit ~ ~1 ~ 0 0 0 0.5 2 force @a
replaceitem entity @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p=1,score_2pswitch2_min=1] slot.hotbar.0 minecraft:bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p=1] 2pswitch 1
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=2] 2pswitch2 1
replaceitem entity @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=2,score_2pswitch_min=1] slot.hotbar.0 minecraft:bow 1 0 {Unbreakable:1,display:{Name:"Focused Shot"},HideFlags:5,ench:[{id:48,lvl:2},{id:49,lvl:1}]}
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=2] 2pswitch 0
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p=1] 2pswitch2 0
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2p_min=3] 2p 0
give @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2ptimer_min=100] arrow 1 0
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2ptimer_min=100] 2ptimer 0
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1] 2poverflow 1 {Inventory:[{id:"minecraft:arrow",Count:3b}]}
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1] 2poverflow 1 {Inventory:[{id:"minecraft:arrow",Count:4b}]}
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1] 2poverflow 1 {Inventory:[{id:"minecraft:arrow",Count:5b}]}
clear @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2poverflow_min=1] arrow 0 1
scoreboard players set @a[score_class=2,score_class_min=2,score_inGame_min=1,score_2poverflow_min=1] 2poverflow 0
replaceitem entity @a[score_4o1rswitch_min=1,score_4o1rtime=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
scoreboard players set @a[score_4o1rtime=0] 4o1rswitch 0
scoreboard players set @a[l=2] 4o1able 0
scoreboard players set @a[lm=3] 4o1able 1
scoreboard players set @a[score_class=4,score_class_min=4,score_inGame_min=1,score_4o1rswitch=0] 4o1 1 {Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}
clear @a[score_4o1_min=1] iron_sword
execute @a[score_4o1_min=1,score_4o1able=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_4o1_min=1,score_4o1able=0] actionbar ["",{"text":"You do not have enough energy to cast Dashing Tempest!","color":"red","bold":true}]
replaceitem entity @a[score_4o1_min=1,score_4o1able=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
scoreboard players set @a[score_4o1_min=1,score_4o1able=0] 4o1 0
effect @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=0] speed 1 60 true
execute @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=0] ~ ~ ~ playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.75
execute @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=0] ~ ~ ~ particle cloud ~ ~ ~ 0 0 0 0.2 100 force @a
execute @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer=0] ~ ~ ~ playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.75
effect @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2] speed 0
scoreboard players set @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2] 4o1rswitch 1
scoreboard players set @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2] 4o1rtime 20
replaceitem entity @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}
xp -3L @a[score_4o1_min=1,score_4o1able_min=1,score_4o1timer_min=2]
scoreboard players set @a[score_4o1_min=1,score_4o1timer_min=2] 4o1 0
scoreboard players set @a[score_4o1=0,score_4o1timer_min=2] 4o1timer 0
scoreboard players set @a[l=6] 4o1rable 0
scoreboard players set @a[lm=7] 4o1rable 1
scoreboard players set @a[score_class=4,score_class_min=4,score_inGame_min=1,score_4o1rswitch_min=1] 4o1r 1 {Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}
clear @a[score_4o1r_min=1] iron_sword
execute @a[score_4o1r_min=1,score_4o1rable=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_4o1r_min=1,score_4o1rable=0] actionbar ["",{"text":"You do not have enough energy to cast Wind Sweep!","color":"red","bold":true}]
replaceitem entity @a[score_4o1r_min=1,score_4o1rable=0] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}
scoreboard players set @a[score_4o1r_min=1,score_4o1rable=0] 4o1r 0
execute @a[score_4o1r_min=1,score_4o1rable_min=1] ~ ~ ~ particle cloud ~ ~ ~ 0 3 0 0.35 250 force @a
execute @a[score_4o1r_min=1,score_4o1rable_min=1] ~ ~ ~ playsound item.elytra.flying neutral @a ~ ~ ~ 1 2
scoreboard players tag @a[score_4o1r_min=1,score_4o1rable_min=1] add 4o1ruser
execute @a[score_4o1r_min=1,score_4o1rable_min=1] ~ ~ ~ scoreboard players set @e[tag=!4o1ruser,r=3] 4o1rtimer 0
execute @a[score_4o1r_min=1,score_4o1rable_min=1] ~ ~ ~ scoreboard players set @e[tag=!4o1ruser,r=3] 4o1rvictim 1
scoreboard players tag @a[score_4o1r_min=1,score_4o1rable_min=1] remove 4o1ruser
scoreboard players set @a[score_4o1r_min=1,score_4o1rable_min=1] 4o1rswitch 0
replaceitem entity @a[score_4o1r_min=1,score_4o1rable_min=1] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
xp -7L @a[score_4o1r_min=1,score_4o1rable_min=1]
scoreboard players set @a[score_4o1r_min=1] 4o1r 0
effect @e[score_4o1rvictim_min=1,score_4o1rtimer=0] levitation 1 65 true
effect @e[score_4o1rvictim_min=1,score_4o1rtimer_min=2] levitation 0
scoreboard players set @e[score_4o1rvictim_min=1,score_4o1rtimer_min=2] 4o1rvictim 0
scoreboard players set @e[score_4o1rvictim=0,score_4o1rtimer_min=2] 4o1rtimer 0
scoreboard players set @a[l=4] 4d1able 0
scoreboard players set @a[lm=5] 4d1able 1
scoreboard players set @a[score_class=4,score_class_min=4,score_inGame_min=1,score_4d1drop_min=1] 4d1 1
clear @a[score_4d1_min=1] iron_sword
execute @a[score_4d1_min=1,score_4d1able=0] ~ ~ ~ playsound block.note.pling neutral @s ~ ~ ~ 1000 1
title @a[score_4d1_min=1,score_4d1able=0] actionbar ["",{"text":"You do not have enough energy to cast Bone Breaker!","color":"red","bold":true}]
replaceitem entity @a[score_4d1_min=1,score_4d1able=0,score_4o1rswitch=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
replaceitem entity @a[score_4d1_min=1,score_4d1able=0,score_4o1rswitch_min=1] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}
scoreboard players tag @a[score_4d1_min=1,score_4d1able_min=1] add 4d1user
execute @a[score_4d1_min=1,score_4d1able_min=1] ~ ~ ~ scoreboard players set @e[r=3,tag=!4d1user] disarm 11
execute @a[score_4d1_min=1,score_4d1able_min=1] ~ ~ ~ scoreboard players set @e[r=3,tag=!4d1user] stun 10
execute @a[score_4d1_min=1,score_4d1able_min=1] ~ ~ ~ playsound entity.player.big_fall neutral @a[r=3] ~ ~ ~ 1 0.75
scoreboard players tag @a[score_4d1_min=1,score_4d1able_min=1] remove 4d1user
replaceitem entity @a[score_4d1_min=1,score_4d1able_min=1,score_4o1rswitch=0] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}
replaceitem entity @a[score_4d1_min=1,score_4d1able_min=1,score_4o1rswitch_min=1] slot.hotbar.0 iron_sword 1 0 {display:{Name:"Recast: Wind Sweep"},Unbreakable:1,HideFlags:5,ench:[{id:34,lvl:1}]}
xp -5L @a[score_4d1_min=1,score_4d1able_min=1]
scoreboard players set @a 4d1 0
scoreboard players set @a 4d1drop 0
effect @a[score_class=4,score_class_min=4,score_inGame_min=1] speed 1 1 true