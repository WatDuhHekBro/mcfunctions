#########################################
#                                       #
# Project: BotA (Battles of the Arcane) #
# Developer: WatDuhHekBro               #
#                                       #
#########################################

scoreboard players enable @a queue
execute @a[score_queue_min=1] ~ ~ ~ function wdhb_bota:util/queue
scoreboard players set @a queue 0
#You cannot use this in game!

scoreboard players enable @a music
execute @a[score_music_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a music 0

#Teleport to cosmetics
scoreboard players enable @a hat
execute @a[score_hat_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a hat 0
#You cannot use this in game!

scoreboard players enable @a help
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"[---------------------- [","color":"blue"},{"text":"Help","color":"gold"},{"text":"] -----------------------]","color":"blue"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"(You can also click the commands to get them into your chat!)","color":"aqua","italic":true}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/info: ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/info"}},{"text":"Gives you information all about the server, its unique PvP mechanisms, and how to use each of its distinct classes.","color":"dark_aqua"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/q: ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/q"}},{"text":"Queues you up for the next match. 2 random people will be chosen.","color":"dark_aqua"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/news: ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/news"}},{"text":"Gives you the changelog on the latest update.","color":"dark_aqua"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/cstats: ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/cstats"}},{"text":"Takes a look at the play rates and win rates of all the classes.","color":"dark_aqua"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/profile: ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/profile"}},{"text":"Takes a look at your amount of games and wins.","color":"dark_aqua"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/music: ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/music"}},{"text":"Brings up a menu that toggles music.","color":"dark_aqua"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/speed: ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/speed"}},{"text":"Gives you speed in the lobby, for capturing the action more quickly.","color":"dark_aqua"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/hat: ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/hat"}},{"text":"Goes to the area where you can customize your hat.","color":"dark_aqua"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/forfeit: ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/forfeit"}},{"text":"Forfeits the match, your enemy will win. You must be in a match to use this.","color":"dark_aqua"}]
#New Command: execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"/: ","color":"yellow"},{"text":"","color":"dark_aqua"}]
execute @a[score_help_min=1] ~ ~ ~ tellraw @s ["",{"text":"[----------------------------------------------------]","color":"blue"}]
scoreboard players set @a help 0

scoreboard players enable @a cstats
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"[---- [","color":"blue"},{"text":"Stats","color":"gold"},{"text":"] ----]","color":"blue"}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"« ","color":"gold","bold":true},{"text":"Barbarian","color":"aqua","bold":true},{"text":" »","color":"gold","bold":true}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"Play Rate: ","color":"red","bold":true},{"score":{"name":"PH","objective":"barbarianGames"},"color":"gray","bold":false},{"text":".","color":"gray"},{"score":{"name":"PHdec","objective":"barbarianGames"},"color":"gray"},{"text":"%","color":"gray"}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"Win Rate: ","color":"green","bold":true},{"score":{"name":"PH","objective":"barbarianWins"},"color":"gray","bold":false},{"text":".","color":"gray"},{"score":{"name":"PHdec","objective":"barbarianWins"},"color":"gray"},{"text":"%","color":"gray"}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"« ","color":"gold","bold":true},{"text":"Hunter","color":"aqua","bold":true},{"text":" »","color":"gold","bold":true}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"Play Rate: ","color":"red","bold":true},{"score":{"name":"PH","objective":"hunterGames"},"color":"gray","bold":false},{"text":".","color":"gray"},{"score":{"name":"PHdec","objective":"hunterGames"},"color":"gray"},{"text":"%","color":"gray"}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"Win Rate: ","color":"green","bold":true},{"score":{"name":"PH","objective":"hunterWins"},"color":"gray","bold":false},{"text":".","color":"gray"},{"score":{"name":"PHdec","objective":"hunterWins"},"color":"gray"},{"text":"%","color":"gray"}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"« ","color":"gold","bold":true},{"text":"Warlock","color":"aqua","bold":true},{"text":" »","color":"gold","bold":true}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"Play Rate: ","color":"red","bold":true},{"score":{"name":"PH","objective":"warlockGames"},"color":"gray","bold":false},{"text":".","color":"gray"},{"score":{"name":"PHdec","objective":"warlockGames"},"color":"gray"},{"text":"%","color":"gray"}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"Win Rate: ","color":"green","bold":true},{"score":{"name":"PH","objective":"warlockWins"},"color":"gray","bold":false},{"text":".","color":"gray"},{"score":{"name":"PHdec","objective":"warlockWins"},"color":"gray"},{"text":"%","color":"gray"}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"« ","color":"gold","bold":true},{"text":"Rogue","color":"aqua","bold":true},{"text":" »","color":"gold","bold":true}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"Play Rate: ","color":"red","bold":true},{"score":{"name":"PH","objective":"rogueGames"},"color":"gray","bold":false},{"text":".","color":"gray"},{"score":{"name":"PHdec","objective":"rogueGames"},"color":"gray"},{"text":"%","color":"gray"}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"Win Rate: ","color":"green","bold":true},{"score":{"name":"PH","objective":"rogueWins"},"color":"gray","bold":false},{"text":".","color":"gray"},{"score":{"name":"PHdec","objective":"rogueWins"},"color":"gray"},{"text":"%","color":"gray"}]
execute @a[score_cstats_min=1] ~ ~ ~ tellraw @s ["",{"text":"[----------------]","color":"blue"}]
scoreboard players set @a cstats 0

scoreboard players enable @a profile
#execute @a[score_profile_min=1] ~ ~ ~ #top bracket
#execute @a[score_profile_min=1] ~ ~ ~  #function:stats kdr ratio
#execute @a[score_profile_min=1] ~ ~ ~  #total matches [sc obj]
#execute @a[score_profile_min=1] ~ ~ ~ #line of space
#execute @a[score_profile_min=1] ~ ~ ~  #wins [sc obj]
#execute @a[score_profile_min=1] ~ ~ ~  #losses [total matches - wins]
execute @a[score_profile_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon..."
#execute @a[score_profile_min=1] ~ ~ ~ #bottom bracket,"color":"red"}]
scoreboard players set @a profile 0

scoreboard players enable @a info
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"[---------------------- [","color":"blue"},{"text":"Info","color":"gold"},{"text":"] -----------------------]","color":"blue"}]
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"What is BotA?","color":"aqua","bold":true}]
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"Battles of the Arcane (BotA) is an attempt to recreate Minecraft PvP with one major twist: Instead of vanilla weapons and fighting, there is a new PvP system which uses magic abilities to fight!","color":"dark_aqua"}]
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"How do I use these abilities?","color":"aqua","bold":true}]
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"There are several ways to activate these abilities, but first, right clicking is not one of them (unless specified). Instead, other approaches are used, such as switching your ability to your offhand slot (Default 'F'), dropping your weapon (Default 'Q'), or sneaking.","color":"dark_aqua"}]
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"Which class should I choose?","color":"aqua","bold":true}]
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"There are several classes to choose from. To find out more about them, do ","color":"dark_aqua"},{"text":"/barbarian","color":"yellow","clickEvent":{"action":"suggest_command","value":"/barbarian"}},{"text":", ","color":"dark_aqua"},{"text":"/hunter","color":"yellow","clickEvent":{"action":"suggest_command","value":"/hunter"}},{"text":", ","color":"dark_aqua"},{"text":"/warlock","color":"yellow","clickEvent":{"action":"suggest_command","value":"/warlock"}},{"text":", or ","color":"dark_aqua"},{"text":"/rogue","color":"yellow","clickEvent":{"action":"suggest_command","value":"/rogue"}},{"text":". If you don't choose a class during the selection time, you will automatically be assigned Barbarian.","color":"dark_aqua"}]
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"How do I join a match?","color":"aqua","bold":true}]
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"There is only one game mode as of right now: Duel. To queue up for a match, do ","color":"dark_aqua"},{"text":"/q","color":"yellow","clickEvent":{"action":"suggest_command","value":"/q"}},{"text":", and once there are 2 queued people, 2 of those players will be selected at random to duel. You will have 15 seconds to pick your class, and then 2 minutes to battle. Good luck!","color":"dark_aqua"}]
execute @a[score_info_min=1] ~ ~ ~ tellraw @s ["",{"text":"[----------------------------------------------------]","color":"blue"}]
scoreboard players set @a info 0

scoreboard players enable @a news
execute @a[score_news_min=1] ~ ~ ~ scoreboard players set @s newsReceived 0
scoreboard players set @a news 0

scoreboard players enable @a speed
execute @a[score_speed_min=1] ~ ~ ~ scoreboard players tag @s[tag=!speedSwitch] add speedEnabled
execute @a[score_speed_min=1] ~ ~ ~ scoreboard players tag @s[tag=speedSwitch] remove speedEnabled
execute @a[score_speed_min=1] ~ ~ ~ tellraw @s[tag=speedEnabled] ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"]","color":"gold","bold":true},{"text":" Lobby speed is now ","color":"dark_aqua","bold":false},{"text":"enabled","color":"green"},{"text":".","color":"dark_aqua"}]
execute @a[score_speed_min=1] ~ ~ ~ tellraw @s[tag=!speedEnabled] ["",{"text":"[","color":"gold","bold":true},{"text":"Server","color":"dark_red","bold":false},{"text":"]","color":"gold","bold":true},{"text":" Lobby speed is now ","color":"dark_aqua","bold":false},{"text":"disabled","color":"red"},{"text":".","color":"dark_aqua"}]
execute @a[score_speed_min=1] ~ ~ ~ scoreboard players tag @s[tag=!speedSwitch] add speedSwitch
execute @a[score_speed_min=1] ~ ~ ~ scoreboard players tag @s[tag=speedSwitch,tag=!speedEnabled] remove speedSwitch
scoreboard players set @a speed 0

scoreboard players enable @a forfeit
execute @a[score_forfeit_min=1] ~ ~ ~ tellraw @s ["",{"text":"Coming soon...","color":"red"}]
scoreboard players set @a forfeit 0

scoreboard players enable @a barbarian
execute @a[score_barbarian_min=1] ~ ~ ~ tellraw @s ["",{"text":"[-------------------- [","color":"blue"},{"text":"Barbarian","color":"dark_purple"},{"text":"] ---------------------]","color":"blue"}]
execute @a[score_barbarian_min=1] ~ ~ ~ tellraw @s ["",{"text":"Intimidate (","color":"gray"},{"text":"Offhand, 5 mana, 3 seconds cooldown","color":"aqua"},{"text":"): ","color":"gray"},{"text":"Gives all people within a radius of 8 blocks Slowness II for 3 seconds.","color":"dark_aqua"}]
execute @a[score_barbarian_min=1] ~ ~ ~ tellraw @s ["",{"text":"Berserk (","color":"gray"},{"text":"Drop, 20 mana, 15 seconds cooldown","color":"aqua"},{"text":"): ","color":"gray"},{"text":"Gets huge buffs like Speed VII, Absorption V, and Regeneration II for 5 seconds.","color":"dark_aqua"}]
execute @a[score_barbarian_min=1] ~ ~ ~ tellraw @s ["",{"text":"Contempt (","color":"gray"},{"text":"Passive","color":"aqua"},{"text":"): ","color":"gray"},{"text":"Permanent Slowness I.","color":"dark_aqua"}]
execute @a[score_barbarian_min=1] ~ ~ ~ tellraw @s ["",{"text":"[----------------------------------------------------]","color":"blue"}]
scoreboard players set @a barbarian 0

scoreboard players enable @a hunter
execute @a[score_hunter_min=1] ~ ~ ~ tellraw @s ["",{"text":"[--------------------- [","color":"blue"},{"text":"Hunter","color":"dark_purple"},{"text":"] ----------------------]","color":"blue"}]
execute @a[score_hunter_min=1] ~ ~ ~ tellraw @s ["",{"text":"Quickdraw (","color":"gray"},{"text":"Offhand, 8 mana","color":"aqua"},{"text":"): ","color":"gray"},{"text":"Dashes a certain distance while invisible. All people caught within a radius of 3 will get disarmed. When the user stops dashing, they will get an extra arrow.","color":"dark_aqua"}]
execute @a[score_hunter_min=1] ~ ~ ~ tellraw @s ["",{"text":"Neurotoxin (","color":"gray"},{"text":"Drop, 20 mana","color":"aqua"},{"text":"): ","color":"gray"},{"text":"Drops all other arrows to tip one arrow in a special poison. If it hits, it'll deal massive damage to the target.","color":"dark_aqua"}]
execute @a[score_hunter_min=1] ~ ~ ~ tellraw @s ["",{"text":"Hunter's Eye (","color":"gray"},{"text":"Passive","color":"aqua"},{"text":"): ","color":"gray"},{"text":"Every 3 seconds, the user will get an arrow. You can only have 2 of these arrows at one time. If you shoot twice in a row, your third shot will become powered, dealing more damage.","color":"dark_aqua"}]
execute @a[score_hunter_min=1] ~ ~ ~ tellraw @s ["",{"text":"[----------------------------------------------------]","color":"blue"}]
scoreboard players set @a hunter 0

scoreboard players enable @a warlock
execute @a[score_warlock_min=1] ~ ~ ~ tellraw @s ["",{"text":"[--------------------- [","color":"blue"},{"text":"Warlock","color":"dark_purple"},{"text":"] ----------------------]","color":"blue"}]
execute @a[score_warlock_min=1] ~ ~ ~ tellraw @s ["",{"text":"Stasis (","color":"gray"},{"text":"Sneak","color":"aqua"},{"text":"): ","color":"gray"},{"text":"Locks the user into a state that cannot move or attack, but will rapidly start generating mana. It will take 1.5 seconds to leave stasis. If the user casts Stasis right next to another player, that player will get instant damage. These effects are amplified if the user has 5 or less hearts.","color":"dark_aqua"}]
execute @a[score_warlock_min=1] ~ ~ ~ tellraw @s ["",{"text":"[----------------------------------------------------]","color":"blue"}]
scoreboard players set @a warlock 0

scoreboard players enable @a rogue
execute @a[score_rogue_min=1] ~ ~ ~ tellraw @s ["",{"text":"[--------------------- [","color":"blue"},{"text":"Rogue","color":"dark_purple"},{"text":"] -----------------------]","color":"blue"}]
execute @a[score_rogue_min=1] ~ ~ ~ tellraw @s ["",{"text":"Dashing Tempest (","color":"gray"},{"text":"Offhand, 3 mana","color":"aqua"},{"text":"): ","color":"gray"},{"text":"Executes a quick ground dash. If the ability is recast within 1 second, it'll instead cast Wind Sweep (Offhand, 7 mana): Knocks up all enemies within a radius of 3 up into the air.","color":"dark_aqua"}]
execute @a[score_rogue_min=1] ~ ~ ~ tellraw @s ["",{"text":"Bone Breaker (","color":"gray"},{"text":"Drop, 4 mana","color":"aqua"},{"text":"): ","color":"gray"},{"text":"Disarms and stuns everyone in a radius of 3.","color":"dark_aqua"}]
execute @a[score_rogue_min=1] ~ ~ ~ tellraw @s ["",{"text":"[----------------------------------------------------]","color":"blue"}]
scoreboard players set @a rogue 0