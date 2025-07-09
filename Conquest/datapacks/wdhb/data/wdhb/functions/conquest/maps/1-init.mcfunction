# 1: NW (Red)
# 2: SE (Blue)
# 3: SW (Neutral)
# 4: NE (Neutral)
# 5: Center (Neutral)

#- Posts -#
scoreboard players set Neutral posts 5
execute positioned -18 34 82 run function wdhb:conquest/util/summon_post_red
tag @e[tag=post,x=-18,y=34,z=82,dx=0,dy=0,dz=0] add 1
execute positioned 18 34 118 run function wdhb:conquest/util/summon_post_blue
tag @e[tag=post,x=18,y=34,z=118,dx=0,dy=0,dz=0] add 2
execute positioned -18 34 118 run function wdhb:conquest/util/summon_post
tag @e[tag=post,x=-18,y=34,z=118,dx=0,dy=0,dz=0] add 3
execute positioned 18 34 82 run function wdhb:conquest/util/summon_post
tag @e[tag=post,x=18,y=34,z=82,dx=0,dy=0,dz=0] add 4
execute positioned 0 50 100 run function wdhb:conquest/util/summon_post
tag @e[tag=post,x=0,y=50,z=100,dx=0,dy=0,dz=0] add 5

#- Red Links -#
execute positioned -2 7 7 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=-2,y=7,z=7,dx=0,dy=0,dz=0] add 1
execute positioned 2 7 11 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=2,y=7,z=11,dx=0,dy=0,dz=0] add 2
execute positioned -2 7 11 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=-2,y=7,z=11,dx=0,dy=0,dz=0] add 3
execute positioned 2 7 7 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=2,y=7,z=7,dx=0,dy=0,dz=0] add 4
execute positioned 0 9 9 run function wdhb:conquest/util/summon_link_red
tag @e[tag=link,x=0,y=9,z=9,dx=0,dy=0,dz=0] add 5

#- Blue Links -#
execute positioned -2 1 7 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=-2,y=1,z=7,dx=0,dy=0,dz=0] add 1
execute positioned 2 1 11 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=2,y=1,z=11,dx=0,dy=0,dz=0] add 2
execute positioned -2 1 11 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=-2,y=1,z=11,dx=0,dy=0,dz=0] add 3
execute positioned 2 1 7 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=2,y=1,z=7,dx=0,dy=0,dz=0] add 4
execute positioned 0 3 9 run function wdhb:conquest/util/summon_link_blue
tag @e[tag=link,x=0,y=3,z=9,dx=0,dy=0,dz=0] add 5