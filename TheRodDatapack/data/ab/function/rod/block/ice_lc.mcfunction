
summon item_display ~ ~ ~ {item:{id:firework_star,components:{item_model:"minecraft:ice"}},brightness:{block:15,sky:15},Tags:[ab.rod.ice,ab.reg],transformation:[\
1,0,0,0,\
0,1,0,0,\
0,0,1,0,\
0,0,0,1]}
execute as @e[tag=ab.reg] run tp @s ^ ^ ^3.5 facing ^ ^ ^4
execute as @e[tag=ab.reg] at @s run tp ^ ^ ^3
tag @e[tag=ab.reg] remove ab.reg
summon item_display ~ ~ ~ {item:{id:firework_star,components:{item_model:"minecraft:ice"}},brightness:{block:15,sky:15},Tags:[ab.rod.ice,ab.reg],transformation:[\
1,0,0,0,\
0,1,0,0,\
0,0,1,0,\
0,0,0,1]}
execute as @e[tag=ab.reg] run tp @s ^ ^ ^3.5 facing ^ ^ ^4
execute as @e[tag=ab.reg] at @s run tp ^1 ^1 ^3
tag @e[tag=ab.reg] remove ab.reg
summon item_display ~ ~ ~ {item:{id:firework_star,components:{item_model:"minecraft:ice"}},brightness:{block:15,sky:15},Tags:[ab.rod.ice,ab.reg],transformation:[\
1,0,0,0,\
0,1,0,0,\
0,0,1,0,\
0,0,0,1]}
execute as @e[tag=ab.reg] run tp @s ^ ^ ^3.5 facing ^ ^ ^4
execute as @e[tag=ab.reg] at @s run tp ^-1 ^-1 ^2.5
tag @e[tag=ab.reg] remove ab.reg