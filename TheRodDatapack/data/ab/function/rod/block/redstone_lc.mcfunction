
summon item_display ~ ~ ~ {item:{id:firework_star,components:{item_model:"ab:small_laser"}},brightness:{block:15,sky:15},Tags:[ab.rod.small_laser,ab.reg,ab.rod.magiced],transformation:[\
0.5,0,0,0,\
0,0.5,0,0,\
0,0,0.5,0,\
0,0,0,1],glow_color_override:16711680,Glowing: true}
execute as @e[tag=ab.reg] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
tag @e[tag=ab.reg] remove ab.reg
summon item_display ~ ~ ~ {item:{id:firework_star,components:{item_model:"ab:small_laser"}},brightness:{block:15,sky:15},Tags:[ab.rod.small_laser,ab.reg,ab.rod.magiced],transformation:[\
0.5,0,0,0,\
0,0.5,0,0,\
0,0,0.5,0,\
0,0,0,1],glow_color_override:16711680,Glowing: true}
execute as @e[tag=ab.reg] run tp @s ^ ^ ^2 facing ^ ^ ^2.5
tag @e[tag=ab.reg] remove ab.reg
summon item_display ~ ~ ~ {item:{id:firework_star,components:{item_model:"ab:small_laser"}},brightness:{block:15,sky:15},Tags:[ab.rod.small_laser,ab.reg,ab.rod.magiced],transformation:[\
0.5,0,0,0,\
0,0.5,0,0,\
0,0,0.5,0,\
0,0,0,1],glow_color_override:16711680,Glowing: true}
execute as @e[tag=ab.reg] run tp @s ^ ^ ^1.5 facing ^ ^ ^2
tag @e[tag=ab.reg] remove ab.reg