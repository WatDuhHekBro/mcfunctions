scoreboard objectives add command trigger
scoreboard objectives add System dummy
scoreboard objectives modify System displayname {"text":"System","bold":true,"underlined":true,"color":"dark_aqua"}
scoreboard objectives add class dummy

scoreboard objectives add statHealth health
scoreboard objectives setdisplay list statHealth
scoreboard objectives setdisplay below_name statHealth
scoreboard objectives modify statHealth rendertype hearts

scoreboard objectives add statSneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add statDropIronSword minecraft.dropped:minecraft.iron_sword
scoreboard objectives add statDropDiamondAxe minecraft.dropped:minecraft.diamond_axe
scoreboard objectives add statClick dummy

team add Lobby
team modify Lobby color gold
team modify Lobby collisionRule never
team modify Lobby deathMessageVisibility always
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility always
team modify Lobby seeFriendlyInvisibles true

team add Red
team modify Red color red
team modify Red collisionRule never
team modify Red deathMessageVisibility always
team modify Red friendlyFire false
team modify Red nametagVisibility hideForOtherTeams
team modify Red seeFriendlyInvisibles true

team add Blue
team modify Blue color blue
team modify Blue collisionRule never
team modify Blue deathMessageVisibility always
team modify Blue friendlyFire false
team modify Blue nametagVisibility hideForOtherTeams
team modify Blue seeFriendlyInvisibles true
