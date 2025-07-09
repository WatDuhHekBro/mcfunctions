execute as @s[tag=1] run tellraw @a [{"text":"Command Post #1 (Desert) has been ","color":"dark_aqua"},{"text":"Neutralized","color":"white"},{"text":"!","color":"dark_aqua"}]
execute as @s[tag=2] run tellraw @a [{"text":"Command Post #2 (Forest) has been ","color":"dark_aqua"},{"text":"Neutralized","color":"white"},{"text":"!","color":"dark_aqua"}]
execute as @s[tag=3] run tellraw @a [{"text":"Command Post #3 (Tundra) has been ","color":"dark_aqua"},{"text":"Neutralized","color":"white"},{"text":"!","color":"dark_aqua"}]
execute as @s[tag=4] run tellraw @a [{"text":"Command Post #4 (The End) has been ","color":"dark_aqua"},{"text":"Neutralized","color":"white"},{"text":"!","color":"dark_aqua"}]
execute as @a at @s run playsound block.note_block.bell neutral @s ~ ~ ~ 1 1