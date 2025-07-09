# 1: Alpha/Forest (Neutral)
# 2: Charlie/House (Neutral)
# 3: Beta/Construction (Blue)
# 4: Bravo/Cave (Red)

#- Posts -#
scoreboard players set Neutral posts 4
execute positioned 20 100 982 run function wdhb:conquest/util/summon_post
tag @e[tag=post,x=20,y=100,z=982,dx=0,dy=0,dz=0] add 1
execute positioned -18 100 980 run function wdhb:conquest/util/summon_post
tag @e[tag=post,x=-18,y=100,z=980,dx=0,dy=0,dz=0] add 2
execute positioned -15 101 1016 run function wdhb:conquest/util/summon_post_blue
tag @e[tag=post,x=-15,y=101,z=1016,dx=0,dy=0,dz=0] add 3
execute positioned 11 93 1014 run function wdhb:conquest/util/summon_post_red
tag @e[tag=post,x=11,y=93,z=1014,dx=0,dy=0,dz=0] add 4

#- Red Links -#
execute positioned 2 56 1007 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=2,y=56,z=1007,dx=0,dy=0,dz=0] add 1
execute positioned -2 56 1007 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=-2,y=56,z=1007,dx=0,dy=0,dz=0] add 2
execute positioned -2 56 1011 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=-2,y=56,z=1011,dx=0,dy=0,dz=0] add 3
execute positioned 2 56 1011 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=2,y=56,z=1011,dx=0,dy=0,dz=0] add 4

#- Blue Links -#
execute positioned 2 50 1007 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=2,y=50,z=1007,dx=0,dy=0,dz=0] add 1
execute positioned -2 50 1007 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=-2,y=50,z=1007,dx=0,dy=0,dz=0] add 2
execute positioned -2 50 1011 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=-2,y=50,z=1011,dx=0,dy=0,dz=0] add 3
execute positioned 2 50 1011 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=2,y=50,z=1011,dx=0,dy=0,dz=0] add 4