#- Scan Function -#
scoreboard players set red_active system 0
scoreboard players set blue_active system 0
execute as @a[team=red,x=-25,y=97,z=973,dx=50,dy=76,dz=54] at @s run scoreboard players add red_active system 1
execute as @a[team=blue,x=-25,y=97,z=973,dx=50,dy=76,dz=54] at @s run scoreboard players add blue_active system 1

#- Kill Players out of Bounds -#
kill @a[x=-25,y=173,z=973,dx=50,dy=76,dz=54]

#- Give Respawning Players Equipment -#
execute as @a[x=0,y=56,z=1000,dx=0,dy=0,dz=0] at @s run function wdhb:combat/equipment
execute as @a[x=0,y=50,z=1000,dx=0,dy=0,dz=0] at @s run function wdhb:combat/equipment

#- For all players in the arena who attempts to change their class, unless they're near a post, they can't change their class -#
execute as @a[x=-25,y=97,z=973,dx=50,dy=76,dz=54,team=red] at @s unless entity @e[tag=post,tag=red,distance=..5] run tag @s add cantchange
execute as @a[x=-25,y=97,z=973,dx=50,dy=76,dz=54,team=blue] at @s unless entity @e[tag=post,tag=blue,distance=..5] run tag @s add cantchange