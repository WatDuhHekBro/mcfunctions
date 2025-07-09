replaceitem entity @s[scores={class=0}] hotbar.0 stick{display:{Name:'{"text":"Training Rod","italic":false}'}}

replaceitem entity @s[scores={class=1}] hotbar.0 iron_sword{Unbreakable:1,HideFlags:4}
#replaceitem entity @s[scores={class=1}] hotbar.1 bow{Unbreakable:1,HideFlags:4}
replaceitem entity @s[scores={class=1}] armor.feet chainmail_boots{Unbreakable:1,HideFlags:5,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @s[scores={class=1}] armor.legs chainmail_leggings{Unbreakable:1,HideFlags:5,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @s[scores={class=1}] armor.chest chainmail_chestplate{Unbreakable:1,HideFlags:5,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

replaceitem entity @s[scores={class=4}] hotbar.0 diamond_sword{Unbreakable:1,HideFlags:4}

replaceitem entity @s[scores={class=5}] hotbar.0 crossbow{Unbreakable:1,HideFlags:4}

##############
# Team Stuff #
##############
replaceitem entity @s[team=red] armor.head red_wool{HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @s[team=blue] armor.head blue_wool{HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
clear @s[team=!red,team=!blue] #minecraft:wool