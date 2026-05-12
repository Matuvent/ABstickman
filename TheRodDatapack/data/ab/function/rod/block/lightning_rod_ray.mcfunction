execute as @s[tag=ab.rod.lightning_rod_ray] at @s run tp ^ ^ ^1
execute as @s[tag=ab.rod.lightning_rod_ray] at @s run particle dust{color:16777215,scale:0.5} ~ ~ ~ 0.25 0.25 0.25 0.01 1 force @a
execute as @s[tag=ab.rod.lightning_rod_ray] at @s unless block ~ ~ ~ #air run summon lightning_bolt
execute as @s[tag=ab.rod.lightning_rod_ray] at @s unless block ~ ~ ~ #air run kill
execute as @s[tag=ab.rod.lightning_rod_ray] at @s positioned ~ ~-1 ~ if entity @e[distance=..1,type=!#ab:non_mob] run kill
execute as @s[tag=ab.rod.lightning_rod_ray] at @s positioned ~ ~-1 ~ if entity @e[distance=..1,type=!#ab:non_mob] run summon lightning_bolt
execute as @s[tag=ab.rod.lightning_rod_ray] at @s unless entity @a[distance=..50] run kill
execute as @n[tag=ab.rod.lightning_rod_ray] at @s if entity @s run function ab:rod/block/lightning_rod_ray