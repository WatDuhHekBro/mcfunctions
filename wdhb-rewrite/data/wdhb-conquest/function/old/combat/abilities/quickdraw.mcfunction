#replaceitem entity @s hotbar.0 crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:4}
item replace entity @s hotbar.0 with crossbow
playsound entity.bat.takeoff neutral @s ~ ~ ~ 1 1
xp add @s -3 levels
