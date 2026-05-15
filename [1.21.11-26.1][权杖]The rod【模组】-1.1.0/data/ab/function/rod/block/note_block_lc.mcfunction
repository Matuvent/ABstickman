kill @e[tag=ab.rod.stave]
summon item_display ~ ~ ~ {item:{id:firework_star,components:{item_model:"ab:stave"}},Tags:[ab.rod.stave,ab.reg,ab.rod.magiced],transformation:[\
1,0,0,0,\
0,2,0,0,\
0,0,10,0,\
0,0,0,1]}
execute as @e[tag=ab.reg] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
tag @e[tag=ab.reg] remove ab.reg
