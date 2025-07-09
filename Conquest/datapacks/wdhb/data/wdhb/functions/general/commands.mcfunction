# Index
# --------------------------------
# [-200,-101]: /help class <class>
# [-100,-1]: /class <class>
# 0: None
# 1: /help
# 2: /profile
# 3: /stats
# 4: /cosmetics
# 5: /news
# 6: /discord
# 7: /queue
# 8: /help info
# 9: /help misc
# 10: /help combat
# 11: /class || /help class
# 12: /help conquest
# 13: /leave
# [101,200]: /lang <language>
# [201,300]: /help conquest <page>

scoreboard players enable @a commands

#-----#

execute as @a[scores={commands=1}] run tellraw @s [{"text":"","color":"dark_aqua"},{"text":"[---------------------- [","color":"blue"},{"text":"Help","color":"gold"},{"text":"] -----------------------]","color":"blue"},{"text":"\n","extra":[{"text":"(You can also click the commands to run them.)","color":"aqua","italic":true}]},{"text":"\n","extra":[{"text":"/help info","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 8"}}]},{"text":" - Gives you general information about the server."},{"text":"\n","extra":[{"text":"/help combat","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 10"}}]},{"text":" - Explains how the combat system works."},{"text":"\n","extra":[{"text":"/help conquest","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 12"}}]},{"text":" - Gives an overview on how to play Conquest."},{"text":"\n","extra":[{"text":"/help class <class>","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 11"}}]},{"text":" - Gives you specific information on how to use each class."},{"text":"\n","extra":[{"text":"/help misc","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 9"}}]},{"text":" - Gives you other information."},{"text":"\n","extra":[{"text":"/class <class> (/c)","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 11"}}]},{"text":" - Switches your class as long as you're not in battle or you're near a command post."},{"text":"\n","extra":[{"text":"/queue (/q)","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 7"}}]},{"text":" - Queues you up to fight in a duel."},{"text":"\n","extra":[{"text":"/cosmetics (/cm)","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 4"}}]},{"text":" - Allows you to equip cosmetics in the lobby."},{"text":"\n","extra":[{"text":"/profile","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 2"}}]},{"text":" - Shows your KDR and WL ratios."},{"text":"\n","extra":[{"text":"/stats","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 3"}}]},{"text":" - Shows stats about the play/win rates of each class."},{"text":"\n","extra":[{"text":"/news","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 5"}}]},{"text":" - Gives you the changelog on the latest update."},{"text":"\n","extra":[{"text":"/discord","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger commands set 6"}}]},{"text":" - Shows you the clickable Discord link."},{"text":"[----------------------------------------------------]","color":"blue"}]

execute as @a[scores={commands=2}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

execute as @a[scores={commands=3}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

execute as @a[scores={commands=4}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

execute as @a[scores={commands=5}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

execute as @a[scores={commands=6}] run tellraw @s [{"text":"Discord Link: ","color":"yellow"},{"text":"https://discord.gg/B2Fs58b","color":"gold","clickEvent":{"action":"open_url","value":"https://discord.gg/B2Fs58b"},"hoverEvent":{"action":"show_text","value":[{"text":"Suspicious Looking Link","color":"red"}]}}]

execute as @a[scores={commands=7}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

execute as @a[scores={commands=8}] run tellraw @s [{"text":"[---------------------- [","color":"blue"},{"text":"Info","color":"gold"},{"text":"] -----------------------]","color":"blue"}]
execute as @a[scores={commands=8}] run tellraw @s [{"text":"What is BotA?","color":"aqua","bold":true}]
execute as @a[scores={commands=8}] run tellraw @s [{"text":"Battles of the Arcane (BotA) is an attempt to recreate Minecraft PvP with one major twist: Instead of vanilla weapons and fighting, there is a new PvP system which uses magic abilities to fight!","color":"dark_aqua"}]
execute as @a[scores={commands=8}] run tellraw @s [{"text":"How do I use these abilities?","color":"aqua","bold":true}]
execute as @a[scores={commands=8}] run tellraw @s [{"text":"There are several ways to activate these abilities, but first, right clicking is not one of them (unless specified). Instead, other approaches are used, such as switching your ability to your offhand slot (Default 'F'), dropping your weapon (Default 'Q'), or sneaking.","color":"dark_aqua"}]
execute as @a[scores={commands=8}] run tellraw @s [{"text":"[----------------------------------------------------]","color":"blue"}]

execute as @a[scores={commands=9}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

execute as @a[scores={commands=10}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

execute as @a[scores={commands=11}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

execute as @a[scores={commands=12}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

execute as @a[scores={commands=13}] run tellraw @a [{"text":"Server » ","color":"blue"},{"selector":"@s","color":"yellow"},{"text":" has left the game in progress and has forfeited the match!","color":"gray"}]
execute as @a[scores={commands=13}] run function wdhb:general/playerinit

#-----#

scoreboard players set @a[scores={commands=100}] language 0
scoreboard players set @a[scores={commands=101}] language 1
scoreboard players set @a[scores={commands=102}] language 2
scoreboard players set @a[scores={commands=103}] language 3
scoreboard players set @a[scores={commands=104}] language 4
scoreboard players set @a[scores={commands=200}] language 100

execute as @a[scores={language=..-1}] run tellraw @s [{"text":"Invalid language ID ","color":"dark_aqua"},{"score":{"name":"@s","objective":"language"},"color":"aqua"},{"text":"!","color":"dark_aqua"}]
scoreboard players set @a[scores={language=..-1}] language 0
execute as @a[scores={language=101..}] run tellraw @s [{"text":"Invalid language ID ","color":"dark_aqua"},{"score":{"name":"@s","objective":"language"},"color":"aqua"},{"text":"!","color":"dark_aqua"}]
scoreboard players set @a[scores={language=101..}] language 0

#-----#

execute as @a[scores={commands=201..}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

#-----#

execute as @a[scores={commands=-100..-1},tag=cantchange] at @s run playsound block.note_block.pling neutral @s ~ ~ ~
execute as @a[scores={commands=-100..-1},tag=cantchange] at @s run tellraw @s [{"text":"You can only change your class while near your team's command posts or while not in the arena!","color":"red"}]

execute as @a[scores={commands=-1},tag=!cantchange] at @s run scoreboard players set @s class 1
execute as @a[scores={commands=-1},tag=!cantchange] at @s run tellraw @s [{"text":"Class successfully changed to ","color":"green"},{"text":"Soldier","color":"gold"},{"text":"!","color":"green"}]

tag @a remove cantchange

#-----#

execute as @a[scores={commands=..-101}] run tellraw @s [{"text":"Coming Soon™","color":"red"}]

#-----#

scoreboard players set @a commands 0