execute positioned ~ ~100 ~ run summon item_display ^ ^ ^2 {item:{id:firework_rocket,components:{item_model:"ab:rod_ray"}},Tags:[ab.rod_ray,ab.reg],transformation:[1,0,0,0 ,0,1,0,0 ,0,0,1000,0 ,0,0,0,0.1]}
data modify entity @n[tag=ab.rod_ray] interpolation_duration set value 30
data modify entity @n[tag=ab.rod_ray] start_interpolation set value 1
execute as @e[tag=ab.rod_ray,tag=ab.reg] run tp @s ^ ^ ^5 facing ^ ^ ^100
tag @e[tag=ab.reg] remove ab.reg
execute as @e[tag=ab.rod_ray] at @s run function ab:rod/minecraft_rod/ray_effect
schedule function ab:rod/minecraft_rod/ray_dispear 10