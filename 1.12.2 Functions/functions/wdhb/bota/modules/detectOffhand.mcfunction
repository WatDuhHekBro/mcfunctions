#- The actual detecting of the offhand slot -#
scoreboard players tag @a add activeOffhand {Inventory:[{Slot:-106b,id:"minecraft:wooden_sword"}]}
scoreboard players tag @a add activeOffhand {Inventory:[{Slot:-106b,id:"minecraft:wooden_sword"}]}
scoreboard players tag @a add activeOffhand {Inventory:[{Slot:-106b,id:"minecraft:wooden_sword"}]}
scoreboard players tag @a add activeOffhand {Inventory:[{Slot:-106b,id:"minecraft:wooden_sword"}]}
scoreboard players tag @a add activeOffhand {Inventory:[{Slot:-106b,id:"minecraft:wooden_sword"}]}
scoreboard players tag @a add activeOffhand {Inventory:[{Slot:-106b,id:"minecraft:wooden_sword"}]}
clear @a[tag=activeOffhand] wooden_sword

#- The set of abilities tied to this function -#
function wdhb:abilities/offhandTier1/slot1

#- The cleanup method -#
replaceitem entity @a[tag=activeOffhand] slot.hotbar.0 wooden_sword 1 0 {Unbreakable:1,display:{Name:"Training Sword"},HideFlags:4}
scoreboard players tag @a[tag=activeOffhand] remove activeOffhand