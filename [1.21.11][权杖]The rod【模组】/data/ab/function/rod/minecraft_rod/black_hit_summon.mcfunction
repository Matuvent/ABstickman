
summon minecraft:item_display ~ ~ ~ {item:{id:firework_rocket,components:{item_model:"ab:black_hit"}},transformation:[1,0,0,0, 0,100,0,0, 0,0,1,0 ,0,0,0,1],Tags:[ab.black_hit_display,ab.reg]}
data modify entity @n[tag=ab.black_hit_display,tag=ab.reg] start_interpolation set value 0
data modify entity @n[tag=ab.black_hit_display,tag=ab.reg] interpolation_duration set value 1
execute store result entity @n[tag=ab.black_hit_display,tag=ab.reg] Rotation[0] int 1 run random value -180..180
execute store result entity @n[tag=ab.black_hit_display,tag=ab.reg] Rotation[1] int 1 run random value -15..15

execute store result entity @n[tag=ab.black_hit_display,tag=ab.reg] data.x double 0.001 run random value -1000..1000
execute store result entity @n[tag=ab.black_hit_display,tag=ab.reg] data.y double 0.001 run random value -3000..3000
execute store result entity @n[tag=ab.black_hit_display,tag=ab.reg] data.z double 0.001 run random value -1000..1000
execute as @n[tag=ab.black_hit_display,tag=ab.reg] run function ab:rod/minecraft_rod/tp_macro with entity @s data
tag @n[tag=ab.black_hit_display,tag=ab.reg] remove ab.reg