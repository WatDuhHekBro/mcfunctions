#- Scan Function -#
scoreboard players set red_active system 0
scoreboard players set blue_active system 0
execute as @a[team=red,x=-50,y=3050,z=74,dx=101,dy=50,dz=101] at @s run scoreboard players add red_active system 1
execute as @a[team=blue,x=-50,y=3050,z=74,dx=101,dy=50,dz=101] at @s run scoreboard players add blue_active system 1

#- Kill Players out of Bounds -#
kill @a[x=-51,y=100,z=3049,dx=102,dy=0,dz=102]

#- Give Respawning Players Equipment -#
execute as @a[x=0,y=8,z=3100,dx=0,dy=0,dz=0] at @s run function wdhb:combat/equipment
execute as @a[x=0,y=2,z=3100,dx=0,dy=0,dz=0] at @s run function wdhb:combat/equipment

#- For all players in the arena who attempts to change their class, unless they're near a post, they can't change their class -#
execute as @a[scores={commands=..-1},x=-50,y=3050,z=74,dx=101,dy=50,dz=101,team=red] unless entity @e[tag=post,tag=red,distance=..5] run tag @s add cantchange
execute as @a[scores={commands=..-1},x=-50,y=3050,z=74,dx=101,dy=50,dz=101,team=blue] unless entity @e[tag=post,tag=blue,distance=..5] run tag @s add cantchange