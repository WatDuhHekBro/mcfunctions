#######################################
#                                     #
# Project: AFFA (Arcane Free For All) #
# Developer: WatDuhHekBro             #
#                                     #
#######################################

scoreboard players tag @a add BowOffhand {Inventory:[{Slot:-106b,id:"minecraft:bow"}]}
clear @a[tag=BowOffhand] bow
replaceitem entity @a[tag=BowOffhand] slot.hotbar.1 bow 1 0 {Unbreakable:1,display:{Name:"Bow"},HideFlags:4}
scoreboard players tag @a remove BowOffhand