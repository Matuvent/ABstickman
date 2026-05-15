#$say $(UUID),$(num)
$summon item_display ~ ~ ~ {data:{UUID:$(UUID),num:$(num)},brightness:{block:15,sky:15},item:{id:firework_star,components:{item_model:"ab:portal"}},Tags:[ab.rod.portal,ab.reg],transformation:[\
1,0,0,0,\
0,1,0,0,\
0,0,1,0,\
0,0,0,0.25]}
execute as @e[tag=ab.reg] run tp @s ^ ^ ^ facing ^ ^ ^3
tag @e[tag=ab.reg] remove ab.reg
