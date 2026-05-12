
#execute if predicate ab:is_sneaking run function ab:rod/minecraft_rod/ray_summon
#execute if predicate ab:is_sneaking run return fail

execute positioned ^ ^ ^3 as @e[distance=..2] in ab:darkness run spreadplayers 0.0 0.0 1 100 under 115 false @s
summon minecraft:item_display ^ ^1 ^3 {item:{id:firework_rocket,components:{item_model:"ab:black_block"}},transformation:[0.75,0,0,0, 0,1000,0,0, 0,0,0.75,0 ,0,0,0,1],Tags:["ab.black_hit_display",ab.black_block,ab.reg]}
data modify entity @n[tag=ab.black_hit_display,tag=ab.reg] start_interpolation set value 0
data modify entity @n[tag=ab.black_hit_display,tag=ab.reg] interpolation_duration set value 3
tag @n[tag=ab.black_hit_display,tag=ab.reg] remove ab.reg

execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
execute positioned ^ ^ ^3 run function ab:rod/minecraft_rod/black_hit_summon
