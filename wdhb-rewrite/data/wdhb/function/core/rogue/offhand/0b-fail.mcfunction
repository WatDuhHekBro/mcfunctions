playsound minecraft:block.note_block.pling neutral @s ~ ~ ~ 1000 1
title @s actionbar ["",{"text":"You do not have enough mana to cast Dashing Tempest!","color":"red","bold":true}]
item replace entity @s weapon.offhand with minecraft:air
item replace entity @s weapon.mainhand with minecraft:iron_sword
