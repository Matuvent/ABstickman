#summon tnt ~ ~ ~ {fuse:-1,explosion_power:10,Silent:true}
execute unless score @s ab.temp matches 1 unless block ^ ^ ^1 #air run function ab:rod/minecraft_rod/black_hole_summon
execute as @e[distance=..5] run damage @s 1000 mob_attack
execute as @e[distance=..5] run damage @s 100 out_of_world
#function ab:rod/minecraft_rod/block_disapear {r:5}

execute if entity @a[distance=..100] positioned ^ ^ ^1 run function ab:rod/minecraft_rod/ray_effect