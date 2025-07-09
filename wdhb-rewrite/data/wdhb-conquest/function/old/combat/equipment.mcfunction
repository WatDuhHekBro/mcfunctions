item replace entity @s[scores={class=0}] hotbar.0 with stick
#{display:{Name:'{"text":"Training Rod","italic":false}'}}

item replace entity @s[scores={class=1}] hotbar.0 with iron_sword
#{Unbreakable:1,HideFlags:4}
#replaceitem entity @s[scores={class=1}] hotbar.1 with bow
#{Unbreakable:1,HideFlags:4}
item replace entity @s[scores={class=1}] armor.feet with chainmail_boots
#{Unbreakable:1,HideFlags:5,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[scores={class=1}] armor.legs with chainmail_leggings
#{Unbreakable:1,HideFlags:5,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[scores={class=1}] armor.chest with chainmail_chestplate
#{Unbreakable:1,HideFlags:5,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

item replace entity @s[scores={class=4}] hotbar.0 with diamond_sword
#{Unbreakable:1,HideFlags:4}

item replace entity @s[scores={class=5}] hotbar.0 with crossbow
#{Unbreakable:1,HideFlags:4}

##############
# Team Stuff #
##############
item replace entity @s[team=red] armor.head with red_wool
#{HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[team=blue] armor.head with blue_wool
#{HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
clear @s[team=!red,team=!blue] #minecraft:wool
