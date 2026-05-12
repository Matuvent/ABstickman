scoreboard players set @s ab.rod.shoot_time 0
execute run summon item_display ~ ~ ~ {item:{id:firework_star,components:{item_model:"minecraft:netherrack"}},brightness:{block:15,sky:15},Tags:[ab.rod.netherrack,ab.reg],transformation:[\
1,0,0,0,\
0,1,0,0,\
0,0,1,0,\
0,0,0,1]}
execute as @e[tag=ab.reg,tag=ab.rod.netherrack] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
execute as @e[tag=ab.reg,tag=ab.rod.netherrack] store result entity @s data.x_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.netherrack] store result entity @s data.y_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.netherrack] at @s run function ab:rod/block/rotated with entity @s data
tag @e[tag=ab.reg] remove ab.reg