scoreboard objectives setdisplay sidebar Wins
execute @a[score_inGame=0] ~ ~ ~ /title @s actionbar ["",{"text":"You have ","color":"aqua"},{"score":{"name":"@s","objective":"Wins"},"color":"gold","bold":true},{"text":" win(s)","color":"gold","bold":true},{"text":" in","color":"aqua","bold":false},{"text":" SnD!","color":"red","bold":true}]
