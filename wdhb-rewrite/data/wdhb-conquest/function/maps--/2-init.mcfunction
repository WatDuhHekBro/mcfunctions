# 1: Desert (Red)
# 2: Forest (Blue)
# 3: Snow (Neutral)
# 4: End (Neutral)

#- Posts -#
scoreboard players set Neutral posts 4
execute positioned -25 53 3130 run function wdhb:conquest/util/summon_post_red
tag @e[tag=post,x=-25,y=53,z=3130,dx=0,dy=0,dz=0] add 1
execute positioned 35 52 3060 run function wdhb:conquest/util/summon_post_blue
tag @e[tag=post,x=35,y=52,z=3060,dx=0,dy=0,dz=0] add 2
execute positioned 31 50 3130 run function wdhb:conquest/util/summon_post
tag @e[tag=post,x=31,y=50,z=3130,dx=0,dy=0,dz=0] add 3
execute positioned -32 62 3068 run function wdhb:conquest/util/summon_post
tag @e[tag=post,x=-32,y=62,z=3068,dx=0,dy=0,dz=0] add 4

#- Red Links -#
execute positioned 2 8 3107 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=2,y=8,z=3107,dx=0,dy=0,dz=0] add 1
execute positioned -2 8 3111 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=-2,y=8,z=3111,dx=0,dy=0,dz=0] add 2
execute positioned -2 8 3107 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=-2,y=8,z=3107,dx=0,dy=0,dz=0] add 3
execute positioned 2 8 3111 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=2,y=8,z=3111,dx=0,dy=0,dz=0] add 4

#- Blue Links -#
execute positioned 2 2 3107 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=2,y=2,z=3107,dx=0,dy=0,dz=0] add 1
execute positioned -2 2 3111 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=-2,y=2,z=3111,dx=0,dy=0,dz=0] add 2
execute positioned -2 2 3107 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=-2,y=2,z=3107,dx=0,dy=0,dz=0] add 3
execute positioned 2 2 3111 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=2,y=2,z=3111,dx=0,dy=0,dz=0] add 4