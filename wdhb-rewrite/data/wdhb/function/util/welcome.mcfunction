tellraw @a[scores={language=0}] [{"text":"Server » ","color":"blue"},{"selector":"@s","color":"green"},{"text":" has joined for the first time! Welcome to the server!","color":"dark_aqua"}]

tellraw @a[scores={language=100}] [{"text":"Gváustre » ","color":"blue"},{"text":"Cérnikovnayá dmérkhtı ","color":"dark_aqua"},{"selector":"@s","color":"green"},{"text":"-eu","color":"green"},{"text":"! Adnárkalǿzinkhe!","color":"dark_aqua"}]

tellraw @s [{"text":"Server » ","color":"blue"},{"text":"To get started, do ","color":"dark_aqua","bold":false},{"text":"/help","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger command set 1"},"bold":false},{"text":".","color":"dark_aqua","bold":false},{"text":"\nServer » ","color":"blue"},{"text":"If you are a returning player, do ","color":"dark_aqua","bold":false},{"text":"/news","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger command set 2"},"bold":false},{"text":" to see what has changed.","color":"dark_aqua","bold":false}]

#function wdhb:general/playerinit

tag @s add hasWelcome
