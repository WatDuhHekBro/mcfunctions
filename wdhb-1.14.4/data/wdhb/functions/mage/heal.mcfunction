effect give @a[distance=..7] instant_health 1 0 true
execute as @a[distance=..7] at @s run particle totem_of_undying ~ ~1 ~ 0 0 0 0.5 100 force
execute as @a[distance=..7] at @s run playsound entity.player.levelup neutral @s ~ ~ ~ 1 1
execute as @a[distance=..7] at @s run title @s actionbar [{"selector":"@p[tag=mage]","color":"light_purple"},{"text":" has healed you.","color":"light_purple"}]