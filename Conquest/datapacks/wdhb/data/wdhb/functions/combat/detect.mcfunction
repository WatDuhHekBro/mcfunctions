###########
# Offhand #
###########
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:stick"}]}] add offhand
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}] add offhand
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:diamond_sword"}]}] add offhand
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] add offhand
clear @a[tag=offhand] stick
clear @a[tag=offhand] iron_sword
clear @a[tag=offhand] diamond_sword
clear @a[tag=offhand] crossbow
execute as @a[tag=offhand,scores={class=1},level=..4] at @s run function wdhb:combat/abilities/unable
execute as @a[tag=offhand,scores={class=1},level=5..] at @s run function wdhb:combat/abilities/dash
execute as @a[tag=offhand,scores={class=4},level=..9] at @s run function wdhb:combat/abilities/unable
execute as @a[tag=offhand,scores={class=4},level=10..] at @s positioned ~ ~1 ~ positioned ^ ^ ^2 run function wdhb:combat/abilities/blink
xp add @a[tag=offhand,scores={class=4},level=10..] -10 levels
execute as @a[tag=offhand] at @s run function wdhb:combat/equipment
execute as @a[tag=offhand,scores={class=5},level=..2] at @s run function wdhb:combat/abilities/unable
execute as @a[tag=offhand,scores={class=5},level=3..] at @s run function wdhb:combat/abilities/quickdraw
execute as @a[tag=offhand,scores={class=0},level=..4] at @s run function wdhb:combat/abilities/unable
execute as @a[tag=offhand,scores={class=0},level=5..] at @s run function wdhb:combat/abilities/tutorial_offhand
scoreboard players set @a[tag=offhand,scores={tutorial=201}] tutorial 202
tag @a[tag=offhand] remove offhand

########
# Drop #
########
execute as @a[scores={drop_ironsword=1..,class=1},level=..11] at @s run function wdhb:combat/abilities/unable
execute as @a[scores={drop_ironsword=1..,class=1},level=12..] at @s run function wdhb:combat/abilities/counter
execute as @a[scores={drop_ironsword=1..}] at @s run function wdhb:combat/equipment
execute as @a[scores={drop_stick=1..,class=0},level=..9] at @s run function wdhb:combat/abilities/unable
execute as @a[scores={drop_stick=1..,class=0},level=10..] at @s run function wdhb:combat/abilities/tutorial_drop
execute as @a[scores={drop_stick=1..}] at @s run function wdhb:combat/equipment
scoreboard players set @a[scores={drop_stick=1..,tutorial=203}] tutorial 204
scoreboard players reset @a[scores={drop_ironsword=1..}] drop_ironsword
scoreboard players reset @a[scores={drop_stick=1..}] drop_stick

#########
# Sneak #
#########
execute as @a[scores={sneak=1..,class=1},nbt={Inventory:[{Slot:0b,id:"minecraft:iron_sword"}],SelectedItemSlot:0},level=..0] at @s run function wdhb:combat/abilities/unable
execute as @a[scores={sneak=1..,class=1},nbt={Inventory:[{Slot:0b,id:"minecraft:iron_sword"}],SelectedItemSlot:0},level=1..] at @s run function wdhb:combat/abilities/parry
#execute as @a[scores={sneak=1..,class=4},nbt={Inventory:[{Slot:0b,id:"minecraft:diamond_sword"}],SelectedItemSlot:0},level=..0] at @s run function wdhb:combat/abilities/unable
#execute as @a[scores={sneak=1..,class=4},nbt={Inventory:[{Slot:0b,id:"minecraft:diamond_sword"}],SelectedItemSlot:0},level=1..] at @s run function wdhb:combat/abilities/parry
execute as @a[scores={sneak=1..,class=0},nbt={Inventory:[{Slot:0b,id:"minecraft:stick"}],SelectedItemSlot:0},level=..0] at @s run function wdhb:combat/abilities/unable
execute as @a[scores={sneak=1..,class=0},nbt={Inventory:[{Slot:0b,id:"minecraft:stick"}],SelectedItemSlot:0},level=1..] at @s run function wdhb:combat/abilities/tutorial_sneak
scoreboard players set @a[scores={sneak=1..,tutorial=205},nbt={Inventory:[{Slot:0b,id:"minecraft:stick"}],SelectedItemSlot:0}] tutorial 206
scoreboard players reset @a[scores={sneak=1..}] sneak