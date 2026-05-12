scoreboard players add @s ab.emerald_time 2

execute if score @s ab.emerald_time matches 2 run summon item_display ~ ~-1.5 ~ {brightness:{block:15,sky:15},Tags:[ab.rod.emerald_marker,ab.reg],transformation:[\
1,0,0,0,\
0,1,0,0,\
0,0,1,0,\
0,0,0,1]}
execute as @n[tag=ab.rod.emerald_marker] run tp @s ^ ^ ^2 facing ^ ^ ^4

tag @e[tag=ab.reg] remove ab.reg