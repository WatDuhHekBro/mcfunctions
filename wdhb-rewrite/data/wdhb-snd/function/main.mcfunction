# Portal to Lobby
execute as @a[x=500, y=0, z=13, dx=0, dy=1, dz=0] at @s run tp @s ~ ~-10 ~ 0 0
particle portal 500 0 13 0 0.5 0 0.3 25 force @a

# Portal back from Lobby
tp @a[x=499, y=-11, z=9, dx=2, dy=2, dz=0] 500 0 0 0 0
