#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

scoreboard players set @e[type=Armor_Stand,name=Battle] realTimer 1200
scoreboard players set Battle Timer 60
tellraw @a ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"] ","color":"gold","bold":true},{"text":"A match has begun!","color":"dark_aqua"}]
scoreboard players tag @e[x=-8,y=36,z=27,dx=17,dy=5,dz=17] add inBattle

#The fallback kit could be random in the future.
scoreboard players set @a[tag=inBattle,score_class=0] class 1
scoreboard players set @a[tag=inBattle] inGame 1

#Give kits their respective items.
#replaceitem entity @a[tag=inBattle,score_class=1,score_class_min=1] slot.armor.chest iron_chestplate 1 0 {Unbreakable:1}
#replaceitem entity @a[tag=inBattle,score_class=1,score_class_min=1] slot.armor.legs iron_leggings 1 0 {Unbreakable:1}
#replaceitem entity @a[tag=inBattle,score_class=1,score_class_min=1] slot.armor.feet iron_boots 1 0 {Unbreakable:1}
replaceitem entity @a[tag=inBattle,score_class=1,score_class_min=1] slot.hotbar.0 diamond_axe 1 0 {Unbreakable:1,display:{Name:"Barbarian's Axe"},HideFlags:4}

scoreboard players set @a[tag=inBattle] 2p 0
#replaceitem entity @a[tag=inBattle,score_class=2,score_class_min=2] slot.armor.chest chainmail_chestplate 1 0 {Unbreakable:1}
#replaceitem entity @a[tag=inBattle,score_class=2,score_class_min=2] slot.armor.legs chainmail_leggings 1 0 {Unbreakable:1}
#replaceitem entity @a[tag=inBattle,score_class=2,score_class_min=2] slot.armor.feet chainmail_boots 1 0 {Unbreakable:1}
replaceitem entity @a[tag=inBattle,score_class=2,score_class_min=2] slot.hotbar.0 bow 1 0 {Unbreakable:1,display:{Name:"Hunter's Bow"},HideFlags:4}

#replaceitem entity @a[tag=inBattle,score_class=3,score_class_min=3] slot.armor.chest golden_chestplate 1 0 {Unbreakable:1}
#replaceitem entity @a[tag=inBattle,score_class=3,score_class_min=3] slot.armor.legs golden_leggings 1 0 {Unbreakable:1}
#replaceitem entity @a[tag=inBattle,score_class=3,score_class_min=3] slot.armor.feet golden_boots 1 0 {Unbreakable:1}
replaceitem entity @a[tag=inBattle,score_class=3,score_class_min=3] slot.hotbar.0 stick 1 0 {Unbreakable:1}

#replaceitem entity @a[tag=inBattle,score_class=4,score_class_min=4] slot.armor.chest leather_chestplate 1 0 {Unbreakable:1}
#replaceitem entity @a[tag=inBattle,score_class=4,score_class_min=4] slot.armor.legs leather_leggings 1 0 {Unbreakable:1}
#replaceitem entity @a[tag=inBattle,score_class=4,score_class_min=4] slot.armor.feet leather_boots 1 0 {Unbreakable:1}
replaceitem entity @a[tag=inBattle,score_class=4,score_class_min=4] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,display:{Name:"Blade of the Tempest"},HideFlags:4}

effect @a[tag=inBattle] health_boost 1000000 4 true
effect @a[tag=inBattle] instant_health 1 100 true
tp @r[tag=inBattle] 17 44 35 90 0
scoreboard teams join Red @a[tag=inBattle,x=17,y=44,z=35,dy=1]
scoreboard teams join Blue @a[tag=inBattle,x=-8,y=36,z=27,dx=17,dy=5,dz=17]
tp @a[tag=inBattle,x=-8,y=36,z=27,dx=17,dy=5,dz=17] -17 44 35 -90 0
scoreboard players set @e[type=Armor_Stand] battleInProgress 2