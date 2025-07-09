###############
# New Players #
###############
execute as @a[tag=!welcome] at @s run tellraw @a[scores={language=0}] [{"text":"Server » ","color":"blue"},{"selector":"@s","color":"green"},{"text":" has joined for the first time! Welcome to the server!","color":"dark_aqua"}]
execute as @a[tag=!welcome] at @s run tellraw @a[scores={language=100}] [{"text":"Gváustre » ","color":"blue"},{"text":"Cérnikovnayá dmérkhtı ","color":"dark_aqua"},{"selector":"@s","color":"green"},{"text":"-eu","color":"green"},{"text":"! Adnárkalǿzinkhe!","color":"dark_aqua"}]
execute as @a[tag=!welcome] at @s run tellraw @s [{"text":"Server » ","color":"blue"},{"text":"To get started, do ","color":"dark_aqua","bold":false},{"text":"/help","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 1"},"bold":false},{"text":".","color":"dark_aqua","bold":false},{"text":"\nServer » ","color":"blue"},{"text":"If you are a returning player, do ","color":"dark_aqua","bold":false},{"text":"/news","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 2"},"bold":false},{"text":" to see what has changed.","color":"dark_aqua","bold":false}]
execute as @a[tag=!welcome] at @s run function wdhb:general/playerinit
tag @a[tag=!welcome] add welcome

#####################
# Returning Players #
#####################
execute as @a[scores={leave=1..,language=0}] at @s run tellraw @s [{"text":"Server » ","color":"blue"},{"text":"Welcome back!","color":"gray"}]
execute as @a[scores={leave=1..,language=100}] at @s run tellraw @s [{"text":"Gváustre » ","color":"blue"},{"text":"Adnárkalǿzneukhe!","color":"gray"}]
execute as @a[scores={leave=1..}] at @s run function wdhb:general/playerinit
scoreboard players reset @a[scores={leave=1..}] leave

######################
# General Management #
######################
#kill @e[type=item]
kill @e[type=item,nbt={Item:{id:"minecraft:stick"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]
kill @e[type=arrow,nbt={inGround:1b}]
xp set @a[level=20..] 20 levels
effect give @a saturation 2 0 true
function wdhb:general/lobby
function wdhb:general/commands
#clear @a[x=0,y=51,z=0,dx=0,dy=0,dz=0]
execute as @a[tag=!tutorial] at @s run function wdhb:general/tutorial

############
# Security #
############
gamemode adventure @a[gamemode=creative,tag=!perm_creative]
gamemode adventure @a[gamemode=spectator,tag=!perm_spectator]
gamemode adventure @a[gamemode=survival]
function wdhb:general/multiplayer
kill @e[type=tnt]