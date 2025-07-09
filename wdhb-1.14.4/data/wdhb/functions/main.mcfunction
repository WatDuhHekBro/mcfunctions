###########
# General #
###########
xp add @a[tag=mage] 1
xp add @a[tag=hunter] 1

execute as @a[tag=mage,nbt={SelectedItem:{id:"minecraft:stick"},SelectedItemSlot:0}] run title @s[scores={spell=1}] actionbar [{"text":"Spell: ","color":"gray","bold":true},{"text":"Blink","color":"dark_purple","bold":false},{"text":" (5 XP)","color":"dark_gray","bold":false}]
execute as @a[tag=mage,nbt={SelectedItem:{id:"minecraft:stick"},SelectedItemSlot:0}] run title @s[scores={spell=2}] actionbar [{"text":"Spell: ","color":"gray","bold":true},{"text":"Zap","color":"yellow","bold":false},{"text":" (7 XP)","color":"dark_gray","bold":false}]
execute as @a[tag=mage,nbt={SelectedItem:{id:"minecraft:stick"},SelectedItemSlot:0}] run title @s[scores={spell=3}] actionbar [{"text":"Spell: ","color":"gray","bold":true},{"text":"Burn","color":"red","bold":false},{"text":" (4 XP)","color":"dark_gray","bold":false}]
execute as @a[tag=mage,nbt={SelectedItem:{id:"minecraft:stick"},SelectedItemSlot:0}] run title @s[scores={spell=4}] actionbar [{"text":"Spell: ","color":"gray","bold":true},{"text":"Heal","color":"green","bold":false},{"text":" (6 XP)","color":"dark_gray","bold":false}]
execute as @a[tag=mage,nbt={SelectedItem:{id:"minecraft:stick"},SelectedItemSlot:0}] run title @s[scores={spell=5}] actionbar [{"text":"Spell: ","color":"gray","bold":true},{"text":"Combust","color":"gold","bold":false},{"text":" (10 XP)","color":"dark_gray","bold":false}]
execute as @a[tag=mage,nbt={SelectedItem:{id:"minecraft:stick"},SelectedItemSlot:0}] run title @s[scores={spell=6}] actionbar [{"text":"Spell: ","color":"gray","bold":true},{"text":"Transmute","color":"dark_aqua","bold":false},{"text":" (35 XP)","color":"dark_gray","bold":false}]

effect give @a[tag=hunter,scores={swim=1..}] invisibility 1 0 true
effect clear @a[tag=hunter,scores={swim=..0}] invisibility
effect give @a[tag=hunter,scores={swim=1..}] dolphins_grace 1 0 true
effect clear @a[tag=hunter,scores={swim=..0}] dolphins_grace
effect give @a[tag=hunter,scores={swim=1..}] conduit_power 1 0 true
effect clear @a[tag=hunter,scores={swim=..0}] conduit_power
scoreboard players add @a[tag=hunter] timer 1
execute as @a[tag=hunter] at @s if score @s timer matches 30.. run effect give @s regeneration 1 2 true
execute as @a[tag=hunter] at @s if score @s timer matches 30.. run scoreboard players set @s timer 0
scoreboard players set @a[tag=hunter,scores={swim=..0}] timer 0
scoreboard players set @a[tag=hunter] swim 0
scoreboard players reset @a[tag=!hunter] swim

execute as @a[tag=hunter,nbt={SelectedItem:{id:"minecraft:trident"},SelectedItemSlot:0}] run title @s[scores={spell=1},tag=battle] actionbar [{"text":"Mode: ","color":"gray","bold":true},{"text":"Battle","color":"red","bold":false}]
execute as @a[tag=hunter,nbt={SelectedItem:{id:"minecraft:trident"},SelectedItemSlot:0}] run title @s[scores={spell=1},tag=!battle] actionbar [{"text":"Mode: ","color":"gray","bold":true},{"text":"Hunter","color":"dark_gray","bold":false}]
execute as @a[tag=hunter,nbt={SelectedItem:{id:"minecraft:trident"},SelectedItemSlot:0}] run title @s[scores={spell=2}] actionbar [{"text":"Spell: ","color":"gray","bold":true},{"text":"Call Storm","color":"blue","bold":false},{"text":" (40 XP)","color":"dark_gray","bold":false}]
execute as @a[tag=hunter,nbt={SelectedItem:{id:"minecraft:trident"},SelectedItemSlot:0}] run title @s[scores={spell=3}] actionbar [{"text":"Spell: ","color":"gray","bold":true},{"text":"Rage","color":"dark_red","bold":false},{"text":" (15 XP)","color":"dark_gray","bold":false}]
execute as @a[tag=hunter,nbt={SelectedItem:{id:"minecraft:trident"},SelectedItemSlot:0}] run title @s[scores={spell=4}] actionbar [{"text":"Spell: ","color":"gray","bold":true},{"text":"Power Cook","color":"dark_aqua","bold":false},{"text":" (35 XP)","color":"dark_gray","bold":false}]

###########
# Trigger #
###########
scoreboard players enable @a[tag=master] class
tag @a[scores={class=1}] add mage
tag @a[scores={class=1}] remove hunter
tag @a[scores={class=1}] remove battle
execute as @a[scores={class=1}] at @s run replaceitem entity @s hotbar.0 stick
tag @a[scores={class=2}] add hunter
tag @a[scores={class=2}] add battle
tag @a[scores={class=2}] remove mage
execute as @a[scores={class=2}] at @s run function wdhb:hunter/weapon
scoreboard players set @a[scores={class=1..}] spell 1
scoreboard players set @a class 0

###########
# Weather #
###########
execute if score weather timer matches 2.. run weather thunder
execute if score weather timer matches 1 run weather clear
execute if score weather timer matches 1 run tellraw @a [{"text":"The storm has subsided.","color":"gray"}]
execute if score weather timer matches 1.. run scoreboard players remove weather timer 1

###########
# Offhand #
###########
tag @a[tag=mage,nbt={Inventory:[{Slot:-106b,id:"minecraft:stick"}]}] add offhand
tag @a[tag=hunter,nbt={Inventory:[{Slot:-106b,id:"minecraft:trident"}]}] add offhand
replaceitem entity @a[tag=offhand] weapon.offhand air

execute as @a[tag=mage,tag=offhand,level=..4,scores={spell=1}] at @s run function wdhb:unable
execute as @a[tag=mage,tag=offhand,level=5..,scores={spell=1}] at @s positioned ~ ~1 ~ positioned ^ ^ ^3 run function wdhb:mage/blink
xp add @a[tag=mage,tag=offhand,level=5..,scores={spell=1}] -5 levels

execute as @a[tag=mage,tag=offhand,level=..6,scores={spell=2}] at @s run function wdhb:unable
execute as @a[tag=mage,tag=offhand,level=7..,scores={spell=2}] at @s positioned ~ ~1 ~ positioned ^ ^ ^3 run function wdhb:mage/zap
xp add @a[tag=mage,tag=offhand,level=7..,scores={spell=2}] -7 levels

execute as @a[tag=mage,tag=offhand,level=..3,scores={spell=3}] at @s run function wdhb:unable
execute as @a[tag=mage,tag=offhand,level=4..,scores={spell=3}] at @s run function wdhb:mage/burn
xp add @a[tag=mage,tag=offhand,level=4..,scores={spell=3}] -4 levels

execute as @a[tag=mage,tag=offhand,level=..5,scores={spell=4}] at @s run function wdhb:unable
execute as @a[tag=mage,tag=offhand,level=6..,scores={spell=4}] at @s run function wdhb:mage/heal
xp add @a[tag=mage,tag=offhand,level=6..,scores={spell=4}] -6 levels

execute as @a[tag=mage,tag=offhand,level=..9,scores={spell=5}] at @s run function wdhb:unable
execute as @a[tag=mage,tag=offhand,level=10..,scores={spell=5}] at @s run function wdhb:mage/combust
xp add @a[tag=mage,tag=offhand,level=10..,scores={spell=5}] -10 levels

execute as @a[tag=mage,tag=offhand,level=..34,scores={spell=6}] at @s run function wdhb:unable
execute as @a[tag=mage,tag=offhand,level=35..,scores={spell=6}] at @s run function wdhb:mage/transmute
xp add @a[tag=mage,tag=offhand,level=35..,scores={spell=6}] -35 levels

execute as @a[tag=hunter,tag=offhand,scores={spell=1}] at @s run function wdhb:hunter/swap

execute as @a[tag=hunter,tag=offhand,level=..39,scores={spell=2}] at @s run function wdhb:unable
execute as @a[tag=hunter,tag=offhand,level=40..,scores={spell=2}] at @s run function wdhb:hunter/storm
xp add @a[tag=hunter,tag=offhand,level=40..,scores={spell=2}] -40 levels

execute as @a[tag=hunter,tag=offhand,level=..14,scores={spell=3}] at @s run function wdhb:unable
execute as @a[tag=hunter,tag=offhand,level=15..,scores={spell=3}] at @s run function wdhb:hunter/rage
xp add @a[tag=hunter,tag=offhand,level=15..,scores={spell=3}] -15 levels

execute as @a[tag=hunter,tag=offhand,level=..34,scores={spell=4}] at @s run function wdhb:unable
execute as @a[tag=hunter,tag=offhand,level=35..,scores={spell=4}] at @s run function wdhb:hunter/cook
xp add @a[tag=hunter,tag=offhand,level=35..,scores={spell=4}] -35 levels

execute as @a[tag=mage,tag=offhand] at @s run replaceitem entity @s hotbar.0 stick
execute as @a[tag=hunter,tag=offhand] at @s run function wdhb:hunter/weapon
tag @a[tag=offhand] remove offhand

########
# Drop #
########
# drop_stick = minecraft.dropped:minecraft.stick
# drop_trident = minecraft.dropped:minecraft.trident
tag @a[tag=mage,nbt={SelectedItemSlot:0},scores={drop_stick=1..}] add drop
tag @a[tag=hunter,nbt={SelectedItemSlot:0},scores={drop_trident=1..}] add drop
execute as @a[tag=drop,tag=mage] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:stick"}},limit=1,sort=nearest,distance=..10]
execute as @a[tag=drop,tag=hunter] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:trident"}},limit=1,sort=nearest,distance=..10]
scoreboard players add @a[tag=drop] spell 1
scoreboard players set @a[tag=mage,scores={spell=7..}] spell 1
scoreboard players set @a[tag=hunter,scores={spell=5..}] spell 1
execute as @a[tag=drop] at @s run playsound block.dispenser.dispense neutral @s ~ ~ ~ 1 2
execute as @a[tag=drop,tag=mage] at @s run replaceitem entity @s hotbar.0 stick
execute as @a[tag=drop,tag=hunter] at @s run function wdhb:hunter/weapon
tag @a[tag=drop] remove drop
scoreboard players reset @a drop_stick
scoreboard players reset @a drop_trident