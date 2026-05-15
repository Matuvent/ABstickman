scoreboard players set @s ab.temp 1
execute positioned ~ ~ ~ run summon item_display ^ ^ ^2 {item:{id:firework_rocket,components:{item_model:"ab:black_hole"}},Tags:[ab.black_hole,ab.reg],transformation:[1,0,0,0 ,0,1,0,0 ,0,0,1,0 ,0,0,0,0.1]}
data modify entity @n[tag=ab.black_hole] interpolation_duration set value 33
data modify entity @n[tag=ab.black_hole] start_interpolation set value 0
execute positioned ~ ~ ~ run summon marker ^ ^ ^2 {Tags:[ab.black_hole_marker]}
