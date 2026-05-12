
#summon marker ^ ^ ^ {Tags:[ab.final_ray_core,ab.reg]}
summon item_display ~ ~1000 ~ {transformation:[50,0,0,0 ,0,50,0,0 ,0,0,100,0 ,0,0,0,1],brightness:{block:15,sky:15},item:{id:firework_star,components:{item_model:"ab:final_ray"}},Tags:[ab.final_ray_core,ab.reg]}
data modify entity @n[tag=ab.final_ray_core,tag=ab.reg] interpolation_duration set value 100
data modify entity @n[tag=ab.final_ray_core,tag=ab.reg] start_interpolation set value 0
#summon item_display ~ ~ ~ {transformation:[100,0,0,0 ,0,100,0,0 ,0,0,100,0 ,0,0,0,1],brightness:{block:15,sky:15},item:{id:firework_star,components:{item_model:"ab:light"}},Tags:[ab.light,ab.reg]}
data modify entity @n[tag=ab.light,tag=ab.reg] interpolation_duration set value 100
data modify entity @n[tag=ab.light,tag=ab.reg] start_interpolation set value 0
execute as @e[tag=ab.reg,tag=ab.final_ray_core] run tp @s ^ ^ ^3 facing ^ ^ ^10
tag @e[tag=ab.reg] remove ab.reg