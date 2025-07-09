#################
# Stick Offhand #
#################
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:stick"}]}] add wandoffhand
clear @a[tag=wandoffhand] stick
execute as @a[tag=wandoffhand] at @s positioned ~ ~1 ~ run function wdhb_arcane:raycasting/basic_cast
replaceitem entity @a[tag=wandoffhand] hotbar.0 stick{Unbreakable:1} 1
tag @a[tag=wandoffhand] remove wandoffhand

##################
# Bamboo Offhand #
##################
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bamboo"}]}] add wandwarpoffhand
clear @a[tag=wandwarpoffhand] bamboo
execute as @a[tag=wandwarpoffhand] at @s positioned ~ ~1 ~ run function wdhb_arcane:raycasting/warp_cast
replaceitem entity @a[tag=wandwarpoffhand] hotbar.0 bamboo{Unbreakable:1} 1
tag @a[tag=wandwarpoffhand] remove wandwarpoffhand



#################
# Sword Offhand #
#################
#tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}] add swordoffhand
#clear @a[tag=swordoffhand] iron_sword
#execute as @a[tag=swordoffhand] at @s positioned ~ ~1 ~ run function wdhb_arcane:raycasting/basic_cast
#replaceitem entity @a[tag=swordoffhand] hotbar.0 iron_sword{Unbreakable:1} 1
#tag @a[tag=swordoffhand] remove swordoffhand

###############
# Bow Offhand #
###############
#scoreboard players tag @a add bowoffhand {Inventory:[{Slot:-106b,id:"minecraft:bow"}]}
#clear @a[tag=bowoffhand] bow
#execute @a[tag=bowoffhand] ~ ~ ~ function wdhb:interdimensional_pvp/abilities/bowoffhand
#replaceitem entity @a[tag=bowoffhand] slot.hotbar.1 bow 1 0 {Unbreakable:1}
#scoreboard players tag @a[tag=bowoffhand] remove bowoffhand

##############
# Sword Drop #
##############
# sworddrop = stat.drop.minecraft.iron_sword
#execute @a[score_sworddrop_min=1] ~ ~ ~ function wdhb:interdimensional_pvp/abilities/sworddrop
#replaceitem entity @a[score_sworddrop_min=1] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1}
#scoreboard players set @a[score_sworddrop_min=1] sworddrop 0

############
# Bow Drop #
############
# bowdrop = stat.drop.minecraft.bow
#execute @a[score_bowdrop_min=1] ~ ~ ~ function wdhb:interdimensional_pvp/abilities/bowdrop
#replaceitem entity @a[score_bowdrop_min=1] slot.hotbar.1 bow 1 0 {Unbreakable:1}
#scoreboard players set @a[score_bowdrop_min=1] bowdrop 0